@interface RBConcreteTarget
+ (id)systemTarget;
+ (id)targetWithIdentity:(id)a3 environment:(id)a4;
+ (id)targetWithProcess:(id)a3 environment:(id)a4;
@end

@implementation RBConcreteTarget

+ (id)systemTarget
{
  if (systemTarget_onceToken != -1)
  {
    +[RBConcreteTarget systemTarget];
  }

  v3 = systemTarget_systemTarget;

  return v3;
}

uint64_t __32__RBConcreteTarget_systemTarget__block_invoke()
{
  systemTarget_systemTarget = objc_alloc_init(RBConcreteTarget);

  return MEMORY[0x2821F96F8]();
}

+ (id)targetWithProcess:(id)a3 environment:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    [(RBConcreteTarget *)a4 targetWithProcess:v5 environment:&v9];
    v7 = v9;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

+ (id)targetWithIdentity:(id)a3 environment:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v9 = a4;
    v7 = [[RBComplexConcreteTarget alloc] _initWithProcess:v6 identity:v9 environment:?];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

+ (void)targetWithProcess:(id *)a3 environment:.cold.1(void *a1, void *a2, id **a3)
{
  v5 = a1;
  v6 = [RBComplexConcreteTarget alloc];
  v7 = [a2 identity];
  *a3 = [(RBComplexConcreteTarget *)&v6->super.super.isa _initWithProcess:a2 identity:v7 environment:v5];
}

@end