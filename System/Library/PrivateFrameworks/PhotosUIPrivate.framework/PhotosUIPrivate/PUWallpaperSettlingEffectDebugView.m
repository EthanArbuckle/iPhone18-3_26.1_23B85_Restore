@interface PUWallpaperSettlingEffectDebugView
- (PUWallpaperSettlingEffectDebugView)initWithSegmentationItem:(id)a3;
- (id)generateText;
- (void)fileRadarButtonTapped;
- (void)layoutSubviews;
@end

@implementation PUWallpaperSettlingEffectDebugView

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = PUWallpaperSettlingEffectDebugView;
  [(PUWallpaperSettlingEffectDebugView *)&v20 layoutSubviews];
  [(PUWallpaperSettlingEffectDebugView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PUWallpaperSettlingEffectDebugView *)self label];
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v12 = CGRectGetWidth(v21) + -40.0;
  [v11 sizeThatFits:{v12, 0.0}];
  [v11 setFrame:{20.0, 20.0, v12, v13}];
  v14 = [(PUWallpaperSettlingEffectDebugView *)self button];
  [v14 sizeToFit];
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  Width = CGRectGetWidth(v22);
  [v14 frame];
  v16 = (Width - CGRectGetWidth(v23)) * 0.5;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  Height = CGRectGetHeight(v24);
  [v14 frame];
  v18 = Height - CGRectGetHeight(v25) + -10.0;
  [v14 frame];
  v19 = CGRectGetWidth(v26);
  [v14 frame];
  [v14 setFrame:{v16, v18, v19, CGRectGetHeight(v27)}];
}

- (void)fileRadarButtonTapped
{
  v3 = [(PUWallpaperSettlingEffectDebugView *)self onFileRadar];

  if (v3)
  {
    v4 = [(PUWallpaperSettlingEffectDebugView *)self onFileRadar];
    v4[2]();
  }
}

- (id)generateText
{
  v46[3] = *MEMORY[0x1E69E9840];
  v2 = [(PUWallpaperSettlingEffectDebugView *)self segmentationItem];
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v4 setAlignment:1];
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v45[0] = *MEMORY[0x1E69DB650];
  v6 = [MEMORY[0x1E69DC888] lightGrayColor];
  v7 = *MEMORY[0x1E69DB688];
  v46[0] = v6;
  v46[1] = v4;
  v31 = v4;
  v33 = *MEMORY[0x1E69DB648];
  v8 = *MEMORY[0x1E69DB648];
  v34 = v7;
  v45[1] = v7;
  v45[2] = v8;
  v9 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0 weight:*MEMORY[0x1E69DB968]];
  v46[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];
  v11 = [v5 initWithString:@"TAP TO DISMISS\n\n" attributes:v10];

  v35 = v3;
  v30 = v11;
  [v3 appendAttributedString:v11];
  v12 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v12 setLineBreakMode:0];
  if ([v2 settlingEffectFailedAnyGating])
  {
    v43[0] = v33;
    v13 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0 weight:*MEMORY[0x1E69DB958]];
    v43[1] = v34;
    v44[0] = v13;
    v44[1] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];

    LODWORD(v13) = [v2 isSettlingEffectAvailable];
    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v13)
    {
      v16 = @"In production, this asset would have failed settling effect generation. Please File a Radar if you think this is a good settling effect result.\n\n";
    }

    else
    {
      v16 = @"This asset failed settling effect generation. Please File a Radar if you think the settling effect should be available.\n\n";
    }

    v17 = [v15 initWithString:v16 attributes:v14];
    [v3 appendAttributedString:v17];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v2 settlingEffectGatingDiagnostics];
  v18 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    v21 = *MEMORY[0x1E69DB978];
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        v24 = objc_alloc(MEMORY[0x1E696AD40]);
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v23];
        v40[0] = v33;
        v26 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0 weight:v21];
        v40[1] = v34;
        v41[0] = v26;
        v41[1] = v12;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
        v28 = [v24 initWithString:v25 attributes:v27];

        [v35 appendAttributedString:v28];
      }

      v19 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v19);
  }

  return v35;
}

- (PUWallpaperSettlingEffectDebugView)initWithSegmentationItem:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = PUWallpaperSettlingEffectDebugView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(PUWallpaperSettlingEffectDebugView *)&v26 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_segmentationItem, a3);
    v12 = [MEMORY[0x1E69DC888] whiteColor];
    [(PUWallpaperSettlingEffectDebugView *)v11 setBackgroundColor:v12];

    [(PUWallpaperSettlingEffectDebugView *)v11 setAlpha:0.9];
    v13 = [(PUWallpaperSettlingEffectDebugView *)v11 layer];
    [v13 setCornerRadius:15.0];

    v14 = [(PUWallpaperSettlingEffectDebugView *)v11 layer];
    [v14 setMasksToBounds:1];

    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    label = v11->_label;
    v11->_label = v15;

    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
    [(UILabel *)v11->_label setFont:v17];

    v18 = [MEMORY[0x1E69DC888] blackColor];
    [(UILabel *)v11->_label setTextColor:v18];

    [(UILabel *)v11->_label setNumberOfLines:0];
    v19 = [(PUWallpaperSettlingEffectDebugView *)v11 generateText];
    [(UILabel *)v11->_label setAttributedText:v19];

    [(PUWallpaperSettlingEffectDebugView *)v11 addSubview:v11->_label];
    v20 = [MEMORY[0x1E69DC738] buttonWithType:1];
    button = v11->_button;
    v11->_button = v20;

    [(UIButton *)v11->_button setTitle:@"File Radar" forState:0];
    [(UIButton *)v11->_button addTarget:v11 action:sel_fileRadarButtonTapped forControlEvents:64];
    v22 = [(UIButton *)v11->_button titleLabel];
    v23 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0];
    [v22 setFont:v23];

    [(PUWallpaperSettlingEffectDebugView *)v11 addSubview:v11->_button];
    v24 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v11 action:sel_viewTapped];
    [(PUWallpaperSettlingEffectDebugView *)v11 addGestureRecognizer:v24];
  }

  return v11;
}

@end