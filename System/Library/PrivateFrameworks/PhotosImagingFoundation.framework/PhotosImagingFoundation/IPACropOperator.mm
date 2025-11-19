@interface IPACropOperator
+ (id)operatorWithIdentifier:(id)a3 cropRect:(CGRect)a4;
- (id)description;
- (id)transformForGeometry:(id)a3;
@end

@implementation IPACropOperator

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromRect(self->_cropRect);
  v7 = [v3 stringWithFormat:@"<%@.%p cropRect:%@>", v5, self, v6];

  return v7;
}

- (id)transformForGeometry:(id)a3
{
  v4 = a3;
  [v4 domain];
  p_cropRect = &self->_cropRect;
  if (v5 + p_cropRect->origin.x >= v5)
  {
    v10 = v5 + p_cropRect->origin.x;
  }

  else
  {
    v10 = v5;
  }

  if (v6 + p_cropRect->origin.y >= v6)
  {
    v11 = v6 + p_cropRect->origin.y;
  }

  else
  {
    v11 = v6;
  }

  v12 = v5 + v7;
  if (p_cropRect->size.width + v10 <= v12)
  {
    width = p_cropRect->size.width;
  }

  else
  {
    width = v12 - v10;
  }

  v14 = v6 + v8;
  if (p_cropRect->size.height + v11 <= v14)
  {
    height = p_cropRect->size.height;
  }

  else
  {
    height = v14 - v11;
  }

  v16 = v10;
  v17 = v11;
  v18 = width;
  if (CGRectIsEmpty(*(&height - 3)))
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  else
  {
    v22 = 0x3FF0000000000000;
    v23 = 0u;
    v24 = 0u;
    v25 = 0x3FF0000000000000;
    v26 = 0u;
    v27 = 0u;
    v28 = xmmword_25E5E03B0;
    v29 = -v10;
    v30 = -v11;
    v31 = xmmword_25E5E03C0;
    v19 = [[IPAImageGeometry alloc] initWithIdentifier:@"cropped" extent:0.0, 0.0, width, p_cropRect->size.width];
    v20 = [[IPAAffineImageTransform alloc] initWithInputGeometry:v4 intrinsicGeometry:v19 matrix:&v22 canAlignToPixelsExactly:1];

    return v20;
  }

  return result;
}

+ (id)operatorWithIdentifier:(id)a3 cropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (CGRectIsEmpty(v12))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    NSStringFromRect(v13);
    objc_claimAutoreleasedReturnValue();
    result = _PFAssertFailHandler();
    __break(1u);
  }

  else
  {
    v9 = [(IPAGeometryOperator *)[IPACropOperator alloc] initWithIdentifier:v8];
    v9->_cropRect.origin.x = x;
    v9->_cropRect.origin.y = y;
    v9->_cropRect.size.width = width;
    v9->_cropRect.size.height = height;

    return v9;
  }

  return result;
}

@end