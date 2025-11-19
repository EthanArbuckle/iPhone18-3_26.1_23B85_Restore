@interface NSOperation(RCOperationIdentifyingSupport)
- (id)longOperationDescription;
@end

@implementation NSOperation(RCOperationIdentifyingSupport)

- (id)longOperationDescription
{
  v2 = RCStringFromQualityOfService([a1 qualityOfService]);
  v3 = RCStringFromQueuePriority([a1 queuePriority]);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ qos=%@, priority=%@>", objc_opt_class(), v2, v3];

  return v4;
}

@end