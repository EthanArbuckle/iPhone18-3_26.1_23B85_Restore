@interface _UISystemBaselineConstraint
+ (id)constraintWithAnchor:(id)anchor relatedBy:(int64_t)by toAnchor:(id)toAnchor withSystemSpacingMultipliedBy:(double)multipliedBy;
- (_UISystemBaselineConstraint)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISystemBaselineConstraint

+ (id)constraintWithAnchor:(id)anchor relatedBy:(int64_t)by toAnchor:(id)toAnchor withSystemSpacingMultipliedBy:(double)multipliedBy
{
  if ([anchor _anchorType] != 2 || objc_msgSend(toAnchor, "_anchorType") != 2)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  _proxiedItem = [anchor _proxiedItem];
  _proxiedAttribute = [anchor _proxiedAttribute];
  _proxiedItem2 = [toAnchor _proxiedItem];
  _proxiedAttribute2 = [toAnchor _proxiedAttribute];
  v16 = *MEMORY[0x1E6997760];

  return [_UISystemBaselineConstraint constraintWithItem:_proxiedItem attribute:_proxiedAttribute relatedBy:by toItem:_proxiedItem2 attribute:_proxiedAttribute2 multiplier:v16 symbolicConstant:1.0 symbolicConstantMultiplier:multipliedBy];
}

- (_UISystemBaselineConstraint)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = _UISystemBaselineConstraint;
  v5 = [(_UISystemBaselineConstraint *)&v11 initWithCoder:?];
  v6 = v5;
  if (v5)
  {
    if (![(_UISystemBaselineConstraint *)v5 symbolicConstant])
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    symbolicConstant = [(_UISystemBaselineConstraint *)v6 symbolicConstant];
    if (([symbolicConstant isEqualToString:*MEMORY[0x1E6997768]] & 1) != 0 || (objc_msgSend(symbolicConstant, "isEqualToString:", *MEMORY[0x1E6997760]) & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    v8 = [coder decodeObjectForKey:@"UISpacingMultiplier"];
    if (v8)
    {
      [v8 floatValue];
      [(_UISystemBaselineConstraint *)v6 setSymbolicConstantMultiplier:v9];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UISystemBaselineConstraint;
  [(_UISystemBaselineConstraint *)&v6 encodeWithCoder:?];
  v5 = MEMORY[0x1E696AD98];
  [(_UISystemBaselineConstraint *)self symbolicConstantMultiplier];
  [coder encodeObject:objc_msgSend(v5 forKey:{"numberWithDouble:"), @"UISpacingMultiplier"}];
}

@end