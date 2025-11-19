@interface TRILaunchDaemonActivityDescriptor
+ (id)launchDaemonActivityDescriptorWithName:(id)a3 supportedTaskCapabilities:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLaunchDaemonActivityDescriptor:(id)a3;
- (TRILaunchDaemonActivityDescriptor)initWithName:(id)a3 supportedTaskCapabilities:(unint64_t)a4;
- (id)copyWithReplacementName:(id)a3;
- (id)copyWithReplacementSupportedTaskCapabilities:(unint64_t)a3;
- (id)description;
@end

@implementation TRILaunchDaemonActivityDescriptor

- (TRILaunchDaemonActivityDescriptor)initWithName:(id)a3 supportedTaskCapabilities:(unint64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1038 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRILaunchDaemonActivityDescriptor;
  v9 = [(TRILaunchDaemonActivityDescriptor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v10->_supportedTaskCapabilities = a4;
  }

  return v10;
}

+ (id)launchDaemonActivityDescriptorWithName:(id)a3 supportedTaskCapabilities:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithName:v6 supportedTaskCapabilities:a4];

  return v7;
}

- (id)copyWithReplacementName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithName:v4 supportedTaskCapabilities:self->_supportedTaskCapabilities];

  return v5;
}

- (id)copyWithReplacementSupportedTaskCapabilities:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  name = self->_name;

  return [v5 initWithName:name supportedTaskCapabilities:a3];
}

- (BOOL)isEqualToLaunchDaemonActivityDescriptor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = self->_name == 0;
  v7 = [v4 name];
  v8 = v7 != 0;

  if (v6 == v8 || (name = self->_name) != 0 && ([v5 name], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](name, "isEqual:", v10), v10, !v11))
  {
LABEL_6:
    v13 = 0;
  }

  else
  {
    supportedTaskCapabilities = self->_supportedTaskCapabilities;
    v13 = supportedTaskCapabilities == [v5 supportedTaskCapabilities];
  }

  return v13;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRILaunchDaemonActivityDescriptor *)self isEqualToLaunchDaemonActivityDescriptor:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  name = self->_name;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_supportedTaskCapabilities];
  v6 = [v3 initWithFormat:@"<TRILaunchDaemonActivityDescriptor | name:%@ supportedTaskCapabilities:%@>", name, v5];

  return v6;
}

@end