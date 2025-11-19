@interface SBSystemNotesScreenshotter
- (id)takeScreenshotOfDisplay:(id)a3;
@end

@implementation SBSystemNotesScreenshotter

- (id)takeScreenshotOfDisplay:(id)a3
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isMainDisplay])
  {
    v4 = [SBApp activeInterfaceOrientation];
  }

  else
  {
    v5 = [SBApp windowSceneManager];
    v6 = [v5 windowSceneForDisplayIdentity:v3];

    [v6 _referenceBounds];
    if (v7 > v8)
    {
      v4 = 1;
    }

    else
    {
      v4 = 3;
    }
  }

  v9 = [v3 UIScreen];

  v10 = *MEMORY[0x277D77728];
  v24[0] = v9;
  v11 = *MEMORY[0x277D776F0];
  v23[0] = v10;
  v23[1] = v11;
  v12 = MEMORY[0x277CCABB0];
  v13 = [v9 traitCollection];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "displayGamut")}];
  v15 = *MEMORY[0x277D77700];
  v24[1] = v14;
  v24[2] = MEMORY[0x277CBEC28];
  v16 = *MEMORY[0x277D77708];
  v23[2] = v15;
  v23[3] = v16;
  v17 = MEMORY[0x277CCABB0];
  [v9 scale];
  v18 = [v17 numberWithDouble:?];
  v24[3] = v18;
  v23[4] = *MEMORY[0x277D77718];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v23[5] = *MEMORY[0x277D77710];
  v24[4] = v19;
  v24[5] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];

  v21 = _UIRenderDisplay();

  return v21;
}

@end