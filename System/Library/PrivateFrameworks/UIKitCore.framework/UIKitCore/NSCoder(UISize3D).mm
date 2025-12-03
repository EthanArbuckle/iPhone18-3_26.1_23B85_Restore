@interface NSCoder(UISize3D)
- (double)decodeUISize3DForKey:()UISize3D;
- (void)encodeUISize3D:()UISize3D forKey:;
@end

@implementation NSCoder(UISize3D)

- (double)decodeUISize3DForKey:()UISize3D
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];

  [v5 UISize3DValue];
  v7 = v6;

  return v7;
}

- (void)encodeUISize3D:()UISize3D forKey:
{
  v10 = MEMORY[0x1E696B098];
  v11 = a6;
  v12 = [v10 valueWithUISize3D:{a2, a3, a4}];
  [self encodeObject:v12 forKey:v11];
}

@end