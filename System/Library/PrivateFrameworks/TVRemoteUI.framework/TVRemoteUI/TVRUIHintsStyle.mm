@interface TVRUIHintsStyle
+ (id)styleProviderForUserInterfaceIdiom:(int64_t)a3 hasHomeButton:(BOOL)a4;
- (TVRUIHintsStyle)initWithHomeButton:(BOOL)a3;
- (double)activationAnimationDismissalDelay;
@end

@implementation TVRUIHintsStyle

+ (id)styleProviderForUserInterfaceIdiom:(int64_t)a3 hasHomeButton:(BOOL)a4
{
  if (a3 == 1)
  {
    v5 = TVRUIHintsStylePad;
    goto LABEL_5;
  }

  if (!a3)
  {
    v5 = TVRUIHintsStylePhone;
LABEL_5:
    v6 = [[v5 alloc] initWithHomeButton:a4];
    goto LABEL_9;
  }

  v7 = _TVRUIHintsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [TVRUIHintsStyle styleProviderForUserInterfaceIdiom:a3 hasHomeButton:v7];
  }

  v6 = objc_alloc_init(TVRUIHintsStylePhone);
LABEL_9:

  return v6;
}

- (TVRUIHintsStyle)initWithHomeButton:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = TVRUIHintsStyle;
  v4 = [(TVRUIHintsStyle *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_hasHomeButton = a3;
    v4->_supportsSBHints = SBSUIHardwareButtonHintViewsSupported();
  }

  return v5;
}

- (double)activationAnimationDismissalDelay
{
  v2 = [(TVRUIHintsStyle *)self supportsSBHints];
  result = 0.13;
  if (v2)
  {
    return 0.25;
  }

  return result;
}

+ (void)styleProviderForUserInterfaceIdiom:(uint64_t)a1 hasHomeButton:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_FAULT, "Unsupported UIUserInterfaceIdiom (%ld) requested! Defaulting to Phone", &v2, 0xCu);
}

@end