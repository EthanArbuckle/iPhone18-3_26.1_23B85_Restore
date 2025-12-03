@interface IPAPerspectiveTransform
- (IPAPerspectiveTransform)initWithInputGeometry:(id)geometry intrinsicGeometry:(id)intrinsicGeometry projectionTransform:(const Matrix4d *)transform viewingTransform:(const Matrix4d *)viewingTransform;
- (Vector2d)mapVector:(Vector2d)vector;
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
  inputGeometry = [(IPAImageTransform *)self inputGeometry];
  v15 = [(IPAPerspectiveTransform *)v12 initWithInputGeometry:intrinsicGeometry intrinsicGeometry:inputGeometry projectionTransform:v19 viewingTransform:v18];

  v15->_isInverse = !self->_isInverse;

  return v15;
}

- (Vector2d)mapVector:(Vector2d)vector
{
  if (self->_isInverse)
  {
    vectorCopy = vector;
    v54 = xmmword_25E5E03C0;
    v4.n128_f64[0] = PA::operator*(self->_viewingTransform.m, &vectorCopy.X);
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
    inputGeometry = [(IPAImageTransform *)self inputGeometry];
    v15 = [inputGeometry conformsToProtocol:&unk_28704C380];

    if ((v15 & 1) == 0)
    {
      v46 = _PFAssertFailHandler();

      _Unwind_Resume(v46);
    }

    inputGeometry2 = [(IPAImageTransform *)self inputGeometry];
    v17 = inputGeometry2;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    Y = 0.0;
    X = 0.0;
    if (inputGeometry2)
    {
      [inputGeometry2 imageQuad];
      X = vectorCopy.X;
      Y = vectorCopy.Y;
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
    v40 = vector.Y;
    PA::Matrix4d::MultiplyWithProject(self->_projectionTransform.m, vector, 0.0);
    vectorCopy.X = v41;
    vectorCopy.Y = v42;
    *&v54 = v43;
    *(&v54 + 1) = 0x3FF0000000000000;
    v44 = PA::operator*(self->_viewingTransform.m, &vectorCopy.X);
  }

  result.Y = v45;
  result.X = v44;
  return result;
}

- (IPAPerspectiveTransform)initWithInputGeometry:(id)geometry intrinsicGeometry:(id)intrinsicGeometry projectionTransform:(const Matrix4d *)transform viewingTransform:(const Matrix4d *)viewingTransform
{
  intrinsicGeometryCopy = intrinsicGeometry;
  v27.receiver = self;
  v27.super_class = IPAPerspectiveTransform;
  v12 = [(IPAImageTransform *)&v27 initWithInputGeometry:geometry intrinsicGeometry:intrinsicGeometryCopy];
  v13 = v12;
  if (v12)
  {
    v14 = *&transform->m[6];
    v16 = *transform->m;
    v15 = *&transform->m[2];
    *(v12 + 56) = *&transform->m[4];
    *(v12 + 72) = v14;
    *(v12 + 24) = v16;
    *(v12 + 40) = v15;
    v17 = *&transform->m[14];
    v19 = *&transform->m[8];
    v18 = *&transform->m[10];
    *(v12 + 120) = *&transform->m[12];
    *(v12 + 136) = v17;
    *(v12 + 88) = v19;
    *(v12 + 104) = v18;
    v20 = *&viewingTransform->m[6];
    v22 = *viewingTransform->m;
    v21 = *&viewingTransform->m[2];
    *(v12 + 184) = *&viewingTransform->m[4];
    *(v12 + 200) = v20;
    *(v12 + 152) = v22;
    *(v12 + 168) = v21;
    v23 = *&viewingTransform->m[14];
    v25 = *&viewingTransform->m[8];
    v24 = *&viewingTransform->m[10];
    *(v12 + 248) = *&viewingTransform->m[12];
    *(v12 + 264) = v23;
    *(v12 + 216) = v25;
    *(v12 + 232) = v24;
    objc_storeStrong(v12 + 35, intrinsicGeometry);
  }

  return v13;
}

@end