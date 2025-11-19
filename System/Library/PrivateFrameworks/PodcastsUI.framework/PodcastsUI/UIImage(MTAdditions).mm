@interface UIImage(MTAdditions)
+ (id)backCatalogIconForDarkBackground:()MTAdditions;
+ (id)backCatalogIconForTheme:()MTAdditions;
+ (id)backCatalogIconForTintColor:()MTAdditions;
+ (id)backCatalogPartiallyPlayedIconForDarkBackground:()MTAdditions;
+ (id)backCatalogPartiallyPlayedIconForTheme:()MTAdditions;
+ (id)backCatalogPartiallyPlayedIconForTintColor:()MTAdditions;
+ (id)combineImages:()MTAdditions rowCount:size:border:;
+ (id)defaultPodcastArtworkWithWidth:()MTAdditions;
+ (id)halfPlayedIconForDarkBackground:()MTAdditions;
+ (id)infoIcon;
+ (id)multiCheckIcon;
+ (id)multiUncheckIcon;
+ (id)nowPlayingIcon;
+ (id)unplayedIconForDarkBackground:()MTAdditions;
+ (uint64_t)halfPlayedIconForTheme:()MTAdditions;
+ (uint64_t)unplayedIconForTheme:()MTAdditions;
+ (void)drawBorder:()MTAdditions withContext:;
- (CGContext)scaleToSize:()MTAdditions addBorder:;
@end

@implementation UIImage(MTAdditions)

+ (id)nowPlayingIcon
{
  if (nowPlayingIcon_onceToken != -1)
  {
    +[UIImage(MTAdditions) nowPlayingIcon];
  }

  v1 = nowPlayingIcon_templateNowPlayingIcon;

  return v1;
}

+ (uint64_t)unplayedIconForTheme:()MTAdditions
{
  v4 = [a3 isBackgroundDark];

  return [a1 unplayedIconForDarkBackground:v4];
}

+ (id)unplayedIconForDarkBackground:()MTAdditions
{
  if (unplayedIconForDarkBackground__onceToken != -1)
  {
    +[UIImage(MTAdditions) unplayedIconForDarkBackground:];
  }

  v1 = unplayedIconForDarkBackground__strokedUnplayedIcon;

  return v1;
}

+ (uint64_t)halfPlayedIconForTheme:()MTAdditions
{
  v4 = [a3 isBackgroundDark];

  return [a1 halfPlayedIconForDarkBackground:v4];
}

+ (id)halfPlayedIconForDarkBackground:()MTAdditions
{
  if (halfPlayedIconForDarkBackground__onceToken != -1)
  {
    +[UIImage(MTAdditions) halfPlayedIconForDarkBackground:];
  }

  v1 = halfPlayedIconForDarkBackground__strokedHalfPlayedIcon;

  return v1;
}

+ (id)backCatalogIconForTheme:()MTAdditions
{
  v2 = [MEMORY[0x277D75348] secondaryTextColorForTheme:?];
  v3 = [a1 backCatalogIconForTintColor:v2];

  return v3;
}

+ (id)backCatalogIconForDarkBackground:()MTAdditions
{
  v4 = [MEMORY[0x277D75348] colorWithWhite:a3 alpha:0.5];
  v5 = [a1 backCatalogIconForTintColor:v4];

  return v5;
}

+ (id)backCatalogIconForTintColor:()MTAdditions
{
  v3 = a3;
  if (backCatalogIconForTintColor__onceToken != -1)
  {
    +[UIImage(MTAdditions) backCatalogIconForTintColor:];
  }

  v4 = backCatalogIconForTintColor__tintedIcons;
  objc_sync_enter(v4);
  v5 = [backCatalogIconForTintColor__tintedIcons objectForKeyedSubscript:v3];
  if (!v5)
  {
    v6 = backCatalogIconForTintColor__tintedIcons;
    v5 = [backCatalogIconForTintColor__untintedIcon im_flatImageWithColor:v3];
    [v6 setObject:v5 forKeyedSubscript:v3];
  }

  objc_sync_exit(v4);

  return v5;
}

+ (id)backCatalogPartiallyPlayedIconForTheme:()MTAdditions
{
  v2 = [MEMORY[0x277D75348] secondaryTextColorForTheme:?];
  v3 = [a1 backCatalogPartiallyPlayedIconForTintColor:v2];

  return v3;
}

+ (id)backCatalogPartiallyPlayedIconForDarkBackground:()MTAdditions
{
  v4 = [MEMORY[0x277D75348] colorWithWhite:a3 alpha:0.5];
  v5 = [a1 backCatalogPartiallyPlayedIconForTintColor:v4];

  return v5;
}

+ (id)backCatalogPartiallyPlayedIconForTintColor:()MTAdditions
{
  v3 = a3;
  if (backCatalogPartiallyPlayedIconForTintColor__onceToken != -1)
  {
    +[UIImage(MTAdditions) backCatalogPartiallyPlayedIconForTintColor:];
  }

  v4 = backCatalogPartiallyPlayedIconForTintColor__tintedIcons;
  objc_sync_enter(v4);
  v5 = [backCatalogPartiallyPlayedIconForTintColor__tintedIcons objectForKeyedSubscript:v3];
  if (!v5)
  {
    v6 = backCatalogPartiallyPlayedIconForTintColor__tintedIcons;
    v5 = [backCatalogPartiallyPlayedIconForTintColor__untintedIcon im_flatImageWithColor:v3];
    [v6 setObject:v5 forKeyedSubscript:v3];
  }

  objc_sync_exit(v4);

  return v5;
}

+ (id)multiCheckIcon
{
  if (multiCheckIcon_onceToken != -1)
  {
    +[UIImage(MTAdditions) multiCheckIcon];
  }

  v1 = multiCheckIcon_templateMultiCheckIcon;

  return v1;
}

+ (id)multiUncheckIcon
{
  if (multiUncheckIcon_onceToken != -1)
  {
    +[UIImage(MTAdditions) multiUncheckIcon];
  }

  v1 = multiUncheckIcon_templateMultiUncheckIcon;

  return v1;
}

+ (id)infoIcon
{
  if (infoIcon_onceToken != -1)
  {
    +[UIImage(MTAdditions) infoIcon];
  }

  v1 = infoIcon_templateInfoIcon;

  return v1;
}

+ (id)defaultPodcastArtworkWithWidth:()MTAdditions
{
  if (a2 <= 51.0)
  {
    [MEMORY[0x277D755B8] imageNamed:@"defaultCoverImageSmall"];
  }

  else
  {
    [a1 defaultPodcastArtwork];
  }
  v2 = ;

  return v2;
}

+ (void)drawBorder:()MTAdditions withContext:
{
  v12 = [MEMORY[0x277D759A0] mainScreen];
  [v12 scale];
  v14 = 1.0 / v13;

  CGContextSetRGBFillColor(a7, 0.0, 0.0, 0.0, 0.18);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = v14;
  CGContextFillRect(a7, v20);
  v21.origin.x = a1;
  v21.origin.y = a2 + v14;
  v21.size.width = v14;
  v21.size.height = a4 + v14 * -2.0;
  CGContextFillRect(a7, v21);
  v22.origin.x = a1 + a3 - v14;
  v22.origin.y = a2 + v14;
  v22.size.width = v14;
  v22.size.height = a4 + v14 * -2.0;
  CGContextFillRect(a7, v22);
  v16 = a1;
  v17 = a4;
  v18 = v14;

  v15 = a2 + a4 - v14;
  CGContextFillRect(a7, *&v16);
}

+ (id)combineImages:()MTAdditions rowCount:size:border:
{
  v10 = a5;
  v11 = [MEMORY[0x277D759A0] mainScreen];
  [v11 scale];
  v13 = v12;
  v30.width = a2;
  v30.height = a3;
  UIGraphicsBeginImageContextWithOptions(v30, 0, v13);

  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    v15 = CurrentContext;
    CGContextTranslateCTM(CurrentContext, 0.0, a3);
    CGContextScaleCTM(v15, 1.0, -1.0);
    if ([v10 count])
    {
      v16 = 0;
      v17 = a3 / a6 + -2.0;
      do
      {
        v18 = [v10 objectAtIndex:v16];
        v19 = v18;
        v20 = v16 + -a6 * (v16 / a6);
        v21 = v17 * (v16 / a6);
        v22 = v17 * v20;
        v23 = 4 * v20;
        if (v22 <= 0.0)
        {
          v24 = v22;
        }

        else
        {
          v24 = v22 + v23;
        }

        if (v21 <= 0.0)
        {
          v25 = v17 * (v16 / a6);
        }

        else
        {
          v25 = v21 + (4 * (v16 / a6));
        }

        v26 = [v18 CGImage];
        v31.origin.x = v24;
        v31.origin.y = v25;
        v31.size.width = v17;
        v31.size.height = v17;
        CGContextDrawImage(v15, v31, v26);
        [a1 drawBorder:v15 withContext:{v24, v25, v17, v17}];

        ++v16;
      }

      while ([v10 count] > v16);
    }

    v27 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (CGContext)scaleToSize:()MTAdditions addBorder:
{
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = v10;
  v20.width = a2;
  v20.height = a3;
  UIGraphicsBeginImageContextWithOptions(v20, 0, v11);

  CurrentContext = UIGraphicsGetCurrentContext();
  v13 = CurrentContext;
  if (CurrentContext)
  {
    CGContextTranslateCTM(CurrentContext, 0.0, a3);
    CGContextScaleCTM(v13, 1.0, -1.0);
    v14 = [a1 CGImage];
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = a2;
    v21.size.height = a3;
    CGContextDrawImage(v13, v21, v14);
    if (a5)
    {
      v15 = [MEMORY[0x277D759A0] mainScreen];
      [v15 scale];
      v17 = 1.0 / v16;

      CGContextSetRGBFillColor(v13, 0.0, 0.0, 0.0, 0.18);
      v22.origin.x = 0.0;
      v22.origin.y = 0.0;
      v22.size.width = a2;
      v22.size.height = v17;
      CGContextFillRect(v13, v22);
      v23.origin.x = 0.0;
      v23.origin.y = v17;
      v23.size.width = v17;
      v23.size.height = a3 + v17 * -2.0;
      CGContextFillRect(v13, v23);
      v24.origin.x = a2 - v17;
      v24.origin.y = v17;
      v24.size.width = v17;
      v24.size.height = a3 + v17 * -2.0;
      CGContextFillRect(v13, v24);
      v25.origin.y = a3 - v17;
      v25.origin.x = 0.0;
      v25.size.width = a2;
      v25.size.height = v17;
      CGContextFillRect(v13, v25);
    }

    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v13;
}

@end