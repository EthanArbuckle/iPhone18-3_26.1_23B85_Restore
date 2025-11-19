@interface _UIColorPickerViewControllerConfiguration
- (BOOL)isEqual:(id)a3;
- (_UIColorPickerViewControllerConfiguration)init;
- (_UIColorPickerViewControllerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setShowsAlpha:{-[_UIColorPickerViewControllerConfiguration showsAlpha](self, "showsAlpha")}];
  [(_UIColorPickerViewControllerConfiguration *)self maxGain];
  [v4 setMaxGain:?];
  v5 = [(_UIColorPickerViewControllerConfiguration *)self title];
  [v4 setTitle:v5];

  [v4 set_userInterfaceStyleForGrid:{-[_UIColorPickerViewControllerConfiguration _userInterfaceStyleForGrid](self, "_userInterfaceStyleForGrid")}];
  [v4 set_shouldUseDarkGridInDarkMode:{-[_UIColorPickerViewControllerConfiguration _shouldUseDarkGridInDarkMode](self, "_shouldUseDarkGridInDarkMode")}];
  [v4 set_isEmbedded:{-[_UIColorPickerViewControllerConfiguration _isEmbedded](self, "_isEmbedded")}];
  [v4 set_useLandscapeLayout:{-[_UIColorPickerViewControllerConfiguration _useLandscapeLayout](self, "_useLandscapeLayout")}];
  [(_UIColorPickerViewControllerConfiguration *)self _preferredWidth];
  [v4 set_preferredWidth:?];
  v6 = [(_UIColorPickerViewControllerConfiguration *)self _suggestedColors];
  [v4 set_suggestedColors:v6];

  [v4 set_allowsNoColor:{-[_UIColorPickerViewControllerConfiguration _allowsNoColor](self, "_allowsNoColor")}];
  [v4 set_showsEyedropper:{-[_UIColorPickerViewControllerConfiguration _showsEyedropper](self, "_showsEyedropper")}];
  [v4 set_showsGridOnly:{-[_UIColorPickerViewControllerConfiguration _showsGridOnly](self, "_showsGridOnly")}];
  [v4 set_isInPopoverPresentation:{-[_UIColorPickerViewControllerConfiguration _isInPopoverPresentation](self, "_isInPopoverPresentation")}];
  [v4 set_isInSheetPresentation:{-[_UIColorPickerViewControllerConfiguration _isInSheetPresentation](self, "_isInSheetPresentation")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_UIColorPickerViewControllerConfiguration *)self showsAlpha];
      if (v6 != [(_UIColorPickerViewControllerConfiguration *)v5 showsAlpha])
      {
        LOBYTE(v7) = 0;
LABEL_28:

        goto LABEL_29;
      }

      v8 = [(_UIColorPickerViewControllerConfiguration *)self title];
      v9 = [(_UIColorPickerViewControllerConfiguration *)v5 title];
      v10 = v8;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        LOBYTE(v7) = 0;
        v13 = v11;
        v14 = v10;
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

      v19 = [(_UIColorPickerViewControllerConfiguration *)self _shouldUseDarkGridInDarkMode];
      if (v19 != [(_UIColorPickerViewControllerConfiguration *)v5 _shouldUseDarkGridInDarkMode])
      {
        goto LABEL_26;
      }

      v20 = [(_UIColorPickerViewControllerConfiguration *)self _userInterfaceStyleForGrid];
      if (v20 != [(_UIColorPickerViewControllerConfiguration *)v5 _userInterfaceStyleForGrid])
      {
        goto LABEL_26;
      }

      v21 = [(_UIColorPickerViewControllerConfiguration *)self _isEmbedded];
      if (v21 != [(_UIColorPickerViewControllerConfiguration *)v5 _isEmbedded])
      {
        goto LABEL_26;
      }

      v22 = [(_UIColorPickerViewControllerConfiguration *)self _useLandscapeLayout];
      if (v22 != [(_UIColorPickerViewControllerConfiguration *)v5 _useLandscapeLayout])
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

      v14 = [(_UIColorPickerViewControllerConfiguration *)self _suggestedColors];
      v13 = [(_UIColorPickerViewControllerConfiguration *)v5 _suggestedColors];
      if (v14 == v13 && (v26 = [(_UIColorPickerViewControllerConfiguration *)self _allowsNoColor], v26 == [(_UIColorPickerViewControllerConfiguration *)v5 _allowsNoColor]) && (v27 = [(_UIColorPickerViewControllerConfiguration *)self _showsEyedropper], v27 == [(_UIColorPickerViewControllerConfiguration *)v5 _showsEyedropper]) && (v28 = [(_UIColorPickerViewControllerConfiguration *)self _showsGridOnly], v28 == [(_UIColorPickerViewControllerConfiguration *)v5 _showsGridOnly]) && (v29 = [(_UIColorPickerViewControllerConfiguration *)self _isInPopoverPresentation], v29 == [(_UIColorPickerViewControllerConfiguration *)v5 _isInPopoverPresentation]))
      {
        v31 = [(_UIColorPickerViewControllerConfiguration *)self _isInSheetPresentation];
        v7 = v31 ^ [(_UIColorPickerViewControllerConfiguration *)v5 _isInSheetPresentation]^ 1;
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
  v3 = [(_UIColorPickerViewControllerConfiguration *)self showsAlpha];
  v4 = [(_UIColorPickerViewControllerConfiguration *)self title];
  v5 = [v4 hash] ^ v3;
  v6 = v5 ^ (2 * [(_UIColorPickerViewControllerConfiguration *)self _userInterfaceStyleForGrid]);
  if ([(_UIColorPickerViewControllerConfiguration *)self _shouldUseDarkGridInDarkMode])
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_UIColorPickerViewControllerConfiguration *)self _isEmbedded];
  v9 = 16;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v7 ^ v9;
  v11 = [(_UIColorPickerViewControllerConfiguration *)self _useLandscapeLayout];
  v12 = 32;
  if (!v11)
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

  v17 = [(_UIColorPickerViewControllerConfiguration *)self _showsEyedropper];
  v18 = 256;
  if (!v17)
  {
    v18 = 0;
  }

  v19 = v16 ^ v18;
  v20 = [(_UIColorPickerViewControllerConfiguration *)self _showsGridOnly];
  v21 = 512;
  if (!v20)
  {
    v21 = 0;
  }

  v22 = v19 ^ v21;
  v23 = [(_UIColorPickerViewControllerConfiguration *)self _isInPopoverPresentation];
  v24 = 1024;
  if (!v23)
  {
    v24 = 0;
  }

  v25 = v22 ^ v24;
  v26 = [(_UIColorPickerViewControllerConfiguration *)self _isInSheetPresentation];
  v27 = 2048;
  if (!v26)
  {
    v27 = 0;
  }

  v28 = v25 ^ v27;
  v29 = [(_UIColorPickerViewControllerConfiguration *)self _suggestedColors];
  v30 = v28 ^ [v29 hash];

  return v15 ^ v30;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeBool:-[_UIColorPickerViewControllerConfiguration showsAlpha](self forKey:{"showsAlpha"), @"ShowsAlpha"}];
  v4 = [(_UIColorPickerViewControllerConfiguration *)self title];
  [v7 encodeObject:v4 forKey:@"_Title"];

  [(_UIColorPickerViewControllerConfiguration *)self maxGain];
  [v7 encodeDouble:@"MaxGain" forKey:?];
  [v7 encodeInt:-[_UIColorPickerViewControllerConfiguration _userInterfaceStyleForGrid](self forKey:{"_userInterfaceStyleForGrid"), @"_interfaceStyle"}];
  [v7 encodeBool:-[_UIColorPickerViewControllerConfiguration _shouldUseDarkGridInDarkMode](self forKey:{"_shouldUseDarkGridInDarkMode"), @"_UseDarkGrid"}];
  [v7 encodeBool:-[_UIColorPickerViewControllerConfiguration _isEmbedded](self forKey:{"_isEmbedded"), @"_IsEmbedded"}];
  [v7 encodeBool:-[_UIColorPickerViewControllerConfiguration _useLandscapeLayout](self forKey:{"_useLandscapeLayout"), @"_UseLandscapeLayout"}];
  [(_UIColorPickerViewControllerConfiguration *)self _preferredWidth];
  *&v5 = v5;
  [v7 encodeFloat:@"_PreferredWidth" forKey:v5];
  v6 = [(_UIColorPickerViewControllerConfiguration *)self _suggestedColors];
  [v7 encodeObject:v6 forKey:@"_SuggestedColors"];

  [v7 encodeBool:-[_UIColorPickerViewControllerConfiguration _allowsNoColor](self forKey:{"_allowsNoColor"), @"_AllowsNoColor"}];
  [v7 encodeBool:-[_UIColorPickerViewControllerConfiguration _showsEyedropper](self forKey:{"_showsEyedropper"), @"_ShowsEyedropper"}];
  [v7 encodeBool:-[_UIColorPickerViewControllerConfiguration _showsGridOnly](self forKey:{"_showsGridOnly"), @"_ShowsGridOnly"}];
  [v7 encodeBool:-[_UIColorPickerViewControllerConfiguration _isInPopoverPresentation](self forKey:{"_isInPopoverPresentation"), @"_IsInPopoverPresentation"}];
  [v7 encodeBool:-[_UIColorPickerViewControllerConfiguration _isInSheetPresentation](self forKey:{"_isInSheetPresentation"), @"_IsInSheetPresentation"}];
}

- (_UIColorPickerViewControllerConfiguration)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIColorPickerViewControllerConfiguration;
  v5 = [(_UIColorPickerViewControllerConfiguration *)&v13 init];
  if (v5)
  {
    -[_UIColorPickerViewControllerConfiguration setShowsAlpha:](v5, "setShowsAlpha:", [v4 decodeBoolForKey:@"ShowsAlpha"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_Title"];
    [(_UIColorPickerViewControllerConfiguration *)v5 setTitle:v6];

    [v4 decodeDoubleForKey:@"MaxGain"];
    [(_UIColorPickerViewControllerConfiguration *)v5 setMaxGain:?];
    -[_UIColorPickerViewControllerConfiguration set_userInterfaceStyleForGrid:](v5, "set_userInterfaceStyleForGrid:", [v4 decodeIntForKey:@"_interfaceStyle"]);
    -[_UIColorPickerViewControllerConfiguration set_shouldUseDarkGridInDarkMode:](v5, "set_shouldUseDarkGridInDarkMode:", [v4 decodeBoolForKey:@"_UseDarkGrid"]);
    -[_UIColorPickerViewControllerConfiguration set_isEmbedded:](v5, "set_isEmbedded:", [v4 decodeBoolForKey:@"_IsEmbedded"]);
    -[_UIColorPickerViewControllerConfiguration set_useLandscapeLayout:](v5, "set_useLandscapeLayout:", [v4 decodeBoolForKey:@"_UseLandscapeLayout"]);
    [v4 decodeFloatForKey:@"_PreferredWidth"];
    [(_UIColorPickerViewControllerConfiguration *)v5 set_preferredWidth:v7];
    v8 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_SuggestedColors"];
    [(_UIColorPickerViewControllerConfiguration *)v5 set_suggestedColors:v11];

    -[_UIColorPickerViewControllerConfiguration set_allowsNoColor:](v5, "set_allowsNoColor:", [v4 decodeBoolForKey:@"_AllowsNoColor"]);
    -[_UIColorPickerViewControllerConfiguration set_showsEyedropper:](v5, "set_showsEyedropper:", [v4 decodeBoolForKey:@"_ShowsEyedropper"]);
    -[_UIColorPickerViewControllerConfiguration set_showsGridOnly:](v5, "set_showsGridOnly:", [v4 decodeBoolForKey:@"_ShowsGridOnly"]);
    -[_UIColorPickerViewControllerConfiguration set_isInPopoverPresentation:](v5, "set_isInPopoverPresentation:", [v4 decodeBoolForKey:@"_IsInPopoverPresentation"]);
    -[_UIColorPickerViewControllerConfiguration set_isInSheetPresentation:](v5, "set_isInSheetPresentation:", [v4 decodeBoolForKey:@"_IsInSheetPresentation"]);
  }

  return v5;
}

@end