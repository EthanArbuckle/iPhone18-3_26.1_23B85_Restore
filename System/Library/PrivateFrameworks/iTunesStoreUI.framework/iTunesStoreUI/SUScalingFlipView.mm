@interface SUScalingFlipView
- (SUScalingFlipView)initWithFrontView:(id)a3 backView:(id)a4;
- (id)_backLayerAnimation;
- (id)_fixedAnimationForAnimation:(id)a3;
- (id)_frontLayerAnimation;
- (id)_inputColorAnimation;
- (id)_positionAnimation;
- (id)_transformAnimationWithStart:(CATransform3D *)a3 middle:(CATransform3D *)a4 end:(CATransform3D *)a5;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)performFlip;
@end

@implementation SUScalingFlipView

- (SUScalingFlipView)initWithFrontView:(id)a3 backView:(id)a4
{
  p_fromFrame = &self->_fromFrame;
  [a3 frame];
  p_fromFrame->origin.x = v8;
  p_fromFrame->origin.y = v9;
  p_fromFrame->size.width = v10;
  p_fromFrame->size.height = v11;
  v12 = [(SUScalingFlipView *)self initWithFrame:?];
  if (v12)
  {
    v12->_backView = a4;
    v12->_frontView = a3;
    [(UIView *)v12->_backView frame];
    v12->_toFrame.origin.x = v13;
    v12->_toFrame.origin.y = v14;
    v12->_toFrame.size.width = v15;
    v12->_toFrame.size.height = v16;
    [(CALayer *)[(UIView *)v12->_backView layer] setDoubleSided:0];
    [(CALayer *)[(UIView *)v12->_frontView layer] setDoubleSided:0];
    [(SUScalingFlipView *)v12 addSubview:v12->_backView];
    [(SUScalingFlipView *)v12 addSubview:v12->_frontView];
    frontView = v12->_frontView;
    [(SUScalingFlipView *)v12 center];
    [(UIView *)frontView convertPoint:v12 fromView:?];
    v19 = v18;
    v21 = v20;
    [(UIView *)v12->_backView setCenter:?];
    [(UIView *)v12->_frontView setCenter:v19, v21];
    v22 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    [v22 setName:@"multiply"];
    [v22 setValue:objc_msgSend(objc_msgSend(MEMORY[0x1E69DC888] forKeyPath:{"whiteColor"), "CGColor"), @"inputColor"}];
    v23 = [(SUScalingFlipView *)v12 layer];
    [v23 setFilters:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v22)}];
  }

  return v12;
}

- (void)dealloc
{
  self->_backView = 0;

  self->_frontView = 0;
  v3.receiver = self;
  v3.super_class = SUScalingFlipView;
  [(SUScalingFlipView *)&v3 dealloc];
}

- (void)performFlip
{
  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  [(CALayer *)[(UIView *)self->_frontView layer] addAnimation:[(SUScalingFlipView *)self _fixedAnimationForAnimation:[(SUScalingFlipView *)self _frontLayerAnimation]] forKey:@"flipAnimation"];
  [(CALayer *)[(UIView *)self->_backView layer] addAnimation:[(SUScalingFlipView *)self _fixedAnimationForAnimation:[(SUScalingFlipView *)self _backLayerAnimation]] forKey:@"flipAnimation"];
  v3 = [MEMORY[0x1E6979308] animation];
  [v3 setAnimations:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", -[SUScalingFlipView _inputColorAnimation](self, "_inputColorAnimation"), -[SUScalingFlipView _positionAnimation](self, "_positionAnimation"), 0)}];
  [v3 setDelegate:self];
  v4 = [(SUScalingFlipView *)self layer];
  v5 = [(SUScalingFlipView *)self _fixedAnimationForAnimation:v3];

  [v4 addAnimation:v5 forKey:@"multiplyAndPositionAnimation"];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  [-[SUScalingFlipView layer](self layer];
  [(CALayer *)[(UIView *)self->_backView layer] removeAllAnimations];
  [(CALayer *)[(UIView *)self->_frontView layer] removeAllAnimations];
  v5 = [(UIView *)self->_backView layer];
  v6 = *(MEMORY[0x1E69792E8] + 80);
  *&v20.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v20.m33 = v6;
  v7 = *(MEMORY[0x1E69792E8] + 112);
  *&v20.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v20.m43 = v7;
  v8 = *(MEMORY[0x1E69792E8] + 16);
  *&v20.m11 = *MEMORY[0x1E69792E8];
  *&v20.m13 = v8;
  v9 = *(MEMORY[0x1E69792E8] + 48);
  *&v20.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v20.m23 = v9;
  [(CALayer *)v5 setTransform:&v20];
  v10 = [(UIView *)self->_frontView layer];
  CATransform3DMakeRotation(&v20, 3.14159265, 0.0, 1.0, 0.0);
  [(CALayer *)v10 setTransform:&v20];
  [(SUScalingFlipView *)self setFrame:self->_toFrame.origin.x, self->_toFrame.origin.y, self->_toFrame.size.width, self->_toFrame.size.height];
  [(SUScalingFlipView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIView *)self->_backView setFrame:?];
  [(UIView *)self->_frontView setFrame:v12, v14, v16, v18];
  [(UIView *)self->_backView setNeedsDisplay];
  if (objc_opt_respondsToSelector())
  {
    v19 = self;
    [(SUScalingFlipViewDelegate *)self->_delegate scalingFlipViewDidFinish:self];
  }

  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
}

- (id)_backLayerAnimation
{
  width = self->_toFrame.size.width;
  height = self->_toFrame.size.height;
  direction = self->_direction;
  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = dbl_1C233A090[(direction - 1) < 2];
  v9 = 1.0 / ((width + height) * 0.5 * 3.0);
  v10 = self->_fromFrame.size.height;
  v11 = self->_fromFrame.size.width / width;
  v23 = *(MEMORY[0x1E69792E8] + 48);
  *&v30.m21 = *(MEMORY[0x1E69792E8] + 32);
  v24 = *&v30.m21;
  *&v30.m23 = v23;
  *&v30.m31 = *(MEMORY[0x1E69792E8] + 64);
  v22 = *&v30.m31;
  v13 = v10 / height;
  v30.m33 = *(MEMORY[0x1E69792E8] + 80);
  m33 = v30.m33;
  v20 = *(MEMORY[0x1E69792E8] + 16);
  *&v30.m11 = *MEMORY[0x1E69792E8];
  v21 = *&v30.m11;
  *&v30.m13 = v20;
  v30.m34 = v9;
  v18 = *(MEMORY[0x1E69792E8] + 112);
  *&v30.m41 = *(MEMORY[0x1E69792E8] + 96);
  v19 = *&v30.m41;
  *&v30.m43 = v18;
  CATransform3DScale(&v31, &v30, v11, 1.0, 1.0);
  v52 = *&v31.m21;
  v53 = *&v31.m23;
  v54 = *&v31.m31;
  v55 = v31.m33;
  v50 = *&v31.m11;
  v51 = *&v31.m13;
  v48 = *&v31.m41;
  v49 = *&v31.m43;
  v30 = v31;
  CATransform3DRotate(&v31, &v30, v8, v7, v6, 0.0);
  v52 = *&v31.m21;
  v53 = *&v31.m23;
  v54 = *&v31.m31;
  v55 = v31.m33;
  v50 = *&v31.m11;
  v51 = *&v31.m13;
  m34 = v31.m34;
  v48 = *&v31.m41;
  v49 = *&v31.m43;
  *&v30.m21 = v24;
  *&v30.m23 = v23;
  *&v30.m31 = v22;
  v30.m33 = m33;
  *&v30.m11 = v21;
  *&v30.m13 = v20;
  v30.m34 = v9;
  *&v30.m41 = v19;
  *&v30.m43 = v18;
  CATransform3DScale(&v31, &v30, v11 + (1.0 - v11) * 0.5, v13 + (1.0 - v13) * 0.5, 1.0);
  v44 = *&v31.m21;
  v45 = *&v31.m23;
  v46 = *&v31.m31;
  v47 = v31.m33;
  v42 = *&v31.m11;
  v43 = *&v31.m13;
  v40 = *&v31.m41;
  v41 = *&v31.m43;
  v30 = v31;
  CATransform3DRotate(&v31, &v30, v8 * 0.5, v7, v6, 0.0);
  v44 = *&v31.m21;
  v45 = *&v31.m23;
  v46 = *&v31.m31;
  v47 = v31.m33;
  v42 = *&v31.m11;
  v43 = *&v31.m13;
  v14 = v31.m34;
  v40 = *&v31.m41;
  v41 = *&v31.m43;
  *&v30.m21 = v24;
  *&v30.m23 = v23;
  *&v30.m31 = v22;
  v30.m33 = m33;
  *&v30.m11 = v21;
  *&v30.m13 = v20;
  v30.m34 = v9;
  *&v30.m41 = v19;
  *&v30.m43 = v18;
  CATransform3DScale(&v31, &v30, 1.0, 1.0, 1.0);
  v36 = *&v31.m21;
  v37 = *&v31.m23;
  v38 = *&v31.m31;
  v39 = v31.m33;
  v34 = *&v31.m11;
  v35 = *&v31.m13;
  v15 = v31.m34;
  v32 = *&v31.m41;
  v33 = *&v31.m43;
  *&v31.m21 = v52;
  *&v31.m23 = v53;
  *&v31.m31 = v54;
  v31.m33 = v55;
  *&v31.m11 = v50;
  *&v31.m13 = v51;
  v31.m34 = m34;
  *&v31.m41 = v48;
  *&v31.m43 = v49;
  *&v30.m21 = v44;
  *&v30.m23 = v45;
  *&v30.m31 = v46;
  v30.m33 = v47;
  *&v30.m11 = v42;
  *&v30.m13 = v43;
  v30.m34 = v14;
  *&v30.m41 = v40;
  *&v30.m43 = v41;
  v25[2] = v36;
  v25[3] = v37;
  v25[4] = v38;
  v26 = v39;
  v25[0] = v34;
  v25[1] = v35;
  v27 = v15;
  v28 = v32;
  v29 = v33;
  return [(SUScalingFlipView *)self _transformAnimationWithStart:&v31 middle:&v30 end:v25];
}

- (id)_fixedAnimationForAnimation:(id)a3
{
  duration = self->_duration;
  UIAnimationDragCoefficient();
  [a3 setDuration:duration * v5];
  [a3 setFillMode:*MEMORY[0x1E69797E8]];
  [a3 setRemovedOnCompletion:0];
  [a3 setTimingFunction:{objc_msgSend(MEMORY[0x1E69793D0], "functionWithName:", *MEMORY[0x1E6979EB8])}];
  return a3;
}

- (id)_frontLayerAnimation
{
  width = self->_fromFrame.size.width;
  height = self->_fromFrame.size.height;
  direction = self->_direction;
  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = dbl_1C233A0A0[(direction - 1) < 2];
  v9 = 1.0 / ((width + height) * 0.5 * 3.0);
  v10 = self->_toFrame.size.width / width;
  v11 = self->_toFrame.size.height / height;
  v22 = *(MEMORY[0x1E69792E8] + 48);
  *&v29.m21 = *(MEMORY[0x1E69792E8] + 32);
  v23 = *&v29.m21;
  *&v29.m23 = v22;
  *&v29.m31 = *(MEMORY[0x1E69792E8] + 64);
  v29.m33 = *(MEMORY[0x1E69792E8] + 80);
  m33 = v29.m33;
  v21 = *&v29.m31;
  v13 = *(MEMORY[0x1E69792E8] + 16);
  *&v29.m11 = *MEMORY[0x1E69792E8];
  v20 = *&v29.m11;
  *&v29.m13 = v13;
  v29.m34 = v9;
  v19 = v13;
  v17 = *(MEMORY[0x1E69792E8] + 112);
  *&v29.m41 = *(MEMORY[0x1E69792E8] + 96);
  v18 = *&v29.m41;
  *&v29.m43 = v17;
  CATransform3DScale(&v30, &v29, (v10 + -1.0) * 0.5 + 1.0, (v11 + -1.0) * 0.5 + 1.0, 1.0);
  v43 = *&v30.m21;
  v44 = *&v30.m23;
  v45 = *&v30.m31;
  v46 = v30.m33;
  v41 = *&v30.m11;
  v42 = *&v30.m13;
  v39 = *&v30.m41;
  v40 = *&v30.m43;
  v29 = v30;
  CATransform3DRotate(&v30, &v29, v8 * 0.5, v7, v6, 0.0);
  v43 = *&v30.m21;
  v44 = *&v30.m23;
  v45 = *&v30.m31;
  v46 = v30.m33;
  v41 = *&v30.m11;
  v42 = *&v30.m13;
  m34 = v30.m34;
  v39 = *&v30.m41;
  v40 = *&v30.m43;
  *&v29.m21 = v23;
  *&v29.m23 = v22;
  *&v29.m31 = v21;
  v29.m33 = m33;
  *&v29.m11 = v20;
  *&v29.m13 = v19;
  v29.m34 = v9;
  *&v29.m41 = v18;
  *&v29.m43 = v17;
  CATransform3DScale(&v30, &v29, v10, v11, 1.0);
  v35 = *&v30.m21;
  v36 = *&v30.m23;
  v37 = *&v30.m31;
  v38 = v30.m33;
  v33 = *&v30.m11;
  v34 = *&v30.m13;
  v31 = *&v30.m41;
  v32 = *&v30.m43;
  v29 = v30;
  CATransform3DRotate(&v30, &v29, v8, v7, v6, 0.0);
  v35 = *&v30.m21;
  v36 = *&v30.m23;
  v37 = *&v30.m31;
  v38 = v30.m33;
  v33 = *&v30.m11;
  v34 = *&v30.m13;
  v15 = v30.m34;
  v31 = *&v30.m41;
  v32 = *&v30.m43;
  *&v30.m21 = v23;
  *&v30.m23 = v22;
  *&v30.m31 = v21;
  v30.m33 = m33;
  *&v30.m11 = v20;
  *&v30.m13 = v19;
  v30.m34 = v9;
  *&v30.m41 = v18;
  *&v30.m43 = v17;
  *&v29.m21 = v43;
  *&v29.m23 = v44;
  *&v29.m31 = v45;
  v29.m33 = v46;
  *&v29.m11 = v41;
  *&v29.m13 = v42;
  v29.m34 = m34;
  *&v29.m41 = v39;
  *&v29.m43 = v40;
  v24[2] = v35;
  v24[3] = v36;
  v24[4] = v37;
  v25 = v38;
  v24[0] = v33;
  v24[1] = v34;
  v26 = v15;
  v27 = v31;
  v28 = v32;
  return [(SUScalingFlipView *)self _transformAnimationWithStart:&v30 middle:&v29 end:v24];
}

- (id)_inputColorAnimation
{
  v2 = [MEMORY[0x1E6979390] animationWithKeyPath:@"filters.multiply.inputColor"];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.330000013 alpha:1.0];
  v5 = MEMORY[0x1E695DEC8];
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  LODWORD(v7) = 0.5;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  LODWORD(v9) = 1.0;
  [v2 setKeyTimes:{objc_msgSend(v5, "arrayWithObjects:", v6, v8, objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v9), 0)}];
  [v2 setValues:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", objc_msgSend(v3, "CGColor"), objc_msgSend(v4, "CGColor"), objc_msgSend(v3, "CGColor"), 0)}];
  return v2;
}

- (id)_positionAnimation
{
  [-[SUScalingFlipView layer](self "layer")];
  v3 = v2;
  v5 = v4;
  UIRectGetCenter();
  v7 = floor(v3 + v6 - v3);
  v9 = floor(v5 + v8 - v5);
  v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
  [v10 setToValue:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGPoint:", v7, v9)}];
  return v10;
}

- (id)_transformAnimationWithStart:(CATransform3D *)a3 middle:(CATransform3D *)a4 end:(CATransform3D *)a5
{
  v8 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  v9 = MEMORY[0x1E695DEC8];
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  LODWORD(v11) = 0.5;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  LODWORD(v13) = 1.0;
  [v8 setKeyTimes:{objc_msgSend(v9, "arrayWithObjects:", v10, v12, objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v13), 0)}];
  v14 = MEMORY[0x1E695DEC8];
  v15 = *&a3->m33;
  v34 = *&a3->m31;
  v35 = v15;
  v16 = *&a3->m43;
  v36 = *&a3->m41;
  v37 = v16;
  v17 = *&a3->m13;
  v30 = *&a3->m11;
  v31 = v17;
  v18 = *&a3->m23;
  v32 = *&a3->m21;
  v33 = v18;
  v19 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v30];
  v20 = *&a4->m33;
  v34 = *&a4->m31;
  v35 = v20;
  v21 = *&a4->m43;
  v36 = *&a4->m41;
  v37 = v21;
  v22 = *&a4->m13;
  v30 = *&a4->m11;
  v31 = v22;
  v23 = *&a4->m23;
  v32 = *&a4->m21;
  v33 = v23;
  v24 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v30];
  v25 = *&a5->m33;
  v34 = *&a5->m31;
  v35 = v25;
  v26 = *&a5->m43;
  v36 = *&a5->m41;
  v37 = v26;
  v27 = *&a5->m13;
  v30 = *&a5->m11;
  v31 = v27;
  v28 = *&a5->m23;
  v32 = *&a5->m21;
  v33 = v28;
  [v8 setValues:{objc_msgSend(v14, "arrayWithObjects:", v19, v24, objc_msgSend(MEMORY[0x1E696B098], "valueWithCATransform3D:", &v30), 0)}];
  return v8;
}

@end