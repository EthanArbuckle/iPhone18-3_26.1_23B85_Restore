@interface _UIDirectionalRotationLayer
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)setTransform:(CATransform3D *)transform;
@end

@implementation _UIDirectionalRotationLayer

- (void)setTransform:(CATransform3D *)transform
{
  p_previousTransform = &self->_previousTransform;
  [(_UIDirectionalRotationLayer *)self transform];
  v6 = v25;
  *&p_previousTransform->m31 = v24;
  *&p_previousTransform->m33 = v6;
  v7 = v27;
  *&p_previousTransform->m41 = v26;
  *&p_previousTransform->m43 = v7;
  v8 = v21;
  *&p_previousTransform->m11 = v20;
  *&p_previousTransform->m13 = v8;
  v9 = v23;
  *&p_previousTransform->m21 = v22;
  *&p_previousTransform->m23 = v9;
  v19.receiver = self;
  v19.super_class = _UIDirectionalRotationLayer;
  v10 = *&transform->m33;
  v24 = *&transform->m31;
  v25 = v10;
  v11 = *&transform->m43;
  v26 = *&transform->m41;
  v27 = v11;
  v12 = *&transform->m13;
  v20 = *&transform->m11;
  v21 = v12;
  v13 = *&transform->m23;
  v22 = *&transform->m21;
  v23 = v13;
  [(_UIDirectionalRotationLayer *)&v19 setTransform:&v20];
  v14 = MEMORY[0x1E69792E8];
  v15 = *(MEMORY[0x1E69792E8] + 80);
  *&p_previousTransform->m31 = *(MEMORY[0x1E69792E8] + 64);
  *&p_previousTransform->m33 = v15;
  v16 = v14[7];
  *&p_previousTransform->m41 = v14[6];
  *&p_previousTransform->m43 = v16;
  v17 = v14[1];
  *&p_previousTransform->m11 = *v14;
  *&p_previousTransform->m13 = v17;
  v18 = v14[3];
  *&p_previousTransform->m21 = v14[2];
  *&p_previousTransform->m23 = v18;
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  animationCopy = animation;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [keyCopy isEqualToString:@"transform"])
  {
    presentationLayer = [(_UIDirectionalRotationLayer *)self presentationLayer];
    v9 = presentationLayer;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    if (presentationLayer)
    {
      [presentationLayer transform];
    }

    else
    {
      v10 = *&self->_previousTransform.m33;
      v37 = *&self->_previousTransform.m31;
      v38 = v10;
      v11 = *&self->_previousTransform.m43;
      v39 = *&self->_previousTransform.m41;
      v40 = v11;
      v12 = *&self->_previousTransform.m13;
      v33 = *&self->_previousTransform.m11;
      v34 = v12;
      v13 = *&self->_previousTransform.m23;
      v35 = *&self->_previousTransform.m21;
      v36 = v13;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    [(_UIDirectionalRotationLayer *)self transform];
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v14 = _UIInterfaceOrientationFromCATransform3D(&v17);
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v24 = v40;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v20 = v36;
    v15 = _UIInterfaceOrientationFromCATransform3D(&v17);
    _UIMakeBasicTransformAnimationUnambiguousWithOrientations(animationCopy, v15, v14, [(_UIDirectionalRotationLayer *)self isCounterTransformLayer], [(_UIDirectionalRotationLayer *)self isInverseTransformLayer]);
  }

  v16.receiver = self;
  v16.super_class = _UIDirectionalRotationLayer;
  [(_UIDirectionalRotationLayer *)&v16 addAnimation:animationCopy forKey:keyCopy];
}

@end