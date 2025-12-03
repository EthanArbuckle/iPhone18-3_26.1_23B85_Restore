@interface PLAgent
+ (void)load;
- (PLAgent)init;
- (void)dealloc;
@end

@implementation PLAgent

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___PLAgent;
    objc_msgSendSuper2(&v4, sel_load);
  }
}

- (PLAgent)init
{
  v3.receiver = self;
  v3.super_class = PLAgent;
  return [(PLOperator *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PLAgent;
  [(PLOperator *)&v2 dealloc];
}

@end