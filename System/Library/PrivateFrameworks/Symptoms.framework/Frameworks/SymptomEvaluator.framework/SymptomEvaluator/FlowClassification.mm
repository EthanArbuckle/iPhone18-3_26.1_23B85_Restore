@interface FlowClassification
+ (FlowClassification)classificationWithDictionary:(id)dictionary;
+ (FlowClassification)defaultInstance;
+ (id)classFlagsToString:(unsigned int)string;
+ (id)undefinedInstance;
+ (unsigned)dispositionFromDigest:(FlowClassificationDigest *)digest;
- (BOOL)configure:(id)configure;
- (BOOL)setOnExpiry:(id)expiry;
- (id)description;
- (id)dictionaryForm;
@end

@implementation FlowClassification

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"FlowClassification"];
  if ([(FlowClassification *)self jitter])
  {
    [v3 appendFormat:@" jitter:%s", flowPropertyScaleString(-[FlowClassification jitter](self, "jitter"))];
  }

  if ([(FlowClassification *)self latency])
  {
    [v3 appendFormat:@" latency:%s", flowPropertyScaleString(-[FlowClassification latency](self, "latency"))];
  }

  if ([(FlowClassification *)self burstiness])
  {
    [v3 appendFormat:@" burstiness:%s", flowPropertyScaleString(-[FlowClassification burstiness](self, "burstiness"))];
  }

  if ([(FlowClassification *)self lossTolerance])
  {
    [v3 appendFormat:@" lossTolerance:%s", flowPropertyScaleString(-[FlowClassification lossTolerance](self, "lossTolerance"))];
  }

  if ([(FlowClassification *)self size])
  {
    [v3 appendFormat:@" size:%s", flowPropertyScaleString(-[FlowClassification size](self, "size"))];
  }

  if ([(FlowClassification *)self duration])
  {
    [v3 appendFormat:@" duration:%s", flowPropertyScaleString(-[FlowClassification duration](self, "duration"))];
  }

  if ([(FlowClassification *)self requiredBandwidth])
  {
    [v3 appendFormat:@" reqdBandwidth:%s", flowPropertyScaleString(-[FlowClassification requiredBandwidth](self, "requiredBandwidth"))];
  }

  if ([(FlowClassification *)self preferredBandwidth])
  {
    [v3 appendFormat:@" prefBandwidth:%s", flowPropertyScaleString(-[FlowClassification preferredBandwidth](self, "preferredBandwidth"))];
  }

  disposition = [(FlowClassification *)self disposition];
  if (disposition)
  {
    v5 = &off_27898E140;
    v6 = "unknown";
    while (1)
    {
      v7 = *v5;
      if (!*v5)
      {
        break;
      }

      v8 = *(v5 - 2);
      v5 += 2;
      if (v8 == disposition)
      {
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = "alt-large";
  }

  [v3 appendFormat:@" type:%s", v6];
  [(FlowClassification *)self expirationTime];
  if (v9 != 0.0)
  {
    [(FlowClassification *)self expirationTime];
    [v3 appendFormat:@" expirationTime:%f", v10];
    nextClassification = [(FlowClassification *)self nextClassification];

    if (nextClassification)
    {
      nextClassification2 = [(FlowClassification *)self nextClassification];
      v13 = [nextClassification2 description];
      [v3 appendFormat:@" next:%@", v13];
    }
  }

  return v3;
}

- (BOOL)configure:(id)configure
{
  v58 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v30 = 0;
    v29 = 0;
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v6 = 0;
    v24 = 0;
    if (objc_opt_isKindOfClass())
    {
      v31 = dispositionFromString(configureCopy);
    }

    else
    {
      v31 = 42;
    }

    goto LABEL_47;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = configureCopy;
  v5 = configureCopy;
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (!v6)
  {
    v30 = 0;
    v29 = 0;
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v43 = 42;
    goto LABEL_46;
  }

  selfCopy = self;
  v38 = 0;
  v39 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v8 = 0;
  v9 = *v50;
  v43 = 42;
  *&v7 = 134218240;
  v34 = v7;
  do
  {
    v10 = 0;
    do
    {
      if (*v50 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v49 + 1) + 8 * v10);
      if ([v11 isEqualToString:{@"LATENCY", v34}])
      {
        v12 = [v5 objectForKeyedSubscript:v11];
        v8 = scaleFromString(v12);
LABEL_21:

        goto LABEL_22;
      }

      if ([v11 isEqualToString:@"JITTER"])
      {
        v12 = [v5 objectForKeyedSubscript:v11];
        v48 = scaleFromString(v12);
        goto LABEL_21;
      }

      if ([v11 isEqualToString:@"LOSS_TOLERANCE"])
      {
        v12 = [v5 objectForKeyedSubscript:v11];
        v47 = scaleFromString(v12);
        goto LABEL_21;
      }

      if ([v11 isEqualToString:@"DURATION"])
      {
        v12 = [v5 objectForKeyedSubscript:v11];
        v46 = scaleFromString(v12);
        goto LABEL_21;
      }

      if ([v11 isEqualToString:@"REQD_BANDWIDTH"])
      {
        v12 = [v5 objectForKeyedSubscript:v11];
        v45 = scaleFromString(v12);
        goto LABEL_21;
      }

      if ([v11 isEqualToString:@"PREF_BANDWIDTH"])
      {
        v12 = [v5 objectForKeyedSubscript:v11];
        v44 = scaleFromString(v12);
        goto LABEL_21;
      }

      if ([v11 isEqualToString:@"TRACKING_CLASS"])
      {
        v12 = [v5 objectForKeyedSubscript:v11];
        v43 = dispositionFromString(v12);
        goto LABEL_21;
      }

      if ([v11 isEqualToString:@"EXPIRATION"])
      {
        v13 = [v5 objectForKeyedSubscript:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = [v5 objectForKeyedSubscript:v11];
          v36 = [v40 isEqualToString:@"Automatic"];

          v39 |= v36;
        }

        v14 = [v5 objectForKeyedSubscript:v11];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v42 = [v5 objectForKeyedSubscript:v11];
          [v42 floatValue];
          v16 = vcvts_n_u32_f32(v15, 3uLL);

          v38 = v16;
          if (v16 >= 0x800)
          {
            if (v16 != 2048)
            {
              v17 = configurationLogHandle;
              if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
              {
                v18 = v17;
                v19 = [v5 objectForKeyedSubscript:v11];
                [v19 floatValue];
                *buf = v34;
                v54 = v20;
                v55 = 1024;
                LODWORD(v56) = 256;
                _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Requested expiration time %f for flow classification too large, reducing to %d", buf, 0x12u);
              }
            }

            v38 = 2047;
          }
        }
      }

      else
      {
        if ([v11 isEqualToString:@"ON_EXPIRY"])
        {
          v12 = [v5 objectForKeyedSubscript:v11];
          v21 = objc_alloc_init(FlowClassification);
          [(FlowClassification *)v21 configure:v12];
          [(FlowClassification *)selfCopy setNextClassification:v21];

          goto LABEL_21;
        }

        v22 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v54 = *&v11;
          v55 = 2112;
          v56 = v5;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Unknown flow configuration key %@ in dictionary %@", buf, 0x16u);
        }
      }

LABEL_22:
      ++v10;
    }

    while (v6 != v10);
    v23 = [v5 countByEnumeratingWithState:&v49 objects:v57 count:16];
    v6 = v23;
  }

  while (v23);
  v24 = v8 << 8;
  v6 = v48 << 12;
  v25 = v47 << 16;
  v26 = v46 << 20;
  v27 = v45 << 24;
  v28 = v44 << 28;
  if (v39)
  {
    v29 = 0x800000000000;
  }

  else
  {
    v29 = 0;
  }

  v30 = v38 << 32;
  self = selfCopy;
LABEL_46:

  configureCopy = v35;
  v31 = v43;
LABEL_47:
  self->_condensedValues = v29 | v30 | v31 | v28 | v27 | v26 | v25 | v6 | v24;

  v32 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)setOnExpiry:(id)expiry
{
  expiryCopy = expiry;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(FlowClassification *)self setNextClassification:expiryCopy];
  }

  return isKindOfClass & 1;
}

+ (FlowClassification)classificationWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(FlowClassification);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"disposition"];
  if (v6)
  {
    v7 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"disposition"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:@"disposition"];
      -[FlowClassification setDisposition:](v5, "setDisposition:", [v10 unsignedIntValue]);
    }
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"nextClassification"];
  if (v11)
  {
    v12 = v11;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"nextClassification"];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"nextClassification"];
      v16 = [self classificationWithDictionary:v15];
      [(FlowClassification *)v5 setNextClassification:v16];
    }
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"expirationTime"];
  if (v17)
  {
    v18 = v17;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"expirationTime"];
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();

    if (v20)
    {
      v21 = [dictionaryCopy objectForKeyedSubscript:@"expirationTime"];
      [v21 floatValue];
      [(FlowClassification *)v5 setExpirationTime:v22];
    }
  }

  return v5;
}

- (id)dictionaryForm
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  nextClassification = self->_nextClassification;
  if (nextClassification)
  {
    dictionaryForm = [(FlowClassification *)nextClassification dictionaryForm];
    [dictionary setObject:dictionaryForm forKeyedSubscript:@"nextClassification"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[FlowClassification disposition](self, "disposition")}];
  [dictionary setObject:v6 forKeyedSubscript:@"disposition"];

  v7 = MEMORY[0x277CCABB0];
  [(FlowClassification *)self expirationTime];
  *&v8 = v8;
  v9 = [v7 numberWithFloat:v8];
  [dictionary setObject:v9 forKeyedSubscript:@"expirationTime"];

  return dictionary;
}

+ (unsigned)dispositionFromDigest:(FlowClassificationDigest *)digest
{
  if (digest)
  {
    return digest->var0 != 0;
  }

  else
  {
    return 42;
  }
}

+ (id)classFlagsToString:(unsigned int)string
{
  string = [MEMORY[0x277CCAB68] string];
  v5 = 0;
  for (i = 0; i != 32; ++i)
  {
    if ((string >> i))
    {
      if (i)
      {
        v7 = &off_27898E140;
        while (1)
        {
          v8 = *v7;
          if (!*v7)
          {
            break;
          }

          v9 = *(v7 - 2);
          v7 += 2;
          if (v9 == i)
          {
            goto LABEL_10;
          }
        }

        v8 = "unknown";
      }

      else
      {
        v8 = "alt-large";
      }

LABEL_10:
      if (v5)
      {
        v10 = @":%s";
      }

      else
      {
        v10 = @"%s";
      }

      [string appendFormat:v10, v8];
      v5 = 1;
    }
  }

  return string;
}

+ (FlowClassification)defaultInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__FlowClassification_defaultInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultInstance_pred != -1)
  {
    dispatch_once(&defaultInstance_pred, block);
  }

  v2 = defaultInstance_defaultInstance;

  return v2;
}

uint64_t __37__FlowClassification_defaultInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultInstance_defaultInstance;
  defaultInstance_defaultInstance = v1;

  v3 = defaultInstance_defaultInstance;

  return [v3 configure:@"TRACKING_DISPOSITION_UNKNOWN_OTHER"];
}

+ (id)undefinedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__FlowClassification_undefinedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (undefinedInstance_pred != -1)
  {
    dispatch_once(&undefinedInstance_pred, block);
  }

  v2 = undefinedInstance_undefinedInstance;

  return v2;
}

uint64_t __39__FlowClassification_undefinedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = undefinedInstance_undefinedInstance;
  undefinedInstance_undefinedInstance = v1;

  v3 = undefinedInstance_undefinedInstance;

  return [v3 configure:@"TRACKING_DISPOSITION_UNDEFINED"];
}

@end