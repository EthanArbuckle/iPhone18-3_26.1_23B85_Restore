@interface TUICandidateMask
- (TUICandidateMask)initWithFrame:(CGRect)frame;
- (void)_updateLayout;
- (void)setFrame:(CGRect)frame;
- (void)setStyle:(id)style;
@end

@implementation TUICandidateMask

- (void)_updateLayout
{
  [(TUICandidateMask *)self frame];
  v4 = v3;
  v6 = v5;
  leftEdgeImageView = [(TUICandidateMask *)self leftEdgeImageView];
  image = [leftEdgeImageView image];
  [image size];
  v10 = v9;

  rightEdgeImageView = [(TUICandidateMask *)self rightEdgeImageView];
  image2 = [rightEdgeImageView image];
  [image2 size];
  v14 = v13;

  leftEdgeImageView2 = [(TUICandidateMask *)self leftEdgeImageView];
  [leftEdgeImageView2 setFrame:{0.0, 0.0, v10, v6}];

  centerView = [(TUICandidateMask *)self centerView];
  [centerView setFrame:{v10, 0.0, v4 - v10 - v14, v6}];

  rightEdgeImageView2 = [(TUICandidateMask *)self rightEdgeImageView];
  [rightEdgeImageView2 setFrame:{v4 - v14, 0.0, v14, v6}];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TUICandidateMask;
  [(TUICandidateMask *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(TUICandidateMask *)self _updateLayout];
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  leftEdgeMaskImage = [styleCopy leftEdgeMaskImage];
  leftEdgeImageView = [(TUICandidateMask *)self leftEdgeImageView];
  [leftEdgeImageView setImage:leftEdgeMaskImage];

  rightEdgeMaskImage = [styleCopy rightEdgeMaskImage];

  rightEdgeImageView = [(TUICandidateMask *)self rightEdgeImageView];
  [rightEdgeImageView setImage:rightEdgeMaskImage];

  [(TUICandidateMask *)self _updateLayout];
}

- (TUICandidateMask)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = TUICandidateMask;
  v3 = [(TUICandidateMask *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(TUICandidateMask *)v3 setCenterView:v9];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    centerView = [(TUICandidateMask *)v3 centerView];
    [centerView setBackgroundColor:blackColor];

    centerView2 = [(TUICandidateMask *)v3 centerView];
    [(TUICandidateMask *)v3 addSubview:centerView2];

    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
    [(TUICandidateMask *)v3 setLeftEdgeImageView:v13];

    leftEdgeImageView = [(TUICandidateMask *)v3 leftEdgeImageView];
    [(TUICandidateMask *)v3 addSubview:leftEdgeImageView];

    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
    [(TUICandidateMask *)v3 setRightEdgeImageView:v15];

    rightEdgeImageView = [(TUICandidateMask *)v3 rightEdgeImageView];
    [(TUICandidateMask *)v3 addSubview:rightEdgeImageView];
  }

  return v3;
}

@end