@interface _UISystemBaselineConstraint
+ (id)constraintWithAnchor:(id)a3 relatedBy:(int64_t)a4 toAnchor:(id)a5 withSystemSpacingMultipliedBy:(double)a6;
- (_UISystemBaselineConstraint)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UISystemBaselineConstraint

+ (id)constraintWithAnchor:(id)a3 relatedBy:(int64_t)a4 toAnchor:(id)a5 withSystemSpacingMultipliedBy:(double)a6
{
  if ([a3 _anchorType] != 2 || objc_msgSend(a5, "_anchorType") != 2)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v12 = [a3 _proxiedItem];
  v13 = [a3 _proxiedAttribute];
  v14 = [a5 _proxiedItem];
  v15 = [a5 _proxiedAttribute];
  v16 = *MEMORY[0x1E6997760];

  return [_UISystemBaselineConstraint constraintWithItem:v12 attribute:v13 relatedBy:a4 toItem:v14 attribute:v15 multiplier:v16 symbolicConstant:1.0 symbolicConstantMultiplier:a6];
}

- (_UISystemBaselineConstraint)initWithCoder:(id)a3
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

    v7 = [(_UISystemBaselineConstraint *)v6 symbolicConstant];
    if (([v7 isEqualToString:*MEMORY[0x1E6997768]] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6997760]) & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    v8 = [a3 decodeObjectForKey:@"UISpacingMultiplier"];
    if (v8)
    {
      [v8 floatValue];
      [(_UISystemBaselineConstraint *)v6 setSymbolicConstantMultiplier:v9];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UISystemBaselineConstraint;
  [(_UISystemBaselineConstraint *)&v6 encodeWithCoder:?];
  v5 = MEMORY[0x1E696AD98];
  [(_UISystemBaselineConstraint *)self symbolicConstantMultiplier];
  [a3 encodeObject:objc_msgSend(v5 forKey:{"numberWithDouble:"), @"UISpacingMultiplier"}];
}

@end