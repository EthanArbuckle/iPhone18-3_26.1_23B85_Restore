@interface PKTransitCommutePlan
- (BOOL)hasExpiredPlanDate;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPlanAvailable;
- (BOOL)isPlanDisplayable;
- (NSDate)expiryDate;
- (NSDate)startDate;
- (NSSet)foreignReferenceIdentifiers;
- (NSString)expiryDateString;
- (NSString)formattedDateString;
- (NSString)startDateString;
- (NSString)uniqueIdentifier;
- (PKTransitCommutePlan)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)updateWithCommutePlanDetail:(id)a3;
- (unint64_t)hash;
- (void)_updateFieldsByKey;
- (void)_updateProperties;
- (void)encodeWithCoder:(id)a3;
- (void)setDetails:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PKTransitCommutePlan

- (void)_updateFieldsByKey
{
  v25 = *MEMORY[0x1E69E9840];
  fieldsByKey = self->_fieldsByKey;
  if (fieldsByKey)
  {
    [(NSMutableDictionary *)fieldsByKey removeAllObjects];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_fieldsByKey;
    self->_fieldsByKey = v4;
  }

  v6 = [(PKPassField *)self->_title key];
  v17 = v6;
  if (v6)
  {
    [(NSMutableDictionary *)self->_fieldsByKey setObject:self->_title forKey:v6];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      title = self->_title;
      *buf = 138412290;
      v24 = title;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Encountered nil key in parsing title field PKPassField: %@", buf, 0xCu);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_details;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [(PKPassField *)v14 key];
        if (v15)
        {
          [(NSMutableDictionary *)self->_fieldsByKey setObject:v14 forKey:v15];
        }

        else
        {
          v16 = PKLogFacilityTypeGetObject(0xDuLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v14;
            _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Encountered nil key in parsing detail field PKPassField: %@", buf, 0xCu);
          }
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)_updateProperties
{
  self->_properties &= 0xFFFFFFFFFFFFFFFALL;
  v3 = [(NSMutableDictionary *)self->_fieldsByKey objectForKey:@"expiryDate"];
  if (v3)
  {
  }

  else
  {
    v4 = [(NSMutableDictionary *)self->_fieldsByKey objectForKey:@"startDate"];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  self->_properties |= 1uLL;
LABEL_5:
  v5 = [(NSMutableDictionary *)self->_fieldsByKey objectForKey:@"amountRemaining"];

  if (v5)
  {
    self->_properties |= 4uLL;
  }
}

- (BOOL)hasExpiredPlanDate
{
  v2 = [(PKTransitCommutePlan *)self expiryDate];
  v3 = [MEMORY[0x1E695DF00] date];
  if (v2)
  {
    v4 = [v2 compare:v3] != 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSSet)foreignReferenceIdentifiers
{
  v2 = [(PKTransitCommutePlan *)self passFieldForKey:@"amountRemaining"];
  v3 = [v2 foreignReferenceIdentifiers];

  return v3;
}

- (NSString)formattedDateString
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(PKTransitCommutePlan *)self startDate];
  v5 = [(PKTransitCommutePlan *)self expiryDate];
  if (v4 && [v4 compare:v3] == 1)
  {
    v6 = [(PKTransitCommutePlan *)self startDateString];
    v7 = @"COMMUTE_PLAN_STARTS_ON";
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v5 || (PKStoreDemoModeEnabled() & 1) != 0)
    {
      v6 = 0;
LABEL_8:
      v8 = 0;
      goto LABEL_14;
    }

    if ([v5 compare:v3] == 1)
    {
      v7 = @"COMMUTE_PLAN_EXPIRES_ON";
    }

    else
    {
      v7 = @"COMMUTE_PLAN_EXPIRED_ON";
    }

    v6 = [(PKTransitCommutePlan *)self expiryDateString];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v8 = PKLocalizedPaymentString(&v7->isa, &stru_1F2281668.isa, v6);
LABEL_14:

  return v8;
}

- (BOOL)isPlanDisplayable
{
  v2 = [(PKTransitCommutePlan *)self expiryDate];
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DF00] distantFuture];
  }

  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 compare:v2] != 1;

  return v4;
}

- (BOOL)isPlanAvailable
{
  v3 = [(PKTransitCommutePlan *)self startDate];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF00] distantPast];
  }

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v4 compare:v3] != -1 && -[PKTransitCommutePlan isPlanDisplayable](self, "isPlanDisplayable");

  return v5;
}

- (NSString)uniqueIdentifier
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    uniqueIdentifier = self->_identifier;
  }

  v3 = uniqueIdentifier;

  return v3;
}

- (id)updateWithCommutePlanDetail:(id)a3
{
  v4 = a3;
  v5 = [(PKTransitCommutePlan *)self mutableCopy];
  v6 = [v4 uniqueIdentifier];
  [v5 setUniqueIdentifier:v6];

  v7 = [v4 startDate];
  [v5 setStartDate:v7];

  v8 = [v4 expiryDate];
  [v5 setExpiryDate:v8];

  v9 = [v4 localizedTitle];
  v10 = [v5 titleText];
  v11 = [v4 localizedDescription];

  v12 = [v5 descriptionText];
  v13 = v9;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 length];

    if (v15)
    {
      v16 = v10;
      if (!v16 || (v17 = v16, v18 = [v16 length], v17, !v18))
      {
        [v5 setTitleText:v14];
      }
    }
  }

  v19 = v11;
  v20 = v19;
  if (v19)
  {
    v21 = [v19 length];

    if (v21)
    {
      v22 = v12;
      if (!v22 || (v23 = v22, v24 = [v22 length], v23, !v24))
      {
        [v5 setDescriptionText:v20];
      }
    }
  }

  v25 = [v5 copy];

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  v5 = [(PKTransitCommutePlan *)self uniqueIdentifier];
  [v6 encodeObject:v5 forKey:@"uniqueIdentifier"];

  [v6 encodeObject:self->_deviceAccountIdentifiers forKey:@"deviceAccountIdentifiers"];
  [v6 encodeObject:self->_title forKey:@"title"];
  [v6 encodeObject:self->_details forKey:@"details"];
  [v6 encodeInteger:self->_properties forKey:@"properties"];
  [v6 encodeObject:self->_startDate forKey:@"startDate"];
  [v6 encodeObject:self->_expiryDate forKey:@"expiryDate"];
  [v6 encodeObject:self->_usage forKey:@"usage"];
  [v6 encodeBool:self->_requiresAppletSourceOfTruth forKey:@"requiresAppletSourceOfTruth"];
  [v6 encodeBool:self->_isDeviceBound forKey:@"isDeviceBound"];
}

- (PKTransitCommutePlan)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKTransitCommutePlan *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"deviceAccountIdentifiers"];
    deviceAccountIdentifiers = v5->_deviceAccountIdentifiers;
    v5->_deviceAccountIdentifiers = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"details"];
    details = v5->_details;
    v5->_details = v20;

    v5->_properties = [v4 decodeIntegerForKey:@"properties"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usage"];
    usage = v5->_usage;
    v5->_usage = v26;

    v5->_requiresAppletSourceOfTruth = [v4 decodeBoolForKey:@"requiresAppletSourceOfTruth"];
    v5->_isDeviceBound = [v4 decodeBoolForKey:@"isDeviceBound"];
    [(PKTransitCommutePlan *)v5 _updateFieldsByKey];
    [(PKTransitCommutePlan *)v5 _updateProperties];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  [v5 setIdentifier:v6];

  v7 = [(PKTransitCommutePlan *)self uniqueIdentifier];
  v8 = [v7 copyWithZone:a3];
  [v5 setUniqueIdentifier:v8];

  v9 = [(NSArray *)self->_deviceAccountIdentifiers copyWithZone:a3];
  [v5 setDeviceAccountIdentifiers:v9];

  v10 = [(PKPassField *)self->_title copyWithZone:a3];
  [v5 setTitle:v10];

  v11 = [(NSArray *)self->_details copyWithZone:a3];
  [v5 setDetails:v11];

  [v5 setProperties:self->_properties];
  v12 = [(NSDate *)self->_startDate copyWithZone:a3];
  [v5 setStartDate:v12];

  v13 = [(NSDate *)self->_expiryDate copyWithZone:a3];
  [v5 setExpiryDate:v13];

  v14 = [(PKPassField *)self->_usage copyWithZone:a3];
  [v5 setUsage:v14];

  [v5 setRequiresAppletSourceOfTruth:self->_requiresAppletSourceOfTruth];
  [v5 setIsDeviceBound:self->_isDeviceBound];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_identifier mutableCopyWithZone:a3];
  [v5 setIdentifier:v6];

  v7 = [(PKTransitCommutePlan *)self uniqueIdentifier];
  v8 = [v7 mutableCopyWithZone:a3];
  [v5 setUniqueIdentifier:v8];

  v9 = [(NSArray *)self->_deviceAccountIdentifiers mutableCopyWithZone:a3];
  [v5 setDeviceAccountIdentifiers:v9];

  v10 = [(PKPassField *)self->_title copyWithZone:a3];
  [v5 setTitle:v10];

  v11 = [(NSArray *)self->_details mutableCopyWithZone:a3];
  [v5 setDetails:v11];

  [v5 setProperties:self->_properties];
  v12 = [(NSDate *)self->_startDate copyWithZone:a3];
  [v5 setStartDate:v12];

  v13 = [(NSDate *)self->_expiryDate copyWithZone:a3];
  [v5 setExpiryDate:v13];

  v14 = [(PKPassField *)self->_usage copyWithZone:a3];
  [v5 setUsage:v14];

  [v5 setRequiresAppletSourceOfTruth:self->_requiresAppletSourceOfTruth];
  [v5 setIsDeviceBound:self->_isDeviceBound];
  return v5;
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  [(PKTransitCommutePlan *)self _updateFieldsByKey];

  [(PKTransitCommutePlan *)self _updateProperties];
}

- (void)setDetails:(id)a3
{
  v4 = [a3 copy];
  details = self->_details;
  self->_details = v4;

  [(PKTransitCommutePlan *)self _updateFieldsByKey];

  [(PKTransitCommutePlan *)self _updateProperties];
}

- (NSDate)expiryDate
{
  expiryDate = self->_expiryDate;
  if (expiryDate)
  {
    v3 = expiryDate;
  }

  else
  {
    v4 = [(PKTransitCommutePlan *)self _expiryField];
    v3 = _dateFromField(v4);
  }

  return v3;
}

- (NSDate)startDate
{
  startDate = self->_startDate;
  if (startDate)
  {
    v3 = startDate;
  }

  else
  {
    v4 = [(PKTransitCommutePlan *)self _startField];
    v3 = _dateFromField(v4);
  }

  return v3;
}

- (NSString)expiryDateString
{
  v3 = [(PKTransitCommutePlan *)self expiryDate];
  v4 = [(PKTransitCommutePlan *)self _expiryField];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateStyle:{objc_msgSend(v4, "dateStyle")}];
  v6 = [v5 stringFromDate:v3];

  return v6;
}

- (NSString)startDateString
{
  v3 = [(PKTransitCommutePlan *)self startDate];
  v4 = [(PKTransitCommutePlan *)self _startField];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateStyle:{objc_msgSend(v4, "dateStyle")}];
  v6 = [v5 stringFromDate:v3];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = self->_identifier;
      v7 = v5->_identifier;
      if (identifier && v7)
      {
        if (([(NSString *)identifier isEqual:?]& 1) != 0)
        {
LABEL_6:
          v8 = [(PKTransitCommutePlan *)self uniqueIdentifier];
          v9 = [(PKTransitCommutePlan *)v5 uniqueIdentifier];
          v10 = v9;
          if (v8 && v9)
          {
            if (([v8 isEqual:v9] & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else if (v8 != v9)
          {
            goto LABEL_46;
          }

          title = self->_title;
          v13 = v5->_title;
          if (title && v13)
          {
            if (([(PKPassField *)title isEqual:?]& 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else if (title != v13)
          {
            goto LABEL_46;
          }

          details = self->_details;
          v15 = v5->_details;
          if (details && v15)
          {
            if (([(NSArray *)details isEqual:?]& 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else if (details != v15)
          {
            goto LABEL_46;
          }

          deviceAccountIdentifiers = self->_deviceAccountIdentifiers;
          v17 = v5->_deviceAccountIdentifiers;
          if (deviceAccountIdentifiers && v17)
          {
            if (([(NSArray *)deviceAccountIdentifiers isEqual:?]& 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else if (deviceAccountIdentifiers != v17)
          {
            goto LABEL_46;
          }

          startDate = self->_startDate;
          v19 = v5->_startDate;
          if (startDate && v19)
          {
            if (([(NSDate *)startDate isEqual:?]& 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else if (startDate != v19)
          {
            goto LABEL_46;
          }

          expiryDate = self->_expiryDate;
          v21 = v5->_expiryDate;
          if (expiryDate && v21)
          {
            if (([(NSDate *)expiryDate isEqual:?]& 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else if (expiryDate != v21)
          {
            goto LABEL_46;
          }

          if (self->_properties == v5->_properties && self->_requiresAppletSourceOfTruth == v5->_requiresAppletSourceOfTruth && self->_isDeviceBound == v5->_isDeviceBound)
          {
            usage = self->_usage;
            v23 = v5->_usage;
            if (usage && v23)
            {
              v11 = [(PKPassField *)usage isEqual:?];
            }

            else
            {
              v11 = usage == v23;
            }

            goto LABEL_47;
          }

LABEL_46:
          v11 = 0;
LABEL_47:

          goto LABEL_48;
        }
      }

      else if (identifier == v7)
      {
        goto LABEL_6;
      }

      v11 = 0;
LABEL_48:

      goto LABEL_49;
    }

    v11 = 0;
  }

LABEL_49:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  v4 = [(PKTransitCommutePlan *)self uniqueIdentifier];
  [v3 safelyAddObject:v4];

  [v3 safelyAddObject:self->_title];
  [v3 addObjectsFromArray:self->_details];
  [v3 addObjectsFromArray:self->_deviceAccountIdentifiers];
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_expiryDate];
  [v3 safelyAddObject:self->_usage];
  v5 = PKCombinedHash(17, v3);
  v6 = self->_properties - v5 + 32 * v5;
  v7 = self->_requiresAppletSourceOfTruth - v6 + 32 * v6;
  v8 = self->_isDeviceBound - v7 + 32 * v7;

  return v8;
}

@end