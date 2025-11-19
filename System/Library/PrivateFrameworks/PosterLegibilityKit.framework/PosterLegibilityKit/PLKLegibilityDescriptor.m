@interface PLKLegibilityDescriptor
+ (id)defaultLegibilityDescriptorForStyle:(unint64_t)a3;
+ (id)legibilityDescriptorForEnvironmentContext:(id)a3;
+ (id)legibilityDescriptorForSettings:(id)a3 strength:(double)a4;
+ (id)legibilityDescriptorForUILegibilitySettings:(id)a3 strength:(double)a4;
+ (id)performanceLegibilityDescriptorForStyle:(unint64_t)a3 options:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLegibilityDescriptor:(id)a3;
- (PLKLegibilityDescriptor)initWithForegroundContentDescriptor:(id)a3 backgroundContentDescriptor:(id)a4;
- (PLKLegibilityDescriptor)initWithStyle:(unint64_t)a3 foregroundContentDescriptor:(id)a4 backgroundContentDescriptor:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)effectiveUILegibilitySettings:(double *)a3;
- (id)succinctDescription;
@end

@implementation PLKLegibilityDescriptor

+ (id)performanceLegibilityDescriptorForStyle:(unint64_t)a3 options:(unint64_t)a4
{
  if ((a4 & 2) != 0)
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
  if (a3 <= 1)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectAtIndexedSubscript:v8];

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

+ (id)defaultLegibilityDescriptorForStyle:(unint64_t)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PLKLegibilityDescriptor_defaultLegibilityDescriptorForStyle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultLegibilityDescriptorForStyle__onceToken != -1)
  {
    dispatch_once(&defaultLegibilityDescriptorForStyle__onceToken, block);
  }

  if (a3 <= 1)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [defaultLegibilityDescriptorForStyle__legibilityDescriptors objectAtIndexedSubscript:v4];

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

+ (id)legibilityDescriptorForEnvironmentContext:(id)a3
{
  v43[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 style];
  if (v4 <= 1)
  {
    v5 = v4;
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
    [v3 primaryColor];
  }

  else
  {
    v12 = 0x3D9374BC3F370A3DLL;
    v13 = 0x3F4ED917BEB53F7DLL;
    v14 = -0.4;
    v15 = -1107967345;
    v16 = 1070772257;
    [v3 primaryColor];
  }
  v17 = ;
  v18 = [v3 secondaryColor];
  v19 = [PLKLegibilityForegroundContentDescriptor contentDescriptorForPrimaryColor:v17 secondaryColor:v18];
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
  v21->_secondaryColor = v18;
  v25 = v18;

  v26 = [v3 backgroundColor];

  backgroundColor = v21->_backgroundColor;
  v21->_backgroundColor = v26;

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)legibilityDescriptorForSettings:(id)a3 strength:(double)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 primaryColor];
  v7 = [v5 secondaryColor];
  v8 = [PLKLegibilityForegroundContentDescriptor contentDescriptorForPrimaryColor:v6 secondaryColor:v7];
  [v5 shadowRadius];
  v10 = v9;
  v11 = [v5 shadowColor];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x277D75348] blackColor];
  }

  v14 = v13;

  [v5 shadowAlpha];
  v16 = [PLKShadowDescriptor shadowWithRadius:v10 offset:0.0 alpha:0.0 strength:v15, a4];
  v30[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v18 = [PLKLegibilityBackgroundContentDescriptor contentDescriptorForColor:v14 shadows:v17 renderScale:0.200000003];

  v19 = [v5 style];
  if (v19 > 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = **(&unk_27835B6E8 + v19);
  }

  [v18 setCompositingFilter:v20];
  v21 = -[PLKLegibilityDescriptor initWithStyle:foregroundContentDescriptor:backgroundContentDescriptor:]([PLKLegibilityDescriptor alloc], "initWithStyle:foregroundContentDescriptor:backgroundContentDescriptor:", [v5 style] == 2, v8, v18);
  primaryColor = v21->_primaryColor;
  v21->_primaryColor = v6;
  v23 = v6;

  secondaryColor = v21->_secondaryColor;
  v21->_secondaryColor = v7;
  v25 = v7;

  backgroundColor = v21->_backgroundColor;
  v21->_backgroundColor = v14;
  v27 = v14;

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)legibilityDescriptorForUILegibilitySettings:(id)a3 strength:(double)a4
{
  v5 = a3;
  v6 = [v5 primaryColor];
  v7 = [(PLKLegibilityContentDescriptor *)PLKLegibilityForegroundContentDescriptor contentDescriptorForColor:v6];

  v8 = [[PLKUILegibilitySettingsBackgroundContentDescriptor alloc] initWithLegibilitySettings:v5 strength:a4];
  v9 = [PLKLegibilityDescriptor alloc];
  v10 = [v5 style];

  v11 = [(PLKLegibilityDescriptor *)v9 initWithStyle:v10 == 2 foregroundContentDescriptor:v7 backgroundContentDescriptor:v8];

  return v11;
}

- (id)effectiveUILegibilitySettings:(double *)a3
{
  v5 = [(PLKLegibilityDescriptor *)self style];
  v6 = [(PLKLegibilityDescriptor *)self foreground];
  v7 = [(PLKLegibilityDescriptor *)self background];
  v8 = v7;
  if (a3)
  {
    [v7 strength];
    *a3 = v9;
  }

  if (v5 == 1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = objc_alloc(MEMORY[0x277D760A8]);
  v12 = [v6 primaryColor];
  v13 = [v6 secondaryColor];
  v14 = [v8 contentColor];
  v15 = [v11 initWithStyle:v10 primaryColor:v12 secondaryColor:v13 shadowColor:v14];

  return v15;
}

- (PLKLegibilityDescriptor)initWithStyle:(unint64_t)a3 foregroundContentDescriptor:(id)a4 backgroundContentDescriptor:(id)a5
{
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PLKLegibilityDescriptor;
  v11 = [(PLKLegibilityDescriptor *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_style = a3;
    objc_storeStrong(&v11->_foreground, a4);
    objc_storeStrong(&v12->_background, a5);
    v13 = [v9 contentColor];
    primaryColor = v12->_primaryColor;
    v12->_primaryColor = v13;

    v15 = [v9 secondaryColor];
    secondaryColor = v12->_secondaryColor;
    v12->_secondaryColor = v15;

    v17 = [v10 contentColor];
    backgroundColor = v12->_backgroundColor;
    v12->_backgroundColor = v17;
  }

  return v12;
}

- (PLKLegibilityDescriptor)initWithForegroundContentDescriptor:(id)a3 backgroundContentDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 usesUILegibility])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = [v7 legibilitySettings];
    v9 = [v8 style] == 2;
  }

  else
  {
    v10 = [v7 valueForKey:@"_colorMatrixValue"];
    v8 = v10;
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
  v11 = [(PLKLegibilityDescriptor *)self initWithStyle:v9 foregroundContentDescriptor:v6 backgroundContentDescriptor:v7];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4)
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

- (BOOL)isEqualToLegibilityDescriptor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = [(PLKLegibilityDescriptor *)v4 style];
    if (v6 != [(PLKLegibilityDescriptor *)self style])
    {
      goto LABEL_6;
    }

    v7 = [(PLKLegibilityDescriptor *)v5 foreground];
    v8 = [(PLKLegibilityDescriptor *)self foreground];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = [(PLKLegibilityDescriptor *)v5 background];
      v11 = [(PLKLegibilityDescriptor *)self background];
      v12 = [v10 isEqual:v11];
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
  v2 = [(PLKLegibilityDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PLKLegibilityDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
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