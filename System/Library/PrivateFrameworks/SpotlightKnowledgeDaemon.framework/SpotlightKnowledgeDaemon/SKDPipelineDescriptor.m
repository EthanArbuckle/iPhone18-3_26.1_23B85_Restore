@interface SKDPipelineDescriptor
+ (id)descriptorFromSetDescription:(id)a3 processorNames:(id)a4;
- (BOOL)enabled;
- (NSNumber)version;
- (NSString)name;
- (SKDPipelineDescriptor)initWithSetDescription:(id)a3 processorNames:(id)a4;
@end

@implementation SKDPipelineDescriptor

+ (id)descriptorFromSetDescription:(id)a3 processorNames:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SKDPipelineDescriptor alloc] initWithSetDescription:v6 processorNames:v5];

  return v7;
}

- (SKDPipelineDescriptor)initWithSetDescription:(id)a3 processorNames:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SKDPipelineDescriptor;
  v9 = [(SKDPipelineDescriptor *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_setDescription, a3);
    v11 = [v8 copy];
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
  v2 = [(SKDPipelineDescriptor *)self setDescription];
  v3 = [v2 name];

  return v3;
}

- (NSNumber)version
{
  v2 = [(SKDPipelineDescriptor *)self setDescription];
  v3 = [v2 version];

  return v3;
}

- (BOOL)enabled
{
  v2 = [(SKDPipelineDescriptor *)self setDescription];
  v3 = [v2 enabled];

  return v3;
}

@end