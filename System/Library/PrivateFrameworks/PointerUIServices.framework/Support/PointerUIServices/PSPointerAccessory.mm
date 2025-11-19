@interface PSPointerAccessory
- (CGAffineTransform)_transformWithOffset:(SEL)a3;
- (CGAffineTransform)finalTransform;
- (NSString)positionRecordKey;
@end

@implementation PSPointerAccessory

- (CGAffineTransform)finalTransform
{
  [(PSPointerAccessory *)self offset];

  return [(PSPointerAccessory *)self _transformWithOffset:?];
}

- (CGAffineTransform)_transformWithOffset:(SEL)a3
{
  v7 = [(PSPointerAccessory *)self shape];
  [v7 bounds];
  v8 = CGRectGetHeight(v16) * 0.5 + a4;

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  if ([(PSPointerAccessory *)self orientationMatchesAngle])
  {
    [(PSPointerAccessory *)self angle];
    CGAffineTransformMakeRotation(retstr, v9);
    v10 = *&retstr->c;
    *&v14.a = *&retstr->a;
    *&v14.c = v10;
    *&v14.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v15, &v14, 0.0, -v8);
    v12 = *&v15.c;
    *&retstr->a = *&v15.a;
    *&retstr->c = v12;
    *&retstr->tx = *&v15.tx;
  }

  else
  {
    [(PSPointerAccessory *)self angle];
    CGAffineTransformMakeRotation(&v15, v13);
    return CGAffineTransformMakeTranslation(retstr, v15.tx + v15.a * 0.0 - v8 * v15.c, v15.ty + v15.b * 0.0 - v8 * v15.d);
  }

  return result;
}

- (NSString)positionRecordKey
{
  [(PSPointerAccessory *)self offset];
  v4 = v3;
  [(PSPointerAccessory *)self angle];
  return [NSString stringWithFormat:@"%.3f_%.3f_%i", v4, v5, [(PSPointerAccessory *)self orientationMatchesAngle]];
}

@end