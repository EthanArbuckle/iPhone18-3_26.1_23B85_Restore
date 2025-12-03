@interface NSURLSessionTask(RCOperationIdentifyingSupport)
- (id)longOperationDescription;
- (id)shortOperationDescription;
@end

@implementation NSURLSessionTask(RCOperationIdentifyingSupport)

- (id)shortOperationDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  _loggableDescription = [self _loggableDescription];
  v5 = [v2 stringWithFormat:@"<%@ %@>", v3, _loggableDescription];

  return v5;
}

- (id)longOperationDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  _loggableDescription = [self _loggableDescription];
  [self priority];
  v6 = [v2 stringWithFormat:@"<%@ %@, priority=%.2f>", v3, _loggableDescription, v5];

  return v6;
}

@end