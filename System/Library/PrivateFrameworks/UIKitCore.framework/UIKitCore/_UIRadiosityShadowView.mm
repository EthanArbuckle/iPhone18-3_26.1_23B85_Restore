@interface _UIRadiosityShadowView
- (_UIRadiosityShadowView)initWithSourceView:(id)a3 shadowPath:(id)a4 isSoft:(BOOL)a5;
- (void)setNeedsPunchout:(BOOL)a3;
@end

@implementation _UIRadiosityShadowView

- (_UIRadiosityShadowView)initWithSourceView:(id)a3 shadowPath:(id)a4 isSoft:(BOOL)a5
{
  v5 = a5;
  v28[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  [v9 bounds];
  v27.receiver = self;
  v27.super_class = _UIRadiosityShadowView;
  v10 = [(UIView *)&v27 initWithFrame:?];
  v11 = v10;
  if (v10)
  {
    [(_UIRadiosityShadowView *)v10 setShadowPath:v9];
    v12 = objc_opt_new();
    [(UIView *)v11 bounds];
    [v12 setFrame:?];
    v13 = [v8 layer];
    [v12 setSourceLayer:v13];

    [v12 setMatchesPosition:1];
    [v12 setAllowsBackdropGroups:1];
    v14 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v14 setValue:&unk_1EFE2E738 forKey:*MEMORY[0x1E6979BA8]];
    v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
    CAColorMatrixMakeMultiplyColor();
    memset(v26, 0, sizeof(v26));
    v16 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v26];
    [v15 setValue:v16 forKey:*MEMORY[0x1E6979AC0]];

    v28[0] = v14;
    v28[1] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    [v12 setFilters:v17];

    v18 = [(UIView *)v11 layer];
    [v18 addSublayer:v12];

    if (v5)
    {
      v19 = 0.07;
    }

    else
    {
      v19 = 0.15;
    }

    if (v5)
    {
      v20 = 16.0;
    }

    else
    {
      v20 = 8.0;
    }

    if (v5)
    {
      v21 = 5.0;
    }

    else
    {
      v21 = 3.0;
    }

    v22 = objc_opt_new();
    [(UIView *)v11 bounds];
    [v22 setFrame:?];
    [v22 setShadowPath:{objc_msgSend(v9, "CGPath")}];
    [v22 setShadowOffset:{0.0, v21}];
    [v22 setShadowRadius:v20];
    *&v23 = v19;
    [v22 setShadowOpacity:v23];
    v24 = [(UIView *)v11 layer];
    [v24 addSublayer:v22];
  }

  return v11;
}

- (void)setNeedsPunchout:(BOOL)a3
{
  if (self->_needsPunchout != a3)
  {
    self->_needsPunchout = a3;
    if (a3)
    {
      v4 = objc_opt_new();
      v5 = [(_UIRadiosityShadowView *)self shadowPath];
      [v4 setPath:{objc_msgSend(v5, "CGPath")}];

      [v4 setCompositingFilter:*MEMORY[0x1E69798E8]];
      [(_UIRadiosityShadowView *)self setPunchoutLayer:v4];

      v8 = [(UIView *)self layer];
      v6 = [(_UIRadiosityShadowView *)self punchoutLayer];
      [v8 addSublayer:v6];
    }

    else
    {
      v7 = [(_UIRadiosityShadowView *)self punchoutLayer];
      [v7 removeFromSuperlayer];

      [(_UIRadiosityShadowView *)self setPunchoutLayer:0];
    }
  }
}

@end