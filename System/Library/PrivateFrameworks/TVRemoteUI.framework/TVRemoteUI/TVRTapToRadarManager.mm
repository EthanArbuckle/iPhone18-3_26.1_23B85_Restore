@interface TVRTapToRadarManager
+ (id)_captureScreenshotForWindow:(id)window;
+ (id)bugImage;
+ (void)fileRadarWithTitle:(id)title description:(id)description window:(id)window;
- (void)fileRadar;
@end

@implementation TVRTapToRadarManager

+ (id)bugImage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"radarBug" inBundle:v2 compatibleWithTraitCollection:0];
  v4 = [v3 imageWithRenderingMode:2];

  return v4;
}

+ (void)fileRadarWithTitle:(id)title description:(id)description window:(id)window
{
  titleCopy = title;
  descriptionCopy = description;
  windowCopy = window;
  v9 = objc_alloc_init(TVRTapToRadarManager);
  v10 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v10 setScheme:@"tap-to-radar"];
  [v10 setHost:@"new"];
  array = [MEMORY[0x277CBEB18] array];
  v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentName" value:@"Apple TV"];
  [array addObject:v12];

  v13 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentVersion" value:@"New Bugs"];
  [array addObject:v13];

  v14 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentID" value:@"250465"];
  [array addObject:v14];

  v15 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"AutoDiagnostics" value:@"phone"];
  [array addObject:v15];

  v16 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Classification" value:@"Serious Bug"];
  [array addObject:v16];

  v17 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Reproducibility" value:@"Not Applicable"];
  [array addObject:v17];

  v18 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"DeviceClasses" value:@"AppleTV"];
  [array addObject:v18];

  v19 = [objc_opt_class() _captureScreenshotForWindow:windowCopy];

  relativePath = [v19 relativePath];

  if ([relativePath length])
  {
    v21 = MEMORY[0x277CCAD18];
    v22 = relativePath;
    v23 = [[v21 alloc] initWithName:@"Screenshot" value:v22];

    [array addObject:v23];
  }

  if ([titleCopy length])
  {
    v24 = MEMORY[0x277CCAD18];
    v25 = titleCopy;
    v26 = [[v24 alloc] initWithName:@"Title" value:v25];

    [array addObject:v26];
  }

  if ([descriptionCopy length])
  {
    v27 = MEMORY[0x277CCAD18];
    v28 = descriptionCopy;
    v29 = [[v27 alloc] initWithName:@"Description" value:v28];

    [array addObject:v29];
  }

  [v10 setQueryItems:array];
  [(TVRTapToRadarManager *)v9 setUrlComponents:v10];
  [(TVRTapToRadarManager *)v9 fileRadar];
}

- (void)fileRadar
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (+[TVRUIFeatures isTapToRadarEnabled])
  {
    v3 = objc_alloc_init(MEMORY[0x277CC1F00]);
    v8 = *MEMORY[0x277D0AC58];
    v9[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v3 setFrontBoardOptions:v4];

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    urlComponents = [(TVRTapToRadarManager *)self urlComponents];
    v7 = [urlComponents URL];
    [defaultWorkspace openURL:v7 configuration:v3 completionHandler:&__block_literal_global_4];
  }
}

+ (id)_captureScreenshotForWindow:(id)window
{
  windowCopy = window;
  v4 = objc_alloc(MEMORY[0x277D75560]);
  [windowCopy bounds];
  v7 = [v4 initWithSize:{v5, v6}];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__TVRTapToRadarManager__captureScreenshotForWindow___block_invoke;
  v20[3] = &unk_279D880E0;
  v8 = windowCopy;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v10 = [v9 PNGDataWithActions:v20];
  v11 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v11 setDateFormat:@"yyyy-MM-dd-HH:mm:ss"];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [v11 stringFromDate:date];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"TVRemote-TTR-Screenshot-%@.png", v13];
  v15 = NSTemporaryDirectory();
  v16 = [v15 stringByAppendingPathComponent:v14];

  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
  if (([v10 writeToURL:v17 atomically:1] & 1) == 0)
  {
    path = [v17 path];
    NSLog(&cfstr_FailedToWriteS.isa, path);

    v17 = 0;
  }

  return v17;
}

void __52__TVRTapToRadarManager__captureScreenshotForWindow___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) format];
  [v2 bounds];
  [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

@end