@interface SKDPipelineDescriptor
+ (id)descriptorFromSetDescription:(id)description processorNames:(id)names;
- (BOOL)enabled;
- (NSNumber)version;
- (NSString)name;
- (SKDPipelineDescriptor)initWithSetDescription:(id)description processorNames:(id)names;
@end

@implementation SKDPipelineDescriptor

+ (id)descriptorFromSetDescription:(id)description processorNames:(id)names
{
  namesCopy = names;
  descriptionCopy = description;
  v7 = [[SKDPipelineDescriptor alloc] initWithSetDescription:descriptionCopy processorNames:namesCopy];

  return v7;
}

- (SKDPipelineDescriptor)initWithSetDescription:(id)description processorNames:(id)names
{
  v20 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  namesCopy = names;
  v17.receiver = self;
  v17.super_class = SKDPipelineDescriptor;
  v9 = [(SKDPipelineDescriptor *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_setDescription, description);
    v11 = [namesCopy copy];
    processorNames = v10->_processorNames;
    v10->_processorNames = v11;

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v13 = SKGLogPipelineInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(SKDPipelineDescriptor *)v10 description];
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_INFO, "### <%@>", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (NSString)name
{
  setDescription = [(SKDPipelineDescriptor *)self setDescription];
  name = [setDescription name];

  return name;
}

- (NSNumber)version
{
  setDescription = [(SKDPipelineDescriptor *)self setDescription];
  version = [setDescription version];

  return version;
}

- (BOOL)enabled
{
  setDescription = [(SKDPipelineDescriptor *)self setDescription];
  enabled = [setDescription enabled];

  return enabled;
}

@end