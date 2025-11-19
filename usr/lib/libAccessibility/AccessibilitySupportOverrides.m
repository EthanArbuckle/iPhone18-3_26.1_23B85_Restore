@interface AccessibilitySupportOverrides
+ (id)shared;
- (void)_addFilter:(id)a3;
- (void)_installGrayscaleFilter;
- (void)_installInvertColorsFilter;
- (void)_removeFilterWithName:(id)a3;
- (void)setBoldText:(id)a3;
- (void)setButtonShapes:(id)a3;
- (void)setDifferentiateWithoutColor:(id)a3;
- (void)setGrayscale:(id)a3;
- (void)setIncreaseContrast:(id)a3;
- (void)setOnOffLabels:(id)a3;
- (void)setReduceMotion:(id)a3;
- (void)setReduceTransparency:(id)a3;
- (void)setSmartInvert:(id)a3;
@end

@implementation AccessibilitySupportOverrides

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[AccessibilitySupportOverrides shared];
  }

  v3 = shared_Shared;

  return v3;
}

uint64_t __39__AccessibilitySupportOverrides_shared__block_invoke()
{
  shared_Shared = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)setBoldText:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AccessibilitySupportOverrides_setBoldText___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __45__AccessibilitySupportOverrides_setBoldText___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSEnhanceTextLegibilityChangedNotification object:0];
}

- (void)setReduceMotion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AccessibilitySupportOverrides_setReduceMotion___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __49__AccessibilitySupportOverrides_setReduceMotion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSReduceMotionChangedNotification object:0];
}

- (void)setReduceTransparency:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AccessibilitySupportOverrides_setReduceTransparency___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __55__AccessibilitySupportOverrides_setReduceTransparency___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSEnhanceBackgroundContrastChangedNotification object:0];
}

- (void)setIncreaseContrast:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AccessibilitySupportOverrides_setIncreaseContrast___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __53__AccessibilitySupportOverrides_setIncreaseContrast___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSDarkenSystemColorsEnabledNotification object:0];
}

- (void)setOnOffLabels:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AccessibilitySupportOverrides_setOnOffLabels___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __48__AccessibilitySupportOverrides_setOnOffLabels___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSIncreaseButtonLegibilityNotification object:0];
}

- (void)setGrayscale:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AccessibilitySupportOverrides_setGrayscale___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __46__AccessibilitySupportOverrides_setGrayscale___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  [*(a1 + 32) _installGrayscaleFilter];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:kAXSGrayscaleEnabledNotification object:0];
}

- (void)setSmartInvert:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AccessibilitySupportOverrides_setSmartInvert___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __48__AccessibilitySupportOverrides_setSmartInvert___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  [*(a1 + 32) _installInvertColorsFilter];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:kAXSInvertColorsEnabledNotification object:0];
}

- (void)setButtonShapes:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AccessibilitySupportOverrides_setButtonShapes___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __49__AccessibilitySupportOverrides_setButtonShapes___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSButtonShapesEnabledNotification object:0];
}

- (void)setDifferentiateWithoutColor:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__AccessibilitySupportOverrides_setDifferentiateWithoutColor___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __62__AccessibilitySupportOverrides_setDifferentiateWithoutColor___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSDifferentiateWithoutColorChangedNotification object:0];
}

- (void)_addFilter:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v5 = [v4 keyWindow];
  v6 = [v5 layer];

  v7 = [v6 filters];
  if (v7)
  {
    v8 = v7;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__AccessibilitySupportOverrides__addFilter___block_invoke;
    v12[3] = &unk_1E6F453E8;
    v9 = v3;
    v13 = v9;
    if ([v8 indexOfObjectPassingTest:v12] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v8 arrayByAddingObject:v9];

      v8 = v10;
    }
  }

  else
  {
    v14[0] = v3;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  [v6 setValue:v8 forKey:@"filters"];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __44__AccessibilitySupportOverrides__addFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_removeFilterWithName:(id)a3
{
  v3 = a3;
  v4 = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v5 = [v4 keyWindow];
  v6 = [v5 layer];

  v7 = [v6 filters];
  if (v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__AccessibilitySupportOverrides__removeFilterWithName___block_invoke;
    v11[3] = &unk_1E6F453E8;
    v12 = v3;
    v8 = [v7 indexOfObjectPassingTest:v11];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = [v7 mutableCopy];
      [v10 removeObjectAtIndex:v9];
      [v6 setValue:v10 forKey:@"filters"];
    }
  }
}

uint64_t __55__AccessibilitySupportOverrides__removeFilterWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_installInvertColorsFilter
{
  v3 = [(AccessibilitySupportOverrides *)self smartInvert];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [NSClassFromString(&cfstr_Cafilter.isa) filterWithType:@"colorInvert"];
    [v5 setName:@"colorInvert"];
    [v5 setAccessibility:1];
    [(AccessibilitySupportOverrides *)self _addFilter:v5];
  }

  else
  {

    [(AccessibilitySupportOverrides *)self _removeFilterWithName:@"colorInvert"];
  }
}

- (void)_installGrayscaleFilter
{
  v3 = [(AccessibilitySupportOverrides *)self grayscale];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [NSClassFromString(&cfstr_Cafilter.isa) filterWithType:@"colorMonochrome"];
    [v5 setName:@"colorMonochrome"];
    [v5 setAccessibility:1];
    [(AccessibilitySupportOverrides *)self _addFilter:v5];
  }

  else
  {

    [(AccessibilitySupportOverrides *)self _removeFilterWithName:@"colorMonochrome"];
  }
}

@end