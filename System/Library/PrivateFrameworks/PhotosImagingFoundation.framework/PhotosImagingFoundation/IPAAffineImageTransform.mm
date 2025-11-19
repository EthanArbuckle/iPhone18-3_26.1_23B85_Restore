@interface IPAAffineImageTransform
- (IPAAffineImageTransform)initWithInputGeometry:(id)a3 intrinsicGeometry:(id)a4 matrix:(const Matrix4d *)a5 canAlignToPixelsExactly:(BOOL)a6;
- (Matrix4d)matrix;
- (Vector2d)mapVector:(Vector2d)a3;
- (id)description;
- (id)inverseTransform;
@end

@implementation IPAAffineImageTransform

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IPAImageTransform *)self inputGeometry];
  v7 = [(IPAImageTransform *)self intrinsicGeometry];
  canAlignToPixelsExactly = self->_canAlignToPixelsExactly;
  v9 = PA::Matrix4d::description(&self->_matrix);
  v10 = [v3 stringWithFormat:@"<%@.%p inputGeometry:%@ intrinsicGeometry:%@ canAlignToPixelsExactly:%d matrix:\n%@>", v5, self, v6, v7, canAlignToPixelsExactly, v9];

  return v10;
}

- (Vector2d)mapVector:(Vector2d)a3
{
  v5[0] = a3;
  v5[1] = xmmword_25E5E03C0;
  v3 = PA::operator*(self->_matrix.m, &v5[0].X);
  result.Y = v4;
  result.X = v3;
  return result;
}

- (id)inverseTransform
{
  p_matrix = &self->_matrix;
  v4 = *&self->_matrix.m[10];
  v13[4] = *&self->_matrix.m[8];
  v13[5] = v4;
  v5 = *&self->_matrix.m[14];
  v13[6] = *&self->_matrix.m[12];
  v13[7] = v5;
  v6 = *&self->_matrix.m[2];
  v13[0] = *self->_matrix.m;
  v13[1] = v6;
  v7 = *&self->_matrix.m[6];
  v13[2] = *&self->_matrix.m[4];
  v13[3] = v7;
  if (PA::Matrix4d::invert(v13))
  {
    v8 = objc_alloc(objc_opt_class());
    v9 = [(IPAImageTransform *)self intrinsicGeometry];
    v10 = [(IPAImageTransform *)self inputGeometry];
    v11 = [v8 initWithInputGeometry:v9 intrinsicGeometry:v10 matrix:v13 canAlignToPixelsExactly:self->_canAlignToPixelsExactly];

    return v11;
  }

  else
  {
    PA::Matrix4d::description(p_matrix);
    objc_claimAutoreleasedReturnValue();
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

- (Matrix4d)matrix
{
  v3 = *&self->m[14];
  *&retstr->m[8] = *&self->m[12];
  *&retstr->m[10] = v3;
  v4 = *&self[1].m[2];
  *&retstr->m[12] = *self[1].m;
  *&retstr->m[14] = v4;
  v5 = *&self->m[6];
  *retstr->m = *&self->m[4];
  *&retstr->m[2] = v5;
  v6 = *&self->m[10];
  *&retstr->m[4] = *&self->m[8];
  *&retstr->m[6] = v6;
  return self;
}

- (IPAAffineImageTransform)initWithInputGeometry:(id)a3 intrinsicGeometry:(id)a4 matrix:(const Matrix4d *)a5 canAlignToPixelsExactly:(BOOL)a6
{
  v15.receiver = self;
  v15.super_class = IPAAffineImageTransform;
  result = [(IPAImageTransform *)&v15 initWithInputGeometry:a3 intrinsicGeometry:a4];
  if (result)
  {
    v9 = *&a5->m[6];
    v11 = *a5->m;
    v10 = *&a5->m[2];
    *&result->_matrix.m[4] = *&a5->m[4];
    *&result->_matrix.m[6] = v9;
    *result->_matrix.m = v11;
    *&result->_matrix.m[2] = v10;
    v12 = *&a5->m[14];
    v14 = *&a5->m[8];
    v13 = *&a5->m[10];
    *&result->_matrix.m[12] = *&a5->m[12];
    *&result->_matrix.m[14] = v12;
    *&result->_matrix.m[8] = v14;
    *&result->_matrix.m[10] = v13;
    result->_canAlignToPixelsExactly = a6;
  }

  return result;
}

@end