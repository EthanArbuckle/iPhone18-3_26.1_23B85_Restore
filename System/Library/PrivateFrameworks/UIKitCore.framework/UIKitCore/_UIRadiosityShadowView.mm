@interface _UIRadiosityShadowView
- (_UIRadiosityShadowView)initWithSourceView:(id)view shadowPath:(id)path isSoft:(BOOL)soft;
- (void)setNeedsPunchout:(BOOL)punchout;
@end

@implementation _UIRadiosityShadowView

- (_UIRadiosityShadowView)initWithSourceView:(id)view shadowPath:(id)path isSoft:(BOOL)soft
{
  softCopy = soft;
  v28[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  [pathCopy bounds];
  v27.receiver = self;
  v27.super_class = _UIRadiosityShadowView;
  v10 = [(UIView *)&v27 initWithFrame:?];
  v11 = v10;
  if (v10)
  {
    [(_UIRadiosityShadowView *)v10 setShadowPath:pathCopy];
    v12 = objc_opt_new();
    [(UIView *)v11 bounds];
    [v12 setFrame:?];
    layer = [viewCopy layer];
    [v12 setSourceLayer:layer];

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

    layer2 = [(UIView *)v11 layer];
    [layer2 addSublayer:v12];

    if (softCopy)
    {
      v19 = 0.07;
    }

    else
    {
      v19 = 0.15;
    }

    if (softCopy)
    {
      v20 = 16.0;
    }

    else
    {
      v20 = 8.0;
    }

    if (softCopy)
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
    [v22 setShadowPath:{objc_msgSend(pathCopy, "CGPath")}];
    [v22 setShadowOffset:{0.0, v21}];
    [v22 setShadowRadius:v20];
    *&v23 = v19;
    [v22 setShadowOpacity:v23];
    layer3 = [(UIView *)v11 layer];
    [layer3 addSublayer:v22];
  }

  return v11;
}

- (void)setNeedsPunchout:(BOOL)punchout
{
  if (self->_needsPunchout != punchout)
  {
    self->_needsPunchout = punchout;
    if (punchout)
    {
      v4 = objc_opt_new();
      shadowPath = [(_UIRadiosityShadowView *)self shadowPath];
      [v4 setPath:{objc_msgSend(shadowPath, "CGPath")}];

      [v4 setCompositingFilter:*MEMORY[0x1E69798E8]];
      [(_UIRadiosityShadowView *)self setPunchoutLayer:v4];

      layer = [(UIView *)self layer];
      punchoutLayer = [(_UIRadiosityShadowView *)self punchoutLayer];
      [layer addSublayer:punchoutLayer];
    }

    else
    {
      punchoutLayer2 = [(_UIRadiosityShadowView *)self punchoutLayer];
      [punchoutLayer2 removeFromSuperlayer];

      [(_UIRadiosityShadowView *)self setPunchoutLayer:0];
    }
  }
}

@end