@interface VFCancelationToken
+ (VFCancelationToken)tokenWithCancelationBlock:(id)block;
+ (VFCancelationToken)tokenWithLabel:(id)label cancelationBlock:(id)block;
- (void)addCancelable:(id)cancelable;
@end

@implementation VFCancelationToken

+ (VFCancelationToken)tokenWithLabel:(id)label cancelationBlock:(id)block
{
  blockCopy = block;
  labelCopy = label;
  v7 = [(VFInvocationToken *)[VFCancelationToken alloc] initWithLabel:labelCopy];

  [(VFCancelationToken *)v7 addCancelationBlock:blockCopy];

  return v7;
}

+ (VFCancelationToken)tokenWithCancelationBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(VFCancelationToken);
  [(VFCancelationToken *)v4 addCancelationBlock:blockCopy];

  return v4;
}

- (void)addCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__VFCancelationToken_addCancelable___block_invoke;
  v6[3] = &unk_279E33588;
  v7 = cancelableCopy;
  v5 = cancelableCopy;
  [(VFCancelationToken *)self addCancelationBlock:v6];
}

@end