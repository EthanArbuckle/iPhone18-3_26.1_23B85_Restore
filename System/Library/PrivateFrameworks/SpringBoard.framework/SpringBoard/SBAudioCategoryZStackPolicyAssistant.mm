@interface SBAudioCategoryZStackPolicyAssistant
- (id)observedSceneSettings;
- (int64_t)resolveProposedPoliciesForForegroundScenes:(id)scenes;
- (uint64_t)audioCategoriesDisablingVolumeHUD;
@end

@implementation SBAudioCategoryZStackPolicyAssistant

- (uint64_t)audioCategoriesDisablingVolumeHUD
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (id)observedSceneSettings
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE60] valueWithPointer:NSSelectorFromString(&cfstr_Audiocategorie.isa)];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (int64_t)resolveProposedPoliciesForForegroundScenes:(id)scenes
{
  v25 = *MEMORY[0x277D85DE8];
  scenesCopy = scenes;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [scenesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(scenesCopy);
        }

        clientSettings = [*(*(&v20 + 1) + 8 * v8) clientSettings];
        v11 = objc_opt_self();
        v12 = clientSettings;
        if (v11)
        {
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        audioCategoriesDisablingVolumeHUD = [v14 audioCategoriesDisablingVolumeHUD];

        if (audioCategoriesDisablingVolumeHUD)
        {
          v16 = [MEMORY[0x277CBEB98] setWithArray:audioCategoriesDisablingVolumeHUD];
        }

        else
        {
          v16 = 0;
        }

        v6 = SBFAudioCategoriesDisablingVolumeHUDUnion();

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [scenesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (BSEqualSets())
  {
    v17 = 0;
  }

  else
  {
    objc_storeStrong(&self->_audioCategoriesDisablingVolumeHUD, v6);
    v17 = 1;
  }

  return v17;
}

@end