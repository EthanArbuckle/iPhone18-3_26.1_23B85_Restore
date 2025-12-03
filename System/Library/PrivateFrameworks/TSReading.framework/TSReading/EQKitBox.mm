@interface EQKitBox
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transformFromDescendant:(SEL)descendant;
- (CGRect)erasableBounds;
- (double)layoutDepth;
- (double)layoutHeight;
- (double)layoutVSize;
- (double)vsize;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation EQKitBox

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  v4 = objc_opt_class();

  return [equal isMemberOfClass:v4];
}

- (double)vsize
{
  [(EQKitBox *)self height];
  v4 = v3;
  [(EQKitBox *)self depth];
  return v4 + v5;
}

- (double)layoutHeight
{
  [(EQKitBox *)self height];
  if (v3 < 0.0)
  {
    return 0.0;
  }

  [(EQKitBox *)self height];
  return result;
}

- (double)layoutDepth
{
  [(EQKitBox *)self depth];
  if (v3 < 0.0)
  {
    return 0.0;
  }

  [(EQKitBox *)self depth];
  return result;
}

- (double)layoutVSize
{
  [(EQKitBox *)self layoutHeight];
  v4 = v3;
  [(EQKitBox *)self layoutDepth];
  return v4 + v5;
}

- (CGRect)erasableBounds
{
  [(EQKitBox *)self height];
  v4 = v3;
  v5 = -v3;
  [(EQKitBox *)self width];
  v7 = v6;
  [(EQKitBox *)self vsize];
  v9 = -v7;
  if (v7 < 0.0)
  {
    v10 = v7 + 0.0;
  }

  else
  {
    v9 = v7;
    v10 = 0.0;
  }

  v11 = v8 - v4;
  v12 = -v8;
  if (v8 >= 0.0)
  {
    v12 = v8;
    v11 = v5;
  }

  v13 = v10;
  result.size.height = v12;
  result.size.width = v9;
  result.origin.y = v11;
  result.origin.x = v13;
  return result;
}

- (CGAffineTransform)transformFromDescendant:(SEL)descendant
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  return [EQKitBox p_getTransform:"p_getTransform:fromDescendant:" fromDescendant:?];
}

@end