@interface UIPreviewTarget
+ (UIPreviewTarget)new;
+ (id)_targetWithContainer:(id)container center:(CGPoint)center transform3D:(CATransform3D *)d;
- (BOOL)isEqual:(id)equal;
- (CATransform3D)_transform3D;
- (CATransform3D)_transform3DRelativeToWindow:(SEL)window;
- (CGAffineTransform)transform;
- (CGPoint)center;
- (UIPreviewTarget)init;
- (UIPreviewTarget)initWithContainer:(UIView *)container center:(CGPoint)center;
- (UIPreviewTarget)initWithContainer:(UIView *)container center:(CGPoint)center transform:(CGAffineTransform *)transform;
- (id)description;
- (void)_setContentScale:(double)scale;
@end

@implementation UIPreviewTarget

- (CGPoint)center
{
  x = self->_center3D.x;
  y = self->_center3D.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CATransform3D)_transform3D
{
  v3 = *&self->m43;
  *&retstr->m31 = *&self->m41;
  *&retstr->m33 = v3;
  v4 = *&self[1].m13;
  *&retstr->m41 = *&self[1].m11;
  *&retstr->m43 = v4;
  v5 = *&self->m23;
  *&retstr->m11 = *&self->m21;
  *&retstr->m13 = v5;
  v6 = *&self->m33;
  *&retstr->m21 = *&self->m31;
  *&retstr->m23 = v6;
  return self;
}

- (UIPreviewTarget)initWithContainer:(UIView *)container center:(CGPoint)center transform:(CGAffineTransform *)transform
{
  y = center.y;
  x = center.x;
  v37 = *MEMORY[0x1E69E9840];
  v10 = container;
  v35.receiver = self;
  v35.super_class = UIPreviewTarget;
  v11 = [(UIPreviewTarget *)&v35 init];
  if (v11)
  {
    v12 = *&transform->c;
    *&m.a = *&transform->a;
    *&m.c = v12;
    *&m.tx = *&transform->tx;
    CATransform3DMakeAffineTransform(&v34, &m);
    v13 = v10;
    if (!v13)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void BUG_IN_CLIENT_OF_TARGETED_PREVIEW__NIL_CONTAINER(void)"];
      [currentHandler handleFailureInFunction:v15 file:@"UITargetedPreview.m" lineNumber:47 description:@"The preview target must have a valid container."];
    }

    [(UIView *)v13 frame];
    if (CGRectIsNull(v38) || ([(UIView *)v13 frame], CGRectIsInfinite(v39)))
    {
      v16 = MEMORY[0x1E696AAA8];
      v17 = v13;
      currentHandler2 = [v16 currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void BUG_IN_CLIENT_OF_TARGETED_PREVIEW__INVALID_CONTAINER(UIView * _Nonnull __strong)"];
      [currentHandler2 handleFailureInFunction:v19 file:@"UITargetedPreview.m" lineNumber:57 description:{@"Attempting to create a UIPreviewTarget with an invalid container: %@", v17}];
    }

    _window = [(UIView *)v13 _window];

    if (_window)
    {
      goto LABEL_14;
    }

    v21 = objc_opt_class();
    v22 = v13;
    if (dyld_program_sdk_at_least())
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      _conciseParentDescription2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BUG_IN_CLIENT_OF_TARGETED_PREVIEW__CONTAINER_IS_NOT_IN_A_WINDOW(Class  _Nonnull __unsafe_unretained, UIView * _Nonnull __strong)"}];
      _conciseParentDescription = [(UIView *)v22 _conciseParentDescription];
      [currentHandler3 handleFailureInFunction:_conciseParentDescription2 file:@"UITargetedPreview.m" lineNumber:64 description:@"%@ requires that the container view is in a window, but it is not. (container: %@)", v21, _conciseParentDescription];
    }

    else
    {
      v26 = *(__UILogGetCategoryCachedImpl("TargetedPreview", &BUG_IN_CLIENT_OF_TARGETED_PREVIEW__CONTAINER_IS_NOT_IN_A_WINDOW___s_category) + 8);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

LABEL_14:
        objc_storeStrong(&v11->_container, container);
        v11->_center3D.x = x;
        v11->_center3D.y = y;
        v11->_center3D.z = 0.0;
        v28 = *&v34.m41;
        v27 = *&v34.m43;
        v29 = *&v34.m33;
        *&v11->_transform3D.m31 = *&v34.m31;
        *&v11->_transform3D.m33 = v29;
        *&v11->_transform3D.m41 = v28;
        *&v11->_transform3D.m43 = v27;
        v31 = *&v34.m21;
        v30 = *&v34.m23;
        v32 = *&v34.m13;
        *&v11->_transform3D.m11 = *&v34.m11;
        *&v11->_transform3D.m13 = v32;
        *&v11->_transform3D.m21 = v31;
        *&v11->_transform3D.m23 = v30;
        v11->_contentScale = 1.0;

        goto LABEL_15;
      }

      currentHandler3 = v26;
      _conciseParentDescription2 = [(UIView *)v22 _conciseParentDescription];
      LODWORD(m.a) = 138412546;
      *(&m.a + 4) = v21;
      WORD2(m.b) = 2112;
      *(&m.b + 6) = _conciseParentDescription2;
      _os_log_impl(&dword_188A29000, currentHandler3, OS_LOG_TYPE_ERROR, "%@ requires that the container view is in a window, but it is not. (container: %@)", &m, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_15:

  return v11;
}

- (UIPreviewTarget)initWithContainer:(UIView *)container center:(CGPoint)center
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v4;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [(UIPreviewTarget *)self initWithContainer:container center:v6 transform:center.x, center.y];
}

+ (id)_targetWithContainer:(id)container center:(CGPoint)center transform3D:(CATransform3D *)d
{
  y = center.y;
  x = center.x;
  containerCopy = container;
  v10 = [[self alloc] initWithContainer:containerCopy center:{x, y}];

  v11 = *&d->m11;
  v12 = *&d->m13;
  v13 = *&d->m23;
  v10[4] = *&d->m21;
  v10[5] = v13;
  v10[2] = v11;
  v10[3] = v12;
  v14 = *&d->m31;
  v15 = *&d->m33;
  v16 = *&d->m43;
  v10[8] = *&d->m41;
  v10[9] = v16;
  v10[6] = v14;
  v10[7] = v15;

  return v10;
}

- (UIPreviewTarget)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:118 description:@"not implemented"];

  return 0;
}

+ (UIPreviewTarget)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITargetedPreview.m" lineNumber:124 description:@"not implemented"];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    container = [v5 container];
    container2 = [(UIPreviewTarget *)self container];
    if (container == container2)
    {
      [v5 center];
      v10 = v9;
      v12 = v11;
      [(UIPreviewTarget *)self center];
      v8 = 0;
      if (v10 == v14 && v12 == v13)
      {
        v15 = v5[7];
        *&a.m31 = v5[6];
        *&a.m33 = v15;
        v16 = v5[9];
        *&a.m41 = v5[8];
        *&a.m43 = v16;
        v17 = v5[3];
        *&a.m11 = v5[2];
        *&a.m13 = v17;
        v18 = v5[5];
        *&a.m21 = v5[4];
        *&a.m23 = v18;
        v19 = *&self->_transform3D.m33;
        *&v24.m31 = *&self->_transform3D.m31;
        *&v24.m33 = v19;
        v20 = *&self->_transform3D.m43;
        *&v24.m41 = *&self->_transform3D.m41;
        *&v24.m43 = v20;
        v21 = *&self->_transform3D.m13;
        *&v24.m11 = *&self->_transform3D.m11;
        *&v24.m13 = v21;
        v22 = *&self->_transform3D.m23;
        *&v24.m21 = *&self->_transform3D.m21;
        *&v24.m23 = v22;
        v8 = CATransform3DEqualToTransform(&a, &v24);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  container = [(UIPreviewTarget *)self container];
  if (container)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, container];
  }

  else
  {
    v9 = @"(nil)";
  }

  [(UIPreviewTarget *)self center];
  v11 = v10;
  [(UIPreviewTarget *)self center];
  v13 = [v3 stringWithFormat:@"<%@: %p container = %@; center = (%g %g)", v4, self, v9, v11, v12];;

  [(UIPreviewTarget *)self transform];
  if (!CGAffineTransformIsIdentity(&transform))
  {
    [(UIPreviewTarget *)self transform];
    v14 = NSStringFromCGAffineTransform(&transform);
    [v13 appendFormat:@"; transform = %@", v14];
  }

  [v13 appendString:@">"];

  return v13;
}

- (CGAffineTransform)transform
{
  v3 = *&self->_transform3D.m33;
  *&v8.m31 = *&self->_transform3D.m31;
  *&v8.m33 = v3;
  v4 = *&self->_transform3D.m43;
  *&v8.m41 = *&self->_transform3D.m41;
  *&v8.m43 = v4;
  v5 = *&self->_transform3D.m13;
  *&v8.m11 = *&self->_transform3D.m11;
  *&v8.m13 = v5;
  v6 = *&self->_transform3D.m23;
  *&v8.m21 = *&self->_transform3D.m21;
  *&v8.m23 = v6;
  return CATransform3DGetAffineTransform(retstr, &v8);
}

- (CATransform3D)_transform3DRelativeToWindow:(SEL)window
{
  v4 = a4;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  result = [(UIPreviewTarget *)self _transform3D];
  if (v4)
  {
    container = [(UIPreviewTarget *)self container];
    [container frame];
    IsEmpty = CGRectIsEmpty(v28);

    if (!IsEmpty)
    {
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      container2 = [(UIPreviewTarget *)self container];
      container3 = [(UIPreviewTarget *)self container];
      _window = [container3 _window];
      _UIGetTransformBetweenViews(container2, _window, 1, &v25);

      memset(&v24, 0, sizeof(v24));
      *&m.m11 = v25;
      *&m.m13 = v26;
      *&m.m21 = v27;
      CATransform3DMakeAffineTransform(&v24, &m);
      v13 = *&retstr->m33;
      *&a.m31 = *&retstr->m31;
      *&a.m33 = v13;
      v14 = *&retstr->m43;
      *&a.m41 = *&retstr->m41;
      *&a.m43 = v14;
      v15 = *&retstr->m13;
      *&a.m11 = *&retstr->m11;
      *&a.m13 = v15;
      v16 = *&retstr->m23;
      *&a.m21 = *&retstr->m21;
      *&a.m23 = v16;
      v21 = v24;
      result = CATransform3DConcat(&m, &a, &v21);
      v17 = *&m.m33;
      *&retstr->m31 = *&m.m31;
      *&retstr->m33 = v17;
      v18 = *&m.m43;
      *&retstr->m41 = *&m.m41;
      *&retstr->m43 = v18;
      v19 = *&m.m13;
      *&retstr->m11 = *&m.m11;
      *&retstr->m13 = v19;
      v20 = *&m.m23;
      *&retstr->m21 = *&m.m21;
      *&retstr->m23 = v20;
    }
  }

  return result;
}

- (void)_setContentScale:(double)scale
{
  if (vabdd_f64(scale, self->_contentScale) > 2.22044605e-16)
  {
    v11 = v3;
    v12 = v4;
    self->_contentScale = scale;
    _UICATransform3DCombiningScale(v10);
    v6 = v10[5];
    *&self->_transform3D.m31 = v10[4];
    *&self->_transform3D.m33 = v6;
    v7 = v10[7];
    *&self->_transform3D.m41 = v10[6];
    *&self->_transform3D.m43 = v7;
    v8 = v10[1];
    *&self->_transform3D.m11 = v10[0];
    *&self->_transform3D.m13 = v8;
    v9 = v10[3];
    *&self->_transform3D.m21 = v10[2];
    *&self->_transform3D.m23 = v9;
  }
}

@end