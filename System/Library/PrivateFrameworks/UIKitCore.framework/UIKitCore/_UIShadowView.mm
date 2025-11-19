@interface _UIShadowView
- (void)_updateShadowVisualStyling;
- (void)didMoveToSuperview;
- (void)setUseLowerIntensity:(BOOL)a3;
@end

@implementation _UIShadowView

- (void)_updateShadowVisualStyling
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIShadowView *)self useLowerIntensity];
  v4 = -0.17188;
  if (v3)
  {
    v4 = -0.1875;
  }

  v5 = 0.67188;
  if (v3)
  {
    v5 = 0.79688;
  }

  v16 = __PAIR64__(LODWORD(v4), LODWORD(v5));
  v17 = xmmword_18A67E180;
  v6 = 0.57812;
  if (v3)
  {
    v6 = 0.71875;
  }

  v7 = 0.078125;
  if (v3)
  {
    v7 = 0.09375;
  }

  v18 = __PAIR64__(LODWORD(v7), LODWORD(v6));
  v8 = 0.82812;
  if (v3)
  {
    v8 = 0.96875;
  }

  v9 = -0.015625;
  if (!v3)
  {
    v9 = 0.0;
  }

  v10 = -0.23438;
  if (v3)
  {
    v10 = -0.25;
  }

  v11 = -0.45312;
  if (v3)
  {
    v11 = -0.5;
  }

  v19 = 0x3C80000000000000;
  v20 = -1111490560;
  v21 = v4;
  v22 = v8;
  v23 = 0;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = 0x3F800000BDC00000;
  v28 = 0;
  v12 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v16];
  v13 = [MEMORY[0x1E6979378] filterWithType:{*MEMORY[0x1E6979D78], v16, v17, v18}];
  [v13 setValue:v12 forKey:@"inputColorMatrix"];
  v29[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v15 = [(UIView *)self layer];
  [v15 setFilters:v14];
}

- (void)didMoveToSuperview
{
  v3 = [(UIView *)self superview];

  if (v3)
  {

    [(_UIShadowView *)self _updateShadowVisualStyling];
  }
}

- (void)setUseLowerIntensity:(BOOL)a3
{
  if (self->_useLowerIntensity != a3)
  {
    self->_useLowerIntensity = a3;
    [(_UIShadowView *)self _updateShadowVisualStyling];
  }
}

@end