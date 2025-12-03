@interface RBSCoalitionLevelGrant
+ (id)grantWithCoalitionLevel:(unint64_t)level;
- (BOOL)isEqual:(id)equal;
- (RBSCoalitionLevelGrant)initWithRBSXPCCoder:(id)coder;
- (id)_initWithCoalitionLevel:(id)result;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSCoalitionLevelGrant

+ (id)grantWithCoalitionLevel:(unint64_t)level
{
  v3 = [[RBSCoalitionLevelGrant alloc] _initWithCoalitionLevel:level];

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| level:%llu>", v4, self->_coalitionLevel];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSCoalitionLevelGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeUInt64:self->_coalitionLevel forKey:{@"level", v5.receiver, v5.super_class}];
}

- (RBSCoalitionLevelGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RBSCoalitionLevelGrant;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_coalitionLevel = [coderCopy decodeUInt64ForKey:@"level"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = equalCopy && (v6 = objc_opt_class(), v6 == objc_opt_class()) && [(RBSCoalitionLevelGrant *)v5 coalitionLevel]== self->_coalitionLevel;
  }

  return v7;
}

- (id)_initWithCoalitionLevel:(id)result
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      if (a2 < 0x65)
      {
        goto LABEL_4;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = currentHandler;
      v6 = @"initialized with invalid level";
      v7 = v3;
      v8 = 74;
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = currentHandler;
      v6 = @"initialized with unknown level";
      v7 = v3;
      v8 = 73;
    }

    [currentHandler handleFailureInMethod:sel__initWithCoalitionLevel_ object:v7 file:@"RBSCoalitionLevelGrant.m" lineNumber:v8 description:v6];

LABEL_4:
    v9.receiver = v3;
    v9.super_class = RBSCoalitionLevelGrant;
    result = objc_msgSendSuper2(&v9, sel__init);
    if (result)
    {
      *(result + 1) = a2;
    }
  }

  return result;
}

@end