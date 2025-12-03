@interface TIKBAnalyticsMetricsContext
+ (id)keyboardTypeEnumToString:(unsigned __int8)string;
+ (id)userInterfaceIdiomToString:(int64_t)string;
+ (int64_t)userInterfaceIdiomStringToEnum:(id)enum;
+ (unsigned)keyboardTypeStringToEnum:(id)enum;
- (BOOL)isEqual:(id)equal;
- (TIKBAnalyticsMetricsContext)initWithCoder:(id)coder;
- (TIKBAnalyticsMetricsContext)initWithInputLanguage:(id)language inputRegion:(id)region inputVariant:(id)variant secondaryLanguage:(id)secondaryLanguage secondaryRegion:(id)secondaryRegion layoutName:(id)name keyboardType:(unsigned __int8)type keyboardConfiguration:(id)self0 userInterfaceIdiom:(int64_t)self1 testingParameters:(id)self2;
- (TIKBAnalyticsMetricsContext)initWithKeyboardState:(id)state activeInputModes:(id)modes testingParameters:(id)parameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultLanguageOrRegionFromInputMode:(id)mode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKBAnalyticsMetricsContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
    allKeys = [(NSDictionary *)testingParameters allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v15 = [(NSDictionary *)self->_testingParameters objectForKey:*(*(&v18 + 1) + 8 * v14)];
          v8 = [v15 hash] + 257 * v8;

          ++v14;
        }

        while (v12 != v14);
        v12 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19.receiver = self;
  v19.super_class = TIKBAnalyticsMetricsContext;
  v5 = [(TIAnalyticsMetricsContext *)&v19 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_inputVariant copyWithZone:zone];
    v7 = v5[4];
    v5[4] = v6;

    v8 = [(NSString *)self->_secondaryLanguage copyWithZone:zone];
    v9 = v5[5];
    v5[5] = v8;

    v10 = [(NSString *)self->_secondaryRegion copyWithZone:zone];
    v11 = v5[6];
    v5[6] = v10;

    v12 = [(NSString *)self->_layoutName copyWithZone:zone];
    v13 = v5[7];
    v5[7] = v12;

    *(v5 + 24) = self->_keyboardType;
    v14 = [(NSString *)self->_keyboardConfiguration copyWithZone:zone];
    v15 = v5[8];
    v5[8] = v14;

    v5[9] = self->_userInterfaceIdiom;
    v16 = [(NSDictionary *)self->_testingParameters copyWithZone:zone];
    v17 = v5[10];
    v5[10] = v16;
  }

  return v5;
}

- (TIKBAnalyticsMetricsContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = TIKBAnalyticsMetricsContext;
  v5 = [(TIAnalyticsMetricsContext *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputVariant"];
    v7 = [v6 copy];
    inputVariant = v5->_inputVariant;
    v5->_inputVariant = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryLanguage"];
    v10 = [v9 copy];
    secondaryLanguage = v5->_secondaryLanguage;
    v5->_secondaryLanguage = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryRegion"];
    v13 = [v12 copy];
    secondaryRegion = v5->_secondaryRegion;
    v5->_secondaryRegion = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutName"];
    v16 = [v15 copy];
    layoutName = v5->_layoutName;
    v5->_layoutName = v16;

    v5->_keyboardType = [coderCopy decodeIntForKey:@"keyboardType"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardConfiguration"];
    v19 = [v18 copy];
    keyboardConfiguration = v5->_keyboardConfiguration;
    v5->_keyboardConfiguration = v19;

    v5->_userInterfaceIdiom = [coderCopy decodeIntForKey:@"userInterfaceIdiom"];
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"testingParameters"];

    v25 = _deepCopyOfStringDictionary(v24);
    testingParameters = v5->_testingParameters;
    v5->_testingParameters = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIKBAnalyticsMetricsContext;
  coderCopy = coder;
  [(TIAnalyticsMetricsContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_inputVariant forKey:{@"inputVariant", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_secondaryLanguage forKey:@"secondaryLanguage"];
  [coderCopy encodeObject:self->_secondaryRegion forKey:@"secondaryRegion"];
  [coderCopy encodeObject:self->_layoutName forKey:@"layoutName"];
  [coderCopy encodeInt:self->_keyboardType forKey:@"keyboardType"];
  [coderCopy encodeObject:self->_keyboardConfiguration forKey:@"keyboardConfiguration"];
  [coderCopy encodeInt:LODWORD(self->_userInterfaceIdiom) forKey:@"userInterfaceIdiom"];
  [coderCopy encodeObject:self->_testingParameters forKey:@"testingParameters"];
}

- (id)defaultLanguageOrRegionFromInputMode:(id)mode
{
  modeCopy = mode;
  v4 = modeCopy;
  if (modeCopy)
  {
    if ([modeCopy length])
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

- (TIKBAnalyticsMetricsContext)initWithKeyboardState:(id)state activeInputModes:(id)modes testingParameters:(id)parameters
{
  stateCopy = state;
  modesCopy = modes;
  parametersCopy = parameters;
  inputMode = [stateCopy inputMode];
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
    v12 = [(TIKBAnalyticsMetricsContext *)self defaultLanguageOrRegionFromInputMode:inputMode];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v13 = [(TIKBAnalyticsMetricsContext *)self defaultLanguageOrRegionFromInputMode:inputMode];
LABEL_3:
  v15 = @"None";
  if (!v14)
  {
    v14 = @"None";
  }

  v16 = @"None";
  v36 = v14;
  v37 = parametersCopy;
  if ([modesCopy count] >= 2)
  {
    v17 = [modesCopy objectAtIndexedSubscript:1];
    normalizedIdentifier = [v17 normalizedIdentifier];

    v16 = TIInputModeGetLanguage();
    v19 = TIInputModeGetRegion();
    v15 = v19;
    if (v16)
    {
      if (v19)
      {
LABEL_8:

        v14 = v36;
        parametersCopy = v37;
        goto LABEL_9;
      }
    }

    else
    {
      v16 = [(TIKBAnalyticsMetricsContext *)self defaultLanguageOrRegionFromInputMode:normalizedIdentifier];
      if (v15)
      {
        goto LABEL_8;
      }
    }

    v15 = [(TIKBAnalyticsMetricsContext *)self defaultLanguageOrRegionFromInputMode:normalizedIdentifier];
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
    layoutState = [stateCopy layoutState];
    v21->_userInterfaceIdiom = [layoutState userInterfaceIdiom];

    v21->_keyboardType = 0;
    if ([stateCopy hardwareKeyboardMode])
    {
      v21->_keyboardType = 5;
      layoutState2 = [stateCopy layoutState];
      hardwareLayout = [layoutState2 hardwareLayout];
    }

    else
    {
      if ([stateCopy floatingKeyboardMode])
      {
        v21->_keyboardType = 3;
        v21->_userInterfaceIdiom = 1;
      }

      else
      {
        if ([stateCopy splitKeyboardMode])
        {
          v25 = 4;
        }

        else if ([stateCopy landscapeOrientation])
        {
          v25 = 2;
        }

        else
        {
          v25 = 1;
        }

        v21->_keyboardType = v25;
      }

      layoutState2 = [stateCopy layoutState];
      hardwareLayout = [layoutState2 softwareLayout];
    }

    v26 = hardwareLayout;
    v27 = [hardwareLayout copy];
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

    parametersCopy = v37;
    v33 = _deepCopyOfStringDictionary(v37);
    testingParameters = v21->_testingParameters;
    v21->_testingParameters = v33;

    v14 = v36;
  }

  return v21;
}

- (TIKBAnalyticsMetricsContext)initWithInputLanguage:(id)language inputRegion:(id)region inputVariant:(id)variant secondaryLanguage:(id)secondaryLanguage secondaryRegion:(id)secondaryRegion layoutName:(id)name keyboardType:(unsigned __int8)type keyboardConfiguration:(id)self0 userInterfaceIdiom:(int64_t)self1 testingParameters:(id)self2
{
  variantCopy = variant;
  secondaryLanguageCopy = secondaryLanguage;
  secondaryRegionCopy = secondaryRegion;
  nameCopy = name;
  configurationCopy = configuration;
  parametersCopy = parameters;
  v42.receiver = self;
  v42.super_class = TIKBAnalyticsMetricsContext;
  v24 = [(TIAnalyticsMetricsContext *)&v42 initWithInputLanguage:language inputRegion:region];
  if (v24)
  {
    if (variantCopy)
    {
      v25 = variantCopy;
    }

    else
    {
      v25 = @"None";
    }

    v26 = [(__CFString *)v25 copy];
    inputVariant = v24->_inputVariant;
    v24->_inputVariant = v26;

    if (secondaryLanguageCopy)
    {
      v28 = secondaryLanguageCopy;
    }

    else
    {
      v28 = @"None";
    }

    v29 = [(__CFString *)v28 copy];
    secondaryLanguage = v24->_secondaryLanguage;
    v24->_secondaryLanguage = v29;

    if (secondaryRegionCopy)
    {
      v31 = secondaryRegionCopy;
    }

    else
    {
      v31 = @"None";
    }

    v32 = [(__CFString *)v31 copy];
    secondaryRegion = v24->_secondaryRegion;
    v24->_secondaryRegion = v32;

    v34 = [nameCopy copy];
    layoutName = v24->_layoutName;
    v24->_layoutName = v34;

    v24->_keyboardType = type;
    if (configurationCopy)
    {
      v36 = configurationCopy;
    }

    else
    {
      v36 = @"None";
    }

    v37 = [(__CFString *)v36 copy];
    keyboardConfiguration = v24->_keyboardConfiguration;
    v24->_keyboardConfiguration = v37;

    v24->_userInterfaceIdiom = idiom;
    v39 = _deepCopyOfStringDictionary(parametersCopy);
    testingParameters = v24->_testingParameters;
    v24->_testingParameters = v39;
  }

  return v24;
}

+ (int64_t)userInterfaceIdiomStringToEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"Phone"])
  {
    v4 = 0;
  }

  else if ([enumCopy isEqualToString:@"Pad"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"TV"])
  {
    v4 = 2;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (id)userInterfaceIdiomToString:(int64_t)string
{
  if (string > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return off_278731170[string];
  }
}

+ (unsigned)keyboardTypeStringToEnum:(id)enum
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = @"Unknown";
  v8[1] = @"Portrait";
  v8[2] = @"Landscape";
  v8[3] = @"Floating,";
  v8[4] = @"Split";
  v8[5] = @"Hardware";
  v3 = MEMORY[0x277CBEA60];
  enumCopy = enum;
  v5 = [v3 arrayWithObjects:v8 count:6];
  LOBYTE(v3) = [v5 indexOfObject:enumCopy];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)keyboardTypeEnumToString:(unsigned __int8)string
{
  stringCopy = string;
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = @"Unknown";
  v8[0] = @"Unknown";
  v8[1] = @"Portrait";
  v8[2] = @"Landscape";
  v8[3] = @"Floating,";
  v8[4] = @"Split";
  v8[5] = @"Hardware";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:6];
  if ([v5 count] > stringCopy)
  {
    v4 = [v5 objectAtIndex:stringCopy];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

@end