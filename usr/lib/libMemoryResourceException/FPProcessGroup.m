@interface FPProcessGroup
- (BOOL)isEqual:(id)a3;
- (void)addProcess:(id)a3;
@end

@implementation FPProcessGroup

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([(FPProcessGroup *)v4 isMemberOfClass:objc_opt_class()])
  {
    v7.receiver = self;
    v7.super_class = FPProcessGroup;
    v5 = [(FPProcessGroupMinimal *)&v7 isEqual:v4];
  }

  else
  {
    v5 = self == v4;
  }

  return v5;
}

- (void)addProcess:(id)a3
{
  v3 = a3;
  _os_crash();
  __break(1u);
}

@end