@interface CALayer(SUICCAUtilities)
- (__CFString)_suic_additiveAnimationKeyPrefixForKeyPath:()SUICCAUtilities;
- (id)_suic_addAdditiveAnimation:()SUICCAUtilities withKeyPath:;
- (id)_suic_nextAdditiveAnimationKeyWithKeyPath:()SUICCAUtilities;
@end

@implementation CALayer(SUICCAUtilities)

- (__CFString)_suic_additiveAnimationKeyPrefixForKeyPath:()SUICCAUtilities
{
  v3 = a3;
  v4 = @"com.apple.VoiceShorcutsUI.additive";
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.VoiceShorcutsUI.additive", v3];
  }

  return v4;
}

- (id)_suic_nextAdditiveAnimationKeyWithKeyPath:()SUICCAUtilities
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_getAssociatedObject(a1, &_SUICAdditiveAnimationKeyPrefix);
  v6 = [v5 unsignedIntegerValue];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a1 animationKeys];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if ([*(*(&v17 + 1) + 8 * v11) hasPrefix:@"com.apple.VoiceShorcutsUI.additive"])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [a1 _suic_additiveAnimationKeyPrefixForKeyPath:v4];
  v14 = [v12 stringWithFormat:@"%@.%lu", v13, v6];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 1];
  objc_setAssociatedObject(a1, &_SUICAdditiveAnimationKeyPrefix, v15, 0x303);

  return v14;
}

- (id)_suic_addAdditiveAnimation:()SUICCAUtilities withKeyPath:
{
  if (a3)
  {
    v6 = a3;
    v7 = [a1 _suic_nextAdditiveAnimationKeyWithKeyPath:a4];
    [a1 addAnimation:v6 forKey:v7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end