@interface RBSCoalitionLevelGrant
+ (id)grantWithCoalitionLevel:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RBSCoalitionLevelGrant)initWithRBSXPCCoder:(id)a3;
- (id)_initWithCoalitionLevel:(id)result;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSCoalitionLevelGrant

+ (id)grantWithCoalitionLevel:(unint64_t)a3
{
  v3 = [[RBSCoalitionLevelGrant alloc] _initWithCoalitionLevel:a3];

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| level:%llu>", v4, self->_coalitionLevel];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSCoalitionLevelGrant;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeUInt64:self->_coalitionLevel forKey:{@"level", v5.receiver, v5.super_class}];
}

- (RBSCoalitionLevelGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSCoalitionLevelGrant;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v5->_coalitionLevel = [v4 decodeUInt64ForKey:@"level"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 && (v6 = objc_opt_class(), v6 == objc_opt_class()) && [(RBSCoalitionLevelGrant *)v5 coalitionLevel]== self->_coalitionLevel;
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

      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = v4;
      v6 = @"initialized with invalid level";
      v7 = v3;
      v8 = 74;
    }

    else
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = v4;
      v6 = @"initialized with unknown level";
      v7 = v3;
      v8 = 73;
    }

    [v4 handleFailureInMethod:sel__initWithCoalitionLevel_ object:v7 file:@"RBSCoalitionLevelGrant.m" lineNumber:v8 description:v6];

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