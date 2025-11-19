@interface _UIPlatterContainerView
- (_UIPlatterContainerView)initWithFrame:(CGRect)a3;
- (void)_updateTransforms;
- (void)applyRotation:(double)a3;
- (void)applyTransform:(CGAffineTransform *)a3 withSize:(CGSize)a4;
- (void)installPreviewContainer:(id)a3 overrideSourceView:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSource:(id)a3;
- (void)setTarget:(id)a3;
- (void)setUpdatedTarget:(id)a3;
@end

@implementation _UIPlatterContainerView

- (_UIPlatterContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = _UIPlatterContainerView;
  v7 = [(UIView *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [[UIView alloc] initWithFrame:x, y, width, height];
    platterContentView = v7->_platterContentView;
    v7->_platterContentView = v8;

    [(UIView *)v7->_platterContentView setAutoresizingMask:18];
    [(UIView *)v7 addSubview:v7->_platterContentView];
  }

  return v7;
}

- (void)installPreviewContainer:(id)a3 overrideSourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(UIView *)self bounds];
  [v6 setFrame:?];
  [(UIView *)self addSubview:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(_UIPlatterContainerView *)self source];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(_UIPlatterContainerView *)self target];
    }

    v8 = v11;
  }

  v12 = [(_UIPlatterContainerView *)self platterContentView];
  [(UIView *)self transform];
  [v6 _preparePreviewContainerWithPreview:v12 source:v8 initialTransform:&v13];
}

- (void)applyTransform:(CGAffineTransform *)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  CGAffineTransformMakeScale(&v10, sqrt(a3->a * a3->a + a3->c * a3->c), sqrt(a3->b * a3->b + a3->d * a3->d));
  [(_UIPlatterContainerView *)self setBounds:v8, v9, width * v10.a + height * v10.c, width * v10.b + height * v10.d];
  [(_UIPlatterContainerView *)self applyRotation:atan2(a3->b, a3->a)];
}

- (void)applyRotation:(double)a3
{
  CGAffineTransformMakeRotation(&v5, a3);
  v4 = v5;
  [(UIView *)self setTransform:&v4];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UIPlatterContainerView;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UIPlatterContainerView *)self _updateTransforms];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UIPlatterContainerView;
  [(UIView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UIPlatterContainerView *)self _updateTransforms];
}

- (void)setSource:(id)a3
{
  v5 = a3;
  source = self->_source;
  v9 = v5;
  if (source != v5)
  {
    [(UIView *)source removeFromSuperview];
  }

  objc_storeStrong(&self->_source, a3);
  v7 = v9;
  if (self->_source)
  {
    v8 = [(_UIPlatterContainerView *)self platterContentView];
    [v8 addSubview:v9];

    [(_UIPlatterContainerView *)self _updateTransforms];
    v7 = v9;
  }
}

- (void)setTarget:(id)a3
{
  v5 = a3;
  target = self->_target;
  v12 = v5;
  if (target != v5)
  {
    [(UIView *)target removeFromSuperview];
  }

  objc_storeStrong(&self->_target, a3);
  if (self->_target)
  {
    v7 = [(_UIPlatterContainerView *)self platterContentView];
    [v7 addSubview:v12];

    if (!self->_updatedTargetWrapper)
    {
      v8 = [UIView alloc];
      [(UIView *)self bounds];
      v9 = [(UIView *)v8 initWithFrame:?];
      updatedTargetWrapper = self->_updatedTargetWrapper;
      self->_updatedTargetWrapper = v9;

      v11 = [(_UIPlatterContainerView *)self platterContentView];
      [v11 addSubview:self->_updatedTargetWrapper];
    }

    [(_UIPlatterContainerView *)self _updateTransforms];
  }
}

- (void)setUpdatedTarget:(id)a3
{
  v5 = a3;
  updatedTarget = self->_updatedTarget;
  if (updatedTarget != v5)
  {
    [(UIView *)updatedTarget removeFromSuperview];
  }

  objc_storeStrong(&self->_updatedTarget, a3);
  v7 = self->_updatedTarget;
  if (v7)
  {
    [(UIView *)v7 bounds];
    v9 = v8;
    rect.origin.x = v8;
    rect.origin.y = v10;
    v12 = v11;
    v14 = v13;
    [(UIView *)self->_updatedTargetWrapper bounds];
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    v19 = CGRectGetWidth(v32);
    v33.origin.x = v9;
    v33.origin.y = v12;
    v33.size.width = v14;
    v33.size.height = rect.origin.y;
    v20 = v19 / CGRectGetWidth(v33);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v21 = CGRectGetHeight(v34);
    v35.origin.x = rect.origin.x;
    v35.origin.y = v12;
    v35.size.width = v14;
    v35.size.height = rect.origin.y;
    v22 = CGRectGetHeight(v35);
    CGAffineTransformMakeScale(&v31, v20, v21 / v22);
    v23 = self->_updatedTarget;
    rect.size = *&v31.a;
    v29 = *&v31.c;
    v30 = *&v31.tx;
    [(UIView *)v23 setTransform:&rect.size];
    [(UIView *)self->_updatedTargetWrapper bounds];
    [(UIView *)self->_updatedTarget setCenter:v25 + v24 * 0.5, v27 + v26 * 0.5];
    [(UIView *)self->_updatedTargetWrapper addSubview:self->_updatedTarget];
    [(_UIPlatterContainerView *)self _updateTransforms];
  }
}

- (void)_updateTransforms
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_UIPlatterContainerView *)self source];
  [v11 bounds];
  v13 = v12;
  v62 = v14;
  rect = v12;
  v16 = v15;
  v18 = v17;
  v69.origin.x = v4;
  v69.origin.y = v6;
  v19 = v6;
  v59 = v6;
  v69.size.width = v8;
  v20 = v8;
  v69.size.height = v10;
  v21 = v10;
  v61 = v10;
  Width = CGRectGetWidth(v69);
  v70.origin.x = v13;
  v70.origin.y = v16;
  v70.size.width = v18;
  v70.size.height = v62;
  v23 = Width / CGRectGetWidth(v70);
  v71.origin.x = v4;
  v71.origin.y = v19;
  v71.size.width = v20;
  v71.size.height = v21;
  Height = CGRectGetHeight(v71);
  v72.origin.x = rect;
  v72.origin.y = v16;
  v72.size.width = v18;
  v72.size.height = v62;
  v25 = CGRectGetHeight(v72);
  CGAffineTransformMakeScale(&v68, v23, Height / v25);
  v26 = [(_UIPlatterContainerView *)self source];
  v67 = v68;
  [v26 setTransform:&v67];

  v63 = v4 + v20 * 0.5;
  rect = v59 + v61 * 0.5;
  v27 = [(_UIPlatterContainerView *)self source];
  [v27 setCenter:{v63, rect}];

  v28 = [(_UIPlatterContainerView *)self target];
  [v28 bounds];
  v30 = v29;
  v55 = v31;
  v57 = v29;
  v33 = v32;
  v35 = v34;
  v73.origin.x = v4;
  v36 = v4;
  v60 = v4;
  v73.origin.y = v59;
  v73.size.width = v20;
  v73.size.height = v61;
  v37 = CGRectGetWidth(v73);
  v74.origin.x = v30;
  v74.origin.y = v33;
  v74.size.width = v35;
  v74.size.height = v55;
  v38 = v37 / CGRectGetWidth(v74);
  v75.origin.x = v36;
  v75.origin.y = v59;
  v75.size.width = v20;
  v75.size.height = v61;
  v39 = CGRectGetHeight(v75);
  v76.origin.x = v57;
  v76.origin.y = v33;
  v76.size.width = v35;
  v76.size.height = v55;
  v40 = CGRectGetHeight(v76);
  CGAffineTransformMakeScale(&v66, v38, v39 / v40);
  v41 = [(_UIPlatterContainerView *)self target];
  v67 = v66;
  [v41 setTransform:&v67];

  v42 = [(_UIPlatterContainerView *)self target];
  [v42 setCenter:{v63, rect}];

  [(UIView *)self->_updatedTargetWrapper bounds];
  v44 = v43;
  v56 = v45;
  v58 = v43;
  v47 = v46;
  v49 = v48;
  v77.origin.x = v60;
  v77.origin.y = v59;
  v77.size.width = v20;
  v77.size.height = v61;
  v50 = CGRectGetWidth(v77);
  v78.origin.x = v44;
  v78.origin.y = v47;
  v78.size.width = v49;
  v78.size.height = v56;
  v51 = v50 / CGRectGetWidth(v78);
  v79.origin.x = v60;
  v79.origin.y = v59;
  v79.size.width = v20;
  v79.size.height = v61;
  v52 = CGRectGetHeight(v79);
  v80.origin.x = v58;
  v80.origin.y = v47;
  v80.size.width = v49;
  v80.size.height = v56;
  v53 = CGRectGetHeight(v80);
  CGAffineTransformMakeScale(&rect_8, v51, v52 / v53);
  updatedTargetWrapper = self->_updatedTargetWrapper;
  v67 = rect_8;
  [(UIView *)updatedTargetWrapper setTransform:&v67];
  [(UIView *)self->_updatedTargetWrapper setCenter:v63, rect];
}

@end