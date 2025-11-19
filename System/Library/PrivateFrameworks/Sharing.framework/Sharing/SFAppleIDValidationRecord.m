@interface SFAppleIDValidationRecord
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToValidationRecord:(id)a3;
- (BOOL)isInvalid;
- (BOOL)needsUpdate;
- (SFAppleIDValidationRecord)initWithCoder:(id)a3;
- (SFAppleIDValidationRecord)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)expirationDate;
- (void)encodeWithCoder:(id)a3;
- (void)needsUpdate;
@end

@implementation SFAppleIDValidationRecord

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  altDSID = self->_altDSID;
  v14 = v4;
  if (altDSID)
  {
    [v4 encodeObject:altDSID forKey:@"AltDSID"];
    v4 = v14;
  }

  data = self->_data;
  if (data)
  {
    [v14 encodeObject:data forKey:@"Data"];
    v4 = v14;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v14 encodeObject:identifier forKey:@"Identifier"];
    v4 = v14;
  }

  nextCheckDate = self->_nextCheckDate;
  if (nextCheckDate)
  {
    [v14 encodeObject:nextCheckDate forKey:@"NextCheckDate"];
    v4 = v14;
  }

  [v4 encodeInteger:self->_suggestedValidDuration forKey:@"SuggestedValidDuration"];
  validatedEmailHashes = self->_validatedEmailHashes;
  if (validatedEmailHashes)
  {
    [v14 encodeObject:validatedEmailHashes forKey:@"ValidatedEmailHashes"];
  }

  validatedPhoneHashes = self->_validatedPhoneHashes;
  if (validatedPhoneHashes)
  {
    [v14 encodeObject:validatedPhoneHashes forKey:@"ValidatedPhoneHashes"];
  }

  validStartDate = self->_validStartDate;
  v12 = v14;
  if (validStartDate)
  {
    [v14 encodeObject:validStartDate forKey:@"ValidStartDate"];
    v12 = v14;
  }

  version = self->_version;
  if (version)
  {
    [v14 encodeObject:version forKey:@"Version"];
    v12 = v14;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SFAppleIDValidationRecord *)self isEqualToValidationRecord:v5];
  }

  return v6;
}

- (SFAppleIDValidationRecord)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFAppleIDValidationRecord;
  v5 = [(SFAppleIDValidationRecord *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ValidationRecordData"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 objectForKeyedSubscript:@"ValidationRecordDataID"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 objectForKeyedSubscript:@"ValidationRecordNextCheckDate"];
    nextCheckDate = v5->_nextCheckDate;
    v5->_nextCheckDate = v10;

    v12 = [v4 objectForKeyedSubscript:@"Version"];
    version = v5->_version;
    v5->_version = v12;
  }

  return v5;
}

- (id)description
{
  NSAppendPrintF();
  v22 = 0;
  altDSID = self->_altDSID;
  NSAppendPrintF();
  v3 = v22;

  data = self->_data;
  NSAppendPrintF();
  v4 = v3;

  identifier = self->_identifier;
  NSAppendPrintF();
  v5 = v4;

  nextCheckDate = self->_nextCheckDate;
  NSAppendPrintF();
  v6 = v5;

  suggestedValidDuration = self->_suggestedValidDuration;
  NSAppendPrintF();
  v7 = v6;

  v19 = [(NSArray *)self->_validatedEmailHashes componentsJoinedByString:@", ", suggestedValidDuration];
  NSAppendPrintF();
  v8 = v7;

  v9 = [(NSArray *)self->_validatedPhoneHashes componentsJoinedByString:@", ", v19];
  NSAppendPrintF();
  v10 = v8;

  validStartDate = self->_validStartDate;
  NSAppendPrintF();
  v11 = v10;

  version = self->_version;
  NSAppendPrintF();
  v12 = v11;

  return v11;
}

- (BOOL)isInvalid
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(SFAppleIDValidationRecord *)self altDSID];

  if (!v4)
  {
    if (gLogCategory_SFAppleIDValidationRecord <= 60)
    {
      if (gLogCategory_SFAppleIDValidationRecord == -1)
      {
        v9 = 0;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v5 = [(SFAppleIDValidationRecord *)self data];

  if (!v5)
  {
    if (gLogCategory_SFAppleIDValidationRecord <= 60)
    {
      if (gLogCategory_SFAppleIDValidationRecord == -1)
      {
        v9 = 0;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v6 = [(SFAppleIDValidationRecord *)self data];
  v7 = [v6 length];

  if (!v7)
  {
    if (gLogCategory_SFAppleIDValidationRecord <= 60)
    {
      if (gLogCategory_SFAppleIDValidationRecord == -1)
      {
        v9 = 0;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v8 = [(SFAppleIDValidationRecord *)self expirationDate];
  if (!v8)
  {
    if (gLogCategory_SFAppleIDValidationRecord <= 60)
    {
      if (gLogCategory_SFAppleIDValidationRecord == -1)
      {
        v9 = 0;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_27;
    }

LABEL_24:
    v9 = 0;
LABEL_28:
    v10 = 1;
    goto LABEL_7;
  }

  v9 = v8;
  if ([v8 compare:v3] != 1)
  {
    if (gLogCategory_SFAppleIDValidationRecord > 60 || gLogCategory_SFAppleIDValidationRecord == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_28;
    }

LABEL_27:
    LogPrintF();
    goto LABEL_28;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (BOOL)needsUpdate
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(SFAppleIDValidationRecord *)self nextCheckDate];

  if (!v4)
  {
    if (gLogCategory_SFAppleIDValidationRecord <= 60 && (gLogCategory_SFAppleIDValidationRecord != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDValidationRecord needsUpdate];
    }

    goto LABEL_15;
  }

  v5 = [(SFAppleIDValidationRecord *)self nextCheckDate];
  v6 = [v5 compare:v3];

  if (v6 != 1)
  {
    [(SFAppleIDValidationRecord *)self needsUpdate];
    v11 = v13;
    v8 = v14;
    goto LABEL_6;
  }

  v7 = [(SFAppleIDValidationRecord *)self expirationDate];
  if (!v7)
  {
    if (gLogCategory_SFAppleIDValidationRecord <= 60 && (gLogCategory_SFAppleIDValidationRecord != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDValidationRecord needsUpdate];
    }

LABEL_15:
    v8 = 0;
LABEL_16:
    v11 = 1;
    goto LABEL_6;
  }

  v8 = v7;
  v9 = [v7 dateByAddingTimeInterval:-86400.0];
  v10 = [v3 compare:v9];

  if (v10 != -1)
  {
    if (gLogCategory_SFAppleIDValidationRecord <= 60 && (gLogCategory_SFAppleIDValidationRecord != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDValidationRecord needsUpdate];
    }

    goto LABEL_16;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (SFAppleIDValidationRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SFAppleIDValidationRecord;
  v5 = [(SFAppleIDValidationRecord *)&v30 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"AltDSID"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AltDSID"];
      altDSID = v5->_altDSID;
      v5->_altDSID = v6;
    }

    if ([v4 containsValueForKey:@"Data"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
      data = v5->_data;
      v5->_data = v8;
    }

    if ([v4 containsValueForKey:@"Identifier"])
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v10;
    }

    if ([v4 containsValueForKey:@"NextCheckDate"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NextCheckDate"];
      nextCheckDate = v5->_nextCheckDate;
      v5->_nextCheckDate = v12;
    }

    if ([v4 containsValueForKey:@"SuggestedValidDuration"])
    {
      v5->_suggestedValidDuration = [v4 decodeIntegerForKey:@"SuggestedValidDuration"];
    }

    if ([v4 containsValueForKey:@"ValidatedEmailHashes"])
    {
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"ValidatedEmailHashes"];
      validatedEmailHashes = v5->_validatedEmailHashes;
      v5->_validatedEmailHashes = v17;
    }

    if ([v4 containsValueForKey:@"ValidatedPhoneHashes"])
    {
      v19 = MEMORY[0x1E695DFD8];
      v20 = objc_opt_class();
      v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
      v22 = [v4 decodeObjectOfClasses:v21 forKey:@"ValidatedPhoneHashes"];
      validatedPhoneHashes = v5->_validatedPhoneHashes;
      v5->_validatedPhoneHashes = v22;
    }

    if ([v4 containsValueForKey:@"ValidStartDate"])
    {
      v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ValidStartDate"];
      validStartDate = v5->_validStartDate;
      v5->_validStartDate = v24;
    }

    if ([v4 containsValueForKey:@"Version"])
    {
      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
      version = v5->_version;
      v5->_version = v26;
    }

    v28 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_altDSID);
    objc_storeStrong((v5 + 16), self->_data);
    objc_storeStrong((v5 + 24), self->_identifier);
    objc_storeStrong((v5 + 32), self->_nextCheckDate);
    *(v5 + 40) = self->_suggestedValidDuration;
    objc_storeStrong((v5 + 48), self->_validatedEmailHashes);
    objc_storeStrong((v5 + 56), self->_validatedPhoneHashes);
    objc_storeStrong((v5 + 64), self->_validStartDate);
    objc_storeStrong((v5 + 72), self->_version);
  }

  return v5;
}

- (id)expirationDate
{
  v3 = [(SFAppleIDValidationRecord *)self validStartDate];

  if (v3 && [(SFAppleIDValidationRecord *)self suggestedValidDuration])
  {
    v4 = [(SFAppleIDValidationRecord *)self validStartDate];
    v5 = [v4 dateByAddingTimeInterval:{-[SFAppleIDValidationRecord suggestedValidDuration](self, "suggestedValidDuration")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToValidationRecord:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v24 = 1;
    goto LABEL_30;
  }

  [(SFAppleIDValidationRecord *)self altDSID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() altDSID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDValidationRecord *)self altDSID];
    objc_claimAutoreleasedReturnValue();
    v10 = [OUTLINED_FUNCTION_3_2() altDSID];
    v11 = OUTLINED_FUNCTION_1(v10);

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  [(SFAppleIDValidationRecord *)self data];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() data];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDValidationRecord *)self data];
    objc_claimAutoreleasedReturnValue();
    v12 = [OUTLINED_FUNCTION_3_2() data];
    v13 = OUTLINED_FUNCTION_1(v12);

    if (!v13)
    {
      goto LABEL_29;
    }
  }

  [(SFAppleIDValidationRecord *)self identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() identifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDValidationRecord *)self identifier];
    objc_claimAutoreleasedReturnValue();
    v14 = [OUTLINED_FUNCTION_3_2() identifier];
    v15 = OUTLINED_FUNCTION_1(v14);

    if (!v15)
    {
      goto LABEL_29;
    }
  }

  [(SFAppleIDValidationRecord *)self nextCheckDate];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() nextCheckDate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDValidationRecord *)self nextCheckDate];
    objc_claimAutoreleasedReturnValue();
    v16 = [OUTLINED_FUNCTION_3_2() nextCheckDate];
    v17 = OUTLINED_FUNCTION_1(v16);

    if (!v17)
    {
      goto LABEL_29;
    }
  }

  [(SFAppleIDValidationRecord *)self suggestedValidDuration];
  if (v3 != [OUTLINED_FUNCTION_2_0() suggestedValidDuration])
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  [(SFAppleIDValidationRecord *)self validatedEmailHashes];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() validatedEmailHashes];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDValidationRecord *)self validatedEmailHashes];
    objc_claimAutoreleasedReturnValue();
    v18 = [OUTLINED_FUNCTION_3_2() validatedEmailHashes];
    v19 = OUTLINED_FUNCTION_1(v18);

    if (!v19)
    {
      goto LABEL_29;
    }
  }

  [(SFAppleIDValidationRecord *)self validatedPhoneHashes];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() validatedPhoneHashes];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDValidationRecord *)self validatedPhoneHashes];
    objc_claimAutoreleasedReturnValue();
    v20 = [OUTLINED_FUNCTION_3_2() validatedPhoneHashes];
    v21 = OUTLINED_FUNCTION_1(v20);

    if (!v21)
    {
      goto LABEL_29;
    }
  }

  [(SFAppleIDValidationRecord *)self validStartDate];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() validStartDate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDValidationRecord *)self validStartDate];
    objc_claimAutoreleasedReturnValue();
    v22 = [OUTLINED_FUNCTION_3_2() validStartDate];
    v23 = OUTLINED_FUNCTION_1(v22);

    if (!v23)
    {
      goto LABEL_29;
    }
  }

  [(SFAppleIDValidationRecord *)self version];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() version];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
    v24 = 1;
  }

  else
  {
    [(SFAppleIDValidationRecord *)self version];
    objc_claimAutoreleasedReturnValue();
    v26 = [OUTLINED_FUNCTION_3_2() version];
    v24 = OUTLINED_FUNCTION_1(v26);
  }

LABEL_30:
  return v24 & 1;
}

- (void)needsUpdate
{
  if (gLogCategory_SFAppleIDValidationRecord <= 60 && (gLogCategory_SFAppleIDValidationRecord != -1 || _LogCategory_Initialize()))
  {
    v6 = [a1 nextCheckDate];
    LogPrintF();
  }

  *a3 = 0;
  *a2 = 1;
}

@end