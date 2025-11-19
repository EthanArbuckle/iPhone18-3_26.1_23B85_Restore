@interface Bokeh
+ (id)presetWallpaperOptions;
+ (id)thumbnailImageName;
@end

@implementation Bokeh

+ (id)presetWallpaperOptions
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = optionVariant(@"newmixedcolors", @"NewBokeh-Dark-Mixed_thumb");
  v19 = v3;
  v4 = optionVariant(@"newgreen", @"NewBokeh-Dark-Green_thumb");
  v20 = v4;
  v5 = optionVariant(@"newyellow", @"NewBokeh-Dark-Yellow_thumb");
  v21 = v5;
  v6 = optionVariant(@"neworange", @"NewBokeh-Dark-Orange_thumb");
  v22 = v6;
  v7 = optionVariant(@"newred", @"NewBokeh-Dark-Red_thumb");
  v23 = v7;
  v8 = optionVariant(@"newpurple", @"NewBokeh-Dark-Purple_thumb");
  v24 = v8;
  v9 = optionVariant(@"newblue", @"NewBokeh-Dark-Blue_thumb");
  v25 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:7];

  [v2 addObjectsFromArray:{v10, v19, v20, v21, v22, v23, v24}];
  v11 = optionVariant(@"Yellow_v03", @"NewBokeh-Light-Yellow_thumb");
  v19 = v11;
  v12 = optionVariant(@"Green_v01", @"NewBokeh-Light-Green_thumb");
  v20 = v12;
  v13 = optionVariant(@"Red_v01", @"NewBokeh-Light-Red_thumb");
  v21 = v13;
  v14 = optionVariant(@"Blue_v01", @"NewBokeh-Light-Blue_thumb");
  v22 = v14;
  v15 = optionVariant(@"Silver_v01", @"NewBokeh-Light-Silver_thumb");
  v23 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:5];

  [v2 addObjectsFromArray:v16];
  [v2 addObjectsFromArray:&unk_28865BCD8];
  v17 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)thumbnailImageName
{
  v2 = [a1 presetWallpaperOptions];
  v3 = [v2 firstObject];
  v4 = [v3 objectForKey:@"thumbnailImageName"];

  return v4;
}

@end