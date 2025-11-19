@interface VFCancelationToken
+ (VFCancelationToken)tokenWithCancelationBlock:(id)a3;
+ (VFCancelationToken)tokenWithLabel:(id)a3 cancelationBlock:(id)a4;
- (void)addCancelable:(id)a3;
@end

@implementation VFCancelationToken

+ (VFCancelationToken)tokenWithLabel:(id)a3 cancelationBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(VFInvocationToken *)[VFCancelationToken alloc] initWithLabel:v6];

  [(VFCancelationToken *)v7 addCancelationBlock:v5];

  return v7;
}

+ (VFCancelationToken)tokenWithCancelationBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(VFCancelationToken);
  [(VFCancelationToken *)v4 addCancelationBlock:v3];

  return v4;
}

- (void)addCancelable:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__VFCancelationToken_addCancelable___block_invoke;
  v6[3] = &unk_279E33588;
  v7 = v4;
  v5 = v4;
  [(VFCancelationToken *)self addCancelationBlock:v6];
}

@end