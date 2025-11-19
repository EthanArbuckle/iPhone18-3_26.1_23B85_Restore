@interface WFColor
+ (WFColor)colorWithCGColor:(CGColor *)a3;
+ (WFColor)colorWithDisplayP3Red:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (WFColor)colorWithFocusColorName:(id)a3;
+ (WFColor)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
+ (WFColor)colorWithPaletteColor:(unint64_t)a3;
+ (WFColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (WFColor)colorWithSystemColor:(unint64_t)a3;
+ (WFColor)colorWithWhite:(double)a3 alpha:(double)a4;
+ (id)colorForName:(id)a3;
+ (id)colorNamed:(id)a3 inBundle:(id)a4;
+ (id)tintColorForBundleIdentifier:(id)a3;
+ (id)tintedColorForName:(id)a3;
+ (id)workflowGradientPalette;
+ (id)workflowPalette;
+ (id)workflowPaletteNames;
- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6;
- (BOOL)hasPaletteGradient;
- (BOOL)isCloseToColor:(id)a3;
- (BOOL)isDark;
- (BOOL)isEqual:(id)a3;
- (CGColor)CGColor;
- (NSString)localizedPaletteName;
- (UIColor)UIColor;
- (WFColor)colorWithAlphaComponent:(double)a3;
- (WFColor)initWithCGColor:(CGColor *)a3;
- (WFColor)initWithCoder:(id)a3;
- (WFColor)initWithColorName:(id)a3 inBundle:(id)a4;
- (WFColor)initWithDisplayP3Red:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (WFColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
- (WFColor)initWithPlatformColor:(id)a3;
- (WFColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (WFColor)initWithSerializedRepresentation:(id)a3;
- (WFColor)initWithSystemColor:(unint64_t)a3;
- (WFColor)initWithWhite:(double)a3 alpha:(double)a4;
- (WFGradient)gradient;
- (double)alpha;
- (double)blue;
- (double)green;
- (double)perceivedBrightness;
- (double)red;
- (id)description;
- (id)paletteGradientFallingBackToDefaultGradient:(BOOL)a3;
- (id)serializedRepresentation;
- (unint64_t)hash;
- (unsigned)RGBAValue;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getHue:(double *)a3 saturation:(double *)a4 value:(double *)a5 alpha:(double *)a6;
@end

@implementation WFColor

- (void)dealloc
{
  CGColorRelease(self->_CGColor);
  v3.receiver = self;
  v3.super_class = WFColor;
  [(WFColor *)&v3 dealloc];
}

- (double)alpha
{
  v4 = 0.0;
  v2 = [(WFColor *)self getRed:0 green:0 blue:0 alpha:&v4];
  result = v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (CGColor)CGColor
{
  representationType = self->_representationType;
  v3 = (representationType - 1);
  if (representationType - 1 >= 2)
  {
    if (!representationType)
    {
      return self->_CGColor;
    }

    return v3;
  }

  else
  {
    v4 = [(WFColor *)self platformColor];
    v5 = [v4 CGColor];

    return v5;
  }
}

- (double)red
{
  v4 = 0.0;
  v2 = [(WFColor *)self getRed:&v4 green:0 blue:0 alpha:0];
  result = v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (double)green
{
  v4 = 0.0;
  v2 = [(WFColor *)self getRed:0 green:&v4 blue:0 alpha:0];
  result = v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (double)blue
{
  v4 = 0.0;
  v2 = [(WFColor *)self getRed:0 green:0 blue:&v4 alpha:0];
  result = v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (unsigned)RGBAValue
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (![(WFColor *)self getRed:&v9 green:&v8 blue:&v7 alpha:&v6])
  {
    v3 = os_log_create("com.apple.shortcuts", "General");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v11 = self;
      _os_log_fault_impl(&dword_1B1DE3000, v3, OS_LOG_TYPE_FAULT, "Could not get RGB components from color %{public}@", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return ((v9 * 255.0) << 24) | ((v8 * 255.0) << 16) | ((v7 * 255.0) << 8) | (v6 * 255.0);
}

+ (id)workflowGradientPalette
{
  if (workflowGradientPalette_onceToken != -1)
  {
    dispatch_once(&workflowGradientPalette_onceToken, &__block_literal_global_124);
  }

  v3 = workflowGradientPalette_workflowGradientPalette;

  return v3;
}

- (WFGradient)gradient
{
  if ([(WFColor *)self hasPaletteGradient])
  {
    v3 = [(WFColor *)self paletteGradient];
  }

  else
  {
    [(WFColor *)self red];
    v5 = v4;
    [(WFColor *)self blue];
    v7 = v6;
    [(WFColor *)self green];
    v9 = v8 * 0.7152 + v5 * 0.2126 + v7 * 0.0722;
    v10 = 0.0;
    v11 = 0.7;
    v12 = 0.25;
    if (v9 <= 0.25)
    {
      v12 = 0.2;
    }

    else if (v9 > 0.5)
    {
      v11 = dbl_1B1F367C0[v9 > 0.75];
      if (v9 <= 0.75)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v12 = dbl_1B1F367D0[v9 > 0.75];
    }

    v13 = v5 - (v9 - v5) * 0.2;
    v14 = 1.0 - v13;
    if (v12 < 0.0)
    {
      v14 = v5 - (v9 - v5) * 0.2;
    }

    v15 = v13 + v12 * v14;
    v16 = v7 - (v9 - v7) * 0.2;
    v17 = 1.0 - v16;
    if (v12 < 0.0)
    {
      v17 = v7 - (v9 - v7) * 0.2;
    }

    v18 = v16 + v12 * v17;
    v19 = v8 - (v9 - v8) * 0.2;
    v20 = 1.0 - v19;
    if (v12 < 0.0)
    {
      v20 = v19;
    }

    v21 = v19 + v12 * v20;
    v22 = [WFColor alloc];
    [(WFColor *)self alpha];
    v24 = [(WFColor *)v22 initWithRed:v15 green:v21 blue:v18 alpha:v23];
    v25 = self;
    if (v10 <= v11)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    if (v10 <= v11)
    {
      v27 = v25;
    }

    else
    {
      v27 = v24;
    }

    v28 = v24;
    v3 = [[WFGradient alloc] initWithStartColor:v26 endColor:v27];
  }

  return v3;
}

- (BOOL)hasPaletteGradient
{
  v2 = [(WFColor *)self paletteGradientFallingBackToDefaultGradient:0];
  v3 = v2 != 0;

  return v3;
}

- (UIColor)UIColor
{
  WeakRetained = objc_loadWeakRetained(&self->_platformColor);
  if (!WeakRetained)
  {
    v4 = [(WFColor *)self representationType];
    if (v4)
    {
      if (v4 != 2)
      {
        if (v4 == 1)
        {
          switch([(WFColor *)self systemColor])
          {
            case 0uLL:
              v5 = [(objc_class *)getUIColorClass() clearColor];
              goto LABEL_10;
            case 1uLL:
              v5 = [(objc_class *)getUIColorClass() labelColor];
              goto LABEL_10;
            case 2uLL:
              v5 = [(objc_class *)getUIColorClass() systemRedColor];
              goto LABEL_10;
            case 3uLL:
              v5 = [(objc_class *)getUIColorClass() systemGreenColor];
              goto LABEL_10;
            case 4uLL:
              v5 = [(objc_class *)getUIColorClass() systemBlueColor];
              goto LABEL_10;
            case 5uLL:
              v5 = [(objc_class *)getUIColorClass() systemOrangeColor];
              goto LABEL_10;
            case 6uLL:
              v5 = [(objc_class *)getUIColorClass() systemYellowColor];
              goto LABEL_10;
            case 7uLL:
              v5 = [(objc_class *)getUIColorClass() systemPinkColor];
              goto LABEL_10;
            case 8uLL:
              v5 = [(objc_class *)getUIColorClass() systemPurpleColor];
              goto LABEL_10;
            case 9uLL:
              v5 = [(objc_class *)getUIColorClass() systemTealColor];
              goto LABEL_10;
            case 10uLL:
              v5 = [(objc_class *)getUIColorClass() systemIndigoColor];
              goto LABEL_10;
            case 11uLL:
              v5 = [(objc_class *)getUIColorClass() systemBrownColor];
              goto LABEL_10;
            case 12uLL:
              v5 = [(objc_class *)getUIColorClass() systemMintColor];
              goto LABEL_10;
            case 13uLL:
              v5 = [(objc_class *)getUIColorClass() systemCyanColor];
              goto LABEL_10;
            case 14uLL:
              v5 = [(objc_class *)getUIColorClass() systemGrayColor];
              goto LABEL_10;
            case 15uLL:
              v5 = [(objc_class *)getUIColorClass() secondaryLabelColor];
              goto LABEL_10;
            case 16uLL:
              v5 = [(objc_class *)getUIColorClass() secondarySystemFillColor];
              goto LABEL_10;
            case 17uLL:
              v5 = [(objc_class *)getUIColorClass() secondarySystemBackgroundColor];
              goto LABEL_10;
            case 18uLL:
              v5 = [(objc_class *)getUIColorClass() tertiarySystemBackgroundColor];
              goto LABEL_10;
            case 19uLL:
              v5 = [(objc_class *)getUIColorClass() systemGroupedBackgroundColor];
              goto LABEL_10;
            case 20uLL:
              v5 = [(objc_class *)getUIColorClass() tertiarySystemGroupedBackgroundColor];
              goto LABEL_10;
            case 21uLL:
              v5 = [(objc_class *)getUIColorClass() whiteColor];
              goto LABEL_10;
            case 22uLL:
              v5 = [(objc_class *)getUIColorClass() blackColor];
              goto LABEL_10;
            default:
              break;
          }
        }

        WeakRetained = 0;
        goto LABEL_11;
      }

      v5 = [(objc_class *)getUIColorClass() colorNamed:self->_colorName inBundle:self->_bundle compatibleWithTraitCollection:0];
    }

    else
    {
      v5 = [objc_alloc(getUIColorClass()) initWithCGColor:{-[WFColor CGColor](self, "CGColor")}];
    }

LABEL_10:
    WeakRetained = v5;
LABEL_11:
    objc_storeWeak(&self->_platformColor, WeakRetained);
  }

  v6 = WeakRetained;

  return v6;
}

void __51__WFColor_WorkflowPalette__workflowGradientPalette__block_invoke()
{
  v18[15] = *MEMORY[0x1E69E9840];
  v17 = WFWorkflowGradientFromRGBA(3881920767, 3680263423, 3260237823, 3125427711);
  v18[0] = v17;
  v16 = WFWorkflowGradientFromRGBA(4035143167, 3950730239, 3226876415, 3008246527);
  v18[1] = v16;
  v15 = WFWorkflowGradientFromRGBA(3953481727, 3869068543, 2825198335, 2707297279);
  v18[2] = v15;
  v14 = WFWorkflowGradientFromRGBA(4038803711, 3736876031, 2827687423, 2238516735);
  v18[3] = v14;
  v13 = WFWorkflowGradientFromRGBA(1707237887, 1488475391, 997931519, 930821375);
  v18[4] = v13;
  v0 = WFWorkflowGradientFromRGBA(717727999, 650093055, 343237119, 258890751);
  v18[5] = v0;
  v1 = WFWorkflowGradientFromRGBA(1051521279, 1992222463, 224894975, 106729983);
  v18[6] = v1;
  v2 = WFWorkflowGradientFromRGBA(998242303, 998438911, 406836735, 1520105727);
  v18[7] = v2;
  v3 = WFWorkflowGradientFromRGBA(1113307391, 1113307391, 224894975, 106729983);
  v18[8] = v3;
  v4 = WFWorkflowGradientFromRGBA(2018359551, 1816373503, 1412728319, 1244623871);
  v18[9] = v4;
  v5 = WFWorkflowGradientFromRGBA(2893339903, 2674380799, 2119996671, 1850574335);
  v18[10] = v5;
  v6 = WFWorkflowGradientFromRGBA(3867791103, 3648635135, 2992140543, 2705809407);
  v18[11] = v6;
  v7 = WFWorkflowGradientFromRGBA(2156499967, 2038598911, 1600548607, 1364878335);
  v18[12] = v7;
  v8 = WFWorkflowGradientFromRGBA(2376241151, 2376241151, 1954379007, 1752393983);
  v18[13] = v8;
  v9 = WFWorkflowGradientFromRGBA(2727046911, 2946071807, 2138534911, 2154983167);
  v18[14] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:15];
  v11 = workflowGradientPalette_workflowGradientPalette;
  workflowGradientPalette_workflowGradientPalette = v10;

  v12 = *MEMORY[0x1E69E9840];
}

void __43__WFColor_WorkflowPalette__workflowPalette__block_invoke()
{
  v18[15] = *MEMORY[0x1E69E9840];
  v17 = [WFColor colorWithRGBAValue:4282601983];
  v18[0] = v17;
  v16 = [WFColor colorWithRGBAValue:4251333119];
  v18[1] = v16;
  v15 = [WFColor colorWithRGBAValue:4271458815];
  v18[2] = v15;
  v14 = [WFColor colorWithRGBAValue:4274264319];
  v18[3] = v14;
  v13 = [WFColor colorWithRGBAValue:4292093695];
  v18[4] = v13;
  v0 = [WFColor colorWithRGBAValue:431817727];
  v18[5] = v0;
  v1 = [WFColor colorWithRGBAValue:1440408063];
  v18[6] = v1;
  v2 = [WFColor colorWithRGBAValue:463140863];
  v18[7] = v2;
  v3 = [WFColor colorWithRGBAValue:946986751];
  v18[8] = v3;
  v4 = [WFColor colorWithRGBAValue:2071128575];
  v18[9] = v4;
  v5 = [WFColor colorWithRGBAValue:3679049983];
  v18[10] = v5;
  v6 = [WFColor colorWithRGBAValue:3980825855];
  v18[11] = v6;
  v7 = [WFColor colorWithRGBAValue:255];
  v18[12] = v7;
  v8 = [WFColor colorWithRGBAValue:3031607807];
  v18[13] = v8;
  v9 = [WFColor colorWithRGBAValue:2846468607];
  v18[14] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:15];
  v11 = workflowPalette_workflowPalette;
  workflowPalette_workflowPalette = v10;

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)workflowPalette
{
  if (workflowPalette_onceToken != -1)
  {
    dispatch_once(&workflowPalette_onceToken, &__block_literal_global_72);
  }

  v3 = workflowPalette_workflowPalette;

  return v3;
}

- (NSString)localizedPaletteName
{
  v3 = +[WFColor workflowPalette];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__WFColor_WorkflowPalette__localizedPaletteName__block_invoke;
  v7[3] = &unk_1E7B00878;
  v7[4] = self;
  v4 = [v3 if_compactMap:v7];
  v5 = [v4 firstObject];

  return v5;
}

id __48__WFColor_WorkflowPalette__localizedPaletteName__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) isEqual:a2])
  {
    v4 = +[WFColor workflowPaletteNames];
    v5 = [v4 objectAtIndex:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)paletteGradientFallingBackToDefaultGradient:(BOOL)a3
{
  v3 = a3;
  if (paletteGradientFallingBackToDefaultGradient__onceToken != -1)
  {
    dispatch_once(&paletteGradientFallingBackToDefaultGradient__onceToken, &__block_literal_global_5170);
  }

  v5 = paletteGradientFallingBackToDefaultGradient__colorToGradientIndexMapping;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[WFColor RGBAValue](self, "RGBAValue")}];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [objc_opt_class() workflowGradientPalette];
    v9 = [v8 objectAtIndex:{objc_msgSend(v7, "unsignedIntegerValue")}];
LABEL_7:
    v10 = v9;

    goto LABEL_8;
  }

  if (v3)
  {
    v8 = [objc_opt_class() workflowGradientPalette];
    v9 = [v8 lastObject];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

void __72__WFColor_WorkflowPalette__paletteGradientFallingBackToDefaultGradient___block_invoke()
{
  v4[16] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F2930D68;
  v3[1] = &unk_1F2930D98;
  v4[0] = &unk_1F2930D80;
  v4[1] = &unk_1F2930DB0;
  v3[2] = &unk_1F2930DC8;
  v3[3] = &unk_1F2930DF8;
  v4[2] = &unk_1F2930DE0;
  v4[3] = &unk_1F2930E10;
  v3[4] = &unk_1F2930E28;
  v3[5] = &unk_1F2930E58;
  v4[4] = &unk_1F2930E40;
  v4[5] = &unk_1F2930E70;
  v3[6] = &unk_1F2930E88;
  v3[7] = &unk_1F2930EA0;
  v4[6] = &unk_1F2930E70;
  v4[7] = &unk_1F2930EB8;
  v3[8] = &unk_1F2930ED0;
  v3[9] = &unk_1F2930F00;
  v4[8] = &unk_1F2930EE8;
  v4[9] = &unk_1F2930F18;
  v3[10] = &unk_1F2930F30;
  v3[11] = &unk_1F2930F60;
  v4[10] = &unk_1F2930F48;
  v4[11] = &unk_1F2930F78;
  v3[12] = &unk_1F2930F90;
  v3[13] = &unk_1F2930FC0;
  v4[12] = &unk_1F2930FA8;
  v4[13] = &unk_1F2930FD8;
  v3[14] = &unk_1F2930FF0;
  v3[15] = &unk_1F2931020;
  v4[14] = &unk_1F2931008;
  v4[15] = &unk_1F2931038;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:16];
  v1 = paletteGradientFallingBackToDefaultGradient__colorToGradientIndexMapping;
  paletteGradientFallingBackToDefaultGradient__colorToGradientIndexMapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (WFColor)colorWithPaletteColor:(unint64_t)a3
{
  v4 = [a1 workflowPalette];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

+ (id)workflowPaletteNames
{
  v20[15] = *MEMORY[0x1E69E9840];
  v19 = WFLocalizedString(@"Red");
  v20[0] = v19;
  v18 = WFLocalizedString(@"Orange");
  v20[1] = v18;
  v17 = WFLocalizedString(@"Tangerine");
  v20[2] = v17;
  v16 = WFLocalizedString(@"Yellow");
  v20[3] = v16;
  v15 = WFLocalizedString(@"Lime");
  v20[4] = v15;
  v14 = WFLocalizedString(@"Teal");
  v20[5] = v14;
  v2 = WFLocalizedString(@"Cyan");
  v20[6] = v2;
  v3 = WFLocalizedString(@"Blue");
  v20[7] = v3;
  v4 = WFLocalizedString(@"Navy");
  v20[8] = v4;
  v5 = WFLocalizedString(@"Grape");
  v20[9] = v5;
  v6 = WFLocalizedString(@"Purple");
  v20[10] = v6;
  v7 = WFLocalizedString(@"Pink");
  v20[11] = v7;
  v8 = WFLocalizedString(@"Gray Blue");
  v20[12] = v8;
  v9 = WFLocalizedString(@"Gray Green");
  v20[13] = v9;
  v10 = WFLocalizedString(@"Gray Brown");
  v20[14] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:15];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 encodeInteger:-[WFColor representationType](self forKey:{"representationType"), @"representationType"}];
  v5 = [(WFColor *)self representationType];
  if (v5)
  {
    if (v5 == 1)
    {
      [v4 encodeInteger:-[WFColor systemColor](self forKey:{"systemColor"), @"systemColor"}];
    }

    else if (v5 == 2)
    {
      v6 = [(WFColor *)self colorName];
      [v4 encodeObject:v6 forKey:@"colorName"];

      v7 = [(WFColor *)self bundle];
      v8 = [v7 bundleURL];
      [v4 encodeObject:v8 forKey:@"bundle"];
    }
  }

  else
  {
    v16 = 0.0;
    v17 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    if ([(WFColor *)self getRed:&v17 green:&v16 blue:&v15 alpha:&v14])
    {
      [v4 encodeDouble:@"redComponent" forKey:v17];
      [v4 encodeDouble:@"greenComponent" forKey:v16];
      [v4 encodeDouble:@"blueComponent" forKey:v15];
      [v4 encodeDouble:@"alphaComponent" forKey:v14];
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = WFColorErrorDomain;
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"Unable to convert color to RGB color space for serialization";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v12 = [v9 errorWithDomain:v10 code:1 userInfo:v11];
      [v4 failWithError:v12];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (WFColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"representationType"];
  if (!v5)
  {
    if (![v4 containsValueForKey:@"redComponent"] || !objc_msgSend(v4, "containsValueForKey:", @"greenComponent") || !objc_msgSend(v4, "containsValueForKey:", @"blueComponent") || !objc_msgSend(v4, "containsValueForKey:", @"alphaComponent"))
    {
      goto LABEL_15;
    }

    [v4 decodeDoubleForKey:@"redComponent"];
    v13 = v12;
    [v4 decodeDoubleForKey:@"greenComponent"];
    v15 = v14;
    [v4 decodeDoubleForKey:@"blueComponent"];
    v17 = v16;
    [v4 decodeDoubleForKey:@"alphaComponent"];
    v11 = [(WFColor *)self initWithRed:v13 green:v15 blue:v17 alpha:v18];
LABEL_9:
    self = v11;
    v10 = self;
    goto LABEL_18;
  }

  if (v5 == 1)
  {
    v11 = -[WFColor initWithSystemColor:](self, "initWithSystemColor:", [v4 decodeIntegerForKey:@"systemColor"]);
    goto LABEL_9;
  }

  if (v5 != 2)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_18;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithURL:v7];
    v9 = v8;
    v10 = 0;
    if (v6 && v8)
    {
      self = [(WFColor *)self initWithColorName:v6 inBundle:v8];
      v10 = self;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

LABEL_18:
  return v10;
}

- (unint64_t)hash
{
  v2 = [(WFColor *)self CGColor];

  return CFHash(v2);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if ([(WFColor *)self systemColor]&& [(WFColor *)v9 systemColor])
    {
      v10 = [(WFColor *)self systemColor];
      LOBYTE(v8) = v10 == [(WFColor *)v9 systemColor];
    }

    else
    {
      v11 = [(WFColor *)v9 CGColor];
      if (v9)
      {
        v12 = v11;
        ColorSpace = CGColorGetColorSpace([(WFColor *)self CGColor]);
        v14 = CGColorGetColorSpace(v12);
        LOBYTE(v8) = 0;
        if (ColorSpace && v14)
        {
          if (CGColorSpaceEqualToColorSpace())
          {
            LOBYTE(v8) = CGColorEqualToColor([(WFColor *)self CGColor], v12);
          }

          else
          {
            v8 = MEMORY[0x1B273E3E0](ColorSpace, 0);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __19__WFColor_isEqual___block_invoke;
            aBlock[3] = &__block_descriptor_40_e5_v8__0l;
            aBlock[4] = v8;
            v15 = _Block_copy(aBlock);
            if (v8)
            {
              v8 = CGColorTransformConvertColor();
              v18[0] = MEMORY[0x1E69E9820];
              v18[1] = 3221225472;
              v18[2] = __19__WFColor_isEqual___block_invoke_2;
              v18[3] = &__block_descriptor_40_e5_v8__0l;
              v18[4] = v8;
              v16 = _Block_copy(v18);
              if (v8)
              {
                LOBYTE(v8) = CGColorEqualToColor([(WFColor *)self CGColor], v8);
              }

              v16[2](v16);
            }

            v15[2](v15);
          }
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

  return v8;
}

- (id)serializedRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(WFColor *)self representationType];
  v5 = @"WFColorRepresentationTypeName";
  if (v4 == 1)
  {
    v5 = @"WFColorRepresentationTypeSystem";
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"WFColorRepresentationTypeCGColor";
  }

  [v3 setObject:v6 forKeyedSubscript:@"WFColorRepresentationType"];
  v7 = [(WFColor *)self representationType];
  if (!v7)
  {
    v26 = 0.0;
    v27 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    [(WFColor *)self getRed:&v27 green:&v26 blue:&v25 alpha:&v24];
    HIDWORD(v14) = HIDWORD(v27);
    *&v14 = v27;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    [v3 setObject:v15 forKeyedSubscript:@"redComponent"];

    HIDWORD(v16) = HIDWORD(v26);
    *&v16 = v26;
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    [v3 setObject:v17 forKeyedSubscript:@"greenComponent"];

    HIDWORD(v18) = HIDWORD(v25);
    *&v18 = v25;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    [v3 setObject:v19 forKeyedSubscript:@"blueComponent"];

    HIDWORD(v20) = HIDWORD(v24);
    *&v20 = v24;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
    v21 = @"alphaComponent";
LABEL_15:
    [v3 setObject:v9 forKeyedSubscript:v21];
    goto LABEL_16;
  }

  if (v7 == 1)
  {
    v12 = [(WFColor *)self systemColor];
    if (v12 > 0x16)
    {
      v13 = 0;
    }

    else
    {
      v13 = off_1E7B01768[v12];
    }

    v9 = v13;
    v21 = @"WFSystemColor";
    goto LABEL_15;
  }

  if (v7 != 2)
  {
    goto LABEL_17;
  }

  v8 = [(WFColor *)self colorName];
  [v3 setObject:v8 forKeyedSubscript:@"WFColorName"];

  v9 = [(WFColor *)self bundle];
  v10 = [(__CFString *)v9 bundleURL];
  v11 = [v10 absoluteString];
  [v3 setObject:v11 forKeyedSubscript:@"WFBundleURL"];

LABEL_16:
LABEL_17:
  v22 = [v3 copy];

  return v22;
}

- (WFColor)initWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"WFColorRepresentationType"];
  if ([v5 isEqualToString:@"WFColorRepresentationTypeName"])
  {

    v6 = [v4 objectForKeyedSubscript:@"WFColorName"];
    v7 = [v4 objectForKeyedSubscript:@"WFBundleURL"];
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    if (v8)
    {
      v9 = [MEMORY[0x1E696AAE8] bundleWithURL:v8];
      v10 = v9;
      v11 = 0;
      if (v6 && v9)
      {
        self = [(WFColor *)self initWithColorName:v6 inBundle:v9];
        v11 = self;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    if ([v5 isEqualToString:@"WFColorRepresentationTypeSystem"])
    {

      v12 = [v4 objectForKeyedSubscript:@"WFSystemColor"];
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v15 = v13 > 0x16 ? 0 : off_1E7B01768[v13];
        v16 = v15;

        if (([(__CFString *)v16 isEqualToString:v12]& 1) != 0)
        {
          break;
        }

        ++v13;
        v14 = v16;
        if (!v16)
        {
          v13 = 1;
          break;
        }
      }

      v17 = [(WFColor *)self initWithSystemColor:v13];
    }

    else
    {
      [v5 isEqualToString:@"WFColorRepresentationTypeCGColor"];

      v18 = [v4 objectForKeyedSubscript:@"redComponent"];
      [v18 floatValue];
      v20 = v19;

      v21 = [v4 objectForKeyedSubscript:@"greenComponent"];
      [v21 floatValue];
      v23 = v22;

      v24 = [v4 objectForKeyedSubscript:@"blueComponent"];
      [v24 floatValue];
      v26 = v25;

      v27 = [v4 objectForKeyedSubscript:@"alphaComponent"];
      [v27 floatValue];
      v29 = v28;

      v17 = [(WFColor *)self initWithRed:v20 green:v23 blue:v26 alpha:v29];
    }

    self = v17;
    v11 = self;
  }

  return v11;
}

- (double)perceivedBrightness
{
  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v4 = 0;
  v2 = [(WFColor *)self getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  result = 0.0;
  if (v2)
  {
    return v6 * 0.587 + v7 * 0.299 + v5 * 0.114;
  }

  return result;
}

- (BOOL)isDark
{
  v3 = 0.0;
  [(WFColor *)self getHue:0 saturation:0 value:&v3 alpha:0];
  return v3 < 0.5;
}

- (BOOL)isCloseToColor:(id)a3
{
  v13 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0.0;
  v4 = a3;
  [(WFColor *)self getHue:&v13 saturation:&v12 value:&v11 alpha:0];
  [v4 getHue:&v10 saturation:&v9 value:&v8 alpha:0];

  if (vabdd_f64(v12, v9) > 0.0399999991 || vabdd_f64(v11, v8) > 0.0399999991)
  {
    return 0;
  }

  v6 = v13;
  v7 = v10;
  if (vabdd_f64(v13, v10) <= 0.0399999991)
  {
    return 1;
  }

  if (v13 < 0.0399999991)
  {
    v6 = v13 + 1.0;
  }

  if (v10 < 0.0399999991)
  {
    v7 = v10 + 1.0;
  }

  return vabdd_f64(v6, v7) <= 0.0399999991;
}

- (void)getHue:(double *)a3 saturation:(double *)a4 value:(double *)a5 alpha:(double *)a6
{
  v10 = [(WFColor *)self platformColor];
  [v10 getHue:a3 saturation:a4 brightness:a5 alpha:a6];
}

- (WFColor)colorWithAlphaComponent:(double)a3
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha([(WFColor *)self CGColor], a3);
  v4 = [[WFColor alloc] initWithCGColor:CopyWithAlpha];
  CGColorRelease(CopyWithAlpha);

  return v4;
}

- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = [(WFColor *)self CGColor];
  if (v10)
  {
    v11 = v10;
    Components = CGColorGetComponents(v10);
    Alpha = CGColorGetAlpha(v11);
    ColorSpace = CGColorGetColorSpace(v11);
    if (Components)
    {
      v25 = 0u;
      v26 = 0u;
      v15 = CGColorSpaceGetName(ColorSpace);
      v16 = v15;
      if (v15)
      {
        v17 = Components + 1;
        v18 = Components + 2;
        v19 = Components + 3;
        if ([v15 isEqualToString:*MEMORY[0x1E695F1C0]])
        {
          goto LABEL_11;
        }

        v20 = *MEMORY[0x1E695F110];
        if ([v16 isEqualToString:*MEMORY[0x1E695F110]])
        {
          v19 = Components + 3;
          goto LABEL_11;
        }
      }

      else
      {
        v20 = *MEMORY[0x1E695F110];
      }

      v22 = CGColorSpaceCreateWithName(v20);
      MEMORY[0x1B273E3E0](v22, 0);
      CGColorSpaceRelease(v22);
      if (!CGColorTransformConvertColorComponents())
      {
        CGColorTransformRelease();
        v21 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v17 = &v25 + 1;
      v18 = &v26;
      *(&v26 + 1) = Alpha;
      v19 = &v26 + 1;
      CGColorTransformRelease();
      Components = &v25;
LABEL_11:
      if (a3)
      {
        *a3 = *Components;
      }

      if (a4)
      {
        *a4 = *v17;
      }

      if (a5)
      {
        *a5 = *v18;
      }

      if (a6)
      {
        *a6 = *v19;
      }

      v21 = 1;
      goto LABEL_21;
    }
  }

  v21 = 0;
LABEL_22:
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(WFColor *)self red];
  v5 = v4;
  [(WFColor *)self green];
  v7 = v6;
  [(WFColor *)self blue];
  return [v3 stringWithFormat:@"Red:%f Green:%f Blue:%f", v5, v7, v8];
}

- (WFColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  v7 = [objc_alloc(getUIColorClass()) initWithHue:fmax(fmin(a3 saturation:1.0) brightness:0.0) alpha:{fmax(fmin(a4, 1.0), 0.0), fmax(fmin(a5, 1.0), 0.0), a6}];
  v8 = [(WFColor *)self initWithPlatformColor:v7];

  return v8;
}

- (WFColor)initWithColorName:(id)a3 inBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = WFColor;
  v8 = [(WFColor *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_representationType = 2;
    v10 = [v6 copy];
    colorName = v9->_colorName;
    v9->_colorName = v10;

    objc_storeStrong(&v9->_bundle, a4);
    v12 = v9;
  }

  return v9;
}

- (WFColor)initWithSystemColor:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFColor;
  v4 = [(WFColor *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_representationType = 1;
    v4->_systemColor = a3;
    v6 = v4;
  }

  return v5;
}

- (WFColor)initWithPlatformColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];

  return [(WFColor *)self initWithCGColor:v6];
}

- (WFColor)initWithDisplayP3Red:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  v8.f64[0] = a3;
  v8.f64[1] = a4;
  __asm { FMOV            V1.2D, #1.0 }

  v14.f64[0] = a5;
  v14.f64[1] = a6;
  *components = vbicq_s8(vbslq_s8(vcgtq_f64(v8, _Q1), _Q1, v8), vcltzq_f64(v8));
  v24 = vbicq_s8(vbslq_s8(vcgtq_f64(v14, _Q1), _Q1, v14), vcltzq_f64(v14));
  v15 = CGColorCreate(v7, components);
  v16 = [(WFColor *)self initWithCGColor:v15];
  CGColorSpaceRelease(v7);
  CGColorRelease(v15);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (WFColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  components[4] = *MEMORY[0x1E69E9840];
  v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  v12 = v11;
  components[0] = a3;
  components[1] = a4;
  v13 = 1.0;
  if (a6 <= 1.0)
  {
    v13 = a6;
  }

  if (a6 < 0.0)
  {
    v13 = 0.0;
  }

  components[2] = a5;
  components[3] = v13;
  v14 = CGColorCreate(v11, components);
  v15 = [(WFColor *)self initWithCGColor:v14];
  CGColorSpaceRelease(v12);
  CGColorRelease(v14);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (WFColor)initWithWhite:(double)a3 alpha:(double)a4
{
  components[2] = *MEMORY[0x1E69E9840];
  v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0E0]);
  v8 = v7;
  v9 = 1.0;
  if (a4 <= 1.0)
  {
    v9 = a4;
  }

  if (a4 < 0.0)
  {
    v9 = 0.0;
  }

  components[0] = a3;
  components[1] = v9;
  v10 = CGColorCreate(v7, components);
  v11 = [(WFColor *)self initWithCGColor:v10];
  CGColorSpaceRelease(v8);
  CGColorRelease(v10);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (WFColor)initWithCGColor:(CGColor *)a3
{
  if (!a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFColor.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"CGColor"}];
  }

  v11.receiver = self;
  v11.super_class = WFColor;
  v5 = [(WFColor *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_representationType = 0;
    v5->_CGColor = CGColorRetain(a3);
    v7 = v6;
  }

  return v6;
}

+ (id)tintedColorForName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.WorkflowKit"];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"Red"])
  {
    v6 = @"systemRedTint";
LABEL_9:
    v7 = [WFColor colorNamed:v6 inBundle:v5];
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"Green"])
  {
    v6 = @"systemGreenTint";
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"Blue"])
  {
    v6 = @"systemBlueTint";
    goto LABEL_9;
  }

  v9 = [a1 colorForName:v4];
  v7 = [v9 colorWithAlphaComponent:0.1];

LABEL_10:

  return v7;
}

+ (id)colorForName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Black"])
  {
    v4 = +[WFColor blackColor];
LABEL_18:
    v6 = v4;
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"White"])
  {
    v4 = +[WFColor whiteColor];
    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"Label"])
  {
    v5 = 1;
LABEL_17:
    v4 = [WFColor colorWithSystemColor:v5];
    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"Red"])
  {
    v5 = 2;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Green"])
  {
    v5 = 3;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Blue"])
  {
    v5 = 4;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Orange"])
  {
    v5 = 5;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Yellow"])
  {
    v5 = 6;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Yellow_Accessibility"])
  {
    v4 = [WFColor colorWithRed:1.0 green:0.720000029 blue:0.0 alpha:1.0];
    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"Pink"])
  {
    v5 = 7;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Purple"])
  {
    v5 = 8;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Teal"])
  {
    v5 = 9;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Indigo"])
  {
    v5 = 10;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Brown"])
  {
    v5 = 11;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Mint"])
  {
    v5 = 12;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Cyan"])
  {
    v5 = 13;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Gray"])
  {
    v5 = 14;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Clear"])
  {
    v4 = +[WFColor clearColor];
    goto LABEL_18;
  }

  v6 = 0;
LABEL_19:

  return v6;
}

+ (WFColor)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  v6 = [[WFColor alloc] initWithHue:a3 saturation:a4 brightness:a5 alpha:a6];

  return v6;
}

+ (id)colorNamed:(id)a3 inBundle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[WFColor alloc] initWithColorName:v6 inBundle:v5];

  return v7;
}

+ (WFColor)colorWithSystemColor:(unint64_t)a3
{
  v3 = [[WFColor alloc] initWithSystemColor:a3];

  return v3;
}

+ (WFColor)colorWithDisplayP3Red:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[WFColor alloc] initWithDisplayP3Red:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (WFColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[WFColor alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (WFColor)colorWithWhite:(double)a3 alpha:(double)a4
{
  v4 = [[WFColor alloc] initWithWhite:a3 alpha:a4];

  return v4;
}

+ (WFColor)colorWithCGColor:(CGColor *)a3
{
  v3 = [[WFColor alloc] initWithCGColor:a3];

  return v3;
}

+ (WFColor)colorWithFocusColorName:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (colorWithFocusColorName__onceToken != -1)
  {
    dispatch_once(&colorWithFocusColorName__onceToken, &__block_literal_global_19076);
  }

  v4 = [colorWithFocusColorName__colorMapping objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = +[WFColor colorWithSystemColor:](WFColor, "colorWithSystemColor:", [v4 unsignedIntValue]);
  }

  else
  {
    v7 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315394;
      v11 = "+[WFColor(Focus) colorWithFocusColorName:]";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1B1DE3000, v7, OS_LOG_TYPE_FAULT, "%s Given a Focus color (%@), but we couldn't map it to a WFColor. Are there new Focus colors?", &v10, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

void __42__WFColor_Focus__colorWithFocusColorName___block_invoke()
{
  v0 = colorWithFocusColorName__colorMapping;
  colorWithFocusColorName__colorMapping = &unk_1F29317E0;
}

+ (id)tintColorForBundleIdentifier:(id)a3
{
  v3 = tintColorForBundleIdentifier__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&tintColorForBundleIdentifier__onceToken, &__block_literal_global_135);
  }

  v5 = [tintColorForBundleIdentifier__bundleIdentifierMapping objectForKeyedSubscript:v4];

  return v5;
}

void __63__WFColor_IconicSymbolUtilities__tintColorForBundleIdentifier___block_invoke()
{
  v15[11] = *MEMORY[0x1E69E9840];
  v14[0] = @"com.apple.mobiletimer";
  v13 = [WFColor colorWithSystemColor:5];
  v15[0] = v13;
  v14[1] = @"com.apple.iBooks";
  v0 = [WFColor colorWithSystemColor:5];
  v15[1] = v0;
  v14[2] = @"com.apple.mobilenotes";
  v1 = [WFColor colorWithSystemColor:6];
  v15[2] = v1;
  v14[3] = @"com.apple.Pages";
  v2 = [WFColor colorWithSystemColor:5];
  v15[3] = v2;
  v14[4] = @"com.apple.Numbers";
  v3 = [WFColor colorWithSystemColor:3];
  v15[4] = v3;
  v14[5] = @"com.apple.Keynote";
  v4 = [WFColor colorWithRed:0.15 green:0.74 blue:1.0 alpha:1.0];
  v15[5] = v4;
  v14[6] = @"com.apple.podcasts";
  v5 = [WFColor colorWithSystemColor:8];
  v15[6] = v5;
  v14[7] = @"com.apple.mobilephone";
  v6 = [WFColor colorWithSystemColor:3];
  v15[7] = v6;
  v14[8] = @"com.apple.facetime";
  v7 = [WFColor colorWithSystemColor:3];
  v15[8] = v7;
  v14[9] = @"com.apple.Music";
  v8 = [WFColor colorWithRed:1.0 green:0.38 blue:0.47 alpha:1.0];
  v15[9] = v8;
  v14[10] = @"com.shazam.Shazam";
  v9 = [WFColor colorWithSystemColor:4];
  v15[10] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:11];
  v11 = tintColorForBundleIdentifier__bundleIdentifierMapping;
  tintColorForBundleIdentifier__bundleIdentifierMapping = v10;

  v12 = *MEMORY[0x1E69E9840];
}

@end