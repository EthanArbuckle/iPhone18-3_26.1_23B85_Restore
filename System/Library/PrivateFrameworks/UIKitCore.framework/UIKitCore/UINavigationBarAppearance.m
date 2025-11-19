@interface UINavigationBarAppearance
- (BOOL)_checkEqualTo:(id)a3;
- (UIImage)backIndicatorImage;
- (UIImage)backIndicatorTransitionMaskImage;
- (UIOffset)titlePositionAdjustment;
- (id)_defaultBackgroundData;
- (unint64_t)_hashInto:(unint64_t)a3;
- (void)_barButtonItemAppearanceChangedItemData:(id)a3 toItemData:(id)a4 fromItemData:(id)a5;
- (void)_barButtonItemDataChanged:(id)a3;
- (void)_completeInit;
- (void)_copyFromAppearance:(id)a3;
- (void)_decodeFromCoder:(id)a3;
- (void)_describeInto:(id)a3;
- (void)_setTitleControlHidden:(BOOL)a3;
- (void)_setupDefaults;
- (void)encodeWithCoder:(id)a3;
- (void)setBackButtonAppearance:(UIBarButtonItemAppearance *)backButtonAppearance;
- (void)setBackIndicatorImage:(UIImage *)backIndicatorImage transitionMaskImage:(UIImage *)backIndicatorTransitionMaskImage;
- (void)setButtonAppearance:(UIBarButtonItemAppearance *)buttonAppearance;
- (void)setLargeSubtitleTextAttributes:(id)a3;
- (void)setLargeTitleTextAttributes:(NSDictionary *)largeTitleTextAttributes;
- (void)setProminentButtonAppearance:(id)a3;
- (void)setSubtitleTextAttributes:(id)a3;
- (void)setTitlePositionAdjustment:(UIOffset)titlePositionAdjustment;
- (void)setTitleTextAttributes:(NSDictionary *)titleTextAttributes;
@end

@implementation UINavigationBarAppearance

- (void)_setupDefaults
{
  v11.receiver = self;
  v11.super_class = UINavigationBarAppearance;
  [(UIBarAppearance *)&v11 _setupDefaults];
  if (!self->_barTitleData)
  {
    v3 = [_UINavTitleAppearanceData standardTitleDataForIdiom:[(UIBarAppearance *)self idiom]];
    barTitleData = self->_barTitleData;
    self->_barTitleData = v3;
  }

  if (!self->_buttonAppearance)
  {
    v5 = [[UIBarButtonItemAppearance alloc] initWithStyle:0];
    buttonAppearance = self->_buttonAppearance;
    self->_buttonAppearance = v5;
  }

  if (!self->_prominentButtonAppearance)
  {
    v7 = [[UIBarButtonItemAppearance alloc] initWithStyle:2];
    prominentButtonAppearance = self->_prominentButtonAppearance;
    self->_prominentButtonAppearance = v7;
  }

  if (!self->_backButtonAppearance)
  {
    v9 = objc_alloc_init(UIBarButtonItemAppearance);
    backButtonAppearance = self->_backButtonAppearance;
    self->_backButtonAppearance = v9;

    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _updateToSupportBackIndicatorsCopyingIndicatorsAndFallbackFrom:0];
  }
}

- (id)_defaultBackgroundData
{
  if (_UISMCBarsEnabled())
  {
    v3 = +[_UIBarBackgroundAppearanceData transparentBackgroundData];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UINavigationBarAppearance;
    v3 = [(UIBarAppearance *)&v5 _defaultBackgroundData];
  }

  return v3;
}

- (void)_completeInit
{
  v4.receiver = self;
  v4.super_class = UINavigationBarAppearance;
  [(UIBarAppearance *)&v4 _completeInit];
  [(UIBarButtonItemAppearance *)self->_buttonAppearance _setChangeObserver:self];
  [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _setChangeObserver:self];
  [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setChangeObserver:self];
  v3 = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
  [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setFallback:v3];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UINavigationBarAppearance;
  v4 = a3;
  [(UIBarAppearance *)&v5 encodeWithCoder:v4];
  [(_UINavTitleAppearanceData *)self->_barTitleData encodeToCoder:v4 prefix:@"Title", v5.receiver, v5.super_class];
  [v4 encodeObject:self->_buttonAppearance forKey:@"PlainButtons"];
  [v4 encodeObject:self->_prominentButtonAppearance forKey:@"DoneButtons"];
  [v4 encodeObject:self->_backButtonAppearance forKey:@"BackButtons"];
}

- (void)_copyFromAppearance:(id)a3
{
  v17.receiver = self;
  v17.super_class = UINavigationBarAppearance;
  v4 = a3;
  [(UIBarAppearance *)&v17 _copyFromAppearance:v4];
  v5 = [v4 _barTitleData];
  v6 = [v5 copy];
  barTitleData = self->_barTitleData;
  self->_barTitleData = v6;

  v8 = [v4 _plainButtonAppearance];
  v9 = [v8 copy];
  buttonAppearance = self->_buttonAppearance;
  self->_buttonAppearance = v9;

  v11 = [v4 _prominentButtonAppearance];
  v12 = [v11 copy];
  prominentButtonAppearance = self->_prominentButtonAppearance;
  self->_prominentButtonAppearance = v12;

  v14 = [v4 _backButtonAppearance];

  v15 = [v14 copy];
  backButtonAppearance = self->_backButtonAppearance;
  self->_backButtonAppearance = v15;
}

- (void)_decodeFromCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UINavigationBarAppearance;
  [(UIBarAppearance *)&v13 _decodeFromCoder:v4];
  v5 = [_UINavTitleAppearanceData decodeFromCoder:v4 prefix:@"Title"];
  v6 = v5;
  if (!v5)
  {
    v6 = [_UINavTitleAppearanceData standardTitleDataForIdiom:[(UIBarAppearance *)self idiom]];
  }

  objc_storeStrong(&self->_barTitleData, v6);
  if (!v5)
  {
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PlainButtons"];
  buttonAppearance = self->_buttonAppearance;
  self->_buttonAppearance = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DoneButtons"];
  prominentButtonAppearance = self->_prominentButtonAppearance;
  self->_prominentButtonAppearance = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BackButtons"];
  backButtonAppearance = self->_backButtonAppearance;
  self->_backButtonAppearance = v11;
}

- (void)_describeInto:(id)a3
{
  v5.receiver = self;
  v5.super_class = UINavigationBarAppearance;
  v4 = a3;
  [(UIBarAppearance *)&v5 _describeInto:v4];
  [v4 appendFormat:@"\n\tTitle(%p):", self->_barTitleData];
  [(_UINavTitleAppearanceData *)self->_barTitleData describeInto:v4];
  [v4 appendFormat:@"\n\tPlain BarButtonItems(%p):", self->_buttonAppearance];
  [(UIBarButtonItemAppearance *)self->_buttonAppearance _describeInto:v4];
  [v4 appendFormat:@"\n\tProminent BarButtonItems(%p):", self->_prominentButtonAppearance];
  [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _describeInto:v4];
  [v4 appendFormat:@"\n\tBack Buttons(%p):", self->_backButtonAppearance];
  [(UIBarButtonItemAppearance *)self->_backButtonAppearance _describeInto:v4];
}

- (unint64_t)_hashInto:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = UINavigationBarAppearance;
  v4 = 3 * [(UIBarAppearance *)&v13 _hashInto:a3];
  v5 = 3 * ([(_UIBarAppearanceData *)self->_barTitleData hash]+ v4);
  v6 = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
  v7 = [v6 hash] + v5;

  v8 = [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _data];
  v9 = [v8 hash] + 3 * v7;

  v10 = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
  v11 = [v10 hash];

  return v11 + 3 * v9;
}

- (BOOL)_checkEqualTo:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = UINavigationBarAppearance;
  if (![(UIBarAppearance *)&v24 _checkEqualTo:v4])
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 7);
  v6 = self->_barTitleData;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    LOBYTE(v10) = 0;
LABEL_32:

    goto LABEL_33;
  }

  v10 = [(_UIBarAppearanceData *)v6 isEqual:v7];

  if (v10)
  {
LABEL_11:
    v11 = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
    v12 = [*(v4 + 8) _data];
    v6 = v11;
    v13 = v12;
    v8 = v13;
    if (v6 == v13)
    {
    }

    else
    {
      if (v6)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        LOBYTE(v10) = 0;
        goto LABEL_31;
      }

      v15 = [(_UIBarAppearanceData *)v6 isEqual:v13];

      if (!v15)
      {
        goto LABEL_24;
      }
    }

    v16 = [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _data];
    v17 = [*(v4 + 9) _data];
    v6 = v16;
    v18 = v17;
    v8 = v18;
    if (v6 == v18)
    {

LABEL_26:
      v20 = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
      v21 = [*(v4 + 10) _data];
      v6 = v20;
      v22 = v21;
      v8 = v22;
      if (v6 == v22)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v6 && v22)
        {
          LOBYTE(v10) = [(_UIBarAppearanceData *)v6 isEqual:v22];
        }
      }

      goto LABEL_31;
    }

    LOBYTE(v10) = 0;
    if (v6 && v18)
    {
      v19 = [(_UIBarAppearanceData *)v6 isEqual:v18];

      if (!v19)
      {
LABEL_24:
        LOBYTE(v10) = 0;
        goto LABEL_33;
      }

      goto LABEL_26;
    }

LABEL_31:

    goto LABEL_32;
  }

LABEL_33:

  return v10;
}

- (void)setTitleTextAttributes:(NSDictionary *)titleTextAttributes
{
  v4 = titleTextAttributes;
  v5 = [(_UINavTitleAppearanceData *)self->_barTitleData titleTextAttributes];
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSDictionary *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = v8;

    [(_UINavTitleAppearanceData *)v8 setTitleTextAttributes:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (UIOffset)titlePositionAdjustment
{
  [(_UINavTitleAppearanceData *)self->_barTitleData titlePositionAdjustment];
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setTitlePositionAdjustment:(UIOffset)titlePositionAdjustment
{
  vertical = titlePositionAdjustment.vertical;
  horizontal = titlePositionAdjustment.horizontal;
  [(_UINavTitleAppearanceData *)self->_barTitleData titlePositionAdjustment];
  if (v7 != horizontal || v6 != vertical)
  {
    v9 = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = v9;

    [(_UINavTitleAppearanceData *)v9 setTitlePositionAdjustment:horizontal, vertical];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)setLargeTitleTextAttributes:(NSDictionary *)largeTitleTextAttributes
{
  v4 = largeTitleTextAttributes;
  v5 = [(_UINavTitleAppearanceData *)self->_barTitleData largeTitleTextAttributes];
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSDictionary *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = v8;

    [(_UINavTitleAppearanceData *)v8 setLargeTitleTextAttributes:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)_setTitleControlHidden:(BOOL)a3
{
  v3 = a3;
  if ([(_UINavTitleAppearanceData *)self->_barTitleData titleControlHidden]!= a3)
  {
    v5 = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = v5;

    [(_UINavTitleAppearanceData *)v5 setTitleControlHidden:v3];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)setSubtitleTextAttributes:(id)a3
{
  v4 = a3;
  v5 = [(_UINavTitleAppearanceData *)self->_barTitleData subtitleTextAttributes];
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = v8;

    [(_UINavTitleAppearanceData *)v8 setSubtitleTextAttributes:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)setLargeSubtitleTextAttributes:(id)a3
{
  v4 = a3;
  v5 = [(_UINavTitleAppearanceData *)self->_barTitleData largeSubtitleTextAttributes];
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = v8;

    [(_UINavTitleAppearanceData *)v8 setLargeSubtitleTextAttributes:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)setButtonAppearance:(UIBarButtonItemAppearance *)buttonAppearance
{
  v5 = buttonAppearance;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UINavigationBarAppearance.m" lineNumber:252 description:@"use -[UIBarButtonItemAppearance configureWithDefaultForStyle:] to reset appearance values"];
  }

  v6 = self->_buttonAppearance;
  v7 = v5;
  v13 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

  if (!v7 || !v6)
  {

    goto LABEL_10;
  }

  v8 = [(UIBarButtonItemAppearance *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_10:
    [(UIBarButtonItemAppearance *)self->_buttonAppearance _setChangeObserver:0];
    v9 = [(UIBarButtonItemAppearance *)v13 copy];
    v10 = self->_buttonAppearance;
    self->_buttonAppearance = v9;

    v11 = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setFallback:v11];

    [(UIBarButtonItemAppearance *)self->_buttonAppearance _setChangeObserver:self];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_11:
}

- (void)setProminentButtonAppearance:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UINavigationBarAppearance.m" lineNumber:264 description:@"use -[UIBarButtonItemAppearance configureWithDefaultForStyle:] to reset appearance values"];
  }

  v6 = self->_prominentButtonAppearance;
  v7 = v5;
  v12 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

  if (!v7 || !v6)
  {

    goto LABEL_10;
  }

  v8 = [(UIBarButtonItemAppearance *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_10:
    [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _setChangeObserver:0];
    v9 = [(UIBarButtonItemAppearance *)v12 copy];
    prominentButtonAppearance = self->_prominentButtonAppearance;
    self->_prominentButtonAppearance = v9;

    [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _setChangeObserver:self];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_11:
}

- (void)setBackButtonAppearance:(UIBarButtonItemAppearance *)backButtonAppearance
{
  v5 = backButtonAppearance;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UINavigationBarAppearance.m" lineNumber:287 description:@"use -[UIBarButtonItemAppearance configureWithDefaultForStyle:] to reset appearance values"];
  }

  v6 = self->_backButtonAppearance;
  v7 = v5;
  v14 = v7;
  if (v6 == v7)
  {

LABEL_11:
    v9 = v14;
    goto LABEL_12;
  }

  if (!v7 || !v6)
  {

    goto LABEL_10;
  }

  v8 = [(UIBarButtonItemAppearance *)v6 isEqual:v7];

  v9 = v14;
  if (!v8)
  {
LABEL_10:
    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setChangeObserver:0];
    v6 = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
    v10 = [(UIBarButtonItemAppearance *)v14 copy];
    v11 = self->_backButtonAppearance;
    self->_backButtonAppearance = v10;

    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _updateToSupportBackIndicatorsCopyingIndicatorsAndFallbackFrom:v6];
    v12 = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setFallback:v12];

    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setChangeObserver:self];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
    goto LABEL_11;
  }

LABEL_12:
}

- (UIImage)backIndicatorImage
{
  v2 = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
  v3 = [v2 backIndicatorImage];

  return v3;
}

- (UIImage)backIndicatorTransitionMaskImage
{
  v2 = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
  v3 = [v2 backIndicatorTransitionMaskImage];

  return v3;
}

- (void)setBackIndicatorImage:(UIImage *)backIndicatorImage transitionMaskImage:(UIImage *)backIndicatorTransitionMaskImage
{
  v6 = backIndicatorImage;
  v7 = backIndicatorTransitionMaskImage;
  v8 = v6;
  v9 = v8;
  if (v8)
  {
    [(UIImage *)v8 size];
    v28 = 0;
    if (v11 != 0.0 && v10 != 0.0)
    {
      v28 = v9;
    }
  }

  else
  {
    v28 = 0;
  }

  v12 = v7;
  v13 = v12;
  if (v12)
  {
    [(UIImage *)v12 size];
    v15 = 0;
    if (v16 != 0.0 && v14 != 0.0)
    {
      v15 = v13;
    }
  }

  else
  {
    v15 = 0;
  }

  backButtonAppearance = self->_backButtonAppearance;
  if (!v28 || !v15)
  {
    [(UIBarButtonItemAppearance *)backButtonAppearance _resetBackIndicatorImages];
LABEL_28:
    [(UIBarAppearance *)self _signalCategoryChanges:?];
    goto LABEL_29;
  }

  v18 = [(UIBarButtonItemAppearance *)backButtonAppearance _data];
  v19 = [v18 backIndicatorImage];
  v20 = v28;
  v21 = v20;
  if (v19 == v20)
  {
  }

  else
  {
    v22 = v20;
    if (!v19)
    {
LABEL_25:

LABEL_26:
      goto LABEL_27;
    }

    v23 = [(UIImage *)v19 isEqual:v20];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  v22 = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
  v24 = [v22 backIndicatorTransitionMaskImage];
  v25 = v15;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_29;
  }

  if (!v24)
  {

    goto LABEL_25;
  }

  v27 = [(UIImage *)v24 isEqual:v25];

  if (!v27)
  {
LABEL_27:
    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setBackIndicatorImage:v21 transitionMaskImage:v15];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)_barButtonItemAppearanceChangedItemData:(id)a3 toItemData:(id)a4 fromItemData:(id)a5
{
  if (self->_buttonAppearance == a3)
  {
    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setFallback:a4];
  }
}

- (void)_barButtonItemDataChanged:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_buttonAppearance == v4)
  {
    v7 = self;
    v8 = 8;
LABEL_10:
    [(UIBarAppearance *)v7 _signalCategoryChanges:v8];
    goto LABEL_11;
  }

  if (self->_prominentButtonAppearance == v4)
  {
    v7 = self;
    v8 = 16;
    goto LABEL_10;
  }

  if (self->_backButtonAppearance == v4)
  {
    v7 = self;
    v8 = 4;
    goto LABEL_10;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Signal from unknown appearance object %@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_barButtonItemDataChanged____s_category_0) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Signal from unknown appearance object %@", &v10, 0xCu);
    }
  }

LABEL_11:
}

@end