@interface UIFocusMovementHint
- (CATransform3D)interactionTransform;
- (CATransform3D)perspectiveTransform;
- (CGVector)movementDirection;
- (CGVector)rotation;
- (CGVector)translation;
- (UIFocusMovementHint)initWithMovementDirection:(CGVector)direction itemSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIFocusMovementHint

- (UIFocusMovementHint)initWithMovementDirection:(CGVector)direction itemSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  dy = direction.dy;
  dx = direction.dx;
  v18.receiver = self;
  v18.super_class = UIFocusMovementHint;
  result = [(UIFocusMovementHint *)&v18 init];
  if (result)
  {
    result->_movementDirection.dx = dx;
    result->_movementDirection.dy = dy;
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      v17 = xmmword_18A67B3E0;
    }

    else
    {
      if (height <= width)
      {
        v10 = width;
      }

      else
      {
        v10 = height;
      }

      v11 = v10 / 1920.0;
      if (v11 < 0.0)
      {
        v11 = 0.0;
      }

      v12 = vmulq_n_f64(xmmword_18A67B3F0, fmin(v11, 1.0));
      __asm { FMOV            V1.2D, #6.0 }

      *&_Q1.f64[0] = *&vaddq_f64(v12, _Q1);
      _Q1.f64[1] = vsubq_f64(vdupq_n_s64(0x3FBEB851EB851EB8uLL), v12).f64[1];
      v17 = vminnmq_f64(vbslq_s8(vcgtq_f64(xmmword_18A67B400, _Q1), xmmword_18A67B400, _Q1), xmmword_18A67B410);
    }

    *&result->_translationAmount = v17;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 24) = self->_movementDirection;
  }

  return result;
}

- (CATransform3D)perspectiveTransform
{
  v3 = MEMORY[0x1E69792E8];
  v4 = *(MEMORY[0x1E69792E8] + 80);
  *&retstr->m31 = *(MEMORY[0x1E69792E8] + 64);
  *&retstr->m33 = v4;
  v5 = v3[7];
  *&retstr->m41 = v3[6];
  *&retstr->m43 = v5;
  v6 = v3[1];
  *&retstr->m11 = *v3;
  *&retstr->m13 = v6;
  v7 = v3[3];
  *&retstr->m21 = v3[2];
  *&retstr->m23 = v7;
  retstr->m34 = -0.00111111111;
  return self;
}

- (CGVector)rotation
{
  rotationAmount = self->_rotationAmount;
  v3 = rotationAmount * self->_movementDirection.dy;
  v4 = -(rotationAmount * self->_movementDirection.dx);
  result.dy = v4;
  result.dx = v3;
  return result;
}

- (CGVector)translation
{
  translationAmount = self->_translationAmount;
  v3 = translationAmount * self->_movementDirection.dx;
  v4 = translationAmount * self->_movementDirection.dy;
  result.dy = v4;
  result.dx = v3;
  return result;
}

- (CATransform3D)interactionTransform
{
  v5 = MEMORY[0x1E69792E8];
  v37 = *(MEMORY[0x1E69792E8] + 80);
  v38 = *(MEMORY[0x1E69792E8] + 64);
  *&retstr->m31 = v38;
  *&retstr->m33 = v37;
  v35 = v5[7];
  v36 = v5[6];
  *&retstr->m41 = v36;
  *&retstr->m43 = v35;
  v33 = v5[1];
  v34 = *v5;
  *&retstr->m11 = *v5;
  *&retstr->m13 = v33;
  v31 = v5[3];
  v32 = v5[2];
  *&retstr->m21 = v32;
  *&retstr->m23 = v31;
  [(UIFocusMovementHint *)self rotation];
  v7 = v6;
  v9 = v8;
  [(UIFocusMovementHint *)self translation];
  v11 = v10;
  v13 = v12;
  *&v41.m31 = v38;
  *&v41.m33 = v37;
  *&v41.m41 = v36;
  *&v41.m43 = v35;
  *&v41.m11 = v34;
  *&v41.m13 = v33;
  *&v41.m21 = v32;
  *&v41.m23 = v31;
  CATransform3DRotate(retstr, &v41, v9, 0.0, 1.0, 0.0);
  v14 = *&retstr->m33;
  *&v40.m31 = *&retstr->m31;
  *&v40.m33 = v14;
  v15 = *&retstr->m43;
  *&v40.m41 = *&retstr->m41;
  *&v40.m43 = v15;
  v16 = *&retstr->m13;
  *&v40.m11 = *&retstr->m11;
  *&v40.m13 = v16;
  v17 = *&retstr->m23;
  *&v40.m21 = *&retstr->m21;
  *&v40.m23 = v17;
  CATransform3DRotate(&v41, &v40, v7, 1.0, 0.0, 0.0);
  v18 = *&v41.m33;
  *&retstr->m31 = *&v41.m31;
  *&retstr->m33 = v18;
  v19 = *&v41.m43;
  *&retstr->m41 = *&v41.m41;
  *&retstr->m43 = v19;
  v20 = *&v41.m13;
  *&retstr->m11 = *&v41.m11;
  *&retstr->m13 = v20;
  v21 = *&v41.m23;
  *&retstr->m21 = *&v41.m21;
  *&retstr->m23 = v21;
  v22 = *&retstr->m33;
  *&v40.m31 = *&retstr->m31;
  *&v40.m33 = v22;
  v23 = *&retstr->m43;
  *&v40.m41 = *&retstr->m41;
  *&v40.m43 = v23;
  v24 = *&retstr->m13;
  *&v40.m11 = *&retstr->m11;
  *&v40.m13 = v24;
  v25 = *&retstr->m23;
  *&v40.m21 = *&retstr->m21;
  *&v40.m23 = v25;
  CATransform3DTranslate(&v41, &v40, v11, v13, 0.0);
  v26 = *&v41.m33;
  *&retstr->m31 = *&v41.m31;
  *&retstr->m33 = v26;
  v27 = *&v41.m43;
  *&retstr->m41 = *&v41.m41;
  *&retstr->m43 = v27;
  v28 = *&v41.m13;
  *&retstr->m11 = *&v41.m11;
  *&retstr->m13 = v28;
  v29 = *&v41.m23;
  *&retstr->m21 = *&v41.m21;
  *&retstr->m23 = v29;
  result = [(UIFocusMovementHint *)self perspectiveTransform];
  retstr->m34 = v39;
  return result;
}

- (CGVector)movementDirection
{
  dx = self->_movementDirection.dx;
  dy = self->_movementDirection.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end