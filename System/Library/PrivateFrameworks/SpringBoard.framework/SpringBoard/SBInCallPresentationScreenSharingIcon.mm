@interface SBInCallPresentationScreenSharingIcon
- (id)displayNameForLocation:(id)location;
- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
@end

@implementation SBInCallPresentationScreenSharingIcon

- (id)displayNameForLocation:(id)location
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"SCREEN_SHARING" value:&stru_283094718 table:@"SpringBoard"];

  return v4;
}

- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v26[1] = *MEMORY[0x277D85DE8];
  v12 = [MEMORY[0x277D755B8] imageNamed:{@"ScreenSharingIcon", collection, context, options}];
  v13 = objc_alloc(MEMORY[0x277D1B160]);
  cGImage = [v12 CGImage];
  [v12 scale];
  v15 = [v13 initWithCGImage:cGImage scale:?];
  v16 = objc_alloc(MEMORY[0x277D1B1A8]);
  v26[0] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v18 = [v16 initWithImages:v17];

  v19 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:v11 scale:{v10, v9}];
  v20 = [v18 prepareImageForDescriptor:v19];
  v21 = v20;
  if (v20)
  {
    v22 = MEMORY[0x277D755B8];
    cGImage2 = [v20 CGImage];
    [v21 scale];
    v24 = [v22 imageWithCGImage:cGImage2 scale:0 orientation:?];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end