@interface NSCoder(UIKitCAPoint3DAdditions)
- (double)ui_decodeCAPoint3DForKey:()UIKitCAPoint3DAdditions;
- (void)ui_encodeCAPoint3D:()UIKitCAPoint3DAdditions forKey:;
@end

@implementation NSCoder(UIKitCAPoint3DAdditions)

- (double)ui_decodeCAPoint3DForKey:()UIKitCAPoint3DAdditions
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];

  v6 = _CAPoint3DFromString(v5);
  return v6;
}

- (void)ui_encodeCAPoint3D:()UIKitCAPoint3DAdditions forKey:
{
  v10 = a6;
  v11 = _NSStringFromCAPoint3D(a2, a3, a4);
  [self encodeObject:v11 forKey:v10];
}

@end