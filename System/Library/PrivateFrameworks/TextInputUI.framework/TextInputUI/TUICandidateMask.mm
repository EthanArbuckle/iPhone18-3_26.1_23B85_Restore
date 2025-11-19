@interface TUICandidateMask
- (TUICandidateMask)initWithFrame:(CGRect)a3;
- (void)_updateLayout;
- (void)setFrame:(CGRect)a3;
- (void)setStyle:(id)a3;
@end

@implementation TUICandidateMask

- (void)_updateLayout
{
  [(TUICandidateMask *)self frame];
  v4 = v3;
  v6 = v5;
  v7 = [(TUICandidateMask *)self leftEdgeImageView];
  v8 = [v7 image];
  [v8 size];
  v10 = v9;

  v11 = [(TUICandidateMask *)self rightEdgeImageView];
  v12 = [v11 image];
  [v12 size];
  v14 = v13;

  v15 = [(TUICandidateMask *)self leftEdgeImageView];
  [v15 setFrame:{0.0, 0.0, v10, v6}];

  v16 = [(TUICandidateMask *)self centerView];
  [v16 setFrame:{v10, 0.0, v4 - v10 - v14, v6}];

  v17 = [(TUICandidateMask *)self rightEdgeImageView];
  [v17 setFrame:{v4 - v14, 0.0, v14, v6}];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = TUICandidateMask;
  [(TUICandidateMask *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(TUICandidateMask *)self _updateLayout];
}

- (void)setStyle:(id)a3
{
  v4 = a3;
  v5 = [v4 leftEdgeMaskImage];
  v6 = [(TUICandidateMask *)self leftEdgeImageView];
  [v6 setImage:v5];

  v7 = [v4 rightEdgeMaskImage];

  v8 = [(TUICandidateMask *)self rightEdgeImageView];
  [v8 setImage:v7];

  [(TUICandidateMask *)self _updateLayout];
}

- (TUICandidateMask)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = TUICandidateMask;
  v3 = [(TUICandidateMask *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(TUICandidateMask *)v3 setCenterView:v9];

    v10 = [MEMORY[0x1E69DC888] blackColor];
    v11 = [(TUICandidateMask *)v3 centerView];
    [v11 setBackgroundColor:v10];

    v12 = [(TUICandidateMask *)v3 centerView];
    [(TUICandidateMask *)v3 addSubview:v12];

    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
    [(TUICandidateMask *)v3 setLeftEdgeImageView:v13];

    v14 = [(TUICandidateMask *)v3 leftEdgeImageView];
    [(TUICandidateMask *)v3 addSubview:v14];

    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
    [(TUICandidateMask *)v3 setRightEdgeImageView:v15];

    v16 = [(TUICandidateMask *)v3 rightEdgeImageView];
    [(TUICandidateMask *)v3 addSubview:v16];
  }

  return v3;
}

@end