@interface SKDTestProcessor
- (BOOL)willProcessRecord:(id)record bundleID:(id)d;
- (SKDTestProcessor)initWithName:(id)name;
- (id)processRecord:(id)record bundleID:(id)d;
- (id)requiredAttributes;
@end

@implementation SKDTestProcessor

- (SKDTestProcessor)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = SKDTestProcessor;
  return [(SKDRecordProcessor *)&v4 initWithName:name];
}

- (id)requiredAttributes
{
  if (requiredAttributes_onceToken != -1)
  {
    [SKDTestProcessor requiredAttributes];
  }

  v3 = requiredAttributes_sTestRequired;

  return v3;
}

void __38__SKDTestProcessor_requiredAttributes__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC31F0];
  v4[0] = *MEMORY[0x277CC31A0];
  v4[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = requiredAttributes_sTestRequired;
  requiredAttributes_sTestRequired = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)willProcessRecord:(id)record bundleID:(id)d
{
  v5.receiver = self;
  v5.super_class = SKDTestProcessor;
  return [(SKDRecordProcessor *)&v5 willProcessRecord:record bundleID:d];
}

- (id)processRecord:(id)record bundleID:(id)d
{
  v18[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = [SKDRecordUpdate alloc];
  v7 = [objc_opt_class() description];
  v8 = [(SKDRecordUpdate *)v6 initWithStatus:0 identifier:v7 bundleID:dCopy];

  name = [(SKDRecordProcessor *)self name];
  [(SKDItemUpdate *)v8 setPipeline:name];

  name2 = [(SKDRecordProcessor *)self name];
  LODWORD(v7) = [name2 isEqualToString:@"PASSING_TEST_PROCESSOR"];

  if (v7)
  {
    [(SKDEvent *)v8 updateStatus:2];
    v17[0] = @"_kMDItemTestAttribute";
    v18[0] = &unk_2846E7A58;
    marker = [(SKDRecordProcessor *)self marker];
    v17[1] = marker;
    v18[1] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [(SKDItemUpdate *)v8 addAttributesFromDictionary:v12];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    marker = [v13 initWithDomain:@"SKDTestProcessorInfoErrorDomain" code:-1000 userInfo:MEMORY[0x277CBEC10]];
    [(SKDEvent *)v8 updateStatus:4];
    [(SKDEvent *)v8 updateInfo:marker];
  }

  logger = [(SKDRecordProcessor *)self logger];
  [logger logEvent:v8];

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

@end