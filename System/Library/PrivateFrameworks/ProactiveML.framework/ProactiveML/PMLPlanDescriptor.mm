@interface PMLPlanDescriptor
+ (BOOL)isValidPlanId:(id)id;
+ (id)descriptorFromPlanId:(id)id;
- (BOOL)isEqual:(id)equal;
- (PMLPlanDescriptor)initWithName:(id)name version:(id)version locale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PMLPlanDescriptor

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
  v4 = [PMLPlanDescriptor alloc];
  name = [(PMLPlanDescriptor *)self name];
  version = [(PMLPlanDescriptor *)self version];
  locale = [(PMLPlanDescriptor *)self locale];
  v8 = [(PMLPlanDescriptor *)v4 initWithName:name version:version locale:locale];

  return v8;
}

- (PMLPlanDescriptor)initWithName:(id)name version:(id)version locale:(id)locale
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPlanDescriptor.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"version"}];

    if (localeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLPlanDescriptor.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"name"}];

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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PMLPlanDescriptor.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"locale"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = PMLPlanDescriptor;
  v13 = [(PMLPlanDescriptor *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v14->_version, version);
    objc_storeStrong(&v14->_locale, locale);
  }

  return v14;
}

+ (id)descriptorFromPlanId:(id)id
{
  idCopy = id;
  v6 = objc_autoreleasePoolPush();
  v7 = [idCopy componentsSeparatedByString:@"-"];
  if ([v7 count] != 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPlanDescriptor.m" lineNumber:39 description:{@"Invalid planId. Must be <name>-<version>-<locale> but got %@", idCopy}];
  }

  v8 = [PMLPlanDescriptor alloc];
  v9 = [v7 objectAtIndexedSubscript:0];
  v10 = [v7 objectAtIndexedSubscript:1];
  v11 = [v7 objectAtIndexedSubscript:2];
  v12 = [(PMLPlanDescriptor *)v8 initWithName:v9 version:v10 locale:v11];

  objc_autoreleasePoolPop(v6);

  return v12;
}

+ (BOOL)isValidPlanId:(id)id
{
  idCopy = id;
  v4 = objc_autoreleasePoolPush();
  v5 = [idCopy componentsSeparatedByString:@"-"];
  v6 = [v5 count] == 3;

  objc_autoreleasePoolPop(v4);
  return v6;
}

@end