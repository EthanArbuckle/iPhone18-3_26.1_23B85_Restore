@interface HVConsumerReply
+ (id)failedWithError:(id)a3;
+ (id)ignored;
+ (id)interrupted;
+ (id)successWithNumberOfExtractions:(id)a3;
- (HVConsumerReply)initWithSuccess:(BOOL)a3 contentWasProcessed:(id)a4 numberOfExtractions:(id)a5 error:(id)a6;
@end

@implementation HVConsumerReply

+ (id)ignored
{
  v2 = [HVConsumerReply alloc];
  v3 = [(HVConsumerReply *)v2 initWithSuccess:1 contentWasProcessed:MEMORY[0x277CBEC28] numberOfExtractions:0 error:0];

  return v3;
}

- (HVConsumerReply)initWithSuccess:(BOOL)a3 contentWasProcessed:(id)a4 numberOfExtractions:(id)a5 error:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HVConsumerReply;
  v14 = [(HVConsumerReply *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_success = a3;
    objc_storeStrong(&v14->_contentWasProcessed, a4);
    objc_storeStrong(&v15->_numberOfExtractions, a5);
    objc_storeStrong(&v15->_error, a6);
  }

  return v15;
}

+ (id)failedWithError:(id)a3
{
  v3 = a3;
  v4 = [HVConsumerReply alloc];
  v5 = [(HVConsumerReply *)v4 initWithSuccess:0 contentWasProcessed:MEMORY[0x277CBEC28] numberOfExtractions:0 error:v3];

  return v5;
}

+ (id)interrupted
{
  v2 = [HVConsumerReply alloc];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kHVConsumerErrorDomain" code:1 userInfo:0];
  v4 = [(HVConsumerReply *)v2 initWithSuccess:0 contentWasProcessed:MEMORY[0x277CBEC28] numberOfExtractions:0 error:v3];

  return v4;
}

+ (id)successWithNumberOfExtractions:(id)a3
{
  v3 = a3;
  v4 = [HVConsumerReply alloc];
  v5 = [(HVConsumerReply *)v4 initWithSuccess:1 contentWasProcessed:MEMORY[0x277CBEC38] numberOfExtractions:v3 error:0];

  return v5;
}

@end