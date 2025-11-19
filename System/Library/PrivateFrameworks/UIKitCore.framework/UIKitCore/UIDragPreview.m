@interface UIDragPreview
+ (CGSize)defaultBoundingSize;
+ (CGSize)textBoundingSize;
+ (UIDragPreview)previewForURL:(NSURL *)url;
+ (UIDragPreview)previewForURL:(NSURL *)url title:(NSString *)title;
+ (id)_previewWithHiddenViewDuringDrag:(id)a3 placeholderSize:(id)a4 parameters:(id)a5;
- (CGPoint)preferredAnchorPoint;
- (UIDragPreview)initWithView:(UIView *)view;
- (UIDragPreview)initWithView:(UIView *)view parameters:(UIDragPreviewParameters *)parameters;
- (_DUIPreview)_duiPreview;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPreferredAnchorPoint:(CGPoint)a3;
- (void)set_springboardPlatterStyle:(BOOL)a3;
@end

@implementation UIDragPreview

+ (UIDragPreview)previewForURL:(NSURL *)url
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [UIURLDragPreviewView viewWithURL:url];
  v4 = [UIDragPreview alloc];
  v5 = v3;
  v6 = [UIDragPreviewParameters alloc];
  v7 = MEMORY[0x1E696B098];
  [v5 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v7 valueWithCGRect:{v9, v11, v13, v15}];
  v21[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v18 = [(UIPreviewParameters *)v6 initWithTextLineRects:v17];

  v19 = [(UIDragPreview *)v4 initWithView:v5 parameters:v18];

  return v19;
}

+ (UIDragPreview)previewForURL:(NSURL *)url title:(NSString *)title
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = [UIURLDragPreviewView viewWithTitle:title URL:url];
  v5 = [UIDragPreview alloc];
  v6 = v4;
  v7 = [UIDragPreviewParameters alloc];
  v8 = MEMORY[0x1E696B098];
  [v6 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [v8 valueWithCGRect:{v10, v12, v14, v16}];
  v22[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v19 = [(UIPreviewParameters *)v7 initWithTextLineRects:v18];

  v20 = [(UIDragPreview *)v5 initWithView:v6 parameters:v19];

  return v20;
}

+ (id)_previewWithHiddenViewDuringDrag:(id)a3 placeholderSize:(id)a4 parameters:(id)a5
{
  var2 = a4.var2;
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = a3;
  v11 = [a5 copy];
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v12 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v17 = _UIInternalPreference_HideDragPreviewDuringObjectManipulation, _UIInternalPreferencesRevisionVar == _UIInternalPreference_HideDragPreviewDuringObjectManipulation))
  {
    v13 = 1;
  }

  else
  {
    do
    {
      v13 = v12 >= v17;
      if (v12 < v17)
      {
        break;
      }

      _UIInternalPreferenceSync(v12, &_UIInternalPreference_HideDragPreviewDuringObjectManipulation, @"HideDragPreviewDuringObjectManipulation", _UIInternalPreferenceUpdateBool);
      v17 = _UIInternalPreference_HideDragPreviewDuringObjectManipulation;
    }

    while (v12 != _UIInternalPreference_HideDragPreviewDuringObjectManipulation);
  }

  if (byte_1EA95E8BC)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  [v11 _setHiddenDuringDrag:v14];
  [v11 _setPlaceholderContentSize3D:{var0, var1, var2}];
  v15 = [[a1 alloc] initWithView:v10 parameters:v11];

  return v15;
}

- (UIDragPreview)initWithView:(UIView *)view parameters:(UIDragPreviewParameters *)parameters
{
  v8 = view;
  v9 = parameters;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIDragPreview.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"UIDragPreview.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"parameters != nil"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = UIDragPreview;
  v11 = [(UIDragPreview *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_view, view);
    v13 = [(UIDragPreviewParameters *)v10 copy];
    v14 = v12->_parameters;
    v12->_parameters = v13;

    v15 = v12;
  }

  return v12;
}

- (UIDragPreview)initWithView:(UIView *)view
{
  v4 = view;
  v5 = objc_alloc_init(UIDragPreviewParameters);
  v6 = [(UIDragPreview *)self initWithView:v4 parameters:v5];

  return v6;
}

- (_DUIPreview)_duiPreview
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(UIDragPreview *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if (v5 == 0.0 || v7 == 0.0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v18 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }

      v19 = [(UIDragPreview *)self view];
      v20 = 138412290;
      v21 = v19;
      _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "UIDragPreview does not support zero-sized previews. This is a client issue. PLEASE FIX ME. %@", &v20, 0xCu);
    }

    else
    {
      v17 = *(__UILogGetCategoryCachedImpl("Assert", &_duiPreview___s_category) + 8);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v18 = v17;
      v19 = [(UIDragPreview *)self view];
      v20 = 138412290;
      v21 = v19;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "UIDragPreview does not support zero-sized previews. This is a client issue. PLEASE FIX ME. %@", &v20, 0xCu);
    }

LABEL_16:
  }

LABEL_3:
  v8 = [_DUIPreview alloc];
  v9 = [(UIDragPreview *)self view];
  v10 = [(UIDragPreview *)self parameters];
  v11 = [(_DUIPreview *)v8 initWithView:v9 container:0 parameters:v10];

  [(_DUIPreview *)v11 setAvoidAnimation:[(UIDragPreview *)self avoidAnimation]];
  if (self->_preferredAnchorPoint)
  {
    [(UIDragPreview *)self preferredAnchorPoint];
    v14 = v13 / v5;
    if (v5 == 0.0)
    {
      v14 = 0.5;
    }

    v15 = v12 / v7;
    if (v7 == 0.0)
    {
      v15 = 0.5;
    }

    [(_DUIPreview *)v11 setLiftAnchorPoint:v14, v15];
  }

  return v11;
}

+ (CGSize)defaultBoundingSize
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = 206.0;
  if (!v3)
  {
    v4 = 160.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)textBoundingSize
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = 400.0;
  if (!v3)
  {
    v4 = 310.0;
  }

  v5 = 206.0;
  if (!v3)
  {
    v5 = 160.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setPreferredAnchorPoint:(CGPoint)a3
{
  v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{a3.x, a3.y}];
  preferredAnchorPoint = self->_preferredAnchorPoint;
  self->_preferredAnchorPoint = v4;
}

- (CGPoint)preferredAnchorPoint
{
  [(NSValue *)self->_preferredAnchorPoint CGPointValue];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)set_springboardPlatterStyle:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  [(UIPreviewParameters *)self->_parameters _setPreviewMode:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 24), self->_view);
    v6 = [(UIDragPreview *)self parameters];
    v7 = [v6 copy];
    v8 = *(v5 + 32);
    *(v5 + 32) = v7;

    *(v5 + 17) = self->_avoidAnimation;
    v9 = [(UIDragPreview *)self _springboardParameters];
    v10 = [v9 copy];
    v11 = *(v5 + 40);
    *(v5 + 40) = v10;

    objc_storeStrong((v5 + 8), self->_preferredAnchorPoint);
    v12 = v5;
  }

  return v5;
}

@end