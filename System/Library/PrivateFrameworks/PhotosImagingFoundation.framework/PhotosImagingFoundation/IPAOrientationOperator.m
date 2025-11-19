@interface IPAOrientationOperator
+ (id)operatorWithIdentifier:(id)a3 orientation:(int64_t)a4;
- (id)description;
- (id)transformForGeometry:(id)a3;
@end

@implementation IPAOrientationOperator

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  orientation = self->_orientation;
  if ((orientation - 1) >= 8)
  {
    orientation = 0;
  }

  v7 = IPAOrientationName_names[orientation];
  v8 = [v3 stringWithFormat:@"<%@.%p orientation:%@>", v5, self, v7];

  return v8;
}

- (id)transformForGeometry:(id)a3
{
  v4 = a3;
  [v4 extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  IPAOrientationMakeTransformWithSize(self->_orientation, &v37, v9, v11);
  v28 = v37;
  v29 = 0;
  v30 = 0;
  v31 = v38;
  v32 = 0u;
  v33 = 0u;
  v34 = xmmword_25E5E03B0;
  v35 = v39;
  v36 = xmmword_25E5E03C0;
  *&v21 = v6;
  *(&v21 + 1) = v8;
  v22 = v6 + v10;
  v23 = v8;
  v24 = v6;
  v25 = v8 + v12;
  v26 = v6 + v10;
  v27 = v8 + v12;
  PA::operator*(v20, &v28, &v21);
  v13 = PA::Quad2d::boundingRect(v20);
  v17 = [[IPAImageGeometry alloc] initWithIdentifier:@"oriented" extent:v13, v14, v15, v16];
  v18 = [[IPAAffineImageTransform alloc] initWithInputGeometry:v4 intrinsicGeometry:v17 matrix:&v28 canAlignToPixelsExactly:1];

  return v18;
}

+ (id)operatorWithIdentifier:(id)a3 orientation:(int64_t)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = [(IPAGeometryOperator *)[IPAOrientationOperator alloc] initWithIdentifier:v5];
    v6->_orientation = a4;

    return v6;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

@end