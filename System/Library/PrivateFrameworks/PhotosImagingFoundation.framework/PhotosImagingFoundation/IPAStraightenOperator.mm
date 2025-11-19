@interface IPAStraightenOperator
+ (id)operatorWithIdentifier:(id)a3 angleZ:(double)a4;
- (id)description;
- (id)transformForGeometry:(id)a3;
@end

@implementation IPAStraightenOperator

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@.%p zAngle:%f>", v5, self, *&self->_zAngle];

  return v6;
}

- (id)transformForGeometry:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28704C380])
  {
    v5 = v4;
    v6 = v5;
    zAngle = self->_zAngle;
    if (zAngle == 0.0)
    {
      memset(&v34[8], 0, 32);
      v35 = 0u;
      v36 = 0u;
      memset(&v37[8], 0, 32);
      *v34 = 0x3FF0000000000000;
      *&v34[40] = 0x3FF0000000000000;
      *v37 = 0x3FF0000000000000;
      *&v37[40] = 0x3FF0000000000000;
      v8 = v5;
    }

    else
    {
      if (v5)
      {
        [v5 imageQuad];
      }

      else
      {
        memset(v33, 0, sizeof(v33));
      }

      *&v9 = PA::Quad2d::areaCenter(v33);
      v11 = v10;
      v26[2] = 0x3FF0000000000000;
      *v27 = 0x3FF0000000000000;
      memset(&v27[8], 0, 32);
      *&v27[40] = 0x3FF0000000000000;
      v28 = 0u;
      v29 = 0u;
      v30 = xmmword_25E5E03B0;
      *&v31.f64[0] = v9;
      v31.f64[1] = v10;
      v32 = xmmword_25E5E03C0;
      v26[0] = 0;
      v26[1] = 0;
      v25 = v9;
      PA::Matrix4d::rotateAxis(v27, v26, self->_zAngle);
      v31 = vaddq_f64(v31, vmlaq_f64(vmlsq_lane_f64(vmulq_n_f64(*&v27[32], -v11), *v27, *&v25, 0), 0, v29));
      *&v32 = *&v32 + -(v11 * *&v28) - *&v27[16] * *&v25 + *&v30 * 0.0;
      v36 = v29;
      *v37 = v30;
      *v34 = *v27;
      *&v34[16] = *&v27[16];
      *&v34[32] = *&v27[32];
      v35 = v28;
      *&v37[16] = v31;
      *&v37[32] = v32;
      PA::operator*(v27, v34, v33);
      [v6 domain];
      v13 = v12;
      v15 = v14;
      PA::Quad2d::boundingRect(v27);
      v17 = v16;
      v19 = v18;
      v20 = [IPAImageGeometry alloc];
      v21 = v13 / v17;
      if (v15 / v19 < v13 / v17)
      {
        v21 = v15 / v19;
      }

      v8 = [(IPAImageGeometry *)v20 initWithIdentifier:@"straightened" extent:v27 imageQuad:(v13 - v13 * v21) * 0.5, (v15 - v15 * v21) * 0.5, v25];
    }

    v22 = v8;
    v23 = [[IPAAffineImageTransform alloc] initWithInputGeometry:v6 intrinsicGeometry:v8 matrix:v34 canAlignToPixelsExactly:zAngle == 0.0];

    return v23;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

+ (id)operatorWithIdentifier:(id)a3 angleZ:(double)a4
{
  v5 = a3;
  v6 = fabs(a4);
  if (v6 > 0.785398163)
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  else
  {
    v7 = [(IPAGeometryOperator *)[IPAStraightenOperator alloc] initWithIdentifier:v5];
    v8 = v7;
    v9 = 0.0;
    if (v6 >= 0.0001)
    {
      v9 = a4;
    }

    v7->_zAngle = v9;

    return v8;
  }

  return result;
}

@end