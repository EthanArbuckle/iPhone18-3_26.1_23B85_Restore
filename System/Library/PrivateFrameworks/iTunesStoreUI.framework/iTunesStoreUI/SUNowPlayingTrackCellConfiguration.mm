@interface SUNowPlayingTrackCellConfiguration
+ (id)copyDefaultContext;
- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (id)fontForLabelAtIndex:(unint64_t)index;
- (void)reloadImages;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUNowPlayingTrackCellConfiguration

+ (id)copyDefaultContext
{
  v22 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___SUNowPlayingTrackCellConfiguration;
  v2 = objc_msgSendSuper2(&v15, sel_copyDefaultContext);
  v3 = objc_alloc_init(SUImageDataProvider);
  -[SUImageDataProvider setFillColor:](v3, "setFillColor:", [MEMORY[0x1E69DC888] clearColor]);
  [(SUImageDataProvider *)v3 setFinalSize:88.0, 88.0];
  v19 = 0;
  v20 = 0u;
  v16 = 0u;
  v17 = 0;
  v18 = xmmword_1C233A1F0;
  __asm { FMOV            V0.2D, #1.0 }

  v21 = _Q0;
  v9 = [objc_alloc(MEMORY[0x1E69DCA70]) initVerticalWithValues:&v16];
  v10 = objc_alloc_init(SUReflectionImageModifier);
  [(SUReflectionImageModifier *)v10 setReflectionHeight:8.0];
  [(SUReflectionImageModifier *)v10 setGradient:v9];

  v11 = objc_alloc_init(SUStrokeEdgesImageModifier);
  [(SUStrokeEdgesImageModifier *)v11 setEdgeInsets:1.0, 1.0, 1.0, 1.0];
  [(SUStrokeEdgesImageModifier *)v11 setFitToImage:1];
  -[SUStrokeEdgesImageModifier setStrokeColor:](v11, "setStrokeColor:", [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.150000006]);
  v12 = objc_alloc_init(SUArrayImageModifier);
  -[SUArrayImageModifier setModifiers:](v12, "setModifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v10, v11, 0}]);
  [(SUImageDataProvider *)v3 setModifier:v12];

  [v2 setImageProvider:v3];
  v13 = -[SUImageDataProvider newImageFromImage:](v3, "newImageFromImage:", [MEMORY[0x1E69DCAB8] imageNamed:@"PlaceholderBig.png" inBundle:{objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class())}]);
  [v2 setPlaceholderImage:v13];

  return v2;
}

- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  if ((modifiers & 2) != 0)
  {
    return [MEMORY[0x1E69DC888] grayColor];
  }

  if (modifiers)
  {
    return [MEMORY[0x1E69DC888] whiteColor];
  }

  if (index == 2)
  {
    return [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
  }

  return [MEMORY[0x1E69DC888] blackColor];
}

- (id)fontForLabelAtIndex:(unint64_t)index
{
  v3 = 10.0;
  if (index == 3)
  {
    v3 = 20.0;
  }

  if (index == 1)
  {
    v3 = 15.0;
  }

  return [MEMORY[0x1E69DB878] boldSystemFontOfSize:v3];
}

- (void)reloadImages
{
  v3.receiver = self;
  v3.super_class = SUNowPlayingTrackCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v3 reloadImages];
  if (!*self->super.super.super.super._images)
  {
    *self->super.super.super.super._images = [self->super.super.super.super.super._context placeholderImage];
  }
}

- (void)reloadLayoutInformation
{
  v15.receiver = self;
  v15.super_class = SUNowPlayingTrackCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v15 reloadLayoutInformation];
  imageFrames = self->super.super.super.super._imageFrames;
  __asm { FMOV            V0.2D, #7.0 }

  imageFrames->origin = _Q0;
  imageFrames->size = xmmword_1C233A200;
  stringFrames = self->super.super.super.super._stringFrames;
  v10 = self->super.super.super.super.super._layoutSize.width + -5.0 + -102.0;
  stringFrames[1].origin = xmmword_1C233A210;
  stringFrames[1].size.width = v10;
  *&stringFrames[1].size.height = xmmword_1C233A220;
  stringFrames[2].origin.y = 6.0;
  stringFrames[2].size.width = v10;
  stringFrames[2].size.height = 14.0;
  strings = self->super.super.super.super._strings;
  if (strings[1])
  {
    stringFrames[3].origin = xmmword_1C233A230;
    stringFrames[3].size.width = v10;
    stringFrames[3].size.height = 25.0;
  }

  else
  {
    [self->super.super.super.super.super._context sizeForString:strings[3] font:-[SUNowPlayingTrackCellConfiguration fontForLabelAtIndex:](self constrainedToSize:{"fontForLabelAtIndex:", 3), v10, 50.0}];
    v12 = self->super.super.super.super._stringFrames;
    v12[3].size.width = v13;
    v12[3].size.height = v14;
    *&v13 = (self->super.super.super.super.super._layoutSize.height - v14) * 0.5;
    v12[3].origin.x = 102.0;
    v12[3].origin.y = floorf(*&v13);
  }
}

- (void)reloadStrings
{
  v7.receiver = self;
  v7.super_class = SUNowPlayingTrackCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v7 reloadStrings];
  title = [self->super.super.super.super.super._representedObject title];

  v4 = [title length];
  if (v4)
  {
    v4 = title;
  }

  *(self->super.super.super.super._strings + 3) = v4;
  artistName = [self->super.super.super.super.super._representedObject artistName];

  v6 = [artistName length];
  if (v6)
  {
    v6 = artistName;
  }

  *(self->super.super.super.super._strings + 1) = v6;
  if (!*(self->super.super.super.super._strings + 2))
  {
    *(self->super.super.super.super._strings + 2) = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PARTNER_NOW_PLAYING", &stru_1F41B3660, 0}];
  }
}

@end