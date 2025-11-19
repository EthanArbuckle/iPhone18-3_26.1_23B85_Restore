@interface OKActionTransition
+ (id)transitionWithState:(unint64_t)a3 target:(unint64_t)a4 progress:(float)a5 velocity:(float)a6 context:(id)a7;
+ (void)setupJavascriptContext:(id)a3;
- (OKActionTransition)init;
- (OKActionTransition)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionTransition

+ (id)transitionWithState:(unint64_t)a3 target:(unint64_t)a4 progress:(float)a5 velocity:(float)a6 context:(id)a7
{
  v12 = [OKActionTransition alloc];
  if (!a7)
  {
    a7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v13 = [(OKAction *)v12 initWithState:a3 location:0 touchCount:a7 context:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  *(v13 + 96) = a4;
  *(v13 + 88) = a5;
  *(v13 + 92) = a6;

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

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKActionTransition;
  [(OKAction *)&v7 encodeWithCoder:?];
  if (self->_progress != 0.0)
  {
    [a3 encodeInteger:self->_target forKey:@"target"];
    *&v5 = self->_progress;
    [a3 encodeFloat:@"progress" forKey:v5];
    *&v6 = self->_velocity;
    [a3 encodeFloat:@"velocity" forKey:v6];
  }
}

- (OKActionTransition)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = OKActionTransition;
  v4 = [(OKAction *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_target = [a3 decodeIntegerForKey:@"target"];
    [a3 decodeFloatForKey:@"progress"];
    v4->_progress = v5;
    [a3 decodeFloatForKey:@"velocity"];
    v4->_velocity = v6;
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKActionTransition"];
  [a3 setObject:&unk_287AF1328 forKeyedSubscript:@"OKActionTransitionTargetUnknown"];
  [a3 setObject:&unk_287AF1340 forKeyedSubscript:@"OKActionTransitionTargetSource"];

  [a3 setObject:&unk_287AF1358 forKeyedSubscript:@"OKActionTransitionTargetDestination"];
}

@end