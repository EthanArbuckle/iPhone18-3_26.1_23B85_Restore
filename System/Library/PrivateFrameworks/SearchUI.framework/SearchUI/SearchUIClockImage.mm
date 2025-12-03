@interface SearchUIClockImage
- (BOOL)isEqual:(id)equal;
- (SearchUIClockImage)initWithClockImage:(id)image variant:(unint64_t)variant;
- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
@end

@implementation SearchUIClockImage

- (SearchUIClockImage)initWithClockImage:(id)image variant:(unint64_t)variant
{
  imageCopy = image;
  v7 = [SearchUIUtilities bundleIdentifierForApp:24];
  v10.receiver = self;
  v10.super_class = SearchUIClockImage;
  v8 = [(SearchUIAppIconImage *)&v10 initWithBundleIdentifier:v7 isOnenessApp:0 variant:variant contentType:0];

  if (v8)
  {
    [(SearchUIImage *)v8 setSfImage:imageCopy];
  }

  return v8;
}

- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  handlerCopy = handler;
  sfImage = [(SearchUIImage *)self sfImage];
  v8 = objc_opt_new();
  hour = [sfImage hour];
  [v8 setHour:{objc_msgSend(hour, "integerValue")}];

  minute = [sfImage minute];
  [v8 setMinute:{objc_msgSend(minute, "integerValue")}];

  second = [sfImage second];
  [v8 setSecond:{objc_msgSend(second, "integerValue")}];

  v12 = [v8 hour] > 11;
  v13 = objc_opt_new();
  [(SearchUIImage *)self size];
  SBIconImageInfoMake();
  [v13 setIconImageInfo:?];
  v14 = [MEMORY[0x1E69D9108] appearanceWithVibrancyEnabled:0 isDark:v12];
  [v14 overrideAppearanceForView:v13];

  [v13 updateTraitsIfNeeded];
  overrideDate = [MEMORY[0x1E69D4078] overrideDate];
  hidesSecondsHand = [MEMORY[0x1E69D4078] hidesSecondsHand];
  autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v18 = [autoupdatingCurrentCalendar dateFromComponents:v8];
  [MEMORY[0x1E69D4078] setOverrideDate:v18];

  second2 = [sfImage second];
  if (second2)
  {
    second3 = [sfImage second];
    [second3 doubleValue];
    [MEMORY[0x1E69D4078] setHidesSecondsHand:v21 < 0.0];
  }

  else
  {
    [MEMORY[0x1E69D4078] setHidesSecondsHand:1];
  }

  v22 = objc_opt_new();
  [v13 setIcon:v22 location:&stru_1F55BC4E8 animated:0];

  [(SearchUIImage *)self size];
  UIGraphicsBeginImageContextWithOptions(v27, 1, scale);
  layer = [v13 layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [MEMORY[0x1E69D4078] setOverrideDate:overrideDate];
  [MEMORY[0x1E69D4078] setHidesSecondsHand:hidesSecondsHand];
  handlerCopy[2](handlerCopy, v24, 1);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if ([(SearchUIClockImage *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    sfImage = [(SearchUIImage *)self sfImage];
    if (sfImage)
    {
    }

    else
    {
      sfImage2 = [(SearchUIImage *)equalCopy sfImage];

      if (!sfImage2)
      {
        v11.receiver = self;
        v11.super_class = SearchUIClockImage;
        v6 = [(SearchUIAppIconImage *)&v11 isEqual:equalCopy];
        goto LABEL_9;
      }
    }

    sfImage3 = [(SearchUIImage *)self sfImage];
    sfImage4 = [(SearchUIImage *)equalCopy sfImage];
    v6 = [sfImage3 isEqual:sfImage4];
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

@end