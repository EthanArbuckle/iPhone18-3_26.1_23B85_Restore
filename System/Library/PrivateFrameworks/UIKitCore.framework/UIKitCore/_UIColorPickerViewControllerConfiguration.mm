@interface _UIColorPickerViewControllerConfiguration
- (BOOL)isEqual:(id)equal;
- (_UIColorPickerViewControllerConfiguration)init;
- (_UIColorPickerViewControllerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIColorPickerViewControllerConfiguration

- (_UIColorPickerViewControllerConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _UIColorPickerViewControllerConfiguration;
  result = [(_UIColorPickerViewControllerConfiguration *)&v3 init];
  if (result)
  {
    result->_showsAlpha = 1;
    result->__showsEyedropper = 1;
    result->_maxGain = 1.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setShowsAlpha:{-[_UIColorPickerViewControllerConfiguration showsAlpha](self, "showsAlpha")}];
  [(_UIColorPickerViewControllerConfiguration *)self maxGain];
  [v4 setMaxGain:?];
  title = [(_UIColorPickerViewControllerConfiguration *)self title];
  [v4 setTitle:title];

  [v4 set_userInterfaceStyleForGrid:{-[_UIColorPickerViewControllerConfiguration _userInterfaceStyleForGrid](self, "_userInterfaceStyleForGrid")}];
  [v4 set_shouldUseDarkGridInDarkMode:{-[_UIColorPickerViewControllerConfiguration _shouldUseDarkGridInDarkMode](self, "_shouldUseDarkGridInDarkMode")}];
  [v4 set_isEmbedded:{-[_UIColorPickerViewControllerConfiguration _isEmbedded](self, "_isEmbedded")}];
  [v4 set_useLandscapeLayout:{-[_UIColorPickerViewControllerConfiguration _useLandscapeLayout](self, "_useLandscapeLayout")}];
  [(_UIColorPickerViewControllerConfiguration *)self _preferredWidth];
  [v4 set_preferredWidth:?];
  _suggestedColors = [(_UIColorPickerViewControllerConfiguration *)self _suggestedColors];
  [v4 set_suggestedColors:_suggestedColors];

  [v4 set_allowsNoColor:{-[_UIColorPickerViewControllerConfiguration _allowsNoColor](self, "_allowsNoColor")}];
  [v4 set_showsEyedropper:{-[_UIColorPickerViewControllerConfiguration _showsEyedropper](self, "_showsEyedropper")}];
  [v4 set_showsGridOnly:{-[_UIColorPickerViewControllerConfiguration _showsGridOnly](self, "_showsGridOnly")}];
  [v4 set_isInPopoverPresentation:{-[_UIColorPickerViewControllerConfiguration _isInPopoverPresentation](self, "_isInPopoverPresentation")}];
  [v4 set_isInSheetPresentation:{-[_UIColorPickerViewControllerConfiguration _isInSheetPresentation](self, "_isInSheetPresentation")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      showsAlpha = [(_UIColorPickerViewControllerConfiguration *)self showsAlpha];
      if (showsAlpha != [(_UIColorPickerViewControllerConfiguration *)v5 showsAlpha])
      {
        LOBYTE(v7) = 0;
LABEL_28:

        goto LABEL_29;
      }

      title = [(_UIColorPickerViewControllerConfiguration *)self title];
      title2 = [(_UIColorPickerViewControllerConfiguration *)v5 title];
      v10 = title;
      v11 = title2;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        LOBYTE(v7) = 0;
        _suggestedColors2 = v11;
        _suggestedColors = v10;
        if (!v10 || !v11)
        {
          goto LABEL_25;
        }

        v15 = [v10 isEqual:v11];

        if (!v15)
        {
LABEL_26:
          LOBYTE(v7) = 0;
          goto LABEL_27;
        }
      }

      [(_UIColorPickerViewControllerConfiguration *)self maxGain];
      v17 = v16;
      [(_UIColorPickerViewControllerConfiguration *)v5 maxGain];
      if (v17 != v18)
      {
        goto LABEL_26;
      }

      _shouldUseDarkGridInDarkMode = [(_UIColorPickerViewControllerConfiguration *)self _shouldUseDarkGridInDarkMode];
      if (_shouldUseDarkGridInDarkMode != [(_UIColorPickerViewControllerConfiguration *)v5 _shouldUseDarkGridInDarkMode])
      {
        goto LABEL_26;
      }

      _userInterfaceStyleForGrid = [(_UIColorPickerViewControllerConfiguration *)self _userInterfaceStyleForGrid];
      if (_userInterfaceStyleForGrid != [(_UIColorPickerViewControllerConfiguration *)v5 _userInterfaceStyleForGrid])
      {
        goto LABEL_26;
      }

      _isEmbedded = [(_UIColorPickerViewControllerConfiguration *)self _isEmbedded];
      if (_isEmbedded != [(_UIColorPickerViewControllerConfiguration *)v5 _isEmbedded])
      {
        goto LABEL_26;
      }

      _useLandscapeLayout = [(_UIColorPickerViewControllerConfiguration *)self _useLandscapeLayout];
      if (_useLandscapeLayout != [(_UIColorPickerViewControllerConfiguration *)v5 _useLandscapeLayout])
      {
        goto LABEL_26;
      }

      [(_UIColorPickerViewControllerConfiguration *)self _preferredWidth];
      v24 = v23;
      [(_UIColorPickerViewControllerConfiguration *)v5 _preferredWidth];
      if (v24 != v25)
      {
        goto LABEL_26;
      }

      _suggestedColors = [(_UIColorPickerViewControllerConfiguration *)self _suggestedColors];
      _suggestedColors2 = [(_UIColorPickerViewControllerConfiguration *)v5 _suggestedColors];
      if (_suggestedColors == _suggestedColors2 && (v26 = [(_UIColorPickerViewControllerConfiguration *)self _allowsNoColor], v26 == [(_UIColorPickerViewControllerConfiguration *)v5 _allowsNoColor]) && (v27 = [(_UIColorPickerViewControllerConfiguration *)self _showsEyedropper], v27 == [(_UIColorPickerViewControllerConfiguration *)v5 _showsEyedropper]) && (v28 = [(_UIColorPickerViewControllerConfiguration *)self _showsGridOnly], v28 == [(_UIColorPickerViewControllerConfiguration *)v5 _showsGridOnly]) && (v29 = [(_UIColorPickerViewControllerConfiguration *)self _isInPopoverPresentation], v29 == [(_UIColorPickerViewControllerConfiguration *)v5 _isInPopoverPresentation]))
      {
        _isInSheetPresentation = [(_UIColorPickerViewControllerConfiguration *)self _isInSheetPresentation];
        v7 = _isInSheetPresentation ^ [(_UIColorPickerViewControllerConfiguration *)v5 _isInSheetPresentation]^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }

LABEL_25:

LABEL_27:
      goto LABEL_28;
    }

    LOBYTE(v7) = 0;
  }

LABEL_29:

  return v7;
}

- (unint64_t)hash
{
  showsAlpha = [(_UIColorPickerViewControllerConfiguration *)self showsAlpha];
  title = [(_UIColorPickerViewControllerConfiguration *)self title];
  v5 = [title hash] ^ showsAlpha;
  v6 = v5 ^ (2 * [(_UIColorPickerViewControllerConfiguration *)self _userInterfaceStyleForGrid]);
  if ([(_UIColorPickerViewControllerConfiguration *)self _shouldUseDarkGridInDarkMode])
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  _isEmbedded = [(_UIColorPickerViewControllerConfiguration *)self _isEmbedded];
  v9 = 16;
  if (!_isEmbedded)
  {
    v9 = 0;
  }

  v10 = v7 ^ v9;
  _useLandscapeLayout = [(_UIColorPickerViewControllerConfiguration *)self _useLandscapeLayout];
  v12 = 32;
  if (!_useLandscapeLayout)
  {
    v12 = 0;
  }

  v13 = v6 ^ v10 ^ v12;
  [(_UIColorPickerViewControllerConfiguration *)self _preferredWidth];
  v15 = v13 ^ (v14 << 6);
  if ([(_UIColorPickerViewControllerConfiguration *)self _allowsNoColor])
  {
    v16 = 128;
  }

  else
  {
    v16 = 0;
  }

  _showsEyedropper = [(_UIColorPickerViewControllerConfiguration *)self _showsEyedropper];
  v18 = 256;
  if (!_showsEyedropper)
  {
    v18 = 0;
  }

  v19 = v16 ^ v18;
  _showsGridOnly = [(_UIColorPickerViewControllerConfiguration *)self _showsGridOnly];
  v21 = 512;
  if (!_showsGridOnly)
  {
    v21 = 0;
  }

  v22 = v19 ^ v21;
  _isInPopoverPresentation = [(_UIColorPickerViewControllerConfiguration *)self _isInPopoverPresentation];
  v24 = 1024;
  if (!_isInPopoverPresentation)
  {
    v24 = 0;
  }

  v25 = v22 ^ v24;
  _isInSheetPresentation = [(_UIColorPickerViewControllerConfiguration *)self _isInSheetPresentation];
  v27 = 2048;
  if (!_isInSheetPresentation)
  {
    v27 = 0;
  }

  v28 = v25 ^ v27;
  _suggestedColors = [(_UIColorPickerViewControllerConfiguration *)self _suggestedColors];
  v30 = v28 ^ [_suggestedColors hash];

  return v15 ^ v30;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[_UIColorPickerViewControllerConfiguration showsAlpha](self forKey:{"showsAlpha"), @"ShowsAlpha"}];
  title = [(_UIColorPickerViewControllerConfiguration *)self title];
  [coderCopy encodeObject:title forKey:@"_Title"];

  [(_UIColorPickerViewControllerConfiguration *)self maxGain];
  [coderCopy encodeDouble:@"MaxGain" forKey:?];
  [coderCopy encodeInt:-[_UIColorPickerViewControllerConfiguration _userInterfaceStyleForGrid](self forKey:{"_userInterfaceStyleForGrid"), @"_interfaceStyle"}];
  [coderCopy encodeBool:-[_UIColorPickerViewControllerConfiguration _shouldUseDarkGridInDarkMode](self forKey:{"_shouldUseDarkGridInDarkMode"), @"_UseDarkGrid"}];
  [coderCopy encodeBool:-[_UIColorPickerViewControllerConfiguration _isEmbedded](self forKey:{"_isEmbedded"), @"_IsEmbedded"}];
  [coderCopy encodeBool:-[_UIColorPickerViewControllerConfiguration _useLandscapeLayout](self forKey:{"_useLandscapeLayout"), @"_UseLandscapeLayout"}];
  [(_UIColorPickerViewControllerConfiguration *)self _preferredWidth];
  *&v5 = v5;
  [coderCopy encodeFloat:@"_PreferredWidth" forKey:v5];
  _suggestedColors = [(_UIColorPickerViewControllerConfiguration *)self _suggestedColors];
  [coderCopy encodeObject:_suggestedColors forKey:@"_SuggestedColors"];

  [coderCopy encodeBool:-[_UIColorPickerViewControllerConfiguration _allowsNoColor](self forKey:{"_allowsNoColor"), @"_AllowsNoColor"}];
  [coderCopy encodeBool:-[_UIColorPickerViewControllerConfiguration _showsEyedropper](self forKey:{"_showsEyedropper"), @"_ShowsEyedropper"}];
  [coderCopy encodeBool:-[_UIColorPickerViewControllerConfiguration _showsGridOnly](self forKey:{"_showsGridOnly"), @"_ShowsGridOnly"}];
  [coderCopy encodeBool:-[_UIColorPickerViewControllerConfiguration _isInPopoverPresentation](self forKey:{"_isInPopoverPresentation"), @"_IsInPopoverPresentation"}];
  [coderCopy encodeBool:-[_UIColorPickerViewControllerConfiguration _isInSheetPresentation](self forKey:{"_isInSheetPresentation"), @"_IsInSheetPresentation"}];
}

- (_UIColorPickerViewControllerConfiguration)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _UIColorPickerViewControllerConfiguration;
  v5 = [(_UIColorPickerViewControllerConfiguration *)&v13 init];
  if (v5)
  {
    -[_UIColorPickerViewControllerConfiguration setShowsAlpha:](v5, "setShowsAlpha:", [coderCopy decodeBoolForKey:@"ShowsAlpha"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_Title"];
    [(_UIColorPickerViewControllerConfiguration *)v5 setTitle:v6];

    [coderCopy decodeDoubleForKey:@"MaxGain"];
    [(_UIColorPickerViewControllerConfiguration *)v5 setMaxGain:?];
    -[_UIColorPickerViewControllerConfiguration set_userInterfaceStyleForGrid:](v5, "set_userInterfaceStyleForGrid:", [coderCopy decodeIntForKey:@"_interfaceStyle"]);
    -[_UIColorPickerViewControllerConfiguration set_shouldUseDarkGridInDarkMode:](v5, "set_shouldUseDarkGridInDarkMode:", [coderCopy decodeBoolForKey:@"_UseDarkGrid"]);
    -[_UIColorPickerViewControllerConfiguration set_isEmbedded:](v5, "set_isEmbedded:", [coderCopy decodeBoolForKey:@"_IsEmbedded"]);
    -[_UIColorPickerViewControllerConfiguration set_useLandscapeLayout:](v5, "set_useLandscapeLayout:", [coderCopy decodeBoolForKey:@"_UseLandscapeLayout"]);
    [coderCopy decodeFloatForKey:@"_PreferredWidth"];
    [(_UIColorPickerViewControllerConfiguration *)v5 set_preferredWidth:v7];
    v8 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_SuggestedColors"];
    [(_UIColorPickerViewControllerConfiguration *)v5 set_suggestedColors:v11];

    -[_UIColorPickerViewControllerConfiguration set_allowsNoColor:](v5, "set_allowsNoColor:", [coderCopy decodeBoolForKey:@"_AllowsNoColor"]);
    -[_UIColorPickerViewControllerConfiguration set_showsEyedropper:](v5, "set_showsEyedropper:", [coderCopy decodeBoolForKey:@"_ShowsEyedropper"]);
    -[_UIColorPickerViewControllerConfiguration set_showsGridOnly:](v5, "set_showsGridOnly:", [coderCopy decodeBoolForKey:@"_ShowsGridOnly"]);
    -[_UIColorPickerViewControllerConfiguration set_isInPopoverPresentation:](v5, "set_isInPopoverPresentation:", [coderCopy decodeBoolForKey:@"_IsInPopoverPresentation"]);
    -[_UIColorPickerViewControllerConfiguration set_isInSheetPresentation:](v5, "set_isInSheetPresentation:", [coderCopy decodeBoolForKey:@"_IsInSheetPresentation"]);
  }

  return v5;
}

@end