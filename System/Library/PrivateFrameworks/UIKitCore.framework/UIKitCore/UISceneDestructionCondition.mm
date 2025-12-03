@interface UISceneDestructionCondition
+ (id)systemDisconnection;
+ (id)userInitiatedDismissal;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UISceneDestructionCondition)initWithBSXPCCoder:(id)coder;
- (UISceneDestructionCondition)initWithCoder:(id)coder;
- (id)_initWithKind:(int64_t)kind;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation UISceneDestructionCondition

- (id)_initWithKind:(int64_t)kind
{
  v5.receiver = self;
  v5.super_class = UISceneDestructionCondition;
  result = [(UISceneDestructionCondition *)&v5 init];
  if (result)
  {
    *(result + 1) = kind;
  }

  return result;
}

+ (id)userInitiatedDismissal
{
  v2 = [[self alloc] _initWithKind:0];

  return v2;
}

+ (id)systemDisconnection
{
  v2 = [[self alloc] _initWithKind:1];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendInteger:self->_kind];
  v5 = [builder hash];

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

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = self->_kind;
  return result;
}

- (UISceneDestructionCondition)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"UISceneDestructionConditionKind"];

  return [(UISceneDestructionCondition *)self _initWithKind:v4];
}

- (UISceneDestructionCondition)initWithBSXPCCoder:(id)coder
{
  v4 = [coder decodeInt64ForKey:@"UISceneDestructionConditionKind"];

  return [(UISceneDestructionCondition *)self _initWithKind:v4];
}

@end