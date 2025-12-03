@interface TRILaunchDaemonActivityDescriptor
+ (id)launchDaemonActivityDescriptorWithName:(id)name supportedTaskCapabilities:(unint64_t)capabilities;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLaunchDaemonActivityDescriptor:(id)descriptor;
- (TRILaunchDaemonActivityDescriptor)initWithName:(id)name supportedTaskCapabilities:(unint64_t)capabilities;
- (id)copyWithReplacementName:(id)name;
- (id)copyWithReplacementSupportedTaskCapabilities:(unint64_t)capabilities;
- (id)description;
@end

@implementation TRILaunchDaemonActivityDescriptor

- (TRILaunchDaemonActivityDescriptor)initWithName:(id)name supportedTaskCapabilities:(unint64_t)capabilities
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1038 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRILaunchDaemonActivityDescriptor;
  v9 = [(TRILaunchDaemonActivityDescriptor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v10->_supportedTaskCapabilities = capabilities;
  }

  return v10;
}

+ (id)launchDaemonActivityDescriptorWithName:(id)name supportedTaskCapabilities:(unint64_t)capabilities
{
  nameCopy = name;
  v7 = [[self alloc] initWithName:nameCopy supportedTaskCapabilities:capabilities];

  return v7;
}

- (id)copyWithReplacementName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithName:nameCopy supportedTaskCapabilities:self->_supportedTaskCapabilities];

  return v5;
}

- (id)copyWithReplacementSupportedTaskCapabilities:(unint64_t)capabilities
{
  v5 = objc_alloc(objc_opt_class());
  name = self->_name;

  return [v5 initWithName:name supportedTaskCapabilities:capabilities];
}

- (BOOL)isEqualToLaunchDaemonActivityDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  if (!descriptorCopy)
  {
    goto LABEL_6;
  }

  v6 = self->_name == 0;
  name = [descriptorCopy name];
  v8 = name != 0;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRILaunchDaemonActivityDescriptor *)self isEqualToLaunchDaemonActivityDescriptor:v5];
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