@interface UISceneDestructionCondition
+ (id)systemDisconnection;
+ (id)userInitiatedDismissal;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UISceneDestructionCondition)initWithBSXPCCoder:(id)a3;
- (UISceneDestructionCondition)initWithCoder:(id)a3;
- (id)_initWithKind:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation UISceneDestructionCondition

- (id)_initWithKind:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UISceneDestructionCondition;
  result = [(UISceneDestructionCondition *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

+ (id)userInitiatedDismissal
{
  v2 = [[a1 alloc] _initWithKind:0];

  return v2;
}

+ (id)systemDisconnection
{
  v2 = [[a1 alloc] _initWithKind:1];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self->_kind == v5->_kind;
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInteger:self->_kind];
  v5 = [v3 hash];

  return v5;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = UISceneDestructionCondition;
  v3 = [(UISceneDestructionCondition *)&v8 description];
  v4 = [v3 mutableCopy];

  kind = self->_kind;
  if (kind)
  {
    if (kind != 1)
    {
      goto LABEL_6;
    }

    v6 = @" systemDisconnection";
  }

  else
  {
    v6 = @" userInitiatedDismissal";
  }

  [v4 appendString:v6];
LABEL_6:

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = self->_kind;
  return result;
}

- (UISceneDestructionCondition)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"UISceneDestructionConditionKind"];

  return [(UISceneDestructionCondition *)self _initWithKind:v4];
}

- (UISceneDestructionCondition)initWithBSXPCCoder:(id)a3
{
  v4 = [a3 decodeInt64ForKey:@"UISceneDestructionConditionKind"];

  return [(UISceneDestructionCondition *)self _initWithKind:v4];
}

@end