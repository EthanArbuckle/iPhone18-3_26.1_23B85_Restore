@interface UINavigationBarAppearance
- (BOOL)_checkEqualTo:(id)to;
- (UIImage)backIndicatorImage;
- (UIImage)backIndicatorTransitionMaskImage;
- (UIOffset)titlePositionAdjustment;
- (id)_defaultBackgroundData;
- (unint64_t)_hashInto:(unint64_t)into;
- (void)_barButtonItemAppearanceChangedItemData:(id)data toItemData:(id)itemData fromItemData:(id)fromItemData;
- (void)_barButtonItemDataChanged:(id)changed;
- (void)_completeInit;
- (void)_copyFromAppearance:(id)appearance;
- (void)_decodeFromCoder:(id)coder;
- (void)_describeInto:(id)into;
- (void)_setTitleControlHidden:(BOOL)hidden;
- (void)_setupDefaults;
- (void)encodeWithCoder:(id)coder;
- (void)setBackButtonAppearance:(UIBarButtonItemAppearance *)backButtonAppearance;
- (void)setBackIndicatorImage:(UIImage *)backIndicatorImage transitionMaskImage:(UIImage *)backIndicatorTransitionMaskImage;
- (void)setButtonAppearance:(UIBarButtonItemAppearance *)buttonAppearance;
- (void)setLargeSubtitleTextAttributes:(id)attributes;
- (void)setLargeTitleTextAttributes:(NSDictionary *)largeTitleTextAttributes;
- (void)setProminentButtonAppearance:(id)appearance;
- (void)setSubtitleTextAttributes:(id)attributes;
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
    _defaultBackgroundData = +[_UIBarBackgroundAppearanceData transparentBackgroundData];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UINavigationBarAppearance;
    _defaultBackgroundData = [(UIBarAppearance *)&v5 _defaultBackgroundData];
  }

  return _defaultBackgroundData;
}

- (void)_completeInit
{
  v4.receiver = self;
  v4.super_class = UINavigationBarAppearance;
  [(UIBarAppearance *)&v4 _completeInit];
  [(UIBarButtonItemAppearance *)self->_buttonAppearance _setChangeObserver:self];
  [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _setChangeObserver:self];
  [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setChangeObserver:self];
  _data = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
  [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setFallback:_data];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UINavigationBarAppearance;
  coderCopy = coder;
  [(UIBarAppearance *)&v5 encodeWithCoder:coderCopy];
  [(_UINavTitleAppearanceData *)self->_barTitleData encodeToCoder:coderCopy prefix:@"Title", v5.receiver, v5.super_class];
  [coderCopy encodeObject:self->_buttonAppearance forKey:@"PlainButtons"];
  [coderCopy encodeObject:self->_prominentButtonAppearance forKey:@"DoneButtons"];
  [coderCopy encodeObject:self->_backButtonAppearance forKey:@"BackButtons"];
}

- (void)_copyFromAppearance:(id)appearance
{
  v17.receiver = self;
  v17.super_class = UINavigationBarAppearance;
  appearanceCopy = appearance;
  [(UIBarAppearance *)&v17 _copyFromAppearance:appearanceCopy];
  _barTitleData = [appearanceCopy _barTitleData];
  v6 = [_barTitleData copy];
  barTitleData = self->_barTitleData;
  self->_barTitleData = v6;

  _plainButtonAppearance = [appearanceCopy _plainButtonAppearance];
  v9 = [_plainButtonAppearance copy];
  buttonAppearance = self->_buttonAppearance;
  self->_buttonAppearance = v9;

  _prominentButtonAppearance = [appearanceCopy _prominentButtonAppearance];
  v12 = [_prominentButtonAppearance copy];
  prominentButtonAppearance = self->_prominentButtonAppearance;
  self->_prominentButtonAppearance = v12;

  _backButtonAppearance = [appearanceCopy _backButtonAppearance];

  v15 = [_backButtonAppearance copy];
  backButtonAppearance = self->_backButtonAppearance;
  self->_backButtonAppearance = v15;
}

- (void)_decodeFromCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UINavigationBarAppearance;
  [(UIBarAppearance *)&v13 _decodeFromCoder:coderCopy];
  v5 = [_UINavTitleAppearanceData decodeFromCoder:coderCopy prefix:@"Title"];
  v6 = v5;
  if (!v5)
  {
    v6 = [_UINavTitleAppearanceData standardTitleDataForIdiom:[(UIBarAppearance *)self idiom]];
  }

  objc_storeStrong(&self->_barTitleData, v6);
  if (!v5)
  {
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PlainButtons"];
  buttonAppearance = self->_buttonAppearance;
  self->_buttonAppearance = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DoneButtons"];
  prominentButtonAppearance = self->_prominentButtonAppearance;
  self->_prominentButtonAppearance = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BackButtons"];
  backButtonAppearance = self->_backButtonAppearance;
  self->_backButtonAppearance = v11;
}

- (void)_describeInto:(id)into
{
  v5.receiver = self;
  v5.super_class = UINavigationBarAppearance;
  intoCopy = into;
  [(UIBarAppearance *)&v5 _describeInto:intoCopy];
  [intoCopy appendFormat:@"\n\tTitle(%p):", self->_barTitleData];
  [(_UINavTitleAppearanceData *)self->_barTitleData describeInto:intoCopy];
  [intoCopy appendFormat:@"\n\tPlain BarButtonItems(%p):", self->_buttonAppearance];
  [(UIBarButtonItemAppearance *)self->_buttonAppearance _describeInto:intoCopy];
  [intoCopy appendFormat:@"\n\tProminent BarButtonItems(%p):", self->_prominentButtonAppearance];
  [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _describeInto:intoCopy];
  [intoCopy appendFormat:@"\n\tBack Buttons(%p):", self->_backButtonAppearance];
  [(UIBarButtonItemAppearance *)self->_backButtonAppearance _describeInto:intoCopy];
}

- (unint64_t)_hashInto:(unint64_t)into
{
  v13.receiver = self;
  v13.super_class = UINavigationBarAppearance;
  v4 = 3 * [(UIBarAppearance *)&v13 _hashInto:into];
  v5 = 3 * ([(_UIBarAppearanceData *)self->_barTitleData hash]+ v4);
  _data = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
  v7 = [_data hash] + v5;

  _data2 = [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _data];
  v9 = [_data2 hash] + 3 * v7;

  _data3 = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
  v11 = [_data3 hash];

  return v11 + 3 * v9;
}

- (BOOL)_checkEqualTo:(id)to
{
  toCopy = to;
  v24.receiver = self;
  v24.super_class = UINavigationBarAppearance;
  if (![(UIBarAppearance *)&v24 _checkEqualTo:toCopy])
  {
    goto LABEL_24;
  }

  v5 = *(toCopy + 7);
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
    _data = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
    _data2 = [*(toCopy + 8) _data];
    v6 = _data;
    v13 = _data2;
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

    _data3 = [(UIBarButtonItemAppearance *)self->_prominentButtonAppearance _data];
    _data4 = [*(toCopy + 9) _data];
    v6 = _data3;
    v18 = _data4;
    v8 = v18;
    if (v6 == v18)
    {

LABEL_26:
      _data5 = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
      _data6 = [*(toCopy + 10) _data];
      v6 = _data5;
      v22 = _data6;
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
  titleTextAttributes = [(_UINavTitleAppearanceData *)self->_barTitleData titleTextAttributes];
  v6 = v4;
  v10 = v6;
  if (titleTextAttributes == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !titleTextAttributes)
  {

    goto LABEL_8;
  }

  v7 = [(NSDictionary *)titleTextAttributes isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    writableInstance = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = writableInstance;

    [(_UINavTitleAppearanceData *)writableInstance setTitleTextAttributes:v10];
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
    writableInstance = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = writableInstance;

    [(_UINavTitleAppearanceData *)writableInstance setTitlePositionAdjustment:horizontal, vertical];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)setLargeTitleTextAttributes:(NSDictionary *)largeTitleTextAttributes
{
  v4 = largeTitleTextAttributes;
  largeTitleTextAttributes = [(_UINavTitleAppearanceData *)self->_barTitleData largeTitleTextAttributes];
  v6 = v4;
  v10 = v6;
  if (largeTitleTextAttributes == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !largeTitleTextAttributes)
  {

    goto LABEL_8;
  }

  v7 = [(NSDictionary *)largeTitleTextAttributes isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    writableInstance = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = writableInstance;

    [(_UINavTitleAppearanceData *)writableInstance setLargeTitleTextAttributes:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)_setTitleControlHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(_UINavTitleAppearanceData *)self->_barTitleData titleControlHidden]!= hidden)
  {
    writableInstance = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = writableInstance;

    [(_UINavTitleAppearanceData *)writableInstance setTitleControlHidden:hiddenCopy];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)setSubtitleTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  subtitleTextAttributes = [(_UINavTitleAppearanceData *)self->_barTitleData subtitleTextAttributes];
  v6 = attributesCopy;
  v10 = v6;
  if (subtitleTextAttributes == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !subtitleTextAttributes)
  {

    goto LABEL_8;
  }

  v7 = [subtitleTextAttributes isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    writableInstance = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = writableInstance;

    [(_UINavTitleAppearanceData *)writableInstance setSubtitleTextAttributes:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)setLargeSubtitleTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  largeSubtitleTextAttributes = [(_UINavTitleAppearanceData *)self->_barTitleData largeSubtitleTextAttributes];
  v6 = attributesCopy;
  v10 = v6;
  if (largeSubtitleTextAttributes == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !largeSubtitleTextAttributes)
  {

    goto LABEL_8;
  }

  v7 = [largeSubtitleTextAttributes isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    writableInstance = [(_UIBarAppearanceData *)self->_barTitleData writableInstance];
    barTitleData = self->_barTitleData;
    self->_barTitleData = writableInstance;

    [(_UINavTitleAppearanceData *)writableInstance setLargeSubtitleTextAttributes:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)setButtonAppearance:(UIBarButtonItemAppearance *)buttonAppearance
{
  v5 = buttonAppearance;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationBarAppearance.m" lineNumber:252 description:@"use -[UIBarButtonItemAppearance configureWithDefaultForStyle:] to reset appearance values"];
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

    _data = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setFallback:_data];

    [(UIBarButtonItemAppearance *)self->_buttonAppearance _setChangeObserver:self];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_11:
}

- (void)setProminentButtonAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (!appearanceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationBarAppearance.m" lineNumber:264 description:@"use -[UIBarButtonItemAppearance configureWithDefaultForStyle:] to reset appearance values"];
  }

  v6 = self->_prominentButtonAppearance;
  v7 = appearanceCopy;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationBarAppearance.m" lineNumber:287 description:@"use -[UIBarButtonItemAppearance configureWithDefaultForStyle:] to reset appearance values"];
  }

  _data = self->_backButtonAppearance;
  v7 = v5;
  v14 = v7;
  if (_data == v7)
  {

LABEL_11:
    v9 = v14;
    goto LABEL_12;
  }

  if (!v7 || !_data)
  {

    goto LABEL_10;
  }

  v8 = [(UIBarButtonItemAppearance *)_data isEqual:v7];

  v9 = v14;
  if (!v8)
  {
LABEL_10:
    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setChangeObserver:0];
    _data = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
    v10 = [(UIBarButtonItemAppearance *)v14 copy];
    v11 = self->_backButtonAppearance;
    self->_backButtonAppearance = v10;

    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _updateToSupportBackIndicatorsCopyingIndicatorsAndFallbackFrom:_data];
    _data2 = [(UIBarButtonItemAppearance *)self->_buttonAppearance _data];
    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setFallback:_data2];

    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setChangeObserver:self];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
    goto LABEL_11;
  }

LABEL_12:
}

- (UIImage)backIndicatorImage
{
  _data = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
  backIndicatorImage = [_data backIndicatorImage];

  return backIndicatorImage;
}

- (UIImage)backIndicatorTransitionMaskImage
{
  _data = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
  backIndicatorTransitionMaskImage = [_data backIndicatorTransitionMaskImage];

  return backIndicatorTransitionMaskImage;
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

  _data = [(UIBarButtonItemAppearance *)backButtonAppearance _data];
  backIndicatorImage = [_data backIndicatorImage];
  v20 = v28;
  v21 = v20;
  if (backIndicatorImage == v20)
  {
  }

  else
  {
    _data2 = v20;
    if (!backIndicatorImage)
    {
LABEL_25:

LABEL_26:
      goto LABEL_27;
    }

    v23 = [(UIImage *)backIndicatorImage isEqual:v20];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  _data2 = [(UIBarButtonItemAppearance *)self->_backButtonAppearance _data];
  backIndicatorTransitionMaskImage = [_data2 backIndicatorTransitionMaskImage];
  v25 = v15;
  v26 = v25;
  if (backIndicatorTransitionMaskImage == v25)
  {

    goto LABEL_29;
  }

  if (!backIndicatorTransitionMaskImage)
  {

    goto LABEL_25;
  }

  v27 = [(UIImage *)backIndicatorTransitionMaskImage isEqual:v25];

  if (!v27)
  {
LABEL_27:
    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setBackIndicatorImage:v21 transitionMaskImage:v15];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)_barButtonItemAppearanceChangedItemData:(id)data toItemData:(id)itemData fromItemData:(id)fromItemData
{
  if (self->_buttonAppearance == data)
  {
    [(UIBarButtonItemAppearance *)self->_backButtonAppearance _setFallback:itemData];
  }
}

- (void)_barButtonItemDataChanged:(id)changed
{
  v12 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = changedCopy;
  if (self->_buttonAppearance == changedCopy)
  {
    selfCopy3 = self;
    v8 = 8;
LABEL_10:
    [(UIBarAppearance *)selfCopy3 _signalCategoryChanges:v8];
    goto LABEL_11;
  }

  if (self->_prominentButtonAppearance == changedCopy)
  {
    selfCopy3 = self;
    v8 = 16;
    goto LABEL_10;
  }

  if (self->_backButtonAppearance == changedCopy)
  {
    selfCopy3 = self;
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