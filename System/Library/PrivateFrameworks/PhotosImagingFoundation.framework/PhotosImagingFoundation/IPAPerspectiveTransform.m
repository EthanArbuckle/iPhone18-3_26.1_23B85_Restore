@interface IPAPerspectiveTransform
- (IPAPerspectiveTransform)initWithInputGeometry:(id)a3 intrinsicGeometry:(id)a4 projectionTransform:(const Matrix4d *)a5 viewingTransform:(const Matrix4d *)a6;
- (Vector2d)mapVector:(Vector2d)a3;
- (id)inverseTransform;
@end

@implementation IPAPerspectiveTransform

- (id)inverseTransform
{
  if (self->_isInverse)
  {
    _PFAssertFailHandler();
    goto LABEL_8;
  }

  v4 = *&self->_projectionTransform.m[10];
  v19[4] = *&self->_projectionTransform.m[8];
  v19[5] = v4;
  v5 = *&self->_projectionTransform.m[14];
  v19[6] = *&self->_projectionTransform.m[12];
  v19[7] = v5;
  v6 = *&self->_projectionTransform.m[2];
  v19[0] = *self->_projectionTransform.m;
  v19[1] = v6;
  v7 = *&self->_projectionTransform.m[6];
  v19[2] = *&self->_projectionTransform.m[4];
  v19[3] = v7;
  if (!PA::Matrix4d::invert(v19))
  {
LABEL_8:
    _PFAssertFailHandler();
LABEL_9:
    v17 = _PFAssertFailHandler();

    _Unwind_Resume(v17);
  }

  v8 = *&self->_viewingTransform.m[10];
  v18[4] = *&self->_viewingTransform.m[8];
  v18[5] = v8;
  v9 = *&self->_viewingTransform.m[14];
  v18[6] = *&self->_viewingTransform.m[12];
  v18[7] = v9;
  v10 = *&self->_viewingTransform.m[2];
  v18[0] = *self->_viewingTransform.m;
  v18[1] = v10;
  v11 = *&self->_viewingTransform.m[6];
  v18[2] = *&self->_viewingTransform.m[4];
  v18[3] = v11;
  if (!PA::Matrix4d::invert(v18))
  {
    goto LABEL_9;
  }

  v12 = [IPAPerspectiveTransform alloc];
  intrinsicGeometry = self->_intrinsicGeometry;
  v14 = [(IPAImageTransform *)self inputGeometry];
  v15 = [(IPAPerspectiveTransform *)v12 initWithInputGeometry:intrinsicGeometry intrinsicGeometry:v14 projectionTransform:v19 viewingTransform:v18];

  v15->_isInverse = !self->_isInverse;

  return v15;
}

- (Vector2d)mapVector:(Vector2d)a3
{
  if (self->_isInverse)
  {
    v53 = a3;
    v54 = xmmword_25E5E03C0;
    v4.n128_f64[0] = PA::operator*(self->_viewingTransform.m, &v53.X);
    v4.n128_u64[1] = v5;
    v50 = v4;
    PA::Matrix4d::MultiplyWithProject(self->_projectionTransform.m, v4, -1.0);
    v48 = v6;
    v49 = v7;
    v9 = v8;
    PA::Matrix4d::MultiplyWithProject(self->_projectionTransform.m, v50, 1.0);
    v51 = v10;
    v47 = v11;
    v13 = v12;
    v14 = [(IPAImageTransform *)self inputGeometry];
    v15 = [v14 conformsToProtocol:&unk_28704C380];

    if ((v15 & 1) == 0)
    {
      v46 = _PFAssertFailHandler();

      _Unwind_Resume(v46);
    }

    v16 = [(IPAImageTransform *)self inputGeometry];
    v17 = v16;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    Y = 0.0;
    X = 0.0;
    if (v16)
    {
      [v16 imageQuad];
      X = v53.X;
      Y = v53.Y;
      v20 = *(&v54 + 1);
      v21 = *&v54;
      v19 = v55;
      v18 = v56;
    }

    v24 = v21 - X;
    v25 = v20 - Y;
    v26 = v19 - X;
    v27 = v18 - Y;
    v28 = v27 * -0.0 + v25 * 0.0;
    v29 = v24 * -0.0 + v26 * 0.0;
    v30 = v24 * v27 - v25 * v26;
    v31.f64[0] = v48;
    v31.f64[1] = v49;
    v32.f64[0] = v51;
    v32.f64[1] = v47;
    v33 = sqrt(v29 * v29 + v28 * v28 + v30 * v30);
    v34 = v28 / v33;
    v35 = v29 / v33;
    v36 = v30 / v33;
    v37 = vsubq_f64(v32, v31);
    v38 = vmuld_lane_f64(v35, v37, 1) + v34 * v37.f64[0] + v36 * (v13 - v9);
    if (fabs(v38) >= 2.22044605e-16)
    {
      v39 = vaddq_f64(v31, vmulq_n_f64(v37, -(v35 * (v49 - Y) + v34 * (v48 - X) + v36 * v9) / v38));
    }

    else
    {
      v39 = kIPAGeometryInvalidPoint;
    }

    v52 = v39;

    v45 = v52.f64[1];
    v44 = v52.f64[0];
  }

  else
  {
    v40 = a3.Y;
    PA::Matrix4d::MultiplyWithProject(self->_projectionTransform.m, a3, 0.0);
    v53.X = v41;
    v53.Y = v42;
    *&v54 = v43;
    *(&v54 + 1) = 0x3FF0000000000000;
    v44 = PA::operator*(self->_viewingTransform.m, &v53.X);
  }

  result.Y = v45;
  result.X = v44;
  return result;
}

- (IPAPerspectiveTransform)initWithInputGeometry:(id)a3 intrinsicGeometry:(id)a4 projectionTransform:(const Matrix4d *)a5 viewingTransform:(const Matrix4d *)a6
{
  v11 = a4;
  v27.receiver = self;
  v27.super_class = IPAPerspectiveTransform;
  v12 = [(IPAImageTransform *)&v27 initWithInputGeometry:a3 intrinsicGeometry:v11];
  v13 = v12;
  if (v12)
  {
    v14 = *&a5->m[6];
    v16 = *a5->m;
    v15 = *&a5->m[2];
    *(v12 + 56) = *&a5->m[4];
    *(v12 + 72) = v14;
    *(v12 + 24) = v16;
    *(v12 + 40) = v15;
    v17 = *&a5->m[14];
    v19 = *&a5->m[8];
    v18 = *&a5->m[10];
    *(v12 + 120) = *&a5->m[12];
    *(v12 + 136) = v17;
    *(v12 + 88) = v19;
    *(v12 + 104) = v18;
    v20 = *&a6->m[6];
    v22 = *a6->m;
    v21 = *&a6->m[2];
    *(v12 + 184) = *&a6->m[4];
    *(v12 + 200) = v20;
    *(v12 + 152) = v22;
    *(v12 + 168) = v21;
    v23 = *&a6->m[14];
    v25 = *&a6->m[8];
    v24 = *&a6->m[10];
    *(v12 + 248) = *&a6->m[12];
    *(v12 + 264) = v23;
    *(v12 + 216) = v25;
    *(v12 + 232) = v24;
    objc_storeStrong(v12 + 35, a4);
  }

  return v13;
}

@end