@interface NSCoder(UIGeometryKeyedCoding)
- (double)decodeCGPointForKey:()UIGeometryKeyedCoding;
- (double)decodeCGRectForKey:()UIGeometryKeyedCoding;
- (double)decodeCGSizeForKey:()UIGeometryKeyedCoding;
- (double)decodeCGVectorForKey:()UIGeometryKeyedCoding;
- (double)decodeDirectionalEdgeInsetsForKey:()UIGeometryKeyedCoding;
- (double)decodeUIEdgeInsetsForKey:()UIGeometryKeyedCoding;
- (double)decodeUIOffsetForKey:()UIGeometryKeyedCoding;
- (void)decodeCGAffineTransformForKey:()UIGeometryKeyedCoding;
- (void)encodeCGAffineTransform:()UIGeometryKeyedCoding forKey:;
- (void)encodeCGPoint:()UIGeometryKeyedCoding forKey:;
- (void)encodeCGRect:()UIGeometryKeyedCoding forKey:;
- (void)encodeCGSize:()UIGeometryKeyedCoding forKey:;
- (void)encodeCGVector:()UIGeometryKeyedCoding forKey:;
- (void)encodeDirectionalEdgeInsets:()UIGeometryKeyedCoding forKey:;
- (void)encodeUIEdgeInsets:()UIGeometryKeyedCoding forKey:;
- (void)encodeUIOffset:()UIGeometryKeyedCoding forKey:;
@end

@implementation NSCoder(UIGeometryKeyedCoding)

- (void)encodeCGPoint:()UIGeometryKeyedCoding forKey:
{
  v8 = a5;
  v11.x = a2;
  v11.y = a3;
  v9 = NSStringFromCGPoint(v11);
  [a1 encodeObject:v9 forKey:v8];
}

- (void)encodeCGVector:()UIGeometryKeyedCoding forKey:
{
  v8 = a5;
  v11.dx = a2;
  v11.dy = a3;
  v9 = NSStringFromCGVector(v11);
  [a1 encodeObject:v9 forKey:v8];
}

- (void)encodeCGSize:()UIGeometryKeyedCoding forKey:
{
  v8 = a5;
  v11.width = a2;
  v11.height = a3;
  v9 = NSStringFromCGSize(v11);
  [a1 encodeObject:v9 forKey:v8];
}

- (void)encodeCGRect:()UIGeometryKeyedCoding forKey:
{
  v12 = a7;
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  v13 = NSStringFromCGRect(v15);
  [a1 encodeObject:v13 forKey:v12];
}

- (void)encodeCGAffineTransform:()UIGeometryKeyedCoding forKey:
{
  v5 = a3[1];
  *&transform.a = *a3;
  *&transform.c = v5;
  *&transform.tx = a3[2];
  v6 = a4;
  v7 = NSStringFromCGAffineTransform(&transform);
  [a1 encodeObject:v7 forKey:v6];
}

- (void)encodeUIEdgeInsets:()UIGeometryKeyedCoding forKey:
{
  v12 = a7;
  v15.top = a2;
  v15.left = a3;
  v15.bottom = a4;
  v15.right = a5;
  v13 = NSStringFromUIEdgeInsets(v15);
  [a1 encodeObject:v13 forKey:v12];
}

- (void)encodeDirectionalEdgeInsets:()UIGeometryKeyedCoding forKey:
{
  v12 = a7;
  v15.top = a2;
  v15.leading = a3;
  v15.bottom = a4;
  v15.trailing = a5;
  v13 = NSStringFromDirectionalEdgeInsets(v15);
  [a1 encodeObject:v13 forKey:v12];
}

- (void)encodeUIOffset:()UIGeometryKeyedCoding forKey:
{
  v8 = a5;
  v11.horizontal = a2;
  v11.vertical = a3;
  v9 = NSStringFromUIOffset(v11);
  [a1 encodeObject:v9 forKey:v8];
}

- (double)decodeCGPointForKey:()UIGeometryKeyedCoding
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    *&v6 = *&CGPointFromString(v5);
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
  }

  return v6;
}

- (double)decodeCGVectorForKey:()UIGeometryKeyedCoding
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    *&v6 = *&CGVectorFromString(v5);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)decodeCGSizeForKey:()UIGeometryKeyedCoding
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    *&v6 = *&CGSizeFromString(v5);
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
  }

  return v6;
}

- (double)decodeCGRectForKey:()UIGeometryKeyedCoding
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    *&v6 = CGRectFromString(v5);
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
  }

  return v6;
}

- (void)decodeCGAffineTransformForKey:()UIGeometryKeyedCoding
{
  v5 = a2;
  string = [a1 decodeObjectOfClass:objc_opt_class() forKey:v5];

  v6 = string;
  if (string)
  {
    CGAffineTransformFromString(a3, string);
    v6 = string;
  }

  else
  {
    v7 = MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *a3 = *MEMORY[0x1E695EFD0];
    *(a3 + 16) = v8;
    *(a3 + 32) = *(v7 + 32);
  }
}

- (double)decodeUIEdgeInsetsForKey:()UIGeometryKeyedCoding
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    *&v6 = UIEdgeInsetsFromString(v5);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)decodeDirectionalEdgeInsetsForKey:()UIGeometryKeyedCoding
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    *&v6 = NSDirectionalEdgeInsetsFromString(v5);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)decodeUIOffsetForKey:()UIGeometryKeyedCoding
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    *&v6 = *&UIOffsetFromString(v5);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

@end