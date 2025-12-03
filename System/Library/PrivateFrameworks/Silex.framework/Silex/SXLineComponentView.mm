@interface SXLineComponentView
- (void)discardContents;
- (void)loadComponent:(id)component;
- (void)presentComponentWithChanges:(id)changes;
- (void)renderContents;
@end

@implementation SXLineComponentView

- (void)loadComponent:(id)component
{
  componentCopy = component;
  component = [(SXComponentView *)self component];
  stroke = [component stroke];

  v10.receiver = self;
  v10.super_class = SXLineComponentView;
  [(SXComponentView *)&v10 loadComponent:componentCopy];

  component2 = [(SXComponentView *)self component];
  stroke2 = [component2 stroke];
  v9 = [stroke2 isEqual:stroke];

  if ((v9 & 1) == 0)
  {
    [(SXLineComponentView *)self discardContents];
  }
}

- (void)presentComponentWithChanges:(id)changes
{
  var0 = changes.var0;
  v5.receiver = self;
  v5.super_class = SXLineComponentView;
  [(SXComponentView *)&v5 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
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
  component = [(SXComponentView *)self component];
  stroke = [component stroke];

  if (!stroke)
  {
    return;
  }

  [(SXComponentView *)self contentFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  componentLayout = [(SXComponentView *)self componentLayout];
  [componentLayout maximumContentWidth];
  v15 = v14;

  if (v15)
  {
    unitConverter = [(SXComponentView *)self unitConverter];
    componentLayout2 = [(SXComponentView *)self componentLayout];
    maximumContentWidth = [componentLayout2 maximumContentWidth];
    [unitConverter convertValueToPoints:{maximumContentWidth, v19}];
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
      componentLayout3 = [(SXComponentView *)self componentLayout];
      if ([componentLayout3 horizontalContentAlignment])
      {
        componentLayout4 = [(SXComponentView *)self componentLayout];
        horizontalContentAlignment = [componentLayout4 horizontalContentAlignment];

        if (horizontalContentAlignment == 3)
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

        if (horizontalContentAlignment != 2)
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
  component2 = [(SXComponentView *)self component];
  stroke2 = [component2 stroke];
  style = [stroke2 style];

  if (style == 1)
  {
    v31 = [SXSolidBorderView alloc];
    component3 = [(SXComponentView *)self component];
    stroke3 = [component3 stroke];
    v34 = [(SXSolidBorderView *)v31 initWithStrokeStyle:stroke3];
    [(SXLineComponentView *)self setBorderView:v34];

    borderView = [(SXLineComponentView *)self borderView];
    [borderView setFrame:{v6, v8, v10, v12}];

    contentView = [(SXComponentView *)self contentView];
    borderView2 = [(SXLineComponentView *)self borderView];
    [contentView addSubview:borderView2];
  }

  else
  {
    layer = [MEMORY[0x1E6979398] layer];
    [(SXLineComponentView *)self setStrokeLayer:layer];

    contentView = [[SXStrokeRenderer alloc] initWithComponentView:?];
    component4 = [(SXComponentView *)self component];
    stroke4 = [component4 stroke];
    borderView2 = [(SXStrokeRenderer *)contentView lineForStyle:stroke4 andFrame:v6, v8, v10, v12];

    strokeLayer = [(SXLineComponentView *)self strokeLayer];
    [strokeLayer setContents:{objc_msgSend(borderView2, "CGImage")}];

    strokeLayer2 = [(SXLineComponentView *)self strokeLayer];
    [strokeLayer2 setFrame:{v6, v8, v10, v12}];

    contentView2 = [(SXComponentView *)self contentView];
    layer2 = [contentView2 layer];
    strokeLayer3 = [(SXLineComponentView *)self strokeLayer];
    [layer2 addSublayer:strokeLayer3];
  }
}

- (void)discardContents
{
  v5.receiver = self;
  v5.super_class = SXLineComponentView;
  [(SXComponentView *)&v5 discardContents];
  strokeLayer = [(SXLineComponentView *)self strokeLayer];
  [strokeLayer removeFromSuperlayer];

  [(SXLineComponentView *)self setStrokeLayer:0];
  borderView = [(SXLineComponentView *)self borderView];
  [borderView removeFromSuperview];

  [(SXLineComponentView *)self setBorderView:0];
}

@end