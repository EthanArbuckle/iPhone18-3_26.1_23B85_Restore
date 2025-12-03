@interface SXTextShadow
- (id)TSDShadow;
@end

@implementation SXTextShadow

- (id)TSDShadow
{
  [(SXTextShadow *)self offset];
  v4 = v3;
  [(SXTextShadow *)self offset];
  v6 = atan2(v4, v5) * 57.2957795;
  [(SXTextShadow *)self offset];
  v8 = v7 * v7;
  [(SXTextShadow *)self offset];
  v10 = sqrt(v8 + v9 * v9);
  v11 = MEMORY[0x1E69D5678];
  [(SXTextShadow *)self radius];
  v13 = v12;
  [(SXTextShadow *)self opacity];
  v15 = v14;
  color = [(SXTextShadow *)self color];
  v17 = [v11 shadowWithAngle:objc_msgSend(color offset:"CGColor") radius:1 opacity:v6 color:v10 enabled:{v13, v15}];

  return v17;
}

@end