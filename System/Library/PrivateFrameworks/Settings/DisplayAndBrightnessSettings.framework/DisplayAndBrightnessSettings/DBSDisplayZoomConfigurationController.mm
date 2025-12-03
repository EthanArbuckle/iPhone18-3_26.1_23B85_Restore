@interface DBSDisplayZoomConfigurationController
+ (DBSDisplayZoomConfigurationController)defaultController;
- (id)currentDisplayZoomMode;
- (id)displayZoomModes;
- (void)setDisplayZoomMode:(id)mode withRelaunchURL:(id)l transitionWithScreenshot:(BOOL)screenshot;
@end

@implementation DBSDisplayZoomConfigurationController

+ (DBSDisplayZoomConfigurationController)defaultController
{
  if (defaultController_onceToken != -1)
  {
    +[DBSDisplayZoomConfigurationController defaultController];
  }

  v3 = defaultController__defaultController;

  return v3;
}

uint64_t __58__DBSDisplayZoomConfigurationController_defaultController__block_invoke()
{
  defaultController__defaultController = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)currentDisplayZoomMode
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__DBSDisplayZoomConfigurationController_currentDisplayZoomMode__block_invoke;
  block[3] = &unk_278459558;
  block[4] = self;
  if (currentDisplayZoomMode_onceToken != -1)
  {
    dispatch_once(&currentDisplayZoomMode_onceToken, block);
  }

  return currentDisplayZoomMode__currentDisplayZoomMode;
}

void __63__DBSDisplayZoomConfigurationController_currentDisplayZoomMode__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  if (DBSGetMobileFrameBuffer())
  {
    v2 = 0;
    v1 = 0;
    IOMobileFramebufferGetCanvasSizes();
    v0 = DBSLogForCategory(1uLL);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __63__DBSDisplayZoomConfigurationController_currentDisplayZoomMode__block_invoke_cold_1(v0);
    }
  }
}

- (id)displayZoomModes
{
  if (displayZoomModes_onceToken != -1)
  {
    [DBSDisplayZoomConfigurationController displayZoomModes];
  }

  v3 = displayZoomModes__displayZoomModes;

  return v3;
}

void __57__DBSDisplayZoomConfigurationController_displayZoomModes__block_invoke()
{
  v81 = MGCopyAnswer();
  v0 = [v81 objectForKeyedSubscript:@"default"];
  v1 = [v81 objectForKeyedSubscript:@"zoomed"];
  v2 = [v81 objectForKeyedSubscript:@"dense"];
  v3 = [v81 objectForKeyedSubscript:@"denser"];
  v4 = objc_opt_new();
  if ([v0 count] == 4)
  {
    v5 = [v0 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v7 = v6;

    v8 = [v0 objectAtIndexedSubscript:1];
    [v8 floatValue];
    v10 = v9;

    v11 = [v0 objectAtIndexedSubscript:2];
    [v11 floatValue];
    v13 = v12;

    v14 = [v0 objectAtIndexedSubscript:3];
    [v14 floatValue];
    v16 = v15;

    v17 = [DBSDisplayZoomMode alloc];
    v18 = DBS_LocalizedStringForMagnify(@"STANDARD");
    v19 = [(DBSDisplayZoomMode *)v17 initWithDisplayZoomOption:0 localizedName:v18 size:v7 * v10, v13 * v16];

    v20 = DBSStringForDisplayZoomOption(0);
    [v4 setObject:v19 forKeyedSubscript:v20];
  }

  if ([v1 count] == 4)
  {
    v21 = [v1 objectAtIndexedSubscript:0];
    [v21 floatValue];
    v23 = v22;

    v24 = [v1 objectAtIndexedSubscript:1];
    [v24 floatValue];
    v26 = v25;

    v27 = [v1 objectAtIndexedSubscript:2];
    [v27 floatValue];
    v29 = v28;

    v30 = [v1 objectAtIndexedSubscript:3];
    [v30 floatValue];
    v32 = v31;

    v33 = [DBSDisplayZoomMode alloc];
    v34 = DBS_LocalizedStringForMagnify(@"ZOOMED");
    v35 = [(DBSDisplayZoomMode *)v33 initWithDisplayZoomOption:1 localizedName:v34 size:v23 * v26, v29 * v32];

    v36 = DBSStringForDisplayZoomOption(1);
    [v4 setObject:v35 forKeyedSubscript:v36];
  }

  if (DBSReverseZoomEnabled())
  {
    if ([v2 count] == 4)
    {
      v37 = [v2 objectAtIndexedSubscript:0];
      [v37 floatValue];
      v39 = v38;

      v40 = [v2 objectAtIndexedSubscript:1];
      [v40 floatValue];
      v42 = v41;

      v43 = [v2 objectAtIndexedSubscript:2];
      [v43 floatValue];
      v45 = v44;

      v46 = [v2 objectAtIndexedSubscript:3];
      [v46 floatValue];
      v48 = v47;

      v49 = [DBSDisplayZoomMode alloc];
      v50 = DBS_LocalizedStringForMagnify(@"DENSE");
      v51 = [(DBSDisplayZoomMode *)v49 initWithDisplayZoomOption:2 localizedName:v50 size:v39 * v42, v45 * v48];

      v52 = DBSStringForDisplayZoomOption(2);
      [v4 setObject:v51 forKeyedSubscript:v52];
    }

    if (DBSMostDisplaySpaceEnabled() && [v3 count] == 4)
    {
      v53 = [v3 objectAtIndexedSubscript:0];
      [v53 floatValue];
      v55 = v54;

      v56 = [v3 objectAtIndexedSubscript:1];
      [v56 floatValue];
      v58 = v57;

      v59 = [v3 objectAtIndexedSubscript:2];
      [v59 floatValue];
      v61 = v60;

      v62 = [v3 objectAtIndexedSubscript:3];
      [v62 floatValue];
      v64 = v63;

      v65 = [DBSDisplayZoomMode alloc];
      v66 = DBS_LocalizedStringForMagnify(@"DENSER");
      v67 = [(DBSDisplayZoomMode *)v65 initWithDisplayZoomOption:3 localizedName:v66 size:v55 * v58, v61 * v64];

      v68 = DBSStringForDisplayZoomOption(3);
      [v4 setObject:v67 forKeyedSubscript:v68];
    }
  }

  v69 = DBSStringForDisplayZoomOption(1);
  v70 = [v4 objectForKeyedSubscript:v69];

  v71 = DBSStringForDisplayZoomOption(2);
  v72 = [v4 objectForKeyedSubscript:v71];

  [v70 size];
  v74 = v73;
  v76 = v75;
  [v72 size];
  if (v74 == v78 && v76 == v77)
  {
    v79 = DBSStringForDisplayZoomOption(1);
    [v4 removeObjectForKey:v79];
  }

  v80 = displayZoomModes__displayZoomModes;
  displayZoomModes__displayZoomModes = v4;
}

- (void)setDisplayZoomMode:(id)mode withRelaunchURL:(id)l transitionWithScreenshot:(BOOL)screenshot
{
  v23 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  lCopy = l;
  v9 = DBSLogForCategory(1uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = DBSStringForDisplayZoomOption([modeCopy displayZoomOption]);
    [modeCopy size];
    v11 = NSStringFromCGSize(v24);
    *buf = 136315650;
    v18 = "[DBSDisplayZoomConfigurationController setDisplayZoomMode:withRelaunchURL:transitionWithScreenshot:]";
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_22102E000, v9, OS_LOG_TYPE_DEFAULT, "%s: Setting new canvas size (option: '%{public}@', size: '%{public}@').", buf, 0x20u);
  }

  DBSGetMobileFrameBuffer();
  [modeCopy size];
  IOMobileFramebufferSetCanvasSize();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"DBSMagnifyModeDidChangeNotification", 0, 0, 1u);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__DBSDisplayZoomConfigurationController_setDisplayZoomMode_withRelaunchURL_transitionWithScreenshot___block_invoke;
  v14[3] = &unk_278459758;
  screenshotCopy = screenshot;
  v15 = lCopy;
  v13 = lCopy;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __101__DBSDisplayZoomConfigurationController_setDisplayZoomMode_withRelaunchURL_transitionWithScreenshot___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  v4 = [MEMORY[0x277D66BB8] actionWithReason:@"magnify mode" options:v1 targetURL:*(a1 + 32)];
  v2 = [MEMORY[0x277D0AE18] sharedService];
  v3 = [MEMORY[0x277CBEB98] setWithObject:v4];
  [v2 sendActions:v3 withResult:0];
}

void __63__DBSDisplayZoomConfigurationController_currentDisplayZoomMode__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[DBSDisplayZoomConfigurationController currentDisplayZoomMode]_block_invoke";
  _os_log_error_impl(&dword_22102E000, log, OS_LOG_TYPE_ERROR, "%s: Failed to establish connection to framebuffer (device, no error).", &v1, 0xCu);
}

@end