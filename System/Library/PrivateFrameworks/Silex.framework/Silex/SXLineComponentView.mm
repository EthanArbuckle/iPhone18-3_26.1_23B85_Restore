@interface SXLineComponentView
- (void)discardContents;
- (void)loadComponent:(id)a3;
- (void)presentComponentWithChanges:(id)a3;
- (void)renderContents;
@end

@implementation SXLineComponentView

- (void)loadComponent:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentView *)self component];
  v6 = [v5 stroke];

  v10.receiver = self;
  v10.super_class = SXLineComponentView;
  [(SXComponentView *)&v10 loadComponent:v4];

  v7 = [(SXComponentView *)self component];
  v8 = [v7 stroke];
  v9 = [v8 isEqual:v6];

  if ((v9 & 1) == 0)
  {
    [(SXLineComponentView *)self discardContents];
  }
}

- (void)presentComponentWithChanges:(id)a3
{
  var0 = a3.var0;
  v5.receiver = self;
  v5.super_class = SXLineComponentView;
  [(SXComponentView *)&v5 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  if (var0)
  {
    [(SXLineComponentView *)self discardContents];
  }
}

- (void)renderContents
{
  v46.receiver = self;
  v46.super_class = SXLineComponentView;
  [(SXComponentView *)&v46 renderContents];
  v3 = [(SXComponentView *)self component];
  v4 = [v3 stroke];

  if (!v4)
  {
    return;
  }

  [(SXComponentView *)self contentFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SXComponentView *)self componentLayout];
  [v13 maximumContentWidth];
  v15 = v14;

  if (v15)
  {
    v16 = [(SXComponentView *)self unitConverter];
    v17 = [(SXComponentView *)self componentLayout];
    v18 = [v17 maximumContentWidth];
    [v16 convertValueToPoints:{v18, v19}];
    v21 = v20;

    v47.origin.x = v6;
    v47.origin.y = v8;
    v47.size.width = v10;
    v47.size.height = v12;
    Width = CGRectGetWidth(v47);
    v10 = v21 >= Width ? Width : v21;
    [(SXComponentView *)self contentFrame];
    if (CGRectGetWidth(v48) > v21)
    {
      v23 = [(SXComponentView *)self componentLayout];
      if ([v23 horizontalContentAlignment])
      {
        v24 = [(SXComponentView *)self componentLayout];
        v25 = [v24 horizontalContentAlignment];

        if (v25 == 3)
        {
          [(SXComponentView *)self contentFrame];
          MaxX = CGRectGetMaxX(v51);
          v52.origin.x = v6;
          v52.origin.y = v8;
          v52.size.width = v10;
          v52.size.height = v12;
          v6 = MaxX - CGRectGetWidth(v52);
          goto LABEL_14;
        }

        if (v25 != 2)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      [(SXComponentView *)self contentFrame];
      v26 = CGRectGetWidth(v49);
      v50.origin.x = v6;
      v50.origin.y = v8;
      v50.size.width = v10;
      v50.size.height = v12;
      v6 = (v26 - CGRectGetWidth(v50)) * 0.5;
    }
  }

LABEL_14:
  v28 = [(SXComponentView *)self component];
  v29 = [v28 stroke];
  v30 = [v29 style];

  if (v30 == 1)
  {
    v31 = [SXSolidBorderView alloc];
    v32 = [(SXComponentView *)self component];
    v33 = [v32 stroke];
    v34 = [(SXSolidBorderView *)v31 initWithStrokeStyle:v33];
    [(SXLineComponentView *)self setBorderView:v34];

    v35 = [(SXLineComponentView *)self borderView];
    [v35 setFrame:{v6, v8, v10, v12}];

    v36 = [(SXComponentView *)self contentView];
    v37 = [(SXLineComponentView *)self borderView];
    [v36 addSubview:v37];
  }

  else
  {
    v38 = [MEMORY[0x1E6979398] layer];
    [(SXLineComponentView *)self setStrokeLayer:v38];

    v36 = [[SXStrokeRenderer alloc] initWithComponentView:?];
    v39 = [(SXComponentView *)self component];
    v40 = [v39 stroke];
    v37 = [(SXStrokeRenderer *)v36 lineForStyle:v40 andFrame:v6, v8, v10, v12];

    v41 = [(SXLineComponentView *)self strokeLayer];
    [v41 setContents:{objc_msgSend(v37, "CGImage")}];

    v42 = [(SXLineComponentView *)self strokeLayer];
    [v42 setFrame:{v6, v8, v10, v12}];

    v43 = [(SXComponentView *)self contentView];
    v44 = [v43 layer];
    v45 = [(SXLineComponentView *)self strokeLayer];
    [v44 addSublayer:v45];
  }
}

- (void)discardContents
{
  v5.receiver = self;
  v5.super_class = SXLineComponentView;
  [(SXComponentView *)&v5 discardContents];
  v3 = [(SXLineComponentView *)self strokeLayer];
  [v3 removeFromSuperlayer];

  [(SXLineComponentView *)self setStrokeLayer:0];
  v4 = [(SXLineComponentView *)self borderView];
  [v4 removeFromSuperview];

  [(SXLineComponentView *)self setBorderView:0];
}

@end