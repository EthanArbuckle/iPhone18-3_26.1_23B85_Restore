@interface PHPlaceholderView
- (PHPlaceholderView)initWithType:(int64_t)type;
- (id)_appleTVMessage;
- (void)_setup;
@end

@implementation PHPlaceholderView

- (id)_appleTVMessage
{
  type = [(PHPlaceholderView *)self type];
  if (!type)
  {
    v3 = @"VIDEO_PLAYING_ON_EXTERNAL_DISPLAY_PLACEHOLDER_MESSAGE";
    goto LABEL_5;
  }

  if (type == 1)
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
  airPlayVideoPlaceholderBackgroundColor = [v30 airPlayVideoPlaceholderBackgroundColor];
  [(PHPlaceholderView *)self setBackgroundColor:airPlayVideoPlaceholderBackgroundColor];

  [(PHPlaceholderView *)self setUserInteractionEnabled:0];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PHPlaceholderView *)self addSubview:v4];
  v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
  airPlayVideoPlaceholderIcon = [v30 airPlayVideoPlaceholderIcon];
  v7 = [v5 initWithImage:airPlayVideoPlaceholderIcon];

  airPlayVideoPlaceholderIconTintColor = [v30 airPlayVideoPlaceholderIconTintColor];
  [v7 setTintColor:airPlayVideoPlaceholderIconTintColor];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v7];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v10 = PULocalizedString(@"VIDEO_PLAYING_ON_EXTERNAL_DISPLAY_PLACEHOLDER_TITLE");
  [v9 setText:v10];

  airPlayVideoPlaceholderTitleTextColor = [v30 airPlayVideoPlaceholderTitleTextColor];
  [v9 setTextColor:airPlayVideoPlaceholderTitleTextColor];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  airPlayVideoPlaceholderTitleFont = [v30 airPlayVideoPlaceholderTitleFont];
  [v9 setFont:airPlayVideoPlaceholderTitleFont];

  [v4 addSubview:v9];
  _appleTVMessage = [(PHPlaceholderView *)self _appleTVMessage];
  v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v14 setNumberOfLines:0];
  [v14 setTextAlignment:1];
  [v14 setText:_appleTVMessage];
  airPlayVideoPlaceholderMessageTextColor = [v30 airPlayVideoPlaceholderMessageTextColor];
  [v14 setTextColor:airPlayVideoPlaceholderMessageTextColor];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  airPlayVideoPlaceholderMessageFont = [v30 airPlayVideoPlaceholderMessageFont];
  [v14 setFont:airPlayVideoPlaceholderMessageFont];

  [v4 addSubview:v14];
  [(PHPlaceholderView *)self _setContainer:v4];
  [(PHPlaceholderView *)self _setImageView:v7];
  [(PHPlaceholderView *)self _setAirPlayLabel:v9];
  [(PHPlaceholderView *)self _setAppleTVMessageLabel:v14];
  v17 = _NSDictionaryOfVariableBindings(&cfstr_ContainerImage.isa, v4, v7, v9, v14, 0);
  array = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[container]|" options:0 metrics:0 views:v17];
  [array addObjectsFromArray:v19];

  v20 = [MEMORY[0x1E696ACD8] constraintWithItem:v4 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [array addObject:v20];

  v21 = [MEMORY[0x1E696ACD8] constraintWithItem:v7 attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v21];

  v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v9 attribute:11 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:33.0];
  [array addObject:v22];

  lastObject = [array lastObject];
  LODWORD(v24) = 1132068864;
  [lastObject setPriority:v24];

  v25 = [MEMORY[0x1E696ACD8] constraintWithItem:v14 attribute:11 relatedBy:0 toItem:v9 attribute:11 multiplier:1.0 constant:15.0];
  [array addObject:v25];

  lastObject2 = [array lastObject];
  LODWORD(v27) = 1132068864;
  [lastObject2 setPriority:v27];

  v28 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[appleTVMessageLabel]|" options:512 metrics:0 views:v17];
  [array addObjectsFromArray:v28];

  v29 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[imageView]-(>=0)-[airPlayLabel]-(>=0)-[appleTVMessageLabel]|" options:512 metrics:0 views:v17];
  [array addObjectsFromArray:v29];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (PHPlaceholderView)initWithType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = PHPlaceholderView;
  v5 = [(PHPlaceholderView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    if (type >= 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"PHPlaceholderView.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"PHPlaceholderTypeIsValid(type)"}];
    }

    v5->_type = type;
    [(PHPlaceholderView *)v5 _setup];
  }

  return v5;
}

@end