@interface NSURLSessionTask(RCOperationIdentifyingSupport)
- (id)longOperationDescription;
- (id)shortOperationDescription;
@end

@implementation NSURLSessionTask(RCOperationIdentifyingSupport)

- (id)shortOperationDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [a1 _loggableDescription];
  v5 = [v2 stringWithFormat:@"<%@ %@>", v3, v4];

  return v5;
}

- (id)longOperationDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [a1 _loggableDescription];
  [a1 priority];
  v6 = [v2 stringWithFormat:@"<%@ %@, priority=%.2f>", v3, v4, v5];

  return v6;
}

@end