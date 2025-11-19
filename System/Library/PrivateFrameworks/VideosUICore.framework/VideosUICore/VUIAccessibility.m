@interface VUIAccessibility
+ (BOOL)contentSizeCategoryIsAccessibility:(unint64_t)a3;
+ (BOOL)isAXLargeEnabled:(unint64_t)a3;
+ (BOOL)isAXSmallEnabled:(unint64_t)a3;
+ (BOOL)isFeatureEnabled:(int64_t)a3;
+ (id)makeAccessibilityIdentifierString:(id)a3 additionalString:(id)a4;
+ (id)sharedInstance;
- (VUIAccessibility)init;
- (void)_addObserverToAccessibilityNotifications;
- (void)_didChangeAccessibilityReduceMotionStatus;
- (void)_didChangeAccessibilityVoiceOverStatus;
- (void)dealloc;
@end

@implementation VUIAccessibility

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[VUIAccessibility sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __34__VUIAccessibility_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(VUIAccessibility);

  return MEMORY[0x2821F96F8]();
}

- (VUIAccessibility)init
{
  v5.receiver = self;
  v5.super_class = VUIAccessibility;
  v2 = [(VUIAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VUIAccessibility *)v2 _addObserverToAccessibilityNotifications];
  }

  return v3;
}

- (void)_addObserverToAccessibilityNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__didChangeAccessibilityVoiceOverStatus name:*MEMORY[0x277D765F0] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__didChangeAccessibilityReduceMotionStatus name:*MEMORY[0x277D764C0] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIAccessibility;
  [(VUIAccessibility *)&v4 dealloc];
}

+ (BOOL)isFeatureEnabled:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {

        return UIAccessibilityIsReduceMotionEnabled();
      }

      else
      {
        if (a3 != 2)
        {
          return v3;
        }

        return UIAccessibilityIsSwitchControlRunning();
      }
    }

    else
    {

      return UIAccessibilityIsVoiceOverRunning();
    }
  }

  else
  {
    if (a3 <= 4)
    {
      if (a3 != 3)
      {
        v4 = [MEMORY[0x277D75128] sharedApplication];
        v5 = [v4 preferredContentSizeCategory];
        v3 = v5 != 0;

        return v3;
      }

      v7 = _AXSFullKeyboardAccessEnabled();
      return v7 != 0;
    }

    if (a3 != 5)
    {
      if (a3 != 6)
      {
        return v3;
      }

      v7 = _AXSEnhanceBackgroundContrastEnabled();
      return v7 != 0;
    }

    return UIAccessibilityIsVideoAutoplayEnabled();
  }
}

- (void)_didChangeAccessibilityVoiceOverStatus
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"VUIAccessibilityVoiceOverStatusDidChangeNotification" object:0];
}

- (void)_didChangeAccessibilityReduceMotionStatus
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"VUIAccessibilityReduceMotionStatusDidChangeNotification" object:0];
}

+ (BOOL)contentSizeCategoryIsAccessibility:(unint64_t)a3
{
  v3 = [VUICoreUtilities uiContentSizeCategoryFor:a3];
  v4 = v3;
  if (!v3 || [v3 isEqual:*MEMORY[0x277D76860]])
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    v6 = [v5 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v4 = v7;
  }

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  return IsAccessibilityCategory;
}

+ (BOOL)isAXSmallEnabled:(unint64_t)a3
{
  v3 = [VUICoreUtilities uiContentSizeCategoryFor:a3];
  v4 = v3;
  if (!v3 || [v3 isEqual:*MEMORY[0x277D76860]])
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    v6 = [v5 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v4 = v7;
  }

  v8 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76818]) == NSOrderedDescending && UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D767F8]) == NSOrderedAscending;

  return v8;
}

+ (BOOL)isAXLargeEnabled:(unint64_t)a3
{
  v3 = [VUICoreUtilities uiContentSizeCategoryFor:a3];
  v4 = v3;
  if (!v3 || [v3 isEqual:*MEMORY[0x277D76860]])
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    v6 = [v5 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v4 = v7;
  }

  v8 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76800]) == NSOrderedDescending;

  return v8;
}

+ (id)makeAccessibilityIdentifierString:(id)a3 additionalString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accessibility:: no additionalString for %@. Using Default", v5];
    NSLog(&stru_2880D38B0.isa, v8);

    v7 = @"Default";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@.%@", @"UIA.TV.", v5, v7];

  return v9;
}

@end