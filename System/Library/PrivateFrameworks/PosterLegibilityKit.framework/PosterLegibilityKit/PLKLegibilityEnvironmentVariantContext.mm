@interface PLKLegibilityEnvironmentVariantContext
- (BOOL)isEqual:(id)a3;
- (PLKLegibilityEnvironmentVariantContext)init;
- (PLKLegibilityEnvironmentVariantContext)initWithStyle:(unint64_t)a3;
- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)a3 image:(id)a4;
- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)a3 style:(unint64_t)a4 averageColor:(id)a5 contrast:(double)a6 saturation:(double)a7 legibilitySettings:(id)a8;
- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)a3 style:(unint64_t)a4 averageColor:(id)a5 contrast:(double)a6 saturation:(double)a7 primaryColor:(id)a8 secondaryColor:(id)a9 backgroundColor:(id)a10;
- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)a3 style:(unint64_t)a4 colorBoxes:(id)a5 legibilitySettings:(id)a6;
- (double)contrastInRect:(CGRect)a3;
- (double)luma;
- (double)lumaInRect:(CGRect)a3;
- (double)saturationInRect:(CGRect)a3;
- (id)averageColorInRect:(CGRect)a3;
- (unint64_t)hash;
- (void)_generateLegibilityDescriptor;
- (void)_updateWithColorBoxes:(id)a3;
@end

@implementation PLKLegibilityEnvironmentVariantContext

- (void)_generateLegibilityDescriptor
{
  if (!self->_legibilityDescriptor)
  {
    v3 = [PLKLegibilityDescriptor legibilityDescriptorForEnvironmentContext:self];
    legibilityDescriptor = self->_legibilityDescriptor;
    self->_legibilityDescriptor = v3;
  }

  if (!self->_legibilitySettings)
  {
    if (self->_primaryColor)
    {
      v5 = [(PLKLegibilityDescriptor *)self->_legibilityDescriptor effectiveUILegibilitySettings:0];
    }

    else
    {
      if (self->_averageColor)
      {
        v6 = objc_alloc_init(MEMORY[0x277D760B0]);
        [(_UILegibilitySettings *)v6 accumulateChangesToContentColor:self->_averageColor contrast:self->_contrast];
        v7 = [(_UILegibilitySettings *)v6 settings];
        legibilitySettings = self->_legibilitySettings;
        self->_legibilitySettings = v7;

LABEL_9:
        if (!self->_primaryColor)
        {
          v9 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
          primaryColor = self->_primaryColor;
          self->_primaryColor = v9;

          v11 = [(_UILegibilitySettings *)self->_legibilitySettings secondaryColor];
          secondaryColor = self->_secondaryColor;
          self->_secondaryColor = v11;

          v13 = [(_UILegibilitySettings *)self->_legibilitySettings shadowColor];
          backgroundColor = self->_backgroundColor;
          self->_backgroundColor = v13;

          MEMORY[0x2821F96F8]();
        }

        return;
      }

      v5 = [MEMORY[0x277D760A8] sharedInstanceForStyle:_UILegibilityStyleForPLKLegibilityStyle(self->_style)];
    }

    v6 = self->_legibilitySettings;
    self->_legibilitySettings = v5;
    goto LABEL_9;
  }
}

- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)a3 style:(unint64_t)a4 averageColor:(id)a5 contrast:(double)a6 saturation:(double)a7 primaryColor:(id)a8 secondaryColor:(id)a9 backgroundColor:(id)a10
{
  v19 = a3;
  v20 = a5;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v37.receiver = self;
  v37.super_class = PLKLegibilityEnvironmentVariantContext;
  v24 = [(PLKLegibilityEnvironmentVariantContext *)&v37 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_variant, a3);
    v25->_style = a4;
    if (v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = [MEMORY[0x277D75348] magentaColor];
    }

    averageColor = v25->_averageColor;
    v25->_averageColor = v26;

    v28 = [PLKColorBoxes colorBoxesForAverageColor:v20 contrast:a6];
    colorBoxes = v25->_colorBoxes;
    v25->_colorBoxes = v28;

    v25->_contrast = a6;
    v25->_saturation = a7;
    if (v21)
    {
      v30 = v21;
    }

    else
    {
      v30 = [MEMORY[0x277D75348] magentaColor];
    }

    primaryColor = v25->_primaryColor;
    v25->_primaryColor = v30;

    if (v22)
    {
      v32 = v22;
    }

    else
    {
      v32 = [MEMORY[0x277D75348] magentaColor];
    }

    secondaryColor = v25->_secondaryColor;
    v25->_secondaryColor = v32;

    if (v23)
    {
      v34 = v23;
    }

    else
    {
      v34 = [MEMORY[0x277D75348] magentaColor];
    }

    backgroundColor = v25->_backgroundColor;
    v25->_backgroundColor = v34;

    [(PLKLegibilityEnvironmentVariantContext *)v25 _generateLegibilityDescriptor];
  }

  return v25;
}

- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)a3 style:(unint64_t)a4 averageColor:(id)a5 contrast:(double)a6 saturation:(double)a7 legibilitySettings:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v27.receiver = self;
  v27.super_class = PLKLegibilityEnvironmentVariantContext;
  v18 = [(PLKLegibilityEnvironmentVariantContext *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_variant, a3);
    v19->_style = a4;
    objc_storeStrong(&v19->_averageColor, a5);
    v19->_contrast = a6;
    v19->_saturation = a7;
    objc_storeStrong(&v19->_legibilitySettings, a8);
    if (v17)
    {
      v20 = [v17 primaryColor];
      primaryColor = v19->_primaryColor;
      v19->_primaryColor = v20;

      v22 = [v17 secondaryColor];
      secondaryColor = v19->_secondaryColor;
      v19->_secondaryColor = v22;

      v24 = [v17 shadowColor];
      backgroundColor = v19->_backgroundColor;
      v19->_backgroundColor = v24;
    }

    [(PLKLegibilityEnvironmentVariantContext *)v19 _generateLegibilityDescriptor];
  }

  return v19;
}

- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)a3 style:(unint64_t)a4 colorBoxes:(id)a5 legibilitySettings:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v30.receiver = self;
  v30.super_class = PLKLegibilityEnvironmentVariantContext;
  v14 = [(PLKLegibilityEnvironmentVariantContext *)&v30 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_variant, a3);
    v15->_style = a4;
    v16 = [v12 copy];
    colorBoxes = v15->_colorBoxes;
    v15->_colorBoxes = v16;

    v18 = [v12 averageColor];
    averageColor = v15->_averageColor;
    v15->_averageColor = v18;

    [v12 contrast];
    v15->_contrast = v20;
    [v12 saturation];
    v15->_saturation = v21;
    [v12 luma];
    v15->_luma = v22;
    objc_storeStrong(&v15->_legibilitySettings, a6);
    if (v13)
    {
      v23 = [v13 primaryColor];
      primaryColor = v15->_primaryColor;
      v15->_primaryColor = v23;

      v25 = [v13 secondaryColor];
      secondaryColor = v15->_secondaryColor;
      v15->_secondaryColor = v25;

      v27 = [v13 shadowColor];
      backgroundColor = v15->_backgroundColor;
      v15->_backgroundColor = v27;
    }

    [(PLKLegibilityEnvironmentVariantContext *)v15 _generateLegibilityDescriptor];
  }

  return v15;
}

- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)a3 image:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PLKLegibilityEnvironmentVariantContext;
  v9 = [(PLKLegibilityEnvironmentVariantContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_variant, a3);
    v11 = [PLKColorBoxes colorBoxesForImage:v8];
    [(PLKLegibilityEnvironmentVariantContext *)v10 _updateWithColorBoxes:v11];

    [(PLKLegibilityEnvironmentVariantContext *)v10 _generateLegibilityDescriptor];
    v10->_style = PLKLegibilityStyleForUILegibilityStyle([(_UILegibilitySettings *)v10->_legibilitySettings style]);
  }

  return v10;
}

- (void)_updateWithColorBoxes:(id)a3
{
  objc_storeStrong(&self->_colorBoxes, a3);
  v5 = a3;
  v6 = [v5 averageColor];
  averageColor = self->_averageColor;
  self->_averageColor = v6;

  [v5 contrast];
  self->_contrast = v8;
  [v5 saturation];
  self->_saturation = v9;
  [v5 luma];
  v11 = v10;

  self->_luma = v11;
}

- (PLKLegibilityEnvironmentVariantContext)initWithStyle:(unint64_t)a3
{
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [MEMORY[0x277D760A8] sharedInstanceForStyle:v5];
  v7 = [MEMORY[0x277D75348] systemGrayColor];
  v8 = [v6 primaryColor];
  v9 = [v6 secondaryColor];
  v10 = [v6 shadowColor];
  v11 = [(PLKLegibilityEnvironmentVariantContext *)self initWithVariant:@"PLKLegibilityEnvironmentVariantDefault" style:a3 averageColor:v7 contrast:v8 saturation:v9 primaryColor:v10 secondaryColor:-1.0 backgroundColor:-1.0];

  return v11;
}

- (PLKLegibilityEnvironmentVariantContext)init
{
  [(PLKLegibilityEnvironmentVariantContext *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PLKLegibilityEnvironmentVariantContext *)v5 variant];
      v7 = [(PLKLegibilityEnvironmentVariantContext *)self variant];
      v8 = BSEqualObjects();

      if (!v8)
      {
        goto LABEL_14;
      }

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PLKLegibilityEnvironmentVariantContext style](v5, "style")}];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PLKLegibilityEnvironmentVariantContext style](self, "style")}];
      v11 = BSEqualObjects();

      if (!v11)
      {
        goto LABEL_14;
      }

      [(PLKLegibilityEnvironmentVariantContext *)v5 contrast];
      [(PLKLegibilityEnvironmentVariantContext *)self contrast];
      if (!BSFloatEqualToFloat())
      {
        goto LABEL_14;
      }

      [(PLKLegibilityEnvironmentVariantContext *)v5 saturation];
      [(PLKLegibilityEnvironmentVariantContext *)self saturation];
      if (!BSFloatEqualToFloat())
      {
        goto LABEL_14;
      }

      [(PLKLegibilityEnvironmentVariantContext *)v5 luma];
      [(PLKLegibilityEnvironmentVariantContext *)self luma];
      if (!BSFloatEqualToFloat())
      {
        goto LABEL_14;
      }

      v12 = [(PLKLegibilityEnvironmentVariantContext *)v5 averageColor];
      v13 = [(PLKLegibilityEnvironmentVariantContext *)self averageColor];
      v14 = BSEqualObjects();

      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = [(PLKLegibilityEnvironmentVariantContext *)v5 primaryColor];
      v16 = [(PLKLegibilityEnvironmentVariantContext *)self primaryColor];
      v17 = BSEqualObjects();

      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = [(PLKLegibilityEnvironmentVariantContext *)v5 secondaryColor];
      v19 = [(PLKLegibilityEnvironmentVariantContext *)self secondaryColor];
      v20 = BSEqualObjects();

      if (v20)
      {
        v21 = [(PLKLegibilityEnvironmentVariantContext *)v5 backgroundColor];
        v22 = [(PLKLegibilityEnvironmentVariantContext *)self backgroundColor];
        v23 = BSEqualObjects();
      }

      else
      {
LABEL_14:
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(PLKLegibilityEnvironmentVariantContext *)self variant];
  v5 = [v3 appendObject:v4];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PLKLegibilityEnvironmentVariantContext style](self, "style")}];
  v7 = [v3 appendObject:v6];

  v8 = MEMORY[0x277CCABB0];
  [(PLKLegibilityEnvironmentVariantContext *)self contrast];
  v9 = [v8 numberWithDouble:?];
  v10 = [v3 appendObject:v9];

  v11 = MEMORY[0x277CCABB0];
  [(PLKLegibilityEnvironmentVariantContext *)self saturation];
  v12 = [v11 numberWithDouble:?];
  v13 = [v3 appendObject:v12];

  v14 = MEMORY[0x277CCABB0];
  [(PLKLegibilityEnvironmentVariantContext *)self luma];
  v15 = [v14 numberWithDouble:?];
  v16 = [v3 appendObject:v15];

  v17 = [(PLKLegibilityEnvironmentVariantContext *)self averageColor];
  v18 = [v3 appendObject:v17];

  v19 = [(PLKLegibilityEnvironmentVariantContext *)self primaryColor];
  v20 = [v3 appendObject:v19];

  v21 = [(PLKLegibilityEnvironmentVariantContext *)self secondaryColor];
  v22 = [v3 appendObject:v21];

  v23 = [(PLKLegibilityEnvironmentVariantContext *)self backgroundColor];
  v24 = [v3 appendObject:v23];

  v25 = [v3 hash];
  return v25;
}

- (double)luma
{
  v2 = [(PLKLegibilityEnvironmentVariantContext *)self averageColor];
  [v2 _luminance];
  v4 = v3;

  return v4;
}

- (double)contrastInRect:(CGRect)a3
{
  colorBoxes = self->_colorBoxes;
  if (!colorBoxes)
  {
    return -1.0;
  }

  [(PLKColorBoxes *)colorBoxes contrastInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  return result;
}

- (double)saturationInRect:(CGRect)a3
{
  colorBoxes = self->_colorBoxes;
  if (!colorBoxes)
  {
    return -1.0;
  }

  [(PLKColorBoxes *)colorBoxes saturationInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  return result;
}

- (id)averageColorInRect:(CGRect)a3
{
  colorBoxes = self->_colorBoxes;
  if (colorBoxes)
  {
    [(PLKColorBoxes *)colorBoxes averageColorInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }

  else
  {
    [(PLKLegibilityEnvironmentVariantContext *)self averageColor:a3.origin.x];
  }
  v5 = ;

  return v5;
}

- (double)lumaInRect:(CGRect)a3
{
  colorBoxes = self->_colorBoxes;
  if (!colorBoxes)
  {
    return -1.0;
  }

  [(PLKColorBoxes *)colorBoxes lumaInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  return result;
}

@end