@interface PMLSessionDescriptor
+ (float)_parseFeatureVersion:(id)a3 descriptor:(id)a4;
+ (id)descriptorForName:(id)a3 version:(id)a4 locale:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSubSessionDescriptor;
- (NSString)description;
- (PMLSessionDescriptor)initWithName:(id)a3 version:(id)a4 locale:(id)a5;
- (PMLSessionDescriptor)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (float)featureVersion;
- (id)baseSessionDescriptor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)subSessionDescriptorForLabel:(unint64_t)a3;
- (id)toPlistWithChunks:(id)a3;
- (unint64_t)hash;
- (unint64_t)subSessionLabel;
@end

@implementation PMLSessionDescriptor

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %@ %@ %@>", v5, self->_name, self->_version, self->_locale];

  return v6;
}

- (PMLSessionDescriptor)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"NAME"];
  v8 = [v6 objectForKeyedSubscript:@"VERSION"];
  v9 = [v6 objectForKeyedSubscript:@"LOCALE"];

  v10 = [(PMLSessionDescriptor *)self initWithName:v7 version:v8 locale:v9];
  return v10;
}

- (id)toPlistWithChunks:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *&self->_name;
  v7[0] = @"NAME";
  v7[1] = @"VERSION";
  v8 = v3;
  v7[2] = @"LOCALE";
  locale = self->_locale;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:v7 count:3];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    name = self->_name;
    v6 = [v4 name];
    if ([(NSString *)name isEqual:v6])
    {
      version = self->_version;
      v8 = [v4 version];
      if ([(NSString *)version isEqual:v8])
      {
        locale = self->_locale;
        v10 = [v4 locale];
        v11 = [(NSString *)locale isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_version hash]^ v3;
  return v4 ^ [(NSString *)self->_locale hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PMLSessionDescriptor *)self name];
  v5 = [(PMLSessionDescriptor *)self version];
  v6 = [(PMLSessionDescriptor *)self locale];
  v7 = [PMLSessionDescriptor descriptorForName:v4 version:v5 locale:v6];

  return v7;
}

- (unint64_t)subSessionLabel
{
  v4 = objc_autoreleasePoolPush();
  if (subSessionLabel__pasOnceToken3 != -1)
  {
    dispatch_once(&subSessionLabel__pasOnceToken3, &__block_literal_global_53);
  }

  v5 = subSessionLabel__pasExprOnceResult;
  v6 = [(PMLSessionDescriptor *)self name];
  v7 = [(PMLSessionDescriptor *)self name];
  v8 = [v5 firstMatchInString:v6 options:0 range:{0, objc_msgSend(v7, "length")}];

  if (!v8)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PMLSessionDescriptor.m" lineNumber:119 description:{@"Handle %@ is not a sub-model handle.", self}];
  }

  v9 = [v8 rangeAtIndex:1];
  v11 = v10;
  v12 = [(PMLSessionDescriptor *)self name];
  v13 = [v12 substringWithRange:{v9, v11}];

  v14 = [v13 integerValue];
  objc_autoreleasePoolPop(v4);
  return v14;
}

void __39__PMLSessionDescriptor_subSessionLabel__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"_label([0-9]+)" options:1 error:0];
  v2 = subSessionLabel__pasExprOnceResult;
  subSessionLabel__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)isSubSessionDescriptor
{
  v3 = objc_autoreleasePoolPush();
  if (isSubSessionDescriptor__pasOnceToken2 != -1)
  {
    dispatch_once(&isSubSessionDescriptor__pasOnceToken2, &__block_literal_global_51);
  }

  v4 = isSubSessionDescriptor__pasExprOnceResult;
  v5 = [(PMLSessionDescriptor *)self name];
  v6 = [(PMLSessionDescriptor *)self name];
  v7 = [v4 numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v6, "length")}];

  objc_autoreleasePoolPop(v3);
  return v7 != 0;
}

void __46__PMLSessionDescriptor_isSubSessionDescriptor__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"_label[0-9]+" options:1 error:0];
  v2 = isSubSessionDescriptor__pasExprOnceResult;
  isSubSessionDescriptor__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)baseSessionDescriptor
{
  v3 = objc_autoreleasePoolPush();
  if (baseSessionDescriptor__pasOnceToken1 != -1)
  {
    dispatch_once(&baseSessionDescriptor__pasOnceToken1, &__block_literal_global_43);
  }

  v4 = baseSessionDescriptor__pasExprOnceResult;
  v5 = [(PMLSessionDescriptor *)self name];
  v6 = [(PMLSessionDescriptor *)self name];
  v7 = [v4 stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v6, "length"), &stru_28734BC68}];

  v8 = [(PMLSessionDescriptor *)self version];
  v9 = [(PMLSessionDescriptor *)self locale];
  v10 = [PMLSessionDescriptor descriptorForName:v7 version:v8 locale:v9];

  objc_autoreleasePoolPop(v3);

  return v10;
}

void __45__PMLSessionDescriptor_baseSessionDescriptor__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"_label[0-9]+" options:1 error:0];
  v2 = baseSessionDescriptor__pasExprOnceResult;
  baseSessionDescriptor__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)subSessionDescriptorForLabel:(unint64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [(PMLSessionDescriptor *)self name];
  v8 = [v6 initWithFormat:@"%@_label%lu", v7, a3];

  v9 = [(PMLSessionDescriptor *)self version];
  v10 = [(PMLSessionDescriptor *)self locale];
  v11 = [PMLSessionDescriptor descriptorForName:v8 version:v9 locale:v10];

  objc_autoreleasePoolPop(v5);

  return v11;
}

- (float)featureVersion
{
  v2 = [(_PASLazyResult *)self->_featureVersion result];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (PMLSessionDescriptor)initWithName:(id)a3 version:(id)a4 locale:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PMLSessionDescriptor.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"version"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"PMLSessionDescriptor.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"name"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"PMLSessionDescriptor.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"locale"}];

LABEL_4:
  v26.receiver = self;
  v26.super_class = PMLSessionDescriptor;
  v13 = [(PMLSessionDescriptor *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, a3);
    objc_storeStrong(&v14->_version, a4);
    objc_storeStrong(&v14->_locale, a5);
    v15 = objc_alloc(MEMORY[0x277D425F0]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__PMLSessionDescriptor_initWithName_version_locale___block_invoke;
    v22[3] = &unk_279AC05B0;
    v23 = v11;
    v24 = v10;
    v25 = v12;
    v16 = [v15 initWithBlock:v22];
    featureVersion = v14->_featureVersion;
    v14->_featureVersion = v16;
  }

  return v14;
}

id __52__PMLSessionDescriptor_initWithName_version_locale___block_invoke(void *a1)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = a1[4];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = a1[4];
  v6 = [v4 initWithFormat:@"%@-%@-%@", a1[5], v5, a1[6]];
  [PMLSessionDescriptor _parseFeatureVersion:v3 descriptor:v6];
  v7 = [v2 numberWithFloat:?];

  return v7;
}

+ (float)_parseFeatureVersion:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  context = objc_autoreleasePoolPush();
  if (_parseFeatureVersion_descriptor___pasOnceToken0 != -1)
  {
    dispatch_once(&_parseFeatureVersion_descriptor___pasOnceToken0, &__block_literal_global_4285);
  }

  v9 = _parseFeatureVersion_descriptor___pasExprOnceResult;
  if (!v9)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"PMLSessionDescriptor.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"regex"}];
  }

  v10 = [v9 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
  v11 = [v10 count];
  v12 = MEMORY[0x277CBE658];
  if (v11 != 1)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE658];
    v15 = [v9 pattern];
    [v13 raise:v14 format:{@"Unexpected number of matches for %@; pattern: %@; descriptor: %@", v7, v15, v8, context}];
  }

  v16 = [v10 firstObject];
  if ([v16 numberOfRanges] != 5)
  {
    v17 = MEMORY[0x277CBEAD8];
    v18 = *v12;
    v19 = [v9 pattern];
    [v17 raise:v18 format:{@"Unexpected number of match ranges for %@; pattern: %@; descriptor: %@", v7, v19, v8}];
  }

  v20 = [v16 rangeAtIndex:2];
  v22 = [v7 substringWithRange:{v20, v21}];
  [v22 floatValue];
  v24 = v23;

  if (v24 <= 0.0)
  {
    v25 = MEMORY[0x277CBEAD8];
    v26 = *v12;
    v27 = [v9 pattern];
    [v25 raise:v26 format:{@"Unexpected featureVersion extracted for %@; pattern: %@; descriptor: %@", v7, v27, v8}];
  }

  objc_autoreleasePoolPop(context);
  return v24;
}

void __56__PMLSessionDescriptor__parseFeatureVersion_descriptor___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(^|&)FV=([0-9]+(.[0-9]+)?)($|&)" options:0 error:0];
  v2 = _parseFeatureVersion_descriptor___pasExprOnceResult;
  _parseFeatureVersion_descriptor___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

+ (id)descriptorForName:(id)a3 version:(id)a4 locale:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 version:v9 locale:v8];

  return v11;
}

@end