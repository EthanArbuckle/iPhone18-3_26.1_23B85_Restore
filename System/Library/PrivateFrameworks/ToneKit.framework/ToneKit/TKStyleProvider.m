@interface TKStyleProvider
- (TKStyleProvider)init;
- (UIEdgeInsets)vibrationRecorderInstructionsLabelEdgeInsets;
- (UIImage)vibrationRecorderProgressViewResizableDotImage;
- (UIOffset)vibrationRecorderInstructionsLabelPositionOffset;
- (double)vibrationRecorderControlsToolbarVerticalOffset;
- (double)vibrationRecorderProgressToolbarAdditionalHeight;
- (double)vibrationRecorderProgressToolbarVerticalOffset;
- (double)vibrationRecorderProgressViewDotHorizontalInset;
- (double)vibrationRecorderProgressViewHeight;
- (double)vibrationRecorderRippleRingLineWidth;
- (id)_bundle;
- (id)_cachedImageWithName:(id)a3 forPropertyWithSelector:(SEL)a4;
- (id)_cachedStyleObjectForPropertyWithSelector:(SEL)a3;
- (void)_didReceiveMemoryWarning:(id)a3;
- (void)_setCachedStyleObject:(id)a3 forPropertyWithSelector:(SEL)a4;
- (void)dealloc;
@end

@implementation TKStyleProvider

- (TKStyleProvider)init
{
  v6.receiver = self;
  v6.super_class = TKStyleProvider;
  v2 = [(TKStyleProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [(TKStyleProvider *)v2 setScreen:v3];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel__didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76670] object:0];

  v4.receiver = self;
  v4.super_class = TKStyleProvider;
  [(TKStyleProvider *)&v4 dealloc];
}

- (id)_bundle
{
  bundle = self->_bundle;
  if (!bundle)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = self->_bundle;
    self->_bundle = v4;

    bundle = self->_bundle;
  }

  return bundle;
}

- (id)_cachedStyleObjectForPropertyWithSelector:(SEL)a3
{
  if (a3)
  {
    v4 = NSStringFromSelector(a3);
    if (v4)
    {
      v5 = [(NSMutableDictionary *)self->_cachedStyleProperties objectForKey:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setCachedStyleObject:(id)a3 forPropertyWithSelector:(SEL)a4
{
  v6 = a3;
  if (v6 && a4)
  {
    v11 = v6;
    v7 = NSStringFromSelector(a4);
    if (v7)
    {
      cachedStyleProperties = self->_cachedStyleProperties;
      if (!cachedStyleProperties)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v10 = self->_cachedStyleProperties;
        self->_cachedStyleProperties = v9;

        cachedStyleProperties = self->_cachedStyleProperties;
      }

      [(NSMutableDictionary *)cachedStyleProperties setObject:v11 forKey:v7];
    }

    v6 = v11;
  }
}

- (id)_cachedImageWithName:(id)a3 forPropertyWithSelector:(SEL)a4
{
  v6 = a3;
  v7 = [(TKStyleProvider *)self _cachedStyleObjectForPropertyWithSelector:a4];
  if (!v7)
  {
    if ([v6 length])
    {
      v8 = MEMORY[0x277D755B8];
      v9 = [(TKStyleProvider *)self _bundle];
      v7 = [v8 imageNamed:v6 inBundle:v9];

      [(TKStyleProvider *)self _setCachedStyleObject:v7 forPropertyWithSelector:a4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_didReceiveMemoryWarning:(id)a3
{
  cachedStyleProperties = self->_cachedStyleProperties;
  self->_cachedStyleProperties = 0;

  bundle = self->_bundle;
  self->_bundle = 0;
}

id __55__TKStyleProvider_vibrationRecorderBarsBackgroundColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v2 = ;

  return v2;
}

id __62__TKStyleProvider_vibrationRecorderInstructionsLabelTextColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v2 = ;
  v3 = [v2 colorWithAlphaComponent:0.5];

  return v3;
}

- (UIOffset)vibrationRecorderInstructionsLabelPositionOffset
{
  v2 = 0.0;
  v3 = -6.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (UIEdgeInsets)vibrationRecorderInstructionsLabelEdgeInsets
{
  v2 = 20.0;
  v3 = 20.0;
  v4 = 20.0;
  v5 = 20.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)vibrationRecorderControlsToolbarVerticalOffset
{
  v2 = [(TKStyleProvider *)self screen];
  [v2 scale];
  v4 = -1.0 / v3;

  return v4;
}

- (double)vibrationRecorderProgressToolbarVerticalOffset
{
  v2 = [(TKStyleProvider *)self screen];
  [v2 scale];
  v4 = -1.0 / v3;

  return v4;
}

- (double)vibrationRecorderProgressToolbarAdditionalHeight
{
  v2 = [(TKStyleProvider *)self screen];
  [v2 scale];
  v4 = 1.0 / v3;

  return v4;
}

- (double)vibrationRecorderProgressViewHeight
{
  v2 = [(TKStyleProvider *)self vibrationRecorderProgressViewResizableDotImage];
  [v2 size];
  v4 = v3 + 2.0;

  return v4;
}

uint64_t __58__TKStyleProvider_vibrationRecorderProgressViewTrackColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = dbl_21C5C3F30[[a2 userInterfaceStyle] == 2];
  v3 = MEMORY[0x277D75348];

  return [v3 colorWithWhite:v2 alpha:1.0];
}

- (double)vibrationRecorderProgressViewDotHorizontalInset
{
  v2 = [(TKStyleProvider *)self screen];
  [v2 scale];
  v4 = 1.0 / v3;

  return v4;
}

id __60__TKStyleProvider_vibrationRecorderProgressViewDotTintColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v2 = ;

  return v2;
}

- (UIImage)vibrationRecorderProgressViewResizableDotImage
{
  v4 = [(TKStyleProvider *)self _cachedStyleObjectForPropertyWithSelector:a2];
  if (!v4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__TKStyleProvider_vibrationRecorderProgressViewResizableDotImage__block_invoke;
    v11[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
    __asm { FMOV            V0.2D, #5.0 }

    v12 = _Q0;
    v4 = [(TKStyleProvider *)self _cachedResizableImageForPropertyWithSelector:a2 capInsets:2 size:v11 imageRenderingMode:0.0 withDrawingActions:2.0, 0.0, 2.0, 5.0, 5.0];
  }

  return v4;
}

void __65__TKStyleProvider_vibrationRecorderProgressViewResizableDotImage__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277CBF348];
  v2 = *(MEMORY[0x277CBF348] + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277D75348] blackColor];
  v6 = [v5 colorWithAlphaComponent:0.3];
  [v6 set];

  v7 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v1, v2, v3, v4}];
  [v7 fill];
}

uint64_t __61__TKStyleProvider_vibrationRecorderRippleViewBackgroundColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = dbl_21C5C3F40[[a2 userInterfaceStyle] == 2];
  v3 = MEMORY[0x277D75348];

  return [v3 colorWithWhite:v2 alpha:1.0];
}

- (double)vibrationRecorderRippleRingLineWidth
{
  v2 = [(TKStyleProvider *)self screen];
  [v2 scale];
  v4 = 1.0 / v3;

  return v4;
}

@end