@interface KNAnimationUtilsDefaultsTracker
- (KNAnimationUtilsDefaultsTracker)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation KNAnimationUtilsDefaultsTracker

- (KNAnimationUtilsDefaultsTracker)init
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = KNAnimationUtilsDefaultsTracker;
  v3 = [(KNAnimationUtilsDefaultsTracker *)&v20 init];
  if (v3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v21[0] = @"EnableFPSLogging";
    v21[1] = @"EnableDisplayLogging";
    v21[2] = @"ForceDisplayPreferredMode";
    v21[3] = @"KNAnimationMotionBlurEnabled";
    v21[4] = @"ForceMotionBlurOn";
    v21[5] = @"ForceMotionBlurOff";
    v21[6] = @"EnableMotionBlurLogging";
    v21[7] = @"DisableTexturePrecaching";
    v21[8] = @"DisableMetal";
    v21[9] = @"BadgeMetalRendering";
    v21[10] = @"EnableLocalRendering";
    v21[11] = @"DisableDiscreteGPUAquisition";
    v21[12] = @"DisableViewScaling";
    v21[13] = @"EnableAnimationPluginDevelopment";
    v21[14] = @"EnableResponsivenessLogging";
    v21[15] = @"RandomNumberSeedAlwaysRandom";
    v21[16] = @"RandomNumberSeedAlwaysZero";
    v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v21, 17, 0);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v22, 16);
    if (v6)
    {
      v9 = v6;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v7, v8);
          objc_msgSend_addObserver_forKeyPath_options_context_(v13, v14, v3, v12, 0, qword_280A3B1F8);

          ++v11;
        }

        while (v9 != v11);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v22, 16);
      }

      while (v9);
    }
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (qword_280A3B1F8 == context)
  {

    objc_msgSend_updateDefaultsValues(KNAnimationUtils, a2, path, object, change);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = KNAnimationUtilsDefaultsTracker;
    [(KNAnimationUtilsDefaultsTracker *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end