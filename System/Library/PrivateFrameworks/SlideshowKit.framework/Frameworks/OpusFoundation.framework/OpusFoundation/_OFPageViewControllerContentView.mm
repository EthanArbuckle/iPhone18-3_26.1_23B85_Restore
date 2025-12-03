@interface _OFPageViewControllerContentView
- (void)_setupPageControl:(id)control;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation _OFPageViewControllerContentView

- (void)dealloc
{
  pageControl = self->_pageControl;
  if (pageControl)
  {

    self->_pageControl = 0;
  }

  v4.receiver = self;
  v4.super_class = _OFPageViewControllerContentView;
  [(OFUIView *)&v4 dealloc];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(_OFPageViewControllerContentView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = _OFPageViewControllerContentView;
  [(_OFPageViewControllerContentView *)&v20 setBounds:x, y, width, height];
  if ([(OFViewProxy *)self viewControllerProxy])
  {
    [(_OFPageViewControllerContentView *)self bounds];
    v22.origin.x = v16;
    v22.origin.y = v17;
    v22.size.width = v18;
    v22.size.height = v19;
    v21.origin.x = v9;
    v21.origin.y = v11;
    v21.size.width = v13;
    v21.size.height = v15;
    if (!CGRectEqualToRect(v21, v22))
    {
      [(OFUIViewController *)[(OFViewProxy *)self viewControllerProxy] _contentViewFrameOrBoundsDidChange];
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(_OFPageViewControllerContentView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = _OFPageViewControllerContentView;
  [(_OFPageViewControllerContentView *)&v20 setFrame:x, y, width, height];
  if ([(OFViewProxy *)self viewControllerProxy])
  {
    [(_OFPageViewControllerContentView *)self frame];
    v22.origin.x = v16;
    v22.origin.y = v17;
    v22.size.width = v18;
    v22.size.height = v19;
    v21.origin.x = v9;
    v21.origin.y = v11;
    v21.size.width = v13;
    v21.size.height = v15;
    if (!CGRectEqualToRect(v21, v22))
    {
      [(OFUIViewController *)[(OFViewProxy *)self viewControllerProxy] _contentViewFrameOrBoundsDidChange];
    }
  }
}

- (void)_setupPageControl:(id)control
{
  [control setAutoresizingMask:10];
  [control addTarget:-[OFViewProxy viewControllerProxy](self action:"viewControllerProxy") forControlEvents:{sel__pageControlValueChanged_, 4096}];
  [control setDefersCurrentPageDisplay:1];

  [(_OFPageViewControllerContentView *)self addSubview:control];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = _OFPageViewControllerContentView;
  [(OFViewProxy *)&v21 layoutSubviews];
  usesPageControl = [(OFUIViewController *)[(OFViewProxy *)self viewControllerProxy] usesPageControl];
  pageControl = self->_pageControl;
  if (usesPageControl)
  {
    if (!pageControl)
    {
      v5 = objc_alloc(MEMORY[0x277D757E0]);
      v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      self->_pageControl = v6;
      [(_OFPageViewControllerContentView *)self _setupPageControl:v6];
      pageControl = self->_pageControl;
    }

    if (![(UIPageControl *)pageControl numberOfPages])
    {
      [(OFUIViewController *)[(OFViewProxy *)self viewControllerProxy] _updatePageControlViaDataSourceIfNecessary];
    }

    [(UIPageControl *)self->_pageControl sizeToFit];
    [(UIPageControl *)self->_pageControl frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(_OFPageViewControllerContentView *)self center];
    [(_OFPageViewControllerContentView *)self convertPoint:[(_OFPageViewControllerContentView *)self superview] fromView:v15, v16];
    v18 = v17;
    v22.origin.x = v8;
    v22.origin.y = v10;
    v22.size.width = v12;
    v22.size.height = v14;
    v19 = v18 + CGRectGetWidth(v22) * -0.5;
    [(_OFPageViewControllerContentView *)self bounds];
    Height = CGRectGetHeight(v23);
    v24.origin.x = v19;
    v24.origin.y = v10;
    v24.size.width = v12;
    v24.size.height = v14;
    [(UIPageControl *)self->_pageControl setFrame:v19, Height - CGRectGetHeight(v24), v12, v14];
  }

  else
  {
    [(UIPageControl *)pageControl removeFromSuperview];

    self->_pageControl = 0;
  }
}

@end