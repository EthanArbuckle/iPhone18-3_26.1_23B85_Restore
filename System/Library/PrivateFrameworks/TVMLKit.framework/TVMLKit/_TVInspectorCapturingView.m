@interface _TVInspectorCapturingView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UILabel)descriptionLabel;
- (_TVInspectorCapturingView)initWithFrame:(CGRect)a3;
- (_TVInspectorCapturingViewDelegate)delegate;
- (void)didTapView:(id)a3;
- (void)layoutSubviews;
@end

@implementation _TVInspectorCapturingView

- (_TVInspectorCapturingView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = _TVInspectorCapturingView;
  v3 = [(_TVInspectorCapturingView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_testingHits = 0;
    [(_TVInspectorCapturingView *)v3 setUserInteractionEnabled:1];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(_TVInspectorCapturingView *)v4 setBackgroundColor:v5];

    v6 = [(_TVInspectorCapturingView *)v4 layer];
    v7 = [MEMORY[0x277D75348] systemBlueColor];
    [v6 setBorderColor:{objc_msgSend(v7, "CGColor")}];

    v8 = [(_TVInspectorCapturingView *)v4 layer];
    [v8 setBorderWidth:10.0];

    v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_didTapView_];
    [v9 setNumberOfTapsRequired:1];
    [v9 setNumberOfTouchesRequired:1];
    [(_TVInspectorCapturingView *)v4 addGestureRecognizer:v9];
  }

  return v4;
}

- (UILabel)descriptionLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_descriptionLabel);

  if (!WeakRetained)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = [MEMORY[0x277D75348] systemBlueColor];
    [v5 setBackgroundColor:v6];

    v7 = [MEMORY[0x277D75348] whiteColor];
    [v5 setTextColor:v7];

    [v5 setText:@"Tap a view to inspect"];
    [v5 setTextAlignment:1];
    [v5 setUserInteractionEnabled:0];
    v8 = [MEMORY[0x277D74300] boldSystemFontOfSize:11.0];
    [v5 setFont:v8];

    [(_TVInspectorCapturingView *)self addSubview:v5];
    objc_storeWeak(&self->_descriptionLabel, v5);
  }

  v9 = objc_loadWeakRetained(&self->_descriptionLabel);

  return v9;
}

- (void)layoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = _TVInspectorCapturingView;
  [(CGFloat *)&rect.origin.y layoutSubviews];
  v3 = [(_TVInspectorCapturingView *)self descriptionLabel];
  [v3 sizeToFit];

  [(_TVInspectorCapturingView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_TVInspectorCapturingView *)self descriptionLabel];
  [v12 bounds];
  rect.origin.x = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(_TVInspectorCapturingView *)self descriptionLabel];
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = rect.origin.x;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  v22 = MidX - CGRectGetMidX(v25);
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  [v20 setFrame:{v22, CGRectGetMaxY(v26) + -10.0 - v19 + -10.0, v17 + 10.0, v19 + 10.0}];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = _TVInspectorCapturingView;
  v5 = [(_TVInspectorCapturingView *)&v7 pointInside:a4 withEvent:a3.x, a3.y];
  return ![(_TVInspectorCapturingView *)self isTestingHits]& v5;
}

- (void)didTapView:(id)a3
{
  v4 = a3;
  v5 = [(_TVInspectorCapturingView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(_TVInspectorCapturingView *)self delegate];
    v15 = [v6 rootView];
  }

  else
  {
    v15 = 0;
  }

  self->_testingHits = 1;
  [v4 locationInView:self];
  v8 = v7;
  v10 = v9;

  v11 = [v15 hitTest:0 withEvent:{v8, v10}];
  self->_testingHits = 0;
  if (v11)
  {
    v12 = [(_TVInspectorCapturingView *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(_TVInspectorCapturingView *)self delegate];
      [v14 capturingView:self didCaptureTapOnView:v11];
    }
  }
}

- (_TVInspectorCapturingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end