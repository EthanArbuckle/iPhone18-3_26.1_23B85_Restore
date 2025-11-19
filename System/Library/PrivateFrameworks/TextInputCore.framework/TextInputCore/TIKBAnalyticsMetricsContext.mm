@interface TIKBAnalyticsMetricsContext
+ (id)keyboardTypeEnumToString:(unsigned __int8)a3;
+ (id)userInterfaceIdiomToString:(int64_t)a3;
+ (int64_t)userInterfaceIdiomStringToEnum:(id)a3;
+ (unsigned)keyboardTypeStringToEnum:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TIKBAnalyticsMetricsContext)initWithCoder:(id)a3;
- (TIKBAnalyticsMetricsContext)initWithInputLanguage:(id)a3 inputRegion:(id)a4 inputVariant:(id)a5 secondaryLanguage:(id)a6 secondaryRegion:(id)a7 layoutName:(id)a8 keyboardType:(unsigned __int8)a9 keyboardConfiguration:(id)a10 userInterfaceIdiom:(int64_t)a11 testingParameters:(id)a12;
- (TIKBAnalyticsMetricsContext)initWithKeyboardState:(id)a3 activeInputModes:(id)a4 testingParameters:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultLanguageOrRegionFromInputMode:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIKBAnalyticsMetricsContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v15.receiver = self;
    v15.super_class = TIKBAnalyticsMetricsContext;
    if ([(TIAnalyticsMetricsContext *)&v15 isEqual:v6]&& self->_keyboardType == v6->_keyboardType && self->_userInterfaceIdiom == v6->_userInterfaceIdiom && ((inputVariant = self->_inputVariant, !(inputVariant | v6->_inputVariant)) || [(NSString *)inputVariant isEqualToString:?]) && ((secondaryLanguage = self->_secondaryLanguage, !(secondaryLanguage | v6->_secondaryLanguage)) || [(NSString *)secondaryLanguage isEqualToString:?]) && ((secondaryRegion = self->_secondaryRegion, !(secondaryRegion | v6->_secondaryRegion)) || [(NSString *)secondaryRegion isEqualToString:?]) && ((layoutName = self->_layoutName, !(layoutName | v6->_layoutName)) || [(NSString *)layoutName isEqualToString:?]))
    {
      testingParameters = self->_testingParameters;
      v12 = v6->_testingParameters;
      if (testingParameters)
      {
        v13 = [(NSDictionary *)testingParameters isEqual:v12];
      }

      else
      {
        v13 = v12 == 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = TIKBAnalyticsMetricsContext;
  v3 = 257 * [(TIAnalyticsMetricsContext *)&v22 hash];
  v4 = 257 * ([(NSString *)self->_inputVariant hash]+ v3);
  v5 = 257 * ([(NSString *)self->_secondaryLanguage hash]+ v4);
  v6 = 257 * ([(NSString *)self->_secondaryRegion hash]+ v5);
  v7 = 257 * (257 * ([(NSString *)self->_layoutName hash]+ v6) + self->_keyboardType);
  v8 = 257 * (v7 + [(NSString *)self->_keyboardConfiguration hash]) + self->_userInterfaceIdiom;
  testingParameters = self->_testingParameters;
  if (testingParameters)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(NSDictionary *)testingParameters allKeys];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(NSDictionary *)self->_testingParameters objectForKey:*(*(&v18 + 1) + 8 * v14)];
          v8 = [v15 hash] + 257 * v8;

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19.receiver = self;
  v19.super_class = TIKBAnalyticsMetricsContext;
  v5 = [(TIAnalyticsMetricsContext *)&v19 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_inputVariant copyWithZone:a3];
    v7 = v5[4];
    v5[4] = v6;

    v8 = [(NSString *)self->_secondaryLanguage copyWithZone:a3];
    v9 = v5[5];
    v5[5] = v8;

    v10 = [(NSString *)self->_secondaryRegion copyWithZone:a3];
    v11 = v5[6];
    v5[6] = v10;

    v12 = [(NSString *)self->_layoutName copyWithZone:a3];
    v13 = v5[7];
    v5[7] = v12;

    *(v5 + 24) = self->_keyboardType;
    v14 = [(NSString *)self->_keyboardConfiguration copyWithZone:a3];
    v15 = v5[8];
    v5[8] = v14;

    v5[9] = self->_userInterfaceIdiom;
    v16 = [(NSDictionary *)self->_testingParameters copyWithZone:a3];
    v17 = v5[10];
    v5[10] = v16;
  }

  return v5;
}

- (TIKBAnalyticsMetricsContext)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = TIKBAnalyticsMetricsContext;
  v5 = [(TIAnalyticsMetricsContext *)&v28 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputVariant"];
    v7 = [v6 copy];
    inputVariant = v5->_inputVariant;
    v5->_inputVariant = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryLanguage"];
    v10 = [v9 copy];
    secondaryLanguage = v5->_secondaryLanguage;
    v5->_secondaryLanguage = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryRegion"];
    v13 = [v12 copy];
    secondaryRegion = v5->_secondaryRegion;
    v5->_secondaryRegion = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutName"];
    v16 = [v15 copy];
    layoutName = v5->_layoutName;
    v5->_layoutName = v16;

    v5->_keyboardType = [v4 decodeIntForKey:@"keyboardType"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardConfiguration"];
    v19 = [v18 copy];
    keyboardConfiguration = v5->_keyboardConfiguration;
    v5->_keyboardConfiguration = v19;

    v5->_userInterfaceIdiom = [v4 decodeIntForKey:@"userInterfaceIdiom"];
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"testingParameters"];

    v25 = _deepCopyOfStringDictionary(v24);
    testingParameters = v5->_testingParameters;
    v5->_testingParameters = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIKBAnalyticsMetricsContext;
  v4 = a3;
  [(TIAnalyticsMetricsContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_inputVariant forKey:{@"inputVariant", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_secondaryLanguage forKey:@"secondaryLanguage"];
  [v4 encodeObject:self->_secondaryRegion forKey:@"secondaryRegion"];
  [v4 encodeObject:self->_layoutName forKey:@"layoutName"];
  [v4 encodeInt:self->_keyboardType forKey:@"keyboardType"];
  [v4 encodeObject:self->_keyboardConfiguration forKey:@"keyboardConfiguration"];
  [v4 encodeInt:LODWORD(self->_userInterfaceIdiom) forKey:@"userInterfaceIdiom"];
  [v4 encodeObject:self->_testingParameters forKey:@"testingParameters"];
}

- (id)defaultLanguageOrRegionFromInputMode:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 length])
    {
      v5 = v4;
    }

    else
    {
      v5 = @"Empty";
    }
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

- (TIKBAnalyticsMetricsContext)initWithKeyboardState:(id)a3 activeInputModes:(id)a4 testingParameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 inputMode];
  v12 = TIInputModeGetLanguage();
  v13 = TIInputModeGetRegion();
  v14 = TIInputModeGetVariant();
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [(TIKBAnalyticsMetricsContext *)self defaultLanguageOrRegionFromInputMode:v11];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v13 = [(TIKBAnalyticsMetricsContext *)self defaultLanguageOrRegionFromInputMode:v11];
LABEL_3:
  v15 = @"None";
  if (!v14)
  {
    v14 = @"None";
  }

  v16 = @"None";
  v36 = v14;
  v37 = v10;
  if ([v9 count] >= 2)
  {
    v17 = [v9 objectAtIndexedSubscript:1];
    v18 = [v17 normalizedIdentifier];

    v16 = TIInputModeGetLanguage();
    v19 = TIInputModeGetRegion();
    v15 = v19;
    if (v16)
    {
      if (v19)
      {
LABEL_8:

        v14 = v36;
        v10 = v37;
        goto LABEL_9;
      }
    }

    else
    {
      v16 = [(TIKBAnalyticsMetricsContext *)self defaultLanguageOrRegionFromInputMode:v18];
      if (v15)
      {
        goto LABEL_8;
      }
    }

    v15 = [(TIKBAnalyticsMetricsContext *)self defaultLanguageOrRegionFromInputMode:v18];
    goto LABEL_8;
  }

LABEL_9:
  v38.receiver = self;
  v38.super_class = TIKBAnalyticsMetricsContext;
  v20 = [(TIAnalyticsMetricsContext *)&v38 initWithInputLanguage:v12 inputRegion:v13];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_inputVariant, v14);
    objc_storeStrong(&v21->_secondaryLanguage, v16);
    objc_storeStrong(&v21->_secondaryRegion, v15);
    v22 = [v8 layoutState];
    v21->_userInterfaceIdiom = [v22 userInterfaceIdiom];

    v21->_keyboardType = 0;
    if ([v8 hardwareKeyboardMode])
    {
      v21->_keyboardType = 5;
      v23 = [v8 layoutState];
      v24 = [v23 hardwareLayout];
    }

    else
    {
      if ([v8 floatingKeyboardMode])
      {
        v21->_keyboardType = 3;
        v21->_userInterfaceIdiom = 1;
      }

      else
      {
        if ([v8 splitKeyboardMode])
        {
          v25 = 4;
        }

        else if ([v8 landscapeOrientation])
        {
          v25 = 2;
        }

        else
        {
          v25 = 1;
        }

        v21->_keyboardType = v25;
      }

      v23 = [v8 layoutState];
      v24 = [v23 softwareLayout];
    }

    v26 = v24;
    v27 = [v24 copy];
    layoutName = v21->_layoutName;
    v21->_layoutName = v27;

    if (!v21->_layoutName)
    {
      v21->_layoutName = @"Unknown";
    }

    v29 = TIInputModeGetFullInputModeIdentifier();
    v30 = v29;
    if (!v29)
    {
      v29 = @"None";
    }

    v31 = [(__CFString *)v29 copy];
    keyboardConfiguration = v21->_keyboardConfiguration;
    v21->_keyboardConfiguration = v31;

    v10 = v37;
    v33 = _deepCopyOfStringDictionary(v37);
    testingParameters = v21->_testingParameters;
    v21->_testingParameters = v33;

    v14 = v36;
  }

  return v21;
}

- (TIKBAnalyticsMetricsContext)initWithInputLanguage:(id)a3 inputRegion:(id)a4 inputVariant:(id)a5 secondaryLanguage:(id)a6 secondaryRegion:(id)a7 layoutName:(id)a8 keyboardType:(unsigned __int8)a9 keyboardConfiguration:(id)a10 userInterfaceIdiom:(int64_t)a11 testingParameters:(id)a12
{
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v23 = a12;
  v42.receiver = self;
  v42.super_class = TIKBAnalyticsMetricsContext;
  v24 = [(TIAnalyticsMetricsContext *)&v42 initWithInputLanguage:a3 inputRegion:a4];
  if (v24)
  {
    if (v18)
    {
      v25 = v18;
    }

    else
    {
      v25 = @"None";
    }

    v26 = [(__CFString *)v25 copy];
    inputVariant = v24->_inputVariant;
    v24->_inputVariant = v26;

    if (v19)
    {
      v28 = v19;
    }

    else
    {
      v28 = @"None";
    }

    v29 = [(__CFString *)v28 copy];
    secondaryLanguage = v24->_secondaryLanguage;
    v24->_secondaryLanguage = v29;

    if (v20)
    {
      v31 = v20;
    }

    else
    {
      v31 = @"None";
    }

    v32 = [(__CFString *)v31 copy];
    secondaryRegion = v24->_secondaryRegion;
    v24->_secondaryRegion = v32;

    v34 = [v21 copy];
    layoutName = v24->_layoutName;
    v24->_layoutName = v34;

    v24->_keyboardType = a9;
    if (v22)
    {
      v36 = v22;
    }

    else
    {
      v36 = @"None";
    }

    v37 = [(__CFString *)v36 copy];
    keyboardConfiguration = v24->_keyboardConfiguration;
    v24->_keyboardConfiguration = v37;

    v24->_userInterfaceIdiom = a11;
    v39 = _deepCopyOfStringDictionary(v23);
    testingParameters = v24->_testingParameters;
    v24->_testingParameters = v39;
  }

  return v24;
}

+ (int64_t)userInterfaceIdiomStringToEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Phone"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Pad"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TV"])
  {
    v4 = 2;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (id)userInterfaceIdiomToString:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return off_278731170[a3];
  }
}

+ (unsigned)keyboardTypeStringToEnum:(id)a3
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = @"Unknown";
  v8[1] = @"Portrait";
  v8[2] = @"Landscape";
  v8[3] = @"Floating,";
  v8[4] = @"Split";
  v8[5] = @"Hardware";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v8 count:6];
  LOBYTE(v3) = [v5 indexOfObject:v4];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)keyboardTypeEnumToString:(unsigned __int8)a3
{
  v3 = a3;
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = @"Unknown";
  v8[0] = @"Unknown";
  v8[1] = @"Portrait";
  v8[2] = @"Landscape";
  v8[3] = @"Floating,";
  v8[4] = @"Split";
  v8[5] = @"Hardware";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:6];
  if ([v5 count] > v3)
  {
    v4 = [v5 objectAtIndex:v3];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

@end