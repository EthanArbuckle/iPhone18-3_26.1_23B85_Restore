@interface SBSystemNotesScreenshotter
- (id)takeScreenshotOfDisplay:(id)display;
@end

@implementation SBSystemNotesScreenshotter

- (id)takeScreenshotOfDisplay:(id)display
{
  v24[6] = *MEMORY[0x277D85DE8];
  displayCopy = display;
  if ([displayCopy isMainDisplay])
  {
    activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
  }

  else
  {
    windowSceneManager = [SBApp windowSceneManager];
    v6 = [windowSceneManager windowSceneForDisplayIdentity:displayCopy];

    [v6 _referenceBounds];
    if (v7 > v8)
    {
      activeInterfaceOrientation = 1;
    }

    else
    {
      activeInterfaceOrientation = 3;
    }
  }

  uIScreen = [displayCopy UIScreen];

  v10 = *MEMORY[0x277D77728];
  v24[0] = uIScreen;
  v11 = *MEMORY[0x277D776F0];
  v23[0] = v10;
  v23[1] = v11;
  v12 = MEMORY[0x277CCABB0];
  traitCollection = [uIScreen traitCollection];
  v14 = [v12 numberWithInteger:{objc_msgSend(traitCollection, "displayGamut")}];
  v15 = *MEMORY[0x277D77700];
  v24[1] = v14;
  v24[2] = MEMORY[0x277CBEC28];
  v16 = *MEMORY[0x277D77708];
  v23[2] = v15;
  v23[3] = v16;
  v17 = MEMORY[0x277CCABB0];
  [uIScreen scale];
  v18 = [v17 numberWithDouble:?];
  v24[3] = v18;
  v23[4] = *MEMORY[0x277D77718];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:activeInterfaceOrientation];
  v23[5] = *MEMORY[0x277D77710];
  v24[4] = v19;
  v24[5] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];

  v21 = _UIRenderDisplay();

  return v21;
}

@end