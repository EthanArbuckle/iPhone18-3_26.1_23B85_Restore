@interface HVConsumerReply
+ (id)failedWithError:(id)error;
+ (id)ignored;
+ (id)interrupted;
+ (id)successWithNumberOfExtractions:(id)extractions;
- (HVConsumerReply)initWithSuccess:(BOOL)success contentWasProcessed:(id)processed numberOfExtractions:(id)extractions error:(id)error;
@end

@implementation HVConsumerReply

+ (id)ignored
{
  v2 = [HVConsumerReply alloc];
  v3 = [(HVConsumerReply *)v2 initWithSuccess:1 contentWasProcessed:MEMORY[0x277CBEC28] numberOfExtractions:0 error:0];

  return v3;
}

- (HVConsumerReply)initWithSuccess:(BOOL)success contentWasProcessed:(id)processed numberOfExtractions:(id)extractions error:(id)error
{
  processedCopy = processed;
  extractionsCopy = extractions;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = HVConsumerReply;
  v14 = [(HVConsumerReply *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_success = success;
    objc_storeStrong(&v14->_contentWasProcessed, processed);
    objc_storeStrong(&v15->_numberOfExtractions, extractions);
    objc_storeStrong(&v15->_error, error);
  }

  return v15;
}

+ (id)failedWithError:(id)error
{
  errorCopy = error;
  v4 = [HVConsumerReply alloc];
  v5 = [(HVConsumerReply *)v4 initWithSuccess:0 contentWasProcessed:MEMORY[0x277CBEC28] numberOfExtractions:0 error:errorCopy];

  return v5;
}

+ (id)interrupted
{
  v2 = [HVConsumerReply alloc];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kHVConsumerErrorDomain" code:1 userInfo:0];
  v4 = [(HVConsumerReply *)v2 initWithSuccess:0 contentWasProcessed:MEMORY[0x277CBEC28] numberOfExtractions:0 error:v3];

  return v4;
}

+ (id)successWithNumberOfExtractions:(id)extractions
{
  extractionsCopy = extractions;
  v4 = [HVConsumerReply alloc];
  v5 = [(HVConsumerReply *)v4 initWithSuccess:1 contentWasProcessed:MEMORY[0x277CBEC38] numberOfExtractions:extractionsCopy error:0];

  return v5;
}

@end