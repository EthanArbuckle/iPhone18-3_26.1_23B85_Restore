@interface PUParallaxLayerStackDebugPaletteView
- (PUParallaxLayerStackDebugPaletteView)initWithColorPalette:(id)palette;
- (void)_layoutPalette:(id)palette origin:(CGPoint)origin cellsPerRow:(int)row cellWidth:(double)width callback:(id)callback;
- (void)layoutSubviews;
@end

@implementation PUParallaxLayerStackDebugPaletteView

- (void)_layoutPalette:(id)palette origin:(CGPoint)origin cellsPerRow:(int)row cellWidth:(double)width callback:(id)callback
{
  y = origin.y;
  x = origin.x;
  paletteCopy = palette;
  callbackCopy = callback;
  primaryColors = [paletteCopy primaryColors];
  v15 = [primaryColors count];

  if (v15)
  {
    v16 = 0;
    rowCopy = row;
    do
    {
      v18 = [paletteCopy suggestionAtIndex:v16];
      v19 = callbackCopy[2](callbackCopy, v18, x + (v16 % rowCopy) * width, y + (v16 / rowCopy) * width, width + -2.0, width + -2.0);
      [(PUParallaxLayerStackDebugPaletteView *)self addSubview:v19];

      ++v16;
      primaryColors2 = [paletteCopy primaryColors];
      v21 = [primaryColors2 count];
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
  subviews = [(PUParallaxLayerStackDebugPaletteView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v31 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [subviews countByEnumeratingWithState:&v31 objects:v35 count:16];
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
  palette = [(PUParallaxLayerStackDebugPaletteView *)self palette];
  [(PUParallaxLayerStackDebugPaletteView *)self _layoutPalette:palette origin:12 cellsPerRow:&__block_literal_global_48546 cellWidth:x callback:v12, width / 12.0];

  palette2 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
  secondaryColors = [palette2 secondaryColors];
  v16 = [secondaryColors count];

  if (v16)
  {
    palette3 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
    primaryColors = [palette3 primaryColors];
    v19 = [primaryColors count] / 0xCuLL;

    palette4 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
    primaryColors2 = [palette4 primaryColors];
    v22 = __ROR8__(0xAAAAAAAAAAAAAAABLL * [primaryColors2 count], 2);

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
    palette5 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
    [(PUParallaxLayerStackDebugPaletteView *)self _layoutPalette:palette5 origin:12 cellsPerRow:&__block_literal_global_83_48547 cellWidth:x callback:v26, width / 12.0];

    v28 = v24 + v26;
    v29 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, v28, width, 50.0}];
    [v29 setText:@"Blended Colors"];
    [(PUParallaxLayerStackDebugPaletteView *)self addSubview:v29];
    palette6 = [(PUParallaxLayerStackDebugPaletteView *)self palette];
    [(PUParallaxLayerStackDebugPaletteView *)self _layoutPalette:palette6 origin:12 cellsPerRow:&__block_literal_global_88 cellWidth:x callback:v28 + 50.0 + 5.0, width / 12.0];
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

- (PUParallaxLayerStackDebugPaletteView)initWithColorPalette:(id)palette
{
  paletteCopy = palette;
  v8.receiver = self;
  v8.super_class = PUParallaxLayerStackDebugPaletteView;
  v5 = [(PUParallaxLayerStackDebugPaletteView *)&v8 initWithFrame:0.0, 0.0, 100.0, 100.0];
  palette = v5->_palette;
  v5->_palette = paletteCopy;

  return v5;
}

@end