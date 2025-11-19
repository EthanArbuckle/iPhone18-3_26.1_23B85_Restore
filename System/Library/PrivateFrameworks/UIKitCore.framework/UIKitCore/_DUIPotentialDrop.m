@interface _DUIPotentialDrop
- (BOOL)isEqual:(id)a3;
- (_DUIPotentialDrop)init;
- (_DUIPotentialDrop)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DUIPotentialDrop

- (_DUIPotentialDrop)init
{
  v3.receiver = self;
  v3.super_class = _DUIPotentialDrop;
  result = [(_DUIPotentialDrop *)&v3 init];
  if (result)
  {
    result->_operation = 0;
  }

  return result;
}

- (_DUIPotentialDrop)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _DUIPotentialDrop;
  v5 = [(_DUIPotentialDrop *)&v7 init];
  if (v5)
  {
    v5->_operation = [v4 decodeIntegerForKey:@"operation"];
    v5->_forbidden = [v4 decodeBoolForKey:@"forbidden"];
    v5->_precise = [v4 decodeBoolForKey:@"precise"];
    v5->_prefersFullSizePreview = [v4 decodeBoolForKey:@"prefersFullSizePreview"];
    v5->_preferredBadgeStyle = [v4 decodeIntegerForKey:@"preferredBadgeStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  operation = self->_operation;
  v5 = a3;
  [v5 encodeInteger:operation forKey:@"operation"];
  [v5 encodeBool:self->_forbidden forKey:@"forbidden"];
  [v5 encodeBool:self->_precise forKey:@"precise"];
  [v5 encodeBool:self->_prefersFullSizePreview forKey:@"prefersFullSizePreview"];
  [v5 encodeInteger:self->_preferredBadgeStyle forKey:@"preferredBadgeStyle"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_DUIPotentialDrop *)self operation];
    if (v6 == [v5 operation] && (v7 = -[_DUIPotentialDrop forbidden](self, "forbidden"), v7 == objc_msgSend(v5, "forbidden")) && (v8 = -[_DUIPotentialDrop precise](self, "precise"), v8 == objc_msgSend(v5, "precise")) && (v9 = -[_DUIPotentialDrop prefersFullSizePreview](self, "prefersFullSizePreview"), v9 == objc_msgSend(v5, "prefersFullSizePreview")))
    {
      v12 = [(_DUIPotentialDrop *)self preferredBadgeStyle];
      v10 = v12 == [v5 preferredBadgeStyle];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setOperation:{-[_DUIPotentialDrop operation](self, "operation")}];
  [v4 setForbidden:{-[_DUIPotentialDrop forbidden](self, "forbidden")}];
  [v4 setPrecise:{-[_DUIPotentialDrop precise](self, "precise")}];
  [v4 setPrefersFullSizePreview:{-[_DUIPotentialDrop prefersFullSizePreview](self, "prefersFullSizePreview")}];
  [v4 setPreferredBadgeStyle:{-[_DUIPotentialDrop preferredBadgeStyle](self, "preferredBadgeStyle")}];
  return v4;
}

@end