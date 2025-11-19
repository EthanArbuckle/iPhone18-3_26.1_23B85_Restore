@interface SBMicroPIPTetheringMirrorView
- (SBMicroPIPTetheringMirrorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SBMicroPIPTetheringMirrorView

- (SBMicroPIPTetheringMirrorView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = SBMicroPIPTetheringMirrorView;
  v3 = [(SBMicroPIPTetheringMirrorView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [SBMicroPIPTetheringMirrorContentPlaceholderView alloc];
    [(SBMicroPIPTetheringMirrorView *)v3 bounds];
    v5 = [(SBMicroPIPTetheringMirrorContentPlaceholderView *)v4 initWithFrame:?];
    contentPlaceholderView = v3->_contentPlaceholderView;
    v3->_contentPlaceholderView = v5;

    v7 = [(SBMicroPIPTetheringMirrorContentPlaceholderView *)v3->_contentPlaceholderView layer];
    [v7 setAnchorPoint:{1.0, 1.0}];

    [(SBMicroPIPTetheringMirrorContentPlaceholderView *)v3->_contentPlaceholderView setAutoresizingMask:36];
    v8 = v3->_contentPlaceholderView;
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    *&v15.a = *MEMORY[0x277CBF2C0];
    v14 = *&v15.a;
    *&v15.c = v13;
    *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
    v12 = *&v15.tx;
    CGAffineTransformScale(&v16, &v15, -1.0, -1.0);
    [(SBMicroPIPTetheringMirrorContentPlaceholderView *)v8 setTransform:&v16];
    v9 = [SBMicroPIPTetheringMirrorContentPlaceholderContainerView alloc];
    [(SBMicroPIPTetheringMirrorView *)v3 bounds];
    v10 = [(SBMicroPIPTetheringMirrorContentPlaceholderContainerView *)v9 initWithFrame:?];
    *&v15.a = v14;
    *&v15.c = v13;
    *&v15.tx = v12;
    CGAffineTransformScale(&v16, &v15, -1.0, -1.0);
    [(SBMicroPIPTetheringMirrorContentPlaceholderContainerView *)v10 setTransform:&v16];
    [(SBMicroPIPTetheringMirrorContentPlaceholderContainerView *)v10 setAutoresizingMask:18];
    [(SBMicroPIPTetheringMirrorContentPlaceholderContainerView *)v10 addSubview:v3->_contentPlaceholderView];
    [(SBMicroPIPTetheringMirrorView *)v3 addSubview:v10];
  }

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBMicroPIPTetheringMirrorView;
  [(SBMicroPIPTetheringMirrorView *)&v6 layoutSubviews];
  [(SBMicroPIPTetheringMirrorView *)self bounds];
  Width = CGRectGetWidth(v7);
  [(SBMicroPIPTetheringMirrorView *)self bounds];
  Height = CGRectGetHeight(v8);
  if (Width < Height)
  {
    Height = Width;
  }

  v5 = fmin(Height * 0.06, 14.0);
  [(SBMicroPIPTetheringMirrorContentPlaceholderView *)self->_contentPlaceholderView setCenter:v5, v5];
}

@end