@interface RMModelPayloadBase
+ (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4;
+ (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5;
- (BOOL)_loadObjectOfClass:(Class)a3 fromDictionary:(id)a4 usingKey:(id)a5 isRequired:(BOOL)a6 defaultValue:(id)a7 payloadValue:(id *)a8 error:(id *)a9;
- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5;
- (BOOL)loadObjectsFromDictionary:(id)a3 forKeyPath:(id)a4 classType:(Class)a5 serializationType:(signed __int16)a6 error:(id *)a7;
- (RMModelPayloadBase)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_serializeItemIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 isRequired:(BOOL)a6 isDefaultValue:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
- (void)mergeUnknownKeysFrom:(id)a3 parentKey:(id)a4;
- (void)serializeArrayIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 itemSerializer:(id)a6 isRequired:(BOOL)a7 defaultValue:(id)a8;
- (void)serializeDictionaryIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 dictSerializer:(id)a6 isRequired:(BOOL)a7 defaultValue:(id)a8;
- (void)serializeObjectsIntoDictionary:(id)a3 value:(id)a4 classType:(Class)a5 serializationType:(signed __int16)a6;
@end

@implementation RMModelPayloadBase

- (void)mergeUnknownKeysFrom:(id)a3 parentKey:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 unknownPayloadKeys];
  v9 = [v8 count];

  if (v9)
  {
    v22 = self;
    v10 = MEMORY[0x277CBEB58];
    v11 = [v6 unknownPayloadKeys];
    v12 = [v10 setWithCapacity:{objc_msgSend(v11, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [v6 unknownPayloadKeys];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, *(*(&v23 + 1) + 8 * v17)];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v19 = [(RMModelPayloadBase *)v22 unknownPayloadKeys];
    v20 = [v19 setByAddingObjectsFromSet:v12];
    [(RMModelPayloadBase *)v22 setUnknownPayloadKeys:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4
{
  v6 = [a1 supportedOS];
  LOBYTE(a4) = [RMModelPayloadUtilities isSupportedForPlatform:a3 scope:a4 supportedOS:v6];

  return a4;
}

+ (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5
{
  v8 = [a1 supportedOS];
  LOBYTE(a5) = [RMModelPayloadUtilities isSupportedForPlatform:a3 scope:a4 enrollmentType:a5 supportedOS:v8];

  return a5;
}

- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5
{
  v8 = [objc_opt_class() supportedOS];
  LOBYTE(a5) = [RMModelPayloadUtilities isSupportedForPlatform:a3 scope:a4 enrollmentType:a5 supportedOS:v8];

  return a5;
}

- (BOOL)_loadObjectOfClass:(Class)a3 fromDictionary:(id)a4 usingKey:(id)a5 isRequired:(BOOL)a6 defaultValue:(id)a7 payloadValue:(id *)a8 error:(id *)a9
{
  v11 = a6;
  v30[1] = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a7;
  v15 = [a4 objectForKey:v13];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    if (v11)
    {
      if (a9)
      {
        v19 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA450];
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing required key: %@", v13];
        v30[0] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        *a9 = [v19 errorWithDomain:@"error" code:1 userInfo:v21];
      }

      v18 = 0;
      *a8 = 0;
      goto LABEL_12;
    }

    v16 = v14;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  if (objc_opt_isKindOfClass())
  {
LABEL_4:
    v17 = v16;
    *a8 = v16;

    v18 = 1;
    goto LABEL_12;
  }

  if (a9)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrong type, key: %@", v13, *MEMORY[0x277CCA450]];
    v28 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *a9 = [v22 errorWithDomain:@"error" code:1 userInfo:v24];
  }

  *a8 = 0;

  v18 = 0;
LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)loadObjectsFromDictionary:(id)a3 forKeyPath:(id)a4 classType:(Class)a5 serializationType:(signed __int16)a6 error:(id *)a7
{
  v26 = a6;
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v25 = a4;
  v11 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        if (objc_opt_class() == a5 || objc_opt_class() == a5 || objc_opt_class() == a5 || objc_opt_class() == a5)
        {
          v29 = 0;
          v20 = [(RMModelPayloadBase *)self _loadObjectOfClass:a5 fromDictionary:v12 usingKey:v17 isRequired:1 defaultValue:0 payloadValue:&v29 error:a7];
          v19 = v29;
          if (!v20)
          {
LABEL_16:

            v22 = 0;
            v21 = v25;
            goto LABEL_17;
          }
        }

        else
        {
          v28 = 0;
          v18 = [(RMModelPayloadBase *)self getModelObjectFromDictionary:v12 usingKey:v17 classType:a5 isRequired:1 defaultValue:0 serializationType:v26 payloadValue:&v28 error:a7];
          v19 = v28;
          if (!v18)
          {
            goto LABEL_16;
          }
        }

        [v11 setObject:v19 forKeyedSubscript:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v21 = v25;
  [(RMModelPayloadBase *)self setValue:v11 forKey:v25];
  v22 = 1;
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_serializeItemIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 isRequired:(BOOL)a6 isDefaultValue:(BOOL)a7
{
  v7 = !a7;
  if (!a5)
  {
    v7 = 0;
  }

  if (v7 || a6)
  {
    [a3 setObject:a5 forKeyedSubscript:a4];
  }
}

- (void)serializeArrayIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 itemSerializer:(id)a6 isRequired:(BOOL)a7 defaultValue:(id)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = v17;
  if (v15)
  {
    v28 = v17;
    v29 = a7;
    v30 = v13;
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = v15;
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        v24 = 0;
        do
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = v16[2](v16, *(*(&v31 + 1) + 8 * v24));
          [v19 addObject:v25];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v22);
    }

    v13 = v30;
    v18 = v28;
    if (v29)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (a7)
    {
LABEL_13:
      v26 = [v19 copy];
      [v13 setObject:v26 forKeyedSubscript:v14];

      goto LABEL_14;
    }
  }

  if (v19)
  {
    goto LABEL_13;
  }

LABEL_14:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)serializeDictionaryIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 dictSerializer:(id)a6 isRequired:(BOOL)a7 defaultValue:(id)a8
{
  v18 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  if (v14)
  {
    v17 = v15[2](v15, v14);
    if (a7)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!v17)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = 0;
  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_6:
  [v18 setObject:v17 forKeyedSubscript:v13];
LABEL_7:
}

- (void)serializeObjectsIntoDictionary:(id)a3 value:(id)a4 classType:(Class)a5 serializationType:(signed __int16)a6
{
  v26 = a6;
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    v14 = 0x277CCA000uLL;
    do
    {
      v15 = 0;
      v25 = v12;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        v17 = *(v14 + 3240);
        if (objc_opt_class() == a5 || objc_opt_class() == a5)
        {
          v22 = [v10 objectForKeyedSubscript:{v16, v25}];
          [(RMModelPayloadBase *)self _serializeItemIntoDictionary:v9 usingKey:v16 value:v22 isRequired:1 isDefaultValue:0];
        }

        else if (objc_opt_class() == a5)
        {
          v22 = [v10 objectForKeyedSubscript:v16];
          [(RMModelPayloadBase *)self serializeDateIntoDictionary:v9 usingKey:v16 value:v22 isRequired:1 defaultValue:0 serializationType:v26];
        }

        else
        {
          v18 = v13;
          v19 = v14;
          v20 = objc_opt_class();
          v21 = [v10 objectForKeyedSubscript:v16];
          v22 = v21;
          if (v20 == a5)
          {
            [(RMModelPayloadBase *)self serializeDataIntoDictionary:v9 usingKey:v16 value:v21 isRequired:1 defaultValue:0 serializationType:v26];
          }

          else
          {
            v23 = [v21 serializeWithType:v26];
            [v9 setObject:v23 forKeyedSubscript:v16];
          }

          v14 = v19;
          v13 = v18;
          v12 = v25;
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMModelPayloadBase *)self serializeWithType:0];
  [v4 encodeObject:v5 forKey:@"payload"];
}

- (RMModelPayloadBase)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = RMModelPayloadBase;
  v5 = [(RMModelPayloadBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_3;
  }

  v20 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v20 setWithObjects:{v19, v18, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"payload"];
  v21 = 0;
  LODWORD(v13) = [(RMModelPayloadBase *)v5 loadFromDictionary:v15 serializationType:0 error:&v21];

  v16 = 0;
  if (v13)
  {
LABEL_3:
    v16 = v5;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();

  return objc_opt_new();
}

@end