@interface LTUIVisualTranslationView
+ (CGRect)clipRect:(CGRect)a3 contentRect:(CGRect)a4;
+ (void)constrainToSuperview:(id)a3;
+ (void)isTranslatable:(id)a3 completion:(id)a4;
- (LTUIVisualTranslationView)initWithCoder:(id)a3;
- (LTUIVisualTranslationView)initWithFrame:(CGRect)a3;
- (UIView)_presentationAnchorView;
- (void)didMoveToSuperview;
- (void)dismiss;
- (void)drawRect:(CGRect)a3;
- (void)registerForDismissEvent:(id)a3;
- (void)setZoomScale:(double)a3;
- (void)translate:(id)a3;
- (void)translate:(id)a3 completion:(id)a4;
- (void)translate:(id)a3 sourceLocale:(id)a4 targetLocale:(id)a5 completion:(id)a6;
- (void)updatePresentationAnchorRectForContentRect:(CGRect)a3;
@end

@implementation LTUIVisualTranslationView

- (void)updatePresentationAnchorRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v70 = *MEMORY[0x277D85DE8];
  if (CGRectIsEmpty(a3))
  {
    v8 = _LTOSLogVisualTranslation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [LTUIVisualTranslationView updatePresentationAnchorRectForContentRect:];
    }
  }

  else
  {
    v9 = [(LTUIVisualTranslationView *)self _presentationAnchorView];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [(LTUIVisualTranslationView *)self _presentationAnchorView];
    v58 = v13;
    v59 = v11;
    v56 = v17;
    v57 = v15;
    [v18 convertRect:self toView:{v11, v13, v15, v17}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v54 = v22;
    v55 = v20;
    v52 = v26;
    v53 = v24;
    [objc_opt_class() clipRect:v20 contentRect:{v22, v24, v26, x, y, width, height}];
    v50 = v28;
    v51 = v27;
    v48 = v30;
    v49 = v29;
    [objc_opt_class() swiftUIRectFrom:v27 contentRect:{v28, v29, v30, x, y, width, height}];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = _LTOSLogVisualTranslation();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v42 = v39;
      v43 = [objc_opt_class() describeRect:{v59, v58, v57, v56}];
      v44 = [objc_opt_class() describeRect:{v55, v54, v53, v52}];
      v45 = [objc_opt_class() describeRect:{v51, v50, v49, v48}];
      v46 = [objc_opt_class() describeRect:{v32, v34, v36, v38}];
      v47 = [objc_opt_class() describeRect:{x, y, width, height}];
      *buf = 138544386;
      v61 = v43;
      v62 = 2114;
      v63 = v44;
      v64 = 2114;
      v65 = v45;
      v66 = 2114;
      v67 = v46;
      v68 = 2114;
      v69 = v47;
      _os_log_debug_impl(&dword_26F39E000, v42, OS_LOG_TYPE_DEBUG, "Anchor rect %{public}@ converted to %{public}@; clipped to %{public}@; Swift UI rect %{public}@ in content rect %{public}@", buf, 0x34u);
    }

    v40 = [(LTUIVisualTranslationView *)self translationView];
    [v40 setPresentationAnchorWithRect:v32 contentRect:{v34, v36, v38, x, y, width, height}];
  }

  v41 = *MEMORY[0x277D85DE8];
}

+ (CGRect)clipRect:(CGRect)a3 contentRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v30.origin.x = v11;
  v30.origin.y = v10;
  v30.size.width = v9;
  v30.size.height = v8;
  if (!CGRectContainsRect(a4, v30))
  {
    if (v11 < x)
    {
      v12 = x;
    }

    else
    {
      v12 = v11;
    }

    if (v12 > width)
    {
      v11 = width;
    }

    else
    {
      v11 = v12;
    }

    if (v10 < y)
    {
      v13 = y;
    }

    else
    {
      v13 = v10;
    }

    if (v13 > height)
    {
      v10 = height;
    }

    else
    {
      v10 = v13;
    }

    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    MaxX = CGRectGetMaxX(v23);
    v24.origin.x = v11;
    v24.origin.y = v10;
    v24.size.width = v9;
    v24.size.height = v8;
    v14 = MaxX - CGRectGetMaxX(v24);
    if (v14 < 0.0)
    {
      v9 = v9 + v14;
    }

    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MaxY = CGRectGetMaxY(v25);
    v26.origin.x = v11;
    v26.origin.y = v10;
    v26.size.width = v9;
    v26.size.height = v8;
    v16 = MaxY - CGRectGetMaxY(v26);
    if (v16 < 0.0)
    {
      v8 = v8 + v16;
    }

    if (v9 == 0.0)
    {
      v27.origin.x = v11;
      v27.origin.y = v10;
      v27.size.width = v9;
      v27.size.height = v8;
      if (CGRectGetMaxX(v27) == width)
      {
        v9 = v9 + 1.0;
        v11 = v11 + -1.0;
      }
    }

    if (v8 == 0.0)
    {
      v28.origin.x = v11;
      v28.origin.y = v10;
      v28.size.width = v9;
      v28.size.height = v8;
      if (CGRectGetMaxY(v28) == height)
      {
        v10 = v10 + -1.0;
        v8 = v8 + 1.0;
      }
    }
  }

  v17 = v11;
  v18 = v10;
  v19 = v9;
  v20 = v8;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (LTUIVisualTranslationView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = LTUIVisualTranslationView;
  v3 = [(LTUIVisualTranslationView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(LTUIVisualTranslationView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_opt_new();
    [(LTUIVisualTranslationView *)v4 setTranslationView:v5];

    objc_initWeak(&location, v4);
    v12 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v13, &location);
    v6 = [(LTUIVisualTranslationView *)v4 translationView:v12];
    [v6 setDismissHandler:&v12];

    [(LTUIVisualTranslationView *)v4 setCompletion:0];
    v7 = [(LTUIVisualTranslationView *)v4 translationView];
    v8 = [v7 view];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D75348] clearColor];
    [v8 setBackgroundColor:v9];

    [(LTUIVisualTranslationView *)v4 addSubview:v8];
    [LTUIVisualTranslationView constrainToSuperview:v8];
    v10 = v4;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __43__LTUIVisualTranslationView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismiss];
}

- (LTUIVisualTranslationView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = LTUIVisualTranslationView;
  v3 = [(LTUIVisualTranslationView *)&v7 initWithFrame:a3, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (void)isTranslatable:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [LTUIVisualTranslationService compactObservations:a3];
  v7 = _LTOSLogVisualTranslation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[LTUIVisualTranslationView isTranslatable:completion:];
  }

  [_TtC13TranslationUI24VisualTranslationService isTranslatable:v6 completion:v5];
}

- (void)translate:(id)a3
{
  v5 = [LTUIVisualTranslationService compactObservations:a3];
  v4 = [(LTUIVisualTranslationView *)self translationView];
  [v4 translate:v5 sourceLocale:0 targetLocale:0 completion:0];
}

- (void)translate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [LTUIVisualTranslationService compactObservations:a3];
  v7 = [(LTUIVisualTranslationView *)self translationView];
  [v7 translate:v8 sourceLocale:0 targetLocale:0 completion:v6];
}

- (void)translate:(id)a3 sourceLocale:(id)a4 targetLocale:(id)a5 completion:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _LTOSLogVisualTranslation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v19 = 134218498;
    v20 = [v10 count];
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_26F39E000, v15, OS_LOG_TYPE_DEFAULT, "Requested translation of %lu observations from %{public}@ to %{public}@", &v19, 0x20u);
  }

  v16 = [LTUIVisualTranslationService compactObservations:v10];
  v17 = [(LTUIVisualTranslationView *)self translationView];
  [v17 translate:v16 sourceLocale:v11 targetLocale:v12 completion:v13];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)dismiss
{
  v3 = _LTOSLogVisualTranslation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_26F39E000, v3, OS_LOG_TYPE_INFO, "Dismissing LTUIVisualTranslationView", v7, 2u);
  }

  [(LTUIVisualTranslationView *)self removeFromSuperview];
  v4 = [(LTUIVisualTranslationView *)self translationView];
  [v4 dismissErrorUI];

  v5 = [(LTUIVisualTranslationView *)self completion];

  if (v5)
  {
    v6 = [(LTUIVisualTranslationView *)self completion];
    v6[2](v6, 0);
  }
}

- (void)registerForDismissEvent:(id)a3
{
  v4 = a3;
  v5 = [(LTUIVisualTranslationView *)self completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__LTUIVisualTranslationView_registerForDismissEvent___block_invoke;
  v8[3] = &unk_279DD71B8;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(LTUIVisualTranslationView *)self setCompletion:v8];
}

uint64_t __53__LTUIVisualTranslationView_registerForDismissEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setZoomScale:(double)a3
{
  v4 = [(LTUIVisualTranslationView *)self translationView];
  [v4 setZoomScale:a3];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = _LTOSLogVisualTranslation();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LTUIVisualTranslationView drawRect:];
  }

  v9.receiver = self;
  v9.super_class = LTUIVisualTranslationView;
  [(LTUIVisualTranslationView *)&v9 drawRect:x, y, width, height];
  [(LTUIVisualTranslationView *)self updatePresentationAnchorRectForContentRect:x, y, width, height];
}

- (void)didMoveToSuperview
{
  v3 = _LTOSLogVisualTranslation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [LTUIVisualTranslationView didMoveToSuperview];
  }

  v4.receiver = self;
  v4.super_class = LTUIVisualTranslationView;
  [(LTUIVisualTranslationView *)&v4 didMoveToSuperview];
  [LTUIVisualTranslationView constrainToSuperview:self];
}

+ (void)constrainToSuperview:(id)a3
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 superview];

    if (v5)
    {
      v6 = [v4 superview];
      v16 = MEMORY[0x277CCAAD0];
      v21 = [v4 topAnchor];
      v20 = [v6 topAnchor];
      v19 = [v21 constraintEqualToAnchor:v20];
      v22[0] = v19;
      v18 = [v4 bottomAnchor];
      v17 = [v6 bottomAnchor];
      v7 = [v18 constraintEqualToAnchor:v17];
      v22[1] = v7;
      v8 = [v4 leadingAnchor];
      v9 = [v6 leadingAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      v22[2] = v10;
      v11 = [v4 trailingAnchor];
      v12 = [v6 trailingAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v22[3] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
      [v16 activateConstraints:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (UIView)_presentationAnchorView
{
  WeakRetained = objc_loadWeakRetained(&self->__presentationAnchorView);

  return WeakRetained;
}

@end