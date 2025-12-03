@interface LTUIVisualTranslationView
+ (CGRect)clipRect:(CGRect)rect contentRect:(CGRect)contentRect;
+ (void)constrainToSuperview:(id)superview;
+ (void)isTranslatable:(id)translatable completion:(id)completion;
- (LTUIVisualTranslationView)initWithCoder:(id)coder;
- (LTUIVisualTranslationView)initWithFrame:(CGRect)frame;
- (UIView)_presentationAnchorView;
- (void)didMoveToSuperview;
- (void)dismiss;
- (void)drawRect:(CGRect)rect;
- (void)registerForDismissEvent:(id)event;
- (void)setZoomScale:(double)scale;
- (void)translate:(id)translate;
- (void)translate:(id)translate completion:(id)completion;
- (void)translate:(id)translate sourceLocale:(id)locale targetLocale:(id)targetLocale completion:(id)completion;
- (void)updatePresentationAnchorRectForContentRect:(CGRect)rect;
@end

@implementation LTUIVisualTranslationView

- (void)updatePresentationAnchorRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v70 = *MEMORY[0x277D85DE8];
  if (CGRectIsEmpty(rect))
  {
    v8 = _LTOSLogVisualTranslation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [LTUIVisualTranslationView updatePresentationAnchorRectForContentRect:];
    }
  }

  else
  {
    _presentationAnchorView = [(LTUIVisualTranslationView *)self _presentationAnchorView];
    [_presentationAnchorView frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    _presentationAnchorView2 = [(LTUIVisualTranslationView *)self _presentationAnchorView];
    v58 = v13;
    v59 = v11;
    v56 = v17;
    v57 = v15;
    [_presentationAnchorView2 convertRect:self toView:{v11, v13, v15, v17}];
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

    translationView = [(LTUIVisualTranslationView *)self translationView];
    [translationView setPresentationAnchorWithRect:v32 contentRect:{v34, v36, v38, x, y, width, height}];
  }

  v41 = *MEMORY[0x277D85DE8];
}

+ (CGRect)clipRect:(CGRect)rect contentRect:(CGRect)contentRect
{
  height = contentRect.size.height;
  width = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  v30.origin.x = v11;
  v30.origin.y = v10;
  v30.size.width = v9;
  v30.size.height = v8;
  if (!CGRectContainsRect(contentRect, v30))
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

- (LTUIVisualTranslationView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = LTUIVisualTranslationView;
  v3 = [(LTUIVisualTranslationView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    translationView = [(LTUIVisualTranslationView *)v4 translationView];
    view = [translationView view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [view setBackgroundColor:clearColor];

    [(LTUIVisualTranslationView *)v4 addSubview:view];
    [LTUIVisualTranslationView constrainToSuperview:view];
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

- (LTUIVisualTranslationView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = LTUIVisualTranslationView;
  v3 = [(LTUIVisualTranslationView *)&v7 initWithFrame:coder, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (void)isTranslatable:(id)translatable completion:(id)completion
{
  completionCopy = completion;
  v6 = [LTUIVisualTranslationService compactObservations:translatable];
  v7 = _LTOSLogVisualTranslation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[LTUIVisualTranslationView isTranslatable:completion:];
  }

  [_TtC13TranslationUI24VisualTranslationService isTranslatable:v6 completion:completionCopy];
}

- (void)translate:(id)translate
{
  v5 = [LTUIVisualTranslationService compactObservations:translate];
  translationView = [(LTUIVisualTranslationView *)self translationView];
  [translationView translate:v5 sourceLocale:0 targetLocale:0 completion:0];
}

- (void)translate:(id)translate completion:(id)completion
{
  completionCopy = completion;
  v8 = [LTUIVisualTranslationService compactObservations:translate];
  translationView = [(LTUIVisualTranslationView *)self translationView];
  [translationView translate:v8 sourceLocale:0 targetLocale:0 completion:completionCopy];
}

- (void)translate:(id)translate sourceLocale:(id)locale targetLocale:(id)targetLocale completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  translateCopy = translate;
  localeCopy = locale;
  targetLocaleCopy = targetLocale;
  completionCopy = completion;
  v14 = _LTOSLogVisualTranslation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v19 = 134218498;
    v20 = [translateCopy count];
    v21 = 2114;
    v22 = localeCopy;
    v23 = 2114;
    v24 = targetLocaleCopy;
    _os_log_impl(&dword_26F39E000, v15, OS_LOG_TYPE_DEFAULT, "Requested translation of %lu observations from %{public}@ to %{public}@", &v19, 0x20u);
  }

  v16 = [LTUIVisualTranslationService compactObservations:translateCopy];
  translationView = [(LTUIVisualTranslationView *)self translationView];
  [translationView translate:v16 sourceLocale:localeCopy targetLocale:targetLocaleCopy completion:completionCopy];

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
  translationView = [(LTUIVisualTranslationView *)self translationView];
  [translationView dismissErrorUI];

  completion = [(LTUIVisualTranslationView *)self completion];

  if (completion)
  {
    completion2 = [(LTUIVisualTranslationView *)self completion];
    completion2[2](completion2, 0);
  }
}

- (void)registerForDismissEvent:(id)event
{
  eventCopy = event;
  completion = [(LTUIVisualTranslationView *)self completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__LTUIVisualTranslationView_registerForDismissEvent___block_invoke;
  v8[3] = &unk_279DD71B8;
  v9 = completion;
  v10 = eventCopy;
  v6 = eventCopy;
  v7 = completion;
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

- (void)setZoomScale:(double)scale
{
  translationView = [(LTUIVisualTranslationView *)self translationView];
  [translationView setZoomScale:scale];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

+ (void)constrainToSuperview:(id)superview
{
  v22[4] = *MEMORY[0x277D85DE8];
  superviewCopy = superview;
  v4 = superviewCopy;
  if (superviewCopy)
  {
    superview = [superviewCopy superview];

    if (superview)
    {
      superview2 = [v4 superview];
      v16 = MEMORY[0x277CCAAD0];
      topAnchor = [v4 topAnchor];
      topAnchor2 = [superview2 topAnchor];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v22[0] = v19;
      bottomAnchor = [v4 bottomAnchor];
      bottomAnchor2 = [superview2 bottomAnchor];
      v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v22[1] = v7;
      leadingAnchor = [v4 leadingAnchor];
      leadingAnchor2 = [superview2 leadingAnchor];
      v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v22[2] = v10;
      trailingAnchor = [v4 trailingAnchor];
      trailingAnchor2 = [superview2 trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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