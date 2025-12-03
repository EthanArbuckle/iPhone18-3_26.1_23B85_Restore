@interface WFLinkMusicRecognitionRecognizeMusicAction
- (id)sessionKitToastDurationsPerRunSourceDefinition;
@end

@implementation WFLinkMusicRecognitionRecognizeMusicAction

- (id)sessionKitToastDurationsPerRunSourceDefinition
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E13E8];
  v9[0] = *MEMORY[0x1E69E1380];
  v9[1] = v2;
  v10[0] = &unk_1F4A9A2A0;
  v10[1] = &unk_1F4A9A2A0;
  v9[2] = *MEMORY[0x1E69E13E0];
  v10[2] = &unk_1F4A9A2B8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  if (([currentDevice hasSystemAperture] & 1) == 0)
  {
    v5 = [v3 mutableCopy];
    [v5 setObject:&unk_1F4A9A2A0 forKey:*MEMORY[0x1E69E1368]];
    [v5 setObject:&unk_1F4A9A2A0 forKey:*MEMORY[0x1E69E1420]];
    v6 = [v5 copy];

    v3 = v6;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

@end