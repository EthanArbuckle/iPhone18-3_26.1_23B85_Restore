@interface _UIFontPickerFontInfo
+ (id)infoWithFamilyName:(id)a3;
+ (id)infoWithFontDescriptor:(__CTFontDescriptor *)a3;
+ (id)infoWithName:(id)a3;
+ (id)initWithSystemDefaultFont;
- (BOOL)_hasMultipleFacesForFamily;
- (BOOL)fontCanRenderLocalizedName;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFontFamilyAvailable;
- (BOOL)matchesClientFontContext:(id)a3;
- (BOOL)matchesConfiguration:(id)a3;
- (BOOL)matchesFamilyForFontDescriptor:(id)a3;
- (BOOL)matchesFamilyName:(id)a3;
- (BOOL)matchesFontDescriptor:(id)a3;
- (BOOL)matchesFontNames:(id)a3;
- (BOOL)matchesSearchString:(id)a3;
- (BOOL)passesLanguageFilter:(id)a3;
- (NSArray)faces;
- (NSAttributedString)attributedString;
- (NSString)localizedFamilyName;
- (NSString)localizedFullName;
- (NSString)localizedName;
- (NSString)postscriptName;
- (NSString)preferredShortPreviewString;
- (UIImage)previewImage;
- (_UIFontPickerFontInfo)familyInfo;
- (_UIFontPickerFontInfo)initWithFamilyName:(id)a3;
- (_UIFontPickerFontInfo)initWithFontDescriptor:(id)a3;
- (_UIFontPickerFontInfo)initWithFontDescriptor:(id)a3 isSystemFont:(BOOL)a4;
- (_UIFontPickerFontInfo)initWithSystemDefaultFont;
- (id)_fontStringForTraitCollection:(id)a3;
- (id)_sortedFacesByWeight;
- (id)description;
- (id)displayNameForFont:(id)a3;
- (id)faceMatchingDescriptor:(id)a3;
- (void)_createPreviewImage:(id)a3;
- (void)_populateLocalizedNamesIfNecessary;
- (void)_updateAttributedStringIfNeeded;
- (void)_updatePreviewImageIfNeeded;
- (void)setHasMultipleFaces:(BOOL)a3;
@end

@implementation _UIFontPickerFontInfo

+ (id)infoWithName:(id)a3
{
  v4 = a3;
  v5 = [off_1E70ECC18 familyNames];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [[a1 alloc] initWithFamilyName:v4];
  }

  else
  {
    [off_1E70ECC18 defaultFontSize];
    v8 = [off_1E70ECC18 fontWithName:v4 size:?];
    v9 = [a1 alloc];
    v10 = v9;
    if (v8)
    {
      v11 = [v8 fontDescriptor];
      v7 = [v10 initWithFontDescriptor:v11];
    }

    else
    {
      v7 = [v9 initWithFamilyName:v4];
    }
  }

  return v7;
}

+ (id)infoWithFamilyName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFamilyName:v4];

  return v5;
}

- (_UIFontPickerFontInfo)initWithFamilyName:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_UIFontPickerFontInfo *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyName, a3);
    familyName = v7->_familyName;
    v16 = *off_1E70ECC90;
    v17[0] = familyName;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v9];
    fontDescriptor = v7->_fontDescriptor;
    v7->_fontDescriptor = v10;

    v12 = v7->_familyName;
    [off_1E70ECC18 defaultFontSize];
    v13 = [off_1E70ECC18 systemFontOfSize:?];
    v14 = [v13 familyName];
    v7->_isSystemFont = [(NSString *)v12 isEqualToString:v14];
  }

  return v7;
}

+ (id)initWithSystemDefaultFont
{
  v2 = [[a1 alloc] initWithSystemDefaultFont];

  return v2;
}

- (_UIFontPickerFontInfo)initWithSystemDefaultFont
{
  v2 = [(_UIFontPickerFontInfo *)self init];
  if (v2)
  {
    v3 = [off_1E70ECC20 defaultFontDescriptorWithTextStyle:*MEMORY[0x1E6965740]];
    fontDescriptor = v2->_fontDescriptor;
    v2->_fontDescriptor = v3;

    v5 = [(UIFontDescriptor *)v2->_fontDescriptor objectForKey:*off_1E70ECC90];
    familyName = v2->_familyName;
    v2->_familyName = v5;

    v2->_isSystemFont = 1;
  }

  return v2;
}

+ (id)infoWithFontDescriptor:(__CTFontDescriptor *)a3
{
  v4 = [[a1 alloc] initWithFontDescriptor:a3];

  return v4;
}

- (_UIFontPickerFontInfo)initWithFontDescriptor:(id)a3
{
  v5 = a3;
  v6 = [(_UIFontPickerFontInfo *)self init];
  if (v6)
  {
    v7 = [v5 objectForKey:*off_1E70ECC90];
    familyName = v6->_familyName;
    v6->_familyName = v7;

    v9 = [v5 objectForKey:*off_1E70ECC88];
    styleName = v6->_styleName;
    v6->_styleName = v9;

    v11 = [v5 objectForKey:*off_1E70ECCA0];
    fontName = v6->_fontName;
    v6->_fontName = v11;

    objc_storeStrong(&v6->_fontDescriptor, a3);
    v13 = v6->_familyName;
    [off_1E70ECC18 defaultFontSize];
    v14 = [off_1E70ECC18 systemFontOfSize:?];
    v15 = [v14 familyName];
    v6->_isSystemFont = [(NSString *)v13 isEqualToString:v15];
  }

  return v6;
}

- (_UIFontPickerFontInfo)initWithFontDescriptor:(id)a3 isSystemFont:(BOOL)a4
{
  result = [(_UIFontPickerFontInfo *)self initWithFontDescriptor:a3];
  if (result)
  {
    result->_isSystemFont = a4;
  }

  return result;
}

- (BOOL)_hasMultipleFacesForFamily
{
  hasMultipleFaces = self->_hasMultipleFaces;
  if (!hasMultipleFaces)
  {
    v4 = [off_1E70ECC18 fontNamesForFamilyName:self->_familyName];
    v5 = [v4 count];
    v6 = 1;
    if (v5 > 1)
    {
      v6 = 2;
    }

    self->_hasMultipleFaces = v6;

    hasMultipleFaces = self->_hasMultipleFaces;
  }

  return hasMultipleFaces > 1;
}

- (void)setHasMultipleFaces:(BOOL)a3
{
  v3 = 1;
  if (a3)
  {
    v3 = 2;
  }

  self->_hasMultipleFaces = v3;
}

- (id)_sortedFacesByWeight
{
  v16[1] = *MEMORY[0x1E69E9840];
  familyName = self->_familyName;
  v15 = *off_1E70ECC90;
  v16[0] = familyName;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v5 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v4];

  v6 = [v5 matchingFontDescriptorsWithMandatoryKeys:0];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [v6 sortedArrayUsingComparator:&__block_literal_global_581];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45___UIFontPickerFontInfo__sortedFacesByWeight__block_invoke_2;
  v12[3] = &unk_1E7123B48;
  v9 = v7;
  v13 = v9;
  v14 = self;
  [v8 enumerateObjectsUsingBlock:v12];
  v10 = v9;

  return v9;
}

- (NSArray)faces
{
  if (self->_styleName)
  {
    v3 = 0;
  }

  else
  {
    subInfos = self->_subInfos;
    if (!subInfos)
    {
      v7 = [(_UIFontPickerFontInfo *)self _sortedFacesByWeight];
      v8 = self->_subInfos;
      self->_subInfos = v7;

      subInfos = self->_subInfos;
    }

    v3 = subInfos;
  }

  return v3;
}

- (NSString)postscriptName
{
  v2 = [(_UIFontPickerFontInfo *)self fontDescriptor];
  v3 = [v2 postscriptName];

  return v3;
}

- (BOOL)isFontFamilyAvailable
{
  v2 = [(_UIFontPickerFontInfo *)self familyName];
  v3 = [off_1E70ECC18 fontNamesForFamilyName:v2];
  v4 = [v3 count] != 0;

  return v4;
}

- (NSString)preferredShortPreviewString
{
  v13 = *MEMORY[0x1E69E9840];
  p_preferredShortPreviewString = &self->_preferredShortPreviewString;
  preferredShortPreviewString = self->_preferredShortPreviewString;
  if (preferredShortPreviewString)
  {
    v4 = preferredShortPreviewString;
  }

  else
  {
    v5 = [off_1E70ECC18 fontWithDescriptor:self->_fontDescriptor size:0.0];
    v6 = [MEMORY[0x1E695DF58] preferredLanguages];
    v4 = CTFontCopySampleStringWithLanguages();
    if (!v4)
    {
      v7 = *(__UILogGetCategoryCachedImpl("FontPicker", &preferredShortPreviewString___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = [v5 fontName];
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unable to generate short sample string for %{public}@", &v11, 0xCu);
      }

      v4 = &stru_1EFB14550;
    }

    objc_storeStrong(p_preferredShortPreviewString, v4);
  }

  return v4;
}

- (UIImage)previewImage
{
  [(_UIFontPickerFontInfo *)self _updatePreviewImageIfNeeded];
  previewImage = self->_previewImage;

  return previewImage;
}

- (void)_updatePreviewImageIfNeeded
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v13 = v3;
  if (!self->_previewImage)
  {
    goto LABEL_5;
  }

  v4 = [v3 preferredContentSizeCategory];
  if (![v4 isEqualToString:self->_previewImageContentSize] || (objc_msgSend(v13, "displayScale"), v5 != self->_previewImageDisplayScale))
  {

LABEL_5:
    [(_UIFontPickerFontInfo *)self _createPreviewImage:v13];
    v6 = [v13 preferredContentSizeCategory];
    previewImageContentSize = self->_previewImageContentSize;
    self->_previewImageContentSize = v6;

    [v13 displayScale];
    self->_previewImageDisplayScale = v8;
    v9 = [(_UIFontPickerFontInfo *)self previewImagePrefersSingleCharacter];
    v10 = v13;
    self->_previewImageUsesSingleCharacter = v9;
    goto LABEL_6;
  }

  previewImageUsesSingleCharacter = self->_previewImageUsesSingleCharacter;
  v12 = [(_UIFontPickerFontInfo *)self previewImagePrefersSingleCharacter];

  v10 = v13;
  if (previewImageUsesSingleCharacter != v12)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_createPreviewImage:(id)a3
{
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  [v4 pointSize];
  v6 = v5;
  v7 = [(_UIFontPickerFontInfo *)self preferredShortPreviewString];

  [v4 lineHeight];
  v9 = v8;
  v10 = [(_UIFontPickerFontInfo *)self preferredShortPreviewString];

  v11 = [(_UIFontPickerFontInfo *)self previewImagePrefersSingleCharacter];
  [v4 lineHeight];
  v13 = v12;
  v14 = [off_1E70ECC18 fontWithDescriptor:self->_fontDescriptor size:v6];
  if (-[_UIFontPickerFontInfo previewImagePrefersSingleCharacter](self, "previewImagePrefersSingleCharacter") && (-[_UIFontPickerFontInfo preferredShortPreviewString](self, "preferredShortPreviewString"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 length], v15, v16 >= 2))
  {
    v17 = [(_UIFontPickerFontInfo *)self preferredShortPreviewString];
    v18 = [v17 substringToIndex:1];
  }

  else
  {
    v18 = [(_UIFontPickerFontInfo *)self preferredShortPreviewString];
  }

  v19 = 5.0;
  if (!v7)
  {
    v19 = 12.0;
  }

  v20 = 0.1;
  if (!v10)
  {
    v20 = 0.25;
  }

  v21 = floor(v9 * v20);
  if (v19 >= v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  v23 = v13 + v22 + v22;
  v24 = 2.0;
  if (v11)
  {
    v24 = 1.5;
  }

  v25 = v6 * v24;
  v26 = objc_alloc(MEMORY[0x1E696AAB0]);
  v54 = *off_1E70EC918;
  v55[0] = v14;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v28 = [v26 initWithString:v18 attributes:v27];

  [v28 size];
  v30 = v29;
  v32 = v31;
  v33 = [[UIGraphicsImageRenderer alloc] initWithSize:v25, v23];
  v41 = MEMORY[0x1E69E9820];
  v42 = 3221225472;
  v43 = __45___UIFontPickerFontInfo__createPreviewImage___block_invoke;
  v44 = &unk_1E7123B70;
  v45 = v4;
  v46 = v14;
  v49 = v22;
  v50 = v30;
  v51 = v32;
  v52 = v25;
  v53 = v23;
  v47 = self;
  v48 = v28;
  v34 = v28;
  v35 = v14;
  v36 = v4;
  v37 = [(UIGraphicsImageRenderer *)v33 imageWithActions:&v41];
  if ((CTFontDescriptorGetSymbolicTraits() & 0x2000) != 0)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  v39 = [v37 imageWithRenderingMode:{v38, v41, v42, v43, v44}];
  previewImage = self->_previewImage;
  self->_previewImage = v39;
}

- (void)_populateLocalizedNamesIfNecessary
{
  if (!self->_localizedFamilyName)
  {
    if (self->_styleName)
    {
      v4 = CTFontDescriptorCopyLocalizedAttribute(self->_fontDescriptor, *MEMORY[0x1E6965860], 0);
      localizedStyleName = self->_localizedStyleName;
      self->_localizedStyleName = v4;

      v6 = CTFontDescriptorCopyLocalizedAttribute(self->_fontDescriptor, *MEMORY[0x1E6965760], 0);
      localizedFullName = self->_localizedFullName;
      self->_localizedFullName = v6;
    }

    v8 = CTFontDescriptorCopyLocalizedAttribute(self->_fontDescriptor, *MEMORY[0x1E6965790], 0);
    localizedFamilyName = self->_localizedFamilyName;
    self->_localizedFamilyName = v8;
  }
}

- (NSString)localizedName
{
  [(_UIFontPickerFontInfo *)self _populateLocalizedNamesIfNecessary];
  localizedStyleName = self->_localizedStyleName;
  if (!localizedStyleName)
  {
    localizedStyleName = self->_localizedFamilyName;
  }

  return localizedStyleName;
}

- (NSString)localizedFullName
{
  [(_UIFontPickerFontInfo *)self _populateLocalizedNamesIfNecessary];
  p_localizedFullName = &self->_localizedFullName;
  if (!self->_localizedFullName || ![(_UIFontPickerFontInfo *)self _hasMultipleFacesForFamily])
  {
    p_localizedFullName = &self->_localizedFamilyName;
  }

  v4 = *p_localizedFullName;

  return v4;
}

- (BOOL)fontCanRenderLocalizedName
{
  v23[1] = *MEMORY[0x1E69E9840];
  canRenderName = self->_canRenderName;
  if (!canRenderName)
  {
    v4 = [off_1E70ECC18 fontWithDescriptor:self->_fontDescriptor size:0.0];
    v5 = MEMORY[0x1E696AD98];
    [(_UIFontPickerFontInfo *)self localizedName];
    v22 = *MEMORY[0x1E6965658];
    v23[0] = v4;
    v6 = 1;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v8 = CTLineCreateWithString();
    CTLineGetGlyphRuns(v8);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v20 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (CTRunGetFont() != v4)
          {
            v6 = 0;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v6 = 1;
    }

LABEL_12:

    v14 = [v5 numberWithBool:{v6, v17}];
    v15 = self->_canRenderName;
    self->_canRenderName = v14;

    canRenderName = self->_canRenderName;
  }

  return [(NSNumber *)canRenderName BOOLValue];
}

- (NSString)localizedFamilyName
{
  [(_UIFontPickerFontInfo *)self _populateLocalizedNamesIfNecessary];
  localizedFamilyName = self->_localizedFamilyName;

  return localizedFamilyName;
}

- (id)displayNameForFont:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_styleName)
  {
    v6 = MEMORY[0x1E6965868];
  }

  else
  {
    if (self->_isSystemFont)
    {
      v7 = _UIKitBundle();
      v8 = [v7 localizedStringForKey:@"FONT_PICKER_DEFAULT_FONT_NAME" value:@"Default Font" table:@"Localizable"];

      goto LABEL_7;
    }

    v6 = MEMORY[0x1E6965798];
  }

  v8 = CTFontCopyLocalizedName(v4, *v6, 0);
LABEL_7:

  return v8;
}

- (id)_fontStringForTraitCollection:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIFontPickerFontInfo *)self fontDescriptor];
  [off_1E70ECC18 defaultFontSize];
  v6 = [off_1E70ECC18 fontWithDescriptor:v5 size:?];
  if (v4)
  {
    v7 = [UIFontMetrics metricsForTextStyle:@"UICTFontTextStyleHeadline"];
    v8 = [v7 scaledFontForFont:v6 compatibleWithTraitCollection:v4];

    v6 = v8;
  }

  [v6 lineHeight];
  self->_lineHeight = v9;
  v10 = [(_UIFontPickerFontInfo *)self displayNameForFont:v6];
  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = *off_1E70EC918;
  v16[0] = v6;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [v11 initWithString:v10 attributes:v12];

  return v13;
}

- (void)_updateAttributedStringIfNeeded
{
  v9 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  if (!self->_attributedString || ([v9 preferredContentSizeCategory], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", self->_attributedStringContentSize), v3, (v4 & 1) == 0))
  {
    v5 = [(_UIFontPickerFontInfo *)self _fontStringForTraitCollection:v9];
    attributedString = self->_attributedString;
    self->_attributedString = v5;

    v7 = [v9 preferredContentSizeCategory];
    attributedStringContentSize = self->_attributedStringContentSize;
    self->_attributedStringContentSize = v7;
  }
}

- (NSAttributedString)attributedString
{
  [(_UIFontPickerFontInfo *)self _updateAttributedStringIfNeeded];
  attributedString = self->_attributedString;

  return attributedString;
}

- (BOOL)passesLanguageFilter:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_isSystemFont && (([v4 _swiftPredicate], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) || (objc_msgSend(v5, "_allowedLanguages"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9)))
  {
    v10 = MEMORY[0x1E6965758];
    if (!v7)
    {
      v10 = MEMORY[0x1E69657E8];
    }

    v11 = CTFontDescriptorCopyAttribute(self->_fontDescriptor, *v10);
    v6 = [v5 _matchesLanguageList:v11];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)matchesFamilyName:(id)a3
{
  v4 = a3;
  if (v4 && ![(NSString *)self->_familyName isEqualToString:v4])
  {
    v6 = [(UIFontDescriptor *)self->_fontDescriptor objectForKey:*off_1E70ECC90];
    v5 = [v6 isEqualToString:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)matchesFontNames:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && self->_fontName)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![*(*(&v13 + 1) + 8 * i) caseInsensitiveCompare:{self->_fontName, v13}])
          {
            v11 = 1;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_14:
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)matchesClientFontContext:(id)a3
{
  v4 = a3;
  if (getFontPickerClientFontContextClass())
  {
    v5 = [v4 _clientFontContextEndpoint];

    v6 = 1;
    if (v5)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 1;
      FontPickerClientFontContextClass = getFontPickerClientFontContextClass();
      v8 = [v4 _clientFontContextEndpoint];
      v9 = [FontPickerClientFontContextClass sharedInstanceForEndpoint:v8];

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __50___UIFontPickerFontInfo_matchesClientFontContext___block_invoke;
      v11[3] = &unk_1E7123B98;
      v11[4] = self;
      v11[5] = &v12;
      [v9 runBlockInClientFontContext:v11];
      v6 = *(v13 + 24);

      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (BOOL)matchesConfiguration:(id)a3
{
  v4 = a3;
  if (-[_UIFontPickerFontInfo matchesTraits:](self, "matchesTraits:", [v4 filteredTraits]) && -[_UIFontPickerFontInfo passesLanguageFilter:](self, "passesLanguageFilter:", v4))
  {
    v5 = [v4 _filterFamilyName];
    if ([(_UIFontPickerFontInfo *)self matchesFamilyName:v5])
    {
      v6 = [v4 _filterFontNames];
      if ([(_UIFontPickerFontInfo *)self matchesFontNames:v6])
      {
        v7 = [(_UIFontPickerFontInfo *)self matchesClientFontContext:v4];
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
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_UIFontPickerFontInfo)familyInfo
{
  if (self->_styleName)
  {
    v2 = [[_UIFontPickerFontInfo alloc] initWithFamilyName:self->_familyName];
  }

  else
  {
    v2 = self;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSString *)self->_familyName isEqualToString:v5->_familyName])
      {
        v6 = 0;
      }

      else if (self->_familyName)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5->_familyName != 0;
      }

      styleName = self->_styleName;
      if (styleName | v5->_styleName)
      {
        v9 = ![(NSString *)styleName isEqualToString:?];
      }

      else
      {
        LOBYTE(v9) = 0;
      }

      v10 = [(_UIFontPickerFontInfo *)self fontDescriptor];
      if (v10)
      {
        v11 = [(_UIFontPickerFontInfo *)v5 fontDescriptor];
        if (v11)
        {
          v12 = [(_UIFontPickerFontInfo *)self fontDescriptor];
          v13 = [v12 postscriptName];
          v14 = [(_UIFontPickerFontInfo *)v5 fontDescriptor];
          v15 = [v14 postscriptName];
          v16 = v13 == v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v7 = (v6 | v9) ^ 1 | v16;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

- (BOOL)matchesFamilyForFontDescriptor:(id)a3
{
  v4 = [a3 objectForKey:*off_1E70ECC90];
  v6 = v4 && (familyName = self->_familyName) != 0 && [(NSString *)familyName isEqualToString:v4];

  return v6;
}

- (BOOL)matchesFontDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(_UIFontPickerFontInfo *)self fontDescriptor];
  v6 = [v5 postscriptName];
  v7 = [v4 postscriptName];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  return v4;
}

- (id)faceMatchingDescriptor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIFontPickerFontInfo *)self hasMultipleFaces]&& [(_UIFontPickerFontInfo *)self matchesFamilyForFontDescriptor:v4])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(_UIFontPickerFontInfo *)self faces];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 matchesFontDescriptor:v4])
          {
            v6 = v9;
            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)matchesSearchString:(id)a3
{
  v4 = a3;
  v5 = [(_UIFontPickerFontInfo *)self localizedFullName];
  if ([v5 localizedCaseInsensitiveContainsString:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(_UIFontPickerFontInfo *)self styleName];
    if (v7)
    {
      v8 = [(_UIFontPickerFontInfo *)self styleName];
      v6 = [v8 localizedCaseInsensitiveContainsString:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  familyName = self->_familyName;
  v4 = [(_UIFontPickerFontInfo *)self fontDescriptor];
  v5 = [v4 postscriptName];
  v6 = [v2 stringWithFormat:@"%@ (%@)", familyName, v5];

  return v6;
}

@end