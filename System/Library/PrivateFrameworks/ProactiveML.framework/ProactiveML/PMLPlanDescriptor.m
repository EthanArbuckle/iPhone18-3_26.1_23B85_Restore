@interface PMLPlanDescriptor
+ (BOOL)isValidPlanId:(id)a3;
+ (id)descriptorFromPlanId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PMLPlanDescriptor)initWithName:(id)a3 version:(id)a4 locale:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PMLPlanDescriptor

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
  v4 = [PMLPlanDescriptor alloc];
  v5 = [(PMLPlanDescriptor *)self name];
  v6 = [(PMLPlanDescriptor *)self version];
  v7 = [(PMLPlanDescriptor *)self locale];
  v8 = [(PMLPlanDescriptor *)v4 initWithName:v5 version:v6 locale:v7];

  return v8;
}

- (PMLPlanDescriptor)initWithName:(id)a3 version:(id)a4 locale:(id)a5
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
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PMLPlanDescriptor.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"version"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PMLPlanDescriptor.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"name"}];

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
  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PMLPlanDescriptor.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"locale"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = PMLPlanDescriptor;
  v13 = [(PMLPlanDescriptor *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, a3);
    objc_storeStrong(&v14->_version, a4);
    objc_storeStrong(&v14->_locale, a5);
  }

  return v14;
}

+ (id)descriptorFromPlanId:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 componentsSeparatedByString:@"-"];
  if ([v7 count] != 3)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PMLPlanDescriptor.m" lineNumber:39 description:{@"Invalid planId. Must be <name>-<version>-<locale> but got %@", v5}];
  }

  v8 = [PMLPlanDescriptor alloc];
  v9 = [v7 objectAtIndexedSubscript:0];
  v10 = [v7 objectAtIndexedSubscript:1];
  v11 = [v7 objectAtIndexedSubscript:2];
  v12 = [(PMLPlanDescriptor *)v8 initWithName:v9 version:v10 locale:v11];

  objc_autoreleasePoolPop(v6);

  return v12;
}

+ (BOOL)isValidPlanId:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 componentsSeparatedByString:@"-"];
  v6 = [v5 count] == 3;

  objc_autoreleasePoolPop(v4);
  return v6;
}

@end