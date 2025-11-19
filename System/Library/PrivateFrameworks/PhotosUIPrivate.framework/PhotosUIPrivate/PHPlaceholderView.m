@interface PHPlaceholderView
- (PHPlaceholderView)initWithType:(int64_t)a3;
- (id)_appleTVMessage;
- (void)_setup;
@end

@implementation PHPlaceholderView

- (id)_appleTVMessage
{
  v2 = [(PHPlaceholderView *)self type];
  if (!v2)
  {
    v3 = @"VIDEO_PLAYING_ON_EXTERNAL_DISPLAY_PLACEHOLDER_MESSAGE";
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = @"AIRPLAY_SLIDESHOW_ON_APPLE_TV_MESSAGE";
LABEL_5:
    v4 = PULocalizedString(v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (void)_setup
{
  v30 = +[PUInterfaceManager currentTheme];
  v3 = [v30 airPlayVideoPlaceholderBackgroundColor];
  [(PHPlaceholderView *)self setBackgroundColor:v3];

  [(PHPlaceholderView *)self setUserInteractionEnabled:0];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PHPlaceholderView *)self addSubview:v4];
  v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v6 = [v30 airPlayVideoPlaceholderIcon];
  v7 = [v5 initWithImage:v6];

  v8 = [v30 airPlayVideoPlaceholderIconTintColor];
  [v7 setTintColor:v8];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v7];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v10 = PULocalizedString(@"VIDEO_PLAYING_ON_EXTERNAL_DISPLAY_PLACEHOLDER_TITLE");
  [v9 setText:v10];

  v11 = [v30 airPlayVideoPlaceholderTitleTextColor];
  [v9 setTextColor:v11];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v30 airPlayVideoPlaceholderTitleFont];
  [v9 setFont:v12];

  [v4 addSubview:v9];
  v13 = [(PHPlaceholderView *)self _appleTVMessage];
  v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v14 setNumberOfLines:0];
  [v14 setTextAlignment:1];
  [v14 setText:v13];
  v15 = [v30 airPlayVideoPlaceholderMessageTextColor];
  [v14 setTextColor:v15];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v30 airPlayVideoPlaceholderMessageFont];
  [v14 setFont:v16];

  [v4 addSubview:v14];
  [(PHPlaceholderView *)self _setContainer:v4];
  [(PHPlaceholderView *)self _setImageView:v7];
  [(PHPlaceholderView *)self _setAirPlayLabel:v9];
  [(PHPlaceholderView *)self _setAppleTVMessageLabel:v14];
  v17 = _NSDictionaryOfVariableBindings(&cfstr_ContainerImage.isa, v4, v7, v9, v14, 0);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[container]|" options:0 metrics:0 views:v17];
  [v18 addObjectsFromArray:v19];

  v20 = [MEMORY[0x1E696ACD8] constraintWithItem:v4 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [v18 addObject:v20];

  v21 = [MEMORY[0x1E696ACD8] constraintWithItem:v7 attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:0.0];
  [v18 addObject:v21];

  v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v9 attribute:11 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:33.0];
  [v18 addObject:v22];

  v23 = [v18 lastObject];
  LODWORD(v24) = 1132068864;
  [v23 setPriority:v24];

  v25 = [MEMORY[0x1E696ACD8] constraintWithItem:v14 attribute:11 relatedBy:0 toItem:v9 attribute:11 multiplier:1.0 constant:15.0];
  [v18 addObject:v25];

  v26 = [v18 lastObject];
  LODWORD(v27) = 1132068864;
  [v26 setPriority:v27];

  v28 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[appleTVMessageLabel]|" options:512 metrics:0 views:v17];
  [v18 addObjectsFromArray:v28];

  v29 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[imageView]-(>=0)-[airPlayLabel]-(>=0)-[appleTVMessageLabel]|" options:512 metrics:0 views:v17];
  [v18 addObjectsFromArray:v29];

  [MEMORY[0x1E696ACD8] activateConstraints:v18];
}

- (PHPlaceholderView)initWithType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = PHPlaceholderView;
  v5 = [(PHPlaceholderView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    if (a3 >= 2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:v5 file:@"PHPlaceholderView.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"PHPlaceholderTypeIsValid(type)"}];
    }

    v5->_type = a3;
    [(PHPlaceholderView *)v5 _setup];
  }

  return v5;
}

@end