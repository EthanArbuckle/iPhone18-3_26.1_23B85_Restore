@interface PUPosterVariableBlurView
- (PUPosterVariableBlurView)initWithFrame:(CGRect)a3 appearance:(unint64_t)a4;
- (void)_updateBlurProperties;
@end

@implementation PUPosterVariableBlurView

- (void)_updateBlurProperties
{
  v3 = +[PUPosterHeadroomSettings sharedInstance];
  [v3 blurMaskHeight];
  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{1.0, v4}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__PUPosterVariableBlurView__updateBlurProperties__block_invoke;
  v16[3] = &unk_1E7B7FB98;
  v16[4] = self;
  v17 = v3;
  v18 = v5;
  v7 = v3;
  v8 = [v6 imageWithActions:v16];
  [(PUPosterVariableBlurView *)self setCurrentBlurMaskImage:v8];

  v9 = +[PUPosterHeadroomSettings sharedInstance];
  [v9 blurRadius];
  v11 = v10;

  v12 = [(PUPosterVariableBlurView *)self backdropLayer];
  v13 = [(PUPosterVariableBlurView *)self currentBlurMaskImage];
  [v12 setValue:objc_msgSend(v13 forKeyPath:{"CGImage"), @"filters.variableBlur.inputMaskImage"}];

  v14 = [(PUPosterVariableBlurView *)self backdropLayer];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [v14 setValue:v15 forKeyPath:@"filters.variableBlur.inputRadius"];
}

void __49__PUPosterVariableBlurView__updateBlurProperties__block_invoke(uint64_t a1, void *a2)
{
  locations[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695F120];
  v4 = a2;
  v5 = CGColorSpaceCreateWithName(v3);
  v6 = [*(a1 + 32) appearance];
  if (v6 == 1)
  {
    v11 = [MEMORY[0x1E69DC888] clearColor];
    v15[0] = [v11 CGColor];
    v12 = [MEMORY[0x1E69DC888] whiteColor];
    v15[1] = [v12 CGColor];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

    v10 = 0.0;
  }

  else
  {
    if (v6)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v7 = [MEMORY[0x1E69DC888] whiteColor];
    v16[0] = [v7 CGColor];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    v16[1] = [v8 CGColor];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

    [*(a1 + 40) blurMaskTopLocation];
  }

  locations[0] = v10;
  locations[1] = 1.0;
LABEL_7:
  v13 = CGGradientCreateWithColors(v5, v9, locations);
  v14 = [v4 CGContext];

  v19.y = *(a1 + 48);
  v18.x = 0.0;
  v18.y = 0.0;
  v19.x = 0.0;
  CGContextDrawLinearGradient(v14, v13, v18, v19, 2u);
  CGGradientRelease(v13);
  CGColorSpaceRelease(v5);
}

- (PUPosterVariableBlurView)initWithFrame:(CGRect)a3 appearance:(unint64_t)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PUPosterVariableBlurView;
  v5 = [(PUPosterVariableBlurView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798A8]];
    v7 = [(PUPosterVariableBlurView *)v5 backdropLayer];
    [v7 setCompositingFilter:v6];

    v8 = [(PUPosterVariableBlurView *)v5 backdropLayer];
    [v8 setAllowsHitTesting:0];

    v9 = [(PUPosterVariableBlurView *)v5 backdropLayer];
    [v9 setMasksToBounds:1];

    v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D70]];
    blurFilter = v5->_blurFilter;
    v5->_blurFilter = v10;

    [(CAFilter *)v5->_blurFilter setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    [(CAFilter *)v5->_blurFilter setValue:MEMORY[0x1E695E110] forKey:@"inputDither"];
    [(CAFilter *)v5->_blurFilter setEnabled:1];
    v16[0] = v5->_blurFilter;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13 = [(PUPosterVariableBlurView *)v5 backdropLayer];
    [v13 setFilters:v12];

    [(PUPosterVariableBlurView *)v5 _updateBlurProperties];
    v5->_appearance = a4;
  }

  return v5;
}

@end