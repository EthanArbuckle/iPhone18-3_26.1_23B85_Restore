@interface OKActionTransition
+ (id)transitionWithState:(unint64_t)state target:(unint64_t)target progress:(float)progress velocity:(float)velocity context:(id)context;
+ (void)setupJavascriptContext:(id)context;
- (OKActionTransition)init;
- (OKActionTransition)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionTransition

+ (id)transitionWithState:(unint64_t)state target:(unint64_t)target progress:(float)progress velocity:(float)velocity context:(id)context
{
  v12 = [OKActionTransition alloc];
  if (!context)
  {
    context = [MEMORY[0x277CBEB38] dictionary];
  }

  v13 = [(OKAction *)v12 initWithState:state location:0 touchCount:context context:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  *(v13 + 96) = target;
  *(v13 + 88) = progress;
  *(v13 + 92) = velocity;

  return v13;
}

- (OKActionTransition)init
{
  v5.receiver = self;
  v5.super_class = OKActionTransition;
  v2 = [(OKAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_target = 0;
    v2->_progress = 0.0;
    v2->_velocity = 0.0;
    [(OKAction *)v2 setShouldCancelCouchPotato:0];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = OKActionTransition;
  [(OKAction *)&v7 encodeWithCoder:?];
  if (self->_progress != 0.0)
  {
    [coder encodeInteger:self->_target forKey:@"target"];
    *&v5 = self->_progress;
    [coder encodeFloat:@"progress" forKey:v5];
    *&v6 = self->_velocity;
    [coder encodeFloat:@"velocity" forKey:v6];
  }
}

- (OKActionTransition)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = OKActionTransition;
  v4 = [(OKAction *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_target = [coder decodeIntegerForKey:@"target"];
    [coder decodeFloatForKey:@"progress"];
    v4->_progress = v5;
    [coder decodeFloatForKey:@"velocity"];
    v4->_velocity = v6;
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKActionTransition"];
  [context setObject:&unk_287AF1328 forKeyedSubscript:@"OKActionTransitionTargetUnknown"];
  [context setObject:&unk_287AF1340 forKeyedSubscript:@"OKActionTransitionTargetSource"];

  [context setObject:&unk_287AF1358 forKeyedSubscript:@"OKActionTransitionTargetDestination"];
}

@end