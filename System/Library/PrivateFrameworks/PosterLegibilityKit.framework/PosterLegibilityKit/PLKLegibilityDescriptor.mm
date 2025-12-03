@interface PLKLegibilityDescriptor
+ (id)defaultLegibilityDescriptorForStyle:(unint64_t)style;
+ (id)legibilityDescriptorForEnvironmentContext:(id)context;
+ (id)legibilityDescriptorForSettings:(id)settings strength:(double)strength;
+ (id)legibilityDescriptorForUILegibilitySettings:(id)settings strength:(double)strength;
+ (id)performanceLegibilityDescriptorForStyle:(unint64_t)style options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLegibilityDescriptor:(id)descriptor;
- (PLKLegibilityDescriptor)initWithForegroundContentDescriptor:(id)descriptor backgroundContentDescriptor:(id)contentDescriptor;
- (PLKLegibilityDescriptor)initWithStyle:(unint64_t)style foregroundContentDescriptor:(id)descriptor backgroundContentDescriptor:(id)contentDescriptor;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)effectiveUILegibilitySettings:(double *)settings;
- (id)succinctDescription;
@end

@implementation PLKLegibilityDescriptor

+ (id)performanceLegibilityDescriptorForStyle:(unint64_t)style options:(unint64_t)options
{
  if ((options & 2) != 0)
  {
    if (performanceLegibilityDescriptorForStyle_options__onceTokenNoVibrant != -1)
    {
      +[PLKLegibilityDescriptor performanceLegibilityDescriptorForStyle:options:];
    }

    v5 = &performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsNoVibrant;
  }

  else
  {
    if (performanceLegibilityDescriptorForStyle_options__onceTokenDefault != -1)
    {
      +[PLKLegibilityDescriptor performanceLegibilityDescriptorForStyle:options:];
    }

    v5 = &performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsDefault;
  }

  v6 = *v5;
  v7 = v6;
  if (style <= 1)
  {
    styleCopy = style;
  }

  else
  {
    styleCopy = 0;
  }

  v9 = [v6 objectAtIndexedSubscript:styleCopy];

  return v9;
}

void __75__PLKLegibilityDescriptor_performanceLegibilityDescriptorForStyle_options___block_invoke()
{
  v20[3] = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEBD0] plk_overridePerfDescriptorScale];
  v1 = v0;
  if (BSFloatIsZero())
  {
    v1 = 0.4;
  }

  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v3 = [PLKShadowDescriptor shadowWithRadius:8.0 offset:0.0 alpha:1.0 strength:0.76563, 0.400000006];
  v4 = [PLKShadowDescriptor shadowWithRadius:4.0 offset:0.0 alpha:1.0 strength:0.58619, 0.400000006, v3];
  v20[1] = v4;
  v5 = [PLKShadowDescriptor shadowWithRadius:2.0 offset:0.0 alpha:1.0 strength:1.0, 0.400000006];
  v20[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v7)
    {
      v10 = [MEMORY[0x277D75348] blackColor];
      v11 = 2;
    }

    else
    {
      v10 = [MEMORY[0x277D75348] whiteColor];
      v11 = 1;
    }

    v12 = [(PLKLegibilityContentDescriptor *)PLKLegibilityForegroundContentDescriptor contentDescriptorForColor:v10];

    v13 = [MEMORY[0x277D760A8] sharedInstanceForStyle:v11];
    v14 = [v13 shadowColor];

    v15 = [PLKLegibilityBackgroundContentDescriptor contentDescriptorForColor:v14 shadows:v6 renderScale:v1];
    v16 = [[PLKLegibilityDescriptor alloc] initWithStyle:v7 foregroundContentDescriptor:v12 backgroundContentDescriptor:v15];
    [v2 addObject:v16];

    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  v17 = [v2 copy];
  v18 = performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsNoVibrant;
  performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsNoVibrant = v17;

  v19 = *MEMORY[0x277D85DE8];
}

void __75__PLKLegibilityDescriptor_performanceLegibilityDescriptorForStyle_options___block_invoke_2()
{
  v38[3] = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEBD0] plk_overridePerfDescriptorScale];
  v1 = v0;
  if (BSFloatIsZero())
  {
    v1 = 0.4;
  }

  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v3 = [PLKShadowDescriptor shadowWithRadius:8.0 offset:0.0 alpha:1.0 strength:0.76563, 1.0];
  v38[0] = v3;
  v4 = [PLKShadowDescriptor shadowWithRadius:4.0 offset:0.0 alpha:1.0 strength:0.58619, 1.0];
  v38[1] = v4;
  v5 = [PLKShadowDescriptor shadowWithRadius:2.0 offset:0.0 alpha:1.0 strength:1.0, 1.0];
  v38[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];

  v7 = 0;
  v8 = 1;
  v29 = v1;
  do
  {
    v9 = v8;
    if (v7)
    {
      v10 = [MEMORY[0x277D75348] blackColor];
      v11 = [(PLKLegibilityContentDescriptor *)PLKLegibilityForegroundContentDescriptor contentDescriptorForColor:v10];

      v33 = xmmword_21E5F3C90;
      v34 = xmmword_21E5F3CA0;
      v35 = xmmword_21E5F3CB0;
      v36 = xmmword_21E5F3CC0;
      v37 = xmmword_21E5F3CD0;
    }

    else
    {
      if (v8)
      {
        v12 = 1.646;
      }

      else
      {
        v12 = 0.858;
      }

      if (v8)
      {
        v13 = -1.192;
      }

      else
      {
        v13 = -0.477;
      }

      if (v8)
      {
        v14 = -0.12;
      }

      else
      {
        v14 = -0.048;
      }

      if (v8)
      {
        v15 = 0.067;
      }

      else
      {
        v15 = 0.467;
      }

      if (v8)
      {
        v16 = -0.354;
      }

      else
      {
        v16 = -0.142;
      }

      if (v8)
      {
        v17 = 0.808;
      }

      else
      {
        v17 = 0.523;
      }

      if (v8)
      {
        v18 = 1.88;
      }

      else
      {
        v18 = 0.952;
      }

      v19 = -0.575;
      if (v8)
      {
        v19 = 0.213;
      }

      v32 = v19;
      v20 = 0.43;
      if (v8)
      {
        v20 = 0.715;
      }

      v30 = v18;
      v31 = v20;
      if (v8)
      {
        v21 = 0.072;
      }

      else
      {
        v21 = -0.856;
      }

      if (v8)
      {
        v22 = -0.4;
      }

      else
      {
        v22 = 0.75;
      }

      v23 = [MEMORY[0x277D75348] whiteColor];
      v11 = [(PLKLegibilityContentDescriptor *)PLKLegibilityForegroundContentDescriptor contentDescriptorForColor:v23];

      *&v33 = __PAIR64__(LODWORD(v13), LODWORD(v12));
      *(&v33 + 1) = LODWORD(v14);
      *&v34 = __PAIR64__(LODWORD(v16), LODWORD(v15));
      *(&v34 + 1) = __PAIR64__(LODWORD(v14), LODWORD(v17));
      LODWORD(v35) = 0;
      *(&v35 + 4) = __PAIR64__(LODWORD(v16), LODWORD(v15));
      *(&v35 + 3) = v13;
      *&v36 = LODWORD(v30);
      *(&v36 + 1) = __PAIR64__(LODWORD(v32), LODWORD(v15));
      *&v37 = __PAIR64__(LODWORD(v21), LODWORD(v31));
      v1 = v29;
      *(&v37 + 1) = LODWORD(v22);
    }

    v24 = [PLKLegibilityBackgroundContentDescriptor contentDescriptorForVibrantColorMatrix:&v33 shadows:v6 renderScale:v1];
    v25 = [[PLKLegibilityDescriptor alloc] initWithStyle:v7 foregroundContentDescriptor:v11 backgroundContentDescriptor:v24];
    [v2 addObject:v25];

    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  v26 = [v2 copy];
  v27 = performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsDefault;
  performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsDefault = v26;

  v28 = *MEMORY[0x277D85DE8];
}

+ (id)defaultLegibilityDescriptorForStyle:(unint64_t)style
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PLKLegibilityDescriptor_defaultLegibilityDescriptorForStyle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultLegibilityDescriptorForStyle__onceToken != -1)
  {
    dispatch_once(&defaultLegibilityDescriptorForStyle__onceToken, block);
  }

  if (style <= 1)
  {
    styleCopy = style;
  }

  else
  {
    styleCopy = 0;
  }

  v5 = [defaultLegibilityDescriptorForStyle__legibilityDescriptors objectAtIndexedSubscript:styleCopy];

  return v5;
}

void __63__PLKLegibilityDescriptor_defaultLegibilityDescriptorForStyle___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v2 = [[PLKLegibilityEnvironmentVariantContext alloc] initWithStyle:0];
  v3 = [*(a1 + 32) legibilityDescriptorForEnvironmentContext:v2];
  [v8 addObject:v3];

  v4 = [[PLKLegibilityEnvironmentVariantContext alloc] initWithStyle:1];
  v5 = [*(a1 + 32) legibilityDescriptorForEnvironmentContext:v4];
  [v8 addObject:v5];

  v6 = [v8 copy];
  v7 = defaultLegibilityDescriptorForStyle__legibilityDescriptors;
  defaultLegibilityDescriptorForStyle__legibilityDescriptors = v6;
}

+ (id)legibilityDescriptorForEnvironmentContext:(id)context
{
  v43[4] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  style = [contextCopy style];
  if (style <= 1)
  {
    v5 = style;
  }

  else
  {
    v5 = 0;
  }

  v6 = [PLKShadowDescriptor shadowWithRadius:16.0 offset:0.0 alpha:1.0, 0.76563];
  v43[0] = v6;
  v7 = [PLKShadowDescriptor shadowWithRadius:8.0 offset:0.0 alpha:1.0, 0.66993];
  v43[1] = v7;
  v8 = [PLKShadowDescriptor shadowWithRadius:4.0 offset:0.0 alpha:1.0, 0.58619];
  v43[2] = v8;
  v9 = [PLKShadowDescriptor shadowWithRadius:2.0 offset:0.0 alpha:1.0, 1.0];
  v43[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];

  if (v5 == 1)
  {
    v12 = 0xBF5B22D13EDC28F6;
    v13 = 0x3F05E354BE116873;
    v14 = 0.75;
    v15 = -1119577178;
    v16 = 1062970851;
    [contextCopy primaryColor];
  }

  else
  {
    v12 = 0x3D9374BC3F370A3DLL;
    v13 = 0x3F4ED917BEB53F7DLL;
    v14 = -0.4;
    v15 = -1107967345;
    v16 = 1070772257;
    [contextCopy primaryColor];
  }
  v17 = ;
  secondaryColor = [contextCopy secondaryColor];
  v19 = [PLKLegibilityForegroundContentDescriptor contentDescriptorForPrimaryColor:v17 secondaryColor:secondaryColor];
  v32[0] = v16;
  v32[1] = v30;
  v32[2] = v15;
  v32[3] = 0;
  v32[4] = v31.i32[0];
  v33 = v13;
  v34 = v15;
  v35 = 0;
  v36 = vzip1_s32(v31, v13);
  v37 = v30;
  v38 = 0;
  v39 = v31;
  v40 = v12;
  v41 = v14;
  v42 = 0;
  v20 = [PLKLegibilityBackgroundContentDescriptor contentDescriptorForVibrantColorMatrix:v32 shadows:v10];
  v21 = [[PLKLegibilityDescriptor alloc] initWithStyle:v5 foregroundContentDescriptor:v19 backgroundContentDescriptor:v20];
  primaryColor = v21->_primaryColor;
  v21->_primaryColor = v17;
  v23 = v17;

  secondaryColor = v21->_secondaryColor;
  v21->_secondaryColor = secondaryColor;
  v25 = secondaryColor;

  backgroundColor = [contextCopy backgroundColor];

  backgroundColor = v21->_backgroundColor;
  v21->_backgroundColor = backgroundColor;

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)legibilityDescriptorForSettings:(id)settings strength:(double)strength
{
  v30[1] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  primaryColor = [settingsCopy primaryColor];
  secondaryColor = [settingsCopy secondaryColor];
  v8 = [PLKLegibilityForegroundContentDescriptor contentDescriptorForPrimaryColor:primaryColor secondaryColor:secondaryColor];
  [settingsCopy shadowRadius];
  v10 = v9;
  shadowColor = [settingsCopy shadowColor];
  v12 = shadowColor;
  if (shadowColor)
  {
    blackColor = shadowColor;
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v14 = blackColor;

  [settingsCopy shadowAlpha];
  strength = [PLKShadowDescriptor shadowWithRadius:v10 offset:0.0 alpha:0.0 strength:v15, strength];
  v30[0] = strength;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v18 = [PLKLegibilityBackgroundContentDescriptor contentDescriptorForColor:v14 shadows:v17 renderScale:0.200000003];

  style = [settingsCopy style];
  if (style > 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = **(&unk_27835B6E8 + style);
  }

  [v18 setCompositingFilter:v20];
  v21 = -[PLKLegibilityDescriptor initWithStyle:foregroundContentDescriptor:backgroundContentDescriptor:]([PLKLegibilityDescriptor alloc], "initWithStyle:foregroundContentDescriptor:backgroundContentDescriptor:", [settingsCopy style] == 2, v8, v18);
  primaryColor = v21->_primaryColor;
  v21->_primaryColor = primaryColor;
  v23 = primaryColor;

  secondaryColor = v21->_secondaryColor;
  v21->_secondaryColor = secondaryColor;
  v25 = secondaryColor;

  backgroundColor = v21->_backgroundColor;
  v21->_backgroundColor = v14;
  v27 = v14;

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)legibilityDescriptorForUILegibilitySettings:(id)settings strength:(double)strength
{
  settingsCopy = settings;
  primaryColor = [settingsCopy primaryColor];
  v7 = [(PLKLegibilityContentDescriptor *)PLKLegibilityForegroundContentDescriptor contentDescriptorForColor:primaryColor];

  v8 = [[PLKUILegibilitySettingsBackgroundContentDescriptor alloc] initWithLegibilitySettings:settingsCopy strength:strength];
  v9 = [PLKLegibilityDescriptor alloc];
  style = [settingsCopy style];

  v11 = [(PLKLegibilityDescriptor *)v9 initWithStyle:style == 2 foregroundContentDescriptor:v7 backgroundContentDescriptor:v8];

  return v11;
}

- (id)effectiveUILegibilitySettings:(double *)settings
{
  style = [(PLKLegibilityDescriptor *)self style];
  foreground = [(PLKLegibilityDescriptor *)self foreground];
  background = [(PLKLegibilityDescriptor *)self background];
  v8 = background;
  if (settings)
  {
    [background strength];
    *settings = v9;
  }

  if (style == 1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = objc_alloc(MEMORY[0x277D760A8]);
  primaryColor = [foreground primaryColor];
  secondaryColor = [foreground secondaryColor];
  contentColor = [v8 contentColor];
  v15 = [v11 initWithStyle:v10 primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:contentColor];

  return v15;
}

- (PLKLegibilityDescriptor)initWithStyle:(unint64_t)style foregroundContentDescriptor:(id)descriptor backgroundContentDescriptor:(id)contentDescriptor
{
  descriptorCopy = descriptor;
  contentDescriptorCopy = contentDescriptor;
  v20.receiver = self;
  v20.super_class = PLKLegibilityDescriptor;
  v11 = [(PLKLegibilityDescriptor *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_style = style;
    objc_storeStrong(&v11->_foreground, descriptor);
    objc_storeStrong(&v12->_background, contentDescriptor);
    contentColor = [descriptorCopy contentColor];
    primaryColor = v12->_primaryColor;
    v12->_primaryColor = contentColor;

    secondaryColor = [descriptorCopy secondaryColor];
    secondaryColor = v12->_secondaryColor;
    v12->_secondaryColor = secondaryColor;

    contentColor2 = [contentDescriptorCopy contentColor];
    backgroundColor = v12->_backgroundColor;
    v12->_backgroundColor = contentColor2;
  }

  return v12;
}

- (PLKLegibilityDescriptor)initWithForegroundContentDescriptor:(id)descriptor backgroundContentDescriptor:(id)contentDescriptor
{
  descriptorCopy = descriptor;
  contentDescriptorCopy = contentDescriptor;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [contentDescriptorCopy usesUILegibility])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_9;
    }

    legibilitySettings = [contentDescriptorCopy legibilitySettings];
    v9 = [legibilitySettings style] == 2;
  }

  else
  {
    v10 = [contentDescriptorCopy valueForKey:@"_colorMatrixValue"];
    legibilitySettings = v10;
    if (v10)
    {
      [v10 CAColorMatrixValue];
      v9 = fabsf(0.0 + -1.646) >= fabsf(0.0 + -0.858);
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_9:
  v11 = [(PLKLegibilityDescriptor *)self initWithStyle:v9 foregroundContentDescriptor:descriptorCopy backgroundContentDescriptor:contentDescriptorCopy];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy)
  {
    v6 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = [(PLKLegibilityDescriptor *)self isEqualToLegibilityDescriptor:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualToLegibilityDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  if (descriptorCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (!descriptorCopy)
    {
      goto LABEL_6;
    }

    style = [(PLKLegibilityDescriptor *)descriptorCopy style];
    if (style != [(PLKLegibilityDescriptor *)self style])
    {
      goto LABEL_6;
    }

    foreground = [(PLKLegibilityDescriptor *)v5 foreground];
    foreground2 = [(PLKLegibilityDescriptor *)self foreground];
    v9 = [foreground isEqual:foreground2];

    if (v9)
    {
      background = [(PLKLegibilityDescriptor *)v5 background];
      background2 = [(PLKLegibilityDescriptor *)self background];
      v12 = [background isEqual:background2];
    }

    else
    {
LABEL_6:
      v12 = 0;
    }
  }

  return v12;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PLKLegibilityDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PLKLegibilityDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  style = self->_style;
  if (style)
  {
    if (style == 1)
    {
      v6 = @"DarkContent";
    }

    else
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", self->_style];
    }
  }

  else
  {
    v6 = @"LightContent";
  }

  v7 = [v4 appendObject:v6 withName:@"style"];
  v8 = [v4 appendObject:self->_primaryColor withName:@"primaryColor"];
  v9 = [v4 appendObject:self->_secondaryColor withName:@"secondaryColor"];
  v10 = [v4 appendObject:self->_backgroundColor withName:@"backgroundColor"];
  v11 = [v4 appendObject:self->_foreground withName:@"foreground"];
  v12 = [v4 appendObject:self->_background withName:@"background"];

  return v4;
}

@end