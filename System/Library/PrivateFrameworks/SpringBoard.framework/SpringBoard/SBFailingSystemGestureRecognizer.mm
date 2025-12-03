@interface SBFailingSystemGestureRecognizer
- (SBFailingSystemGestureRecognizer)init;
- (SBFailingSystemGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation SBFailingSystemGestureRecognizer

- (SBFailingSystemGestureRecognizer)init
{
  v3.receiver = self;
  v3.super_class = SBFailingSystemGestureRecognizer;
  return [(SBFailingSystemGestureRecognizer *)&v3 initWithTarget:0 action:0];
}

- (SBFailingSystemGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE648];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 raise:v6 format:{@"%s is not a valid initializer. You must call -[%@ init].", "-[SBFailingSystemGestureRecognizer initWithTarget:action:]", v8}];

  return [(SBFailingSystemGestureRecognizer *)self init];
}

@end