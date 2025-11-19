@interface SBUIApplyDisplayEdgeInfo
@end

@implementation SBUIApplyDisplayEdgeInfo

void ___SBUIApplyDisplayEdgeInfo_block_invoke()
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v0 = getSBHScreenTypeForCurrentDeviceSymbolLoc_ptr;
  v13 = getSBHScreenTypeForCurrentDeviceSymbolLoc_ptr;
  if (!getSBHScreenTypeForCurrentDeviceSymbolLoc_ptr)
  {
    v1 = SpringBoardHomeLibrary();
    v11[3] = dlsym(v1, "SBHScreenTypeForCurrentDevice");
    getSBHScreenTypeForCurrentDeviceSymbolLoc_ptr = v11[3];
    v0 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v0)
  {
    ___SBUIApplyDisplayEdgeInfo_block_invoke_cold_2();
  }

  v2 = v0();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = getSBHDisplayCornerRadiusForScreenTypeSymbolLoc_ptr;
  v13 = getSBHDisplayCornerRadiusForScreenTypeSymbolLoc_ptr;
  if (!getSBHDisplayCornerRadiusForScreenTypeSymbolLoc_ptr)
  {
    v4 = SpringBoardHomeLibrary();
    v11[3] = dlsym(v4, "SBHDisplayCornerRadiusForScreenType");
    getSBHDisplayCornerRadiusForScreenTypeSymbolLoc_ptr = v11[3];
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    ___SBUIApplyDisplayEdgeInfo_block_invoke_cold_1();
  }

  v5 = v3(v2);
  v6 = [MEMORY[0x1E69DEBC0] sbh_displayEdgeInfoForScreenType:v2];
  v7 = _SBUIApplyDisplayEdgeInfo_displayEdgeInfo;
  _SBUIApplyDisplayEdgeInfo_displayEdgeInfo = v6;

  v8 = [objc_alloc(MEMORY[0x1E698E668]) initWithCornerRadius:v5];
  v9 = _SBUIApplyDisplayEdgeInfo_cornerRadiusConfiguration;
  _SBUIApplyDisplayEdgeInfo_cornerRadiusConfiguration = v8;
}

void ___SBUIApplyDisplayEdgeInfo_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGFloat getSBHDisplayCornerRadiusForScreenType(SBHScreenType)"];
  [v0 handleFailureInFunction:v1 file:@"SBUIAccessorySceneManager.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

void ___SBUIApplyDisplayEdgeInfo_block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SBHScreenType getSBHScreenTypeForCurrentDevice(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBUIAccessorySceneManager.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

@end