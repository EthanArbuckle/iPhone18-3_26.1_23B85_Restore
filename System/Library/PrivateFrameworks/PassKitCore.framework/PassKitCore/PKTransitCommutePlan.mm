@interface PKTransitCommutePlan
- (BOOL)hasExpiredPlanDate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPlanAvailable;
- (BOOL)isPlanDisplayable;
- (NSDate)expiryDate;
- (NSDate)startDate;
- (NSSet)foreignReferenceIdentifiers;
- (NSString)expiryDateString;
- (NSString)formattedDateString;
- (NSString)startDateString;
- (NSString)uniqueIdentifier;
- (PKTransitCommutePlan)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)updateWithCommutePlanDetail:(id)detail;
- (unint64_t)hash;
- (void)_updateFieldsByKey;
- (void)_updateProperties;
- (void)encodeWithCoder:(id)coder;
- (void)setDetails:(id)details;
- (void)setTitle:(id)title;
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
  expiryDate = [(PKTransitCommutePlan *)self expiryDate];
  date = [MEMORY[0x1E695DF00] date];
  if (expiryDate)
  {
    v4 = [expiryDate compare:date] != 1;
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
  foreignReferenceIdentifiers = [v2 foreignReferenceIdentifiers];

  return foreignReferenceIdentifiers;
}

- (NSString)formattedDateString
{
  date = [MEMORY[0x1E695DF00] date];
  startDate = [(PKTransitCommutePlan *)self startDate];
  expiryDate = [(PKTransitCommutePlan *)self expiryDate];
  if (startDate && [startDate compare:date] == 1)
  {
    startDateString = [(PKTransitCommutePlan *)self startDateString];
    v7 = @"COMMUTE_PLAN_STARTS_ON";
    if (!startDateString)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!expiryDate || (PKStoreDemoModeEnabled() & 1) != 0)
    {
      startDateString = 0;
LABEL_8:
      v8 = 0;
      goto LABEL_14;
    }

    if ([expiryDate compare:date] == 1)
    {
      v7 = @"COMMUTE_PLAN_EXPIRES_ON";
    }

    else
    {
      v7 = @"COMMUTE_PLAN_EXPIRED_ON";
    }

    startDateString = [(PKTransitCommutePlan *)self expiryDateString];
    if (!startDateString)
    {
      goto LABEL_8;
    }
  }

  v8 = PKLocalizedPaymentString(&v7->isa, &stru_1F2281668.isa, startDateString);
LABEL_14:

  return v8;
}

- (BOOL)isPlanDisplayable
{
  expiryDate = [(PKTransitCommutePlan *)self expiryDate];
  if (!expiryDate)
  {
    expiryDate = [MEMORY[0x1E695DF00] distantFuture];
  }

  date = [MEMORY[0x1E695DF00] date];
  v4 = [date compare:expiryDate] != 1;

  return v4;
}

- (BOOL)isPlanAvailable
{
  startDate = [(PKTransitCommutePlan *)self startDate];
  if (!startDate)
  {
    startDate = [MEMORY[0x1E695DF00] distantPast];
  }

  date = [MEMORY[0x1E695DF00] date];
  v5 = [date compare:startDate] != -1 && -[PKTransitCommutePlan isPlanDisplayable](self, "isPlanDisplayable");

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

- (id)updateWithCommutePlanDetail:(id)detail
{
  detailCopy = detail;
  v5 = [(PKTransitCommutePlan *)self mutableCopy];
  uniqueIdentifier = [detailCopy uniqueIdentifier];
  [v5 setUniqueIdentifier:uniqueIdentifier];

  startDate = [detailCopy startDate];
  [v5 setStartDate:startDate];

  expiryDate = [detailCopy expiryDate];
  [v5 setExpiryDate:expiryDate];

  localizedTitle = [detailCopy localizedTitle];
  titleText = [v5 titleText];
  localizedDescription = [detailCopy localizedDescription];

  descriptionText = [v5 descriptionText];
  v13 = localizedTitle;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 length];

    if (v15)
    {
      v16 = titleText;
      if (!v16 || (v17 = v16, v18 = [v16 length], v17, !v18))
      {
        [v5 setTitleText:v14];
      }
    }
  }

  v19 = localizedDescription;
  v20 = v19;
  if (v19)
  {
    v21 = [v19 length];

    if (v21)
    {
      v22 = descriptionText;
      if (!v22 || (v23 = v22, v24 = [v22 length], v23, !v24))
      {
        [v5 setDescriptionText:v20];
      }
    }
  }

  v25 = [v5 copy];

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  uniqueIdentifier = [(PKTransitCommutePlan *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  [coderCopy encodeObject:self->_deviceAccountIdentifiers forKey:@"deviceAccountIdentifiers"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_details forKey:@"details"];
  [coderCopy encodeInteger:self->_properties forKey:@"properties"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_expiryDate forKey:@"expiryDate"];
  [coderCopy encodeObject:self->_usage forKey:@"usage"];
  [coderCopy encodeBool:self->_requiresAppletSourceOfTruth forKey:@"requiresAppletSourceOfTruth"];
  [coderCopy encodeBool:self->_isDeviceBound forKey:@"isDeviceBound"];
}

- (PKTransitCommutePlan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKTransitCommutePlan *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"deviceAccountIdentifiers"];
    deviceAccountIdentifiers = v5->_deviceAccountIdentifiers;
    v5->_deviceAccountIdentifiers = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"details"];
    details = v5->_details;
    v5->_details = v20;

    v5->_properties = [coderCopy decodeIntegerForKey:@"properties"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usage"];
    usage = v5->_usage;
    v5->_usage = v26;

    v5->_requiresAppletSourceOfTruth = [coderCopy decodeBoolForKey:@"requiresAppletSourceOfTruth"];
    v5->_isDeviceBound = [coderCopy decodeBoolForKey:@"isDeviceBound"];
    [(PKTransitCommutePlan *)v5 _updateFieldsByKey];
    [(PKTransitCommutePlan *)v5 _updateProperties];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  [v5 setIdentifier:v6];

  uniqueIdentifier = [(PKTransitCommutePlan *)self uniqueIdentifier];
  v8 = [uniqueIdentifier copyWithZone:zone];
  [v5 setUniqueIdentifier:v8];

  v9 = [(NSArray *)self->_deviceAccountIdentifiers copyWithZone:zone];
  [v5 setDeviceAccountIdentifiers:v9];

  v10 = [(PKPassField *)self->_title copyWithZone:zone];
  [v5 setTitle:v10];

  v11 = [(NSArray *)self->_details copyWithZone:zone];
  [v5 setDetails:v11];

  [v5 setProperties:self->_properties];
  v12 = [(NSDate *)self->_startDate copyWithZone:zone];
  [v5 setStartDate:v12];

  v13 = [(NSDate *)self->_expiryDate copyWithZone:zone];
  [v5 setExpiryDate:v13];

  v14 = [(PKPassField *)self->_usage copyWithZone:zone];
  [v5 setUsage:v14];

  [v5 setRequiresAppletSourceOfTruth:self->_requiresAppletSourceOfTruth];
  [v5 setIsDeviceBound:self->_isDeviceBound];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_identifier mutableCopyWithZone:zone];
  [v5 setIdentifier:v6];

  uniqueIdentifier = [(PKTransitCommutePlan *)self uniqueIdentifier];
  v8 = [uniqueIdentifier mutableCopyWithZone:zone];
  [v5 setUniqueIdentifier:v8];

  v9 = [(NSArray *)self->_deviceAccountIdentifiers mutableCopyWithZone:zone];
  [v5 setDeviceAccountIdentifiers:v9];

  v10 = [(PKPassField *)self->_title copyWithZone:zone];
  [v5 setTitle:v10];

  v11 = [(NSArray *)self->_details mutableCopyWithZone:zone];
  [v5 setDetails:v11];

  [v5 setProperties:self->_properties];
  v12 = [(NSDate *)self->_startDate copyWithZone:zone];
  [v5 setStartDate:v12];

  v13 = [(NSDate *)self->_expiryDate copyWithZone:zone];
  [v5 setExpiryDate:v13];

  v14 = [(PKPassField *)self->_usage copyWithZone:zone];
  [v5 setUsage:v14];

  [v5 setRequiresAppletSourceOfTruth:self->_requiresAppletSourceOfTruth];
  [v5 setIsDeviceBound:self->_isDeviceBound];
  return v5;
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  [(PKTransitCommutePlan *)self _updateFieldsByKey];

  [(PKTransitCommutePlan *)self _updateProperties];
}

- (void)setDetails:(id)details
{
  v4 = [details copy];
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
    _expiryField = [(PKTransitCommutePlan *)self _expiryField];
    v3 = _dateFromField(_expiryField);
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
    _startField = [(PKTransitCommutePlan *)self _startField];
    v3 = _dateFromField(_startField);
  }

  return v3;
}

- (NSString)expiryDateString
{
  expiryDate = [(PKTransitCommutePlan *)self expiryDate];
  _expiryField = [(PKTransitCommutePlan *)self _expiryField];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateStyle:{objc_msgSend(_expiryField, "dateStyle")}];
  v6 = [v5 stringFromDate:expiryDate];

  return v6;
}

- (NSString)startDateString
{
  startDate = [(PKTransitCommutePlan *)self startDate];
  _startField = [(PKTransitCommutePlan *)self _startField];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateStyle:{objc_msgSend(_startField, "dateStyle")}];
  v6 = [v5 stringFromDate:startDate];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      v7 = v5->_identifier;
      if (identifier && v7)
      {
        if (([(NSString *)identifier isEqual:?]& 1) != 0)
        {
LABEL_6:
          uniqueIdentifier = [(PKTransitCommutePlan *)self uniqueIdentifier];
          uniqueIdentifier2 = [(PKTransitCommutePlan *)v5 uniqueIdentifier];
          v10 = uniqueIdentifier2;
          if (uniqueIdentifier && uniqueIdentifier2)
          {
            if (([uniqueIdentifier isEqual:uniqueIdentifier2] & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else if (uniqueIdentifier != uniqueIdentifier2)
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
  uniqueIdentifier = [(PKTransitCommutePlan *)self uniqueIdentifier];
  [v3 safelyAddObject:uniqueIdentifier];

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