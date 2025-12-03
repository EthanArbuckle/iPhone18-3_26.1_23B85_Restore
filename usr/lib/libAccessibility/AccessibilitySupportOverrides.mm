@interface AccessibilitySupportOverrides
+ (id)shared;
- (void)_addFilter:(id)filter;
- (void)_installGrayscaleFilter;
- (void)_installInvertColorsFilter;
- (void)_removeFilterWithName:(id)name;
- (void)setBoldText:(id)text;
- (void)setButtonShapes:(id)shapes;
- (void)setDifferentiateWithoutColor:(id)color;
- (void)setGrayscale:(id)grayscale;
- (void)setIncreaseContrast:(id)contrast;
- (void)setOnOffLabels:(id)labels;
- (void)setReduceMotion:(id)motion;
- (void)setReduceTransparency:(id)transparency;
- (void)setSmartInvert:(id)invert;
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

- (void)setBoldText:(id)text
{
  textCopy = text;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AccessibilitySupportOverrides_setBoldText___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = textCopy;
  v5 = textCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __45__AccessibilitySupportOverrides_setBoldText___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSEnhanceTextLegibilityChangedNotification object:0];
}

- (void)setReduceMotion:(id)motion
{
  motionCopy = motion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AccessibilitySupportOverrides_setReduceMotion___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = motionCopy;
  v5 = motionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __49__AccessibilitySupportOverrides_setReduceMotion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSReduceMotionChangedNotification object:0];
}

- (void)setReduceTransparency:(id)transparency
{
  transparencyCopy = transparency;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AccessibilitySupportOverrides_setReduceTransparency___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = transparencyCopy;
  v5 = transparencyCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __55__AccessibilitySupportOverrides_setReduceTransparency___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSEnhanceBackgroundContrastChangedNotification object:0];
}

- (void)setIncreaseContrast:(id)contrast
{
  contrastCopy = contrast;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AccessibilitySupportOverrides_setIncreaseContrast___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = contrastCopy;
  v5 = contrastCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __53__AccessibilitySupportOverrides_setIncreaseContrast___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSDarkenSystemColorsEnabledNotification object:0];
}

- (void)setOnOffLabels:(id)labels
{
  labelsCopy = labels;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AccessibilitySupportOverrides_setOnOffLabels___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = labelsCopy;
  v5 = labelsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __48__AccessibilitySupportOverrides_setOnOffLabels___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSIncreaseButtonLegibilityNotification object:0];
}

- (void)setGrayscale:(id)grayscale
{
  grayscaleCopy = grayscale;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AccessibilitySupportOverrides_setGrayscale___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = grayscaleCopy;
  v5 = grayscaleCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __46__AccessibilitySupportOverrides_setGrayscale___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  [*(a1 + 32) _installGrayscaleFilter];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:kAXSGrayscaleEnabledNotification object:0];
}

- (void)setSmartInvert:(id)invert
{
  invertCopy = invert;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AccessibilitySupportOverrides_setSmartInvert___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = invertCopy;
  v5 = invertCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __48__AccessibilitySupportOverrides_setSmartInvert___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  [*(a1 + 32) _installInvertColorsFilter];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:kAXSInvertColorsEnabledNotification object:0];
}

- (void)setButtonShapes:(id)shapes
{
  shapesCopy = shapes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AccessibilitySupportOverrides_setButtonShapes___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = shapesCopy;
  v5 = shapesCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __49__AccessibilitySupportOverrides_setButtonShapes___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSButtonShapesEnabledNotification object:0];
}

- (void)setDifferentiateWithoutColor:(id)color
{
  colorCopy = color;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__AccessibilitySupportOverrides_setDifferentiateWithoutColor___block_invoke;
  v6[3] = &unk_1E6F453C0;
  v6[4] = self;
  v7 = colorCopy;
  v5 = colorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __62__AccessibilitySupportOverrides_setDifferentiateWithoutColor___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:kAXSDifferentiateWithoutColorChangedNotification object:0];
}

- (void)_addFilter:(id)filter
{
  v14[1] = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  nSClassFromString(&cfstr_Uiapplication.isa) = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  keyWindow = [nSClassFromString(&cfstr_Uiapplication.isa) keyWindow];
  layer = [keyWindow layer];

  filters = [layer filters];
  if (filters)
  {
    v8 = filters;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__AccessibilitySupportOverrides__addFilter___block_invoke;
    v12[3] = &unk_1E6F453E8;
    v9 = filterCopy;
    v13 = v9;
    if ([v8 indexOfObjectPassingTest:v12] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v8 arrayByAddingObject:v9];

      v8 = v10;
    }
  }

  else
  {
    v14[0] = filterCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  [layer setValue:v8 forKey:@"filters"];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __44__AccessibilitySupportOverrides__addFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_removeFilterWithName:(id)name
{
  nameCopy = name;
  nSClassFromString(&cfstr_Uiapplication.isa) = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  keyWindow = [nSClassFromString(&cfstr_Uiapplication.isa) keyWindow];
  layer = [keyWindow layer];

  filters = [layer filters];
  if (filters)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__AccessibilitySupportOverrides__removeFilterWithName___block_invoke;
    v11[3] = &unk_1E6F453E8;
    v12 = nameCopy;
    v8 = [filters indexOfObjectPassingTest:v11];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = [filters mutableCopy];
      [v10 removeObjectAtIndex:v9];
      [layer setValue:v10 forKey:@"filters"];
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
  smartInvert = [(AccessibilitySupportOverrides *)self smartInvert];
  bOOLValue = [smartInvert BOOLValue];

  if (bOOLValue)
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
  grayscale = [(AccessibilitySupportOverrides *)self grayscale];
  bOOLValue = [grayscale BOOLValue];

  if (bOOLValue)
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