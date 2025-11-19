@interface SBInCallPresentationScreenSharingIcon
- (id)displayNameForLocation:(id)a3;
- (id)makeIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
@end

@implementation SBInCallPresentationScreenSharingIcon

- (id)displayNameForLocation:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"SCREEN_SHARING" value:&stru_283094718 table:@"SpringBoard"];

  return v4;
}

- (id)makeIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v26[1] = *MEMORY[0x277D85DE8];
  v12 = [MEMORY[0x277D755B8] imageNamed:{@"ScreenSharingIcon", a4, a5, a6}];
  v13 = objc_alloc(MEMORY[0x277D1B160]);
  v14 = [v12 CGImage];
  [v12 scale];
  v15 = [v13 initWithCGImage:v14 scale:?];
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
    v23 = [v20 CGImage];
    [v21 scale];
    v24 = [v22 imageWithCGImage:v23 scale:0 orientation:?];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end