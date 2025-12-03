@interface PMLSessionDescriptor
+ (float)_parseFeatureVersion:(id)version descriptor:(id)descriptor;
+ (id)descriptorForName:(id)name version:(id)version locale:(id)locale;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSubSessionDescriptor;
- (NSString)description;
- (PMLSessionDescriptor)initWithName:(id)name version:(id)version locale:(id)locale;
- (PMLSessionDescriptor)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (float)featureVersion;
- (id)baseSessionDescriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)subSessionDescriptorForLabel:(unint64_t)label;
- (id)toPlistWithChunks:(id)chunks;
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

- (PMLSessionDescriptor)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  v7 = [plistCopy objectForKeyedSubscript:@"NAME"];
  v8 = [plistCopy objectForKeyedSubscript:@"VERSION"];
  v9 = [plistCopy objectForKeyedSubscript:@"LOCALE"];

  v10 = [(PMLSessionDescriptor *)self initWithName:v7 version:v8 locale:v9];
  return v10;
}

- (id)toPlistWithChunks:(id)chunks
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    name = self->_name;
    name = [equalCopy name];
    if ([(NSString *)name isEqual:name])
    {
      version = self->_version;
      version = [equalCopy version];
      if ([(NSString *)version isEqual:version])
      {
        locale = self->_locale;
        locale = [equalCopy locale];
        v11 = [(NSString *)locale isEqual:locale];
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

- (id)copyWithZone:(_NSZone *)zone
{
  name = [(PMLSessionDescriptor *)self name];
  version = [(PMLSessionDescriptor *)self version];
  locale = [(PMLSessionDescriptor *)self locale];
  v7 = [PMLSessionDescriptor descriptorForName:name version:version locale:locale];

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
  name = [(PMLSessionDescriptor *)self name];
  name2 = [(PMLSessionDescriptor *)self name];
  v8 = [v5 firstMatchInString:name options:0 range:{0, objc_msgSend(name2, "length")}];

  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSessionDescriptor.m" lineNumber:119 description:{@"Handle %@ is not a sub-model handle.", self}];
  }

  v9 = [v8 rangeAtIndex:1];
  v11 = v10;
  name3 = [(PMLSessionDescriptor *)self name];
  v13 = [name3 substringWithRange:{v9, v11}];

  integerValue = [v13 integerValue];
  objc_autoreleasePoolPop(v4);
  return integerValue;
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
  name = [(PMLSessionDescriptor *)self name];
  name2 = [(PMLSessionDescriptor *)self name];
  v7 = [v4 numberOfMatchesInString:name options:0 range:{0, objc_msgSend(name2, "length")}];

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
  name = [(PMLSessionDescriptor *)self name];
  name2 = [(PMLSessionDescriptor *)self name];
  v7 = [v4 stringByReplacingMatchesInString:name options:0 range:0 withTemplate:{objc_msgSend(name2, "length"), &stru_28734BC68}];

  version = [(PMLSessionDescriptor *)self version];
  locale = [(PMLSessionDescriptor *)self locale];
  v10 = [PMLSessionDescriptor descriptorForName:v7 version:version locale:locale];

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

- (id)subSessionDescriptorForLabel:(unint64_t)label
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  name = [(PMLSessionDescriptor *)self name];
  label = [v6 initWithFormat:@"%@_label%lu", name, label];

  version = [(PMLSessionDescriptor *)self version];
  locale = [(PMLSessionDescriptor *)self locale];
  v11 = [PMLSessionDescriptor descriptorForName:label version:version locale:locale];

  objc_autoreleasePoolPop(v5);

  return v11;
}

- (float)featureVersion
{
  result = [(_PASLazyResult *)self->_featureVersion result];
  [result floatValue];
  v4 = v3;

  return v4;
}

- (PMLSessionDescriptor)initWithName:(id)name version:(id)version locale:(id)locale
{
  nameCopy = name;
  versionCopy = version;
  localeCopy = locale;
  if (nameCopy)
  {
    if (versionCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSessionDescriptor.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"version"}];

    if (localeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLSessionDescriptor.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"name"}];

  if (!versionCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (localeCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PMLSessionDescriptor.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"locale"}];

LABEL_4:
  v26.receiver = self;
  v26.super_class = PMLSessionDescriptor;
  v13 = [(PMLSessionDescriptor *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v14->_version, version);
    objc_storeStrong(&v14->_locale, locale);
    v15 = objc_alloc(MEMORY[0x277D425F0]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__PMLSessionDescriptor_initWithName_version_locale___block_invoke;
    v22[3] = &unk_279AC05B0;
    v23 = versionCopy;
    v24 = nameCopy;
    v25 = localeCopy;
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

+ (float)_parseFeatureVersion:(id)version descriptor:(id)descriptor
{
  versionCopy = version;
  descriptorCopy = descriptor;
  context = objc_autoreleasePoolPush();
  if (_parseFeatureVersion_descriptor___pasOnceToken0 != -1)
  {
    dispatch_once(&_parseFeatureVersion_descriptor___pasOnceToken0, &__block_literal_global_4285);
  }

  v9 = _parseFeatureVersion_descriptor___pasExprOnceResult;
  if (!v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSessionDescriptor.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"regex"}];
  }

  v10 = [v9 matchesInString:versionCopy options:0 range:{0, objc_msgSend(versionCopy, "length")}];
  v11 = [v10 count];
  v12 = MEMORY[0x277CBE658];
  if (v11 != 1)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE658];
    pattern = [v9 pattern];
    [v13 raise:v14 format:{@"Unexpected number of matches for %@; pattern: %@; descriptor: %@", versionCopy, pattern, descriptorCopy, context}];
  }

  firstObject = [v10 firstObject];
  if ([firstObject numberOfRanges] != 5)
  {
    v17 = MEMORY[0x277CBEAD8];
    v18 = *v12;
    pattern2 = [v9 pattern];
    [v17 raise:v18 format:{@"Unexpected number of match ranges for %@; pattern: %@; descriptor: %@", versionCopy, pattern2, descriptorCopy}];
  }

  v20 = [firstObject rangeAtIndex:2];
  v22 = [versionCopy substringWithRange:{v20, v21}];
  [v22 floatValue];
  v24 = v23;

  if (v24 <= 0.0)
  {
    v25 = MEMORY[0x277CBEAD8];
    v26 = *v12;
    pattern3 = [v9 pattern];
    [v25 raise:v26 format:{@"Unexpected featureVersion extracted for %@; pattern: %@; descriptor: %@", versionCopy, pattern3, descriptorCopy}];
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

+ (id)descriptorForName:(id)name version:(id)version locale:(id)locale
{
  localeCopy = locale;
  versionCopy = version;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy version:versionCopy locale:localeCopy];

  return v11;
}

@end