@interface IPAScaleOperator
+ (id)operatorWithIdentifier:(id)a3 scaleX:(double)a4 Y:(double)a5;
- (id)description;
- (id)transformForGeometry:(id)a3;
@end

@implementation IPAScaleOperator

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@.%p xScale:%f yScale:%f>", v5, self, *&self->_xScale, *&self->_yScale];

  return v6;
}

- (id)transformForGeometry:(id)a3
{
  v4 = a3;
  v5 = v4;
  xScale = self->_xScale;
  yScale = self->_yScale;
  v8 = yScale == 1.0 && xScale == 1.0;
  if (v8)
  {
    v9 = v4;
    v29 = 0u;
    v30 = 0u;
    v32 = 0u;
    v33 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = 0x3FF0000000000000;
    v31 = 0x3FF0000000000000;
    v34 = 0x3FF0000000000000;
    v37 = 0x3FF0000000000000;
  }

  else
  {
    [v4 extent];
    v10 = self->_xScale;
    v11 = self->_yScale;
    v39.origin.x = v12 * v10;
    v39.origin.y = v13 * v11;
    v39.size.width = v14 * v10;
    v39.size.height = v15 * v11;
    v40 = CGRectStandardize(v39);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    [v5 domain];
    v20 = self->_xScale;
    v21 = self->_yScale;
    v41.origin.x = v22 * v20;
    v41.origin.y = v23 * v21;
    v41.size.width = v24 * v20;
    v41.size.height = v25 * v21;
    v42 = CGRectStandardize(v41);
    v9 = [[IPAImageGeometry alloc] initWithIdentifier:@"scaled" extent:x domain:y, width, height, v42.origin.x, v42.origin.y, v42.size.width, v42.size.height];
  }

  v26 = [[IPAAffineImageTransform alloc] initWithInputGeometry:v5 intrinsicGeometry:v9 matrix:&v28 canAlignToPixelsExactly:v8];

  return v26;
}

+ (id)operatorWithIdentifier:(id)a3 scaleX:(double)a4 Y:(double)a5
{
  v7 = a3;
  if (a4 <= 0.0 || a5 <= 0.0)
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  else
  {
    v8 = [(IPAGeometryOperator *)[IPAScaleOperator alloc] initWithIdentifier:v7];
    v8->_xScale = a4;
    v8->_yScale = a5;

    return v8;
  }

  return result;
}

@end