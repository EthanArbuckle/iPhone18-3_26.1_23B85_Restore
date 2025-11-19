@interface PUParallaxLayerStackDebugPaletteView
- (PUParallaxLayerStackDebugPaletteView)initWithColorPalette:(id)a3;
- (void)_layoutPalette:(id)a3 origin:(CGPoint)a4 cellsPerRow:(int)a5 cellWidth:(double)a6 callback:(id)a7;
- (void)layoutSubviews;
@end

@implementation PUParallaxLayerStackDebugPaletteView

- (void)_layoutPalette:(id)a3 origin:(CGPoint)a4 cellsPerRow:(int)a5 cellWidth:(double)a6 callback:(id)a7
{
  y = a4.y;
  x = a4.x;
  v22 = a3;
  v13 = a7;
  v14 = [v22 primaryColors];
  v15 = [v14 count];

  if (v15)
  {
    v16 = 0;
    v17 = a5;
    do
    {
      v18 = [v22 suggestionAtIndex:v16];
      v19 = v13[2](v13, v18, x + (v16 % v17) * a6, y + (v16 / v17) * a6, a6 + -2.0, a6 + -2.0);
      [(PUParallaxLayerStackDebugPaletteView *)self addSubview:v19];

      ++v16;
      v20 = [v22 primaryColors];
      v21 = [v20 count];
    }

    while (v16 < v21);
  }
}

- (void)layoutSubviews
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(PUParallaxLayerStackDebugPaletteView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v31 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  [(PUParallaxLayerStackDebugPaletteView *)self bounds];
  v38 = CGRectInset(v37, 30.0, 30.0);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  v11 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v38.origin.x, v38.origin.y, v38.size.width, 50.0}];
  [v11 setText:@"Primary Colors"];
  [(PUParallaxLayerStackDebugPaletteView *)self addSubview:v11];
  v12 = y + 50.0 + 5.0;
  v13 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
  [(PUParallaxLayerStackDebugPaletteView *)self _layoutPalette:v13 origin:12 cellsPerRow:&__block_literal_global_48546 cellWidth:x callback:v12, width / 12.0];

  v14 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
  v15 = [v14 secondaryColors];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
    v18 = [v17 primaryColors];
    v19 = [v18 count] / 0xCuLL;

    v20 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
    v21 = [v20 primaryColors];
    v22 = __ROR8__(0xAAAAAAAAAAAAAAABLL * [v21 count], 2);

    if (v22 <= 0x1555555555555555)
    {
      v23 = v19;
    }

    else
    {
      v23 = v19 + 1;
    }

    v24 = width / 12.0 * v23 + 10.0;
    v25 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, v12 + v24, width, 50.0}];
    [v25 setText:@"Secondary Colors"];
    [(PUParallaxLayerStackDebugPaletteView *)self addSubview:v25];
    v26 = v12 + v24 + 50.0 + 5.0;
    v27 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
    [(PUParallaxLayerStackDebugPaletteView *)self _layoutPalette:v27 origin:12 cellsPerRow:&__block_literal_global_83_48547 cellWidth:x callback:v26, width / 12.0];

    v28 = v24 + v26;
    v29 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, v28, width, 50.0}];
    [v29 setText:@"Blended Colors"];
    [(PUParallaxLayerStackDebugPaletteView *)self addSubview:v29];
    v30 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
    [(PUParallaxLayerStackDebugPaletteView *)self _layoutPalette:v30 origin:12 cellsPerRow:&__block_literal_global_88 cellWidth:x callback:v28 + 50.0 + 5.0, width / 12.0];
  }
}

id __54__PUParallaxLayerStackDebugPaletteView_layoutSubviews__block_invoke_3(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E69C35B8];
  v11 = a6;
  v12 = [[v10 alloc] initWithFrame:{a1, a2, a3, a4}];
  v13 = MEMORY[0x1E69DC888];
  v14 = [v11 primaryColor];
  v15 = [v13 colorWithCGColor:{objc_msgSend(v14, "CGColor")}];
  v21[0] = v15;
  v16 = MEMORY[0x1E69DC888];
  v17 = [v11 secondaryColor];

  v18 = [v16 colorWithCGColor:{objc_msgSend(v17, "CGColor")}];
  v21[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

  [v12 setColors:v19];

  return v12;
}

id __54__PUParallaxLayerStackDebugPaletteView_layoutSubviews__block_invoke_2(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = MEMORY[0x1E69DD250];
  v11 = a6;
  v12 = [[v10 alloc] initWithFrame:{a1, a2, a3, a4}];
  v13 = MEMORY[0x1E69DC888];
  v14 = [v11 secondaryColor];

  v15 = [v13 colorWithCGColor:{objc_msgSend(v14, "CGColor")}];
  [v12 setBackgroundColor:v15];

  return v12;
}

id __54__PUParallaxLayerStackDebugPaletteView_layoutSubviews__block_invoke(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = MEMORY[0x1E69DD250];
  v11 = a6;
  v12 = [[v10 alloc] initWithFrame:{a1, a2, a3, a4}];
  v13 = MEMORY[0x1E69DC888];
  v14 = [v11 primaryColor];

  v15 = [v13 colorWithCGColor:{objc_msgSend(v14, "CGColor")}];
  [v12 setBackgroundColor:v15];

  return v12;
}

- (PUParallaxLayerStackDebugPaletteView)initWithColorPalette:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PUParallaxLayerStackDebugPaletteView;
  v5 = [(PUParallaxLayerStackDebugPaletteView *)&v8 initWithFrame:0.0, 0.0, 100.0, 100.0];
  palette = v5->_palette;
  v5->_palette = v4;

  return v5;
}

@end