@interface _DUIPotentialDrop
- (BOOL)isEqual:(id)equal;
- (_DUIPotentialDrop)init;
- (_DUIPotentialDrop)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (_DUIPotentialDrop)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _DUIPotentialDrop;
  v5 = [(_DUIPotentialDrop *)&v7 init];
  if (v5)
  {
    v5->_operation = [coderCopy decodeIntegerForKey:@"operation"];
    v5->_forbidden = [coderCopy decodeBoolForKey:@"forbidden"];
    v5->_precise = [coderCopy decodeBoolForKey:@"precise"];
    v5->_prefersFullSizePreview = [coderCopy decodeBoolForKey:@"prefersFullSizePreview"];
    v5->_preferredBadgeStyle = [coderCopy decodeIntegerForKey:@"preferredBadgeStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  operation = self->_operation;
  coderCopy = coder;
  [coderCopy encodeInteger:operation forKey:@"operation"];
  [coderCopy encodeBool:self->_forbidden forKey:@"forbidden"];
  [coderCopy encodeBool:self->_precise forKey:@"precise"];
  [coderCopy encodeBool:self->_prefersFullSizePreview forKey:@"prefersFullSizePreview"];
  [coderCopy encodeInteger:self->_preferredBadgeStyle forKey:@"preferredBadgeStyle"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    operation = [(_DUIPotentialDrop *)self operation];
    if (operation == [v5 operation] && (v7 = -[_DUIPotentialDrop forbidden](self, "forbidden"), v7 == objc_msgSend(v5, "forbidden")) && (v8 = -[_DUIPotentialDrop precise](self, "precise"), v8 == objc_msgSend(v5, "precise")) && (v9 = -[_DUIPotentialDrop prefersFullSizePreview](self, "prefersFullSizePreview"), v9 == objc_msgSend(v5, "prefersFullSizePreview")))
    {
      preferredBadgeStyle = [(_DUIPotentialDrop *)self preferredBadgeStyle];
      v10 = preferredBadgeStyle == [v5 preferredBadgeStyle];
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

- (id)copyWithZone:(_NSZone *)zone
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