@interface VUIAccessibility
+ (BOOL)contentSizeCategoryIsAccessibility:(unint64_t)accessibility;
+ (BOOL)isAXLargeEnabled:(unint64_t)enabled;
+ (BOOL)isAXSmallEnabled:(unint64_t)enabled;
+ (BOOL)isFeatureEnabled:(int64_t)enabled;
+ (id)makeAccessibilityIdentifierString:(id)string additionalString:(id)additionalString;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__didChangeAccessibilityVoiceOverStatus name:*MEMORY[0x277D765F0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__didChangeAccessibilityReduceMotionStatus name:*MEMORY[0x277D764C0] object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIAccessibility;
  [(VUIAccessibility *)&v4 dealloc];
}

+ (BOOL)isFeatureEnabled:(int64_t)enabled
{
  if (enabled <= 2)
  {
    if (enabled)
    {
      if (enabled == 1)
      {

        return UIAccessibilityIsReduceMotionEnabled();
      }

      else
      {
        if (enabled != 2)
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
    if (enabled <= 4)
    {
      if (enabled != 3)
      {
        mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
        preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
        v3 = preferredContentSizeCategory != 0;

        return v3;
      }

      v7 = _AXSFullKeyboardAccessEnabled();
      return v7 != 0;
    }

    if (enabled != 5)
    {
      if (enabled != 6)
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"VUIAccessibilityVoiceOverStatusDidChangeNotification" object:0];
}

- (void)_didChangeAccessibilityReduceMotionStatus
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"VUIAccessibilityReduceMotionStatusDidChangeNotification" object:0];
}

+ (BOOL)contentSizeCategoryIsAccessibility:(unint64_t)accessibility
{
  v3 = [VUICoreUtilities uiContentSizeCategoryFor:accessibility];
  v4 = v3;
  if (!v3 || [v3 isEqual:*MEMORY[0x277D76860]])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    v4 = preferredContentSizeCategory;
  }

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  return IsAccessibilityCategory;
}

+ (BOOL)isAXSmallEnabled:(unint64_t)enabled
{
  v3 = [VUICoreUtilities uiContentSizeCategoryFor:enabled];
  v4 = v3;
  if (!v3 || [v3 isEqual:*MEMORY[0x277D76860]])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    v4 = preferredContentSizeCategory;
  }

  v8 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76818]) == NSOrderedDescending && UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D767F8]) == NSOrderedAscending;

  return v8;
}

+ (BOOL)isAXLargeEnabled:(unint64_t)enabled
{
  v3 = [VUICoreUtilities uiContentSizeCategoryFor:enabled];
  v4 = v3;
  if (!v3 || [v3 isEqual:*MEMORY[0x277D76860]])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    v4 = preferredContentSizeCategory;
  }

  v8 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76800]) == NSOrderedDescending;

  return v8;
}

+ (id)makeAccessibilityIdentifierString:(id)string additionalString:(id)additionalString
{
  stringCopy = string;
  additionalStringCopy = additionalString;
  v7 = additionalStringCopy;
  if (!additionalStringCopy)
  {
    stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Accessibility:: no additionalString for %@. Using Default", stringCopy];
    NSLog(&stru_2880D38B0.isa, stringCopy);

    v7 = @"Default";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@.%@", @"UIA.TV.", stringCopy, v7];

  return v9;
}

@end