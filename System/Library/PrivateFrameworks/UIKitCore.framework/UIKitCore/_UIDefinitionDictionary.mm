@interface _UIDefinitionDictionary
+ (id)_normalizedLanguageStringForLanguageCode:(id)code;
- (BOOL)_hasDefinitionForTerm:(id)term;
- (BOOL)_isTTYDictionary;
- (NSString)localizedDictionaryName;
- (NSString)localizedLanguageName;
- (_UIDefinitionDictionary)initWithAsset:(id)asset;
- (id)_HTMLDefinitionForTerm:(id)term type:(int64_t)type;
- (id)_attributedDefinitionForTerm:(id)term;
- (id)_definitionValueForTerm:(id)term;
- (id)description;
- (void)dealloc;
- (void)updateAsset;
@end

@implementation _UIDefinitionDictionary

- (_UIDefinitionDictionary)initWithAsset:(id)asset
{
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = _UIDefinitionDictionary;
  v6 = [(_UIDefinitionDictionary *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawAsset, asset);
    attributes = [(MAAsset *)v7->_rawAsset attributes];
    v9 = [attributes objectForKey:@"Language"];
    definitionLanguage = v7->_definitionLanguage;
    v7->_definitionLanguage = v9;

    [(_UIDefinitionDictionary *)v7 updateAsset];
  }

  return v7;
}

- (void)updateAsset
{
  assetToUpgrade = self->_assetToUpgrade;
  if (assetToUpgrade)
  {
    objc_storeStrong(&self->_rawAsset, assetToUpgrade);
    v4 = self->_assetToUpgrade;
    self->_assetToUpgrade = 0;
  }

  if ([(_UIDefinitionDictionary *)self assetIsLocal])
  {
    dictionary = self->_dictionary;
    if (dictionary)
    {
      CFRelease(dictionary);
    }

    attributes = [(MAAsset *)self->_rawAsset attributes];
    getLocalFileUrl = [(MAAsset *)self->_rawAsset getLocalFileUrl];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v8 = getDCSDictionaryCreateWithAssetAttributesSymbolLoc_ptr;
    v15 = getDCSDictionaryCreateWithAssetAttributesSymbolLoc_ptr;
    if (!getDCSDictionaryCreateWithAssetAttributesSymbolLoc_ptr)
    {
      v9 = DictionaryServicesLibrary_0();
      v13[3] = dlsym(v9, "DCSDictionaryCreateWithAssetAttributes");
      getDCSDictionaryCreateWithAssetAttributesSymbolLoc_ptr = v13[3];
      v8 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (v8)
    {
      self->_dictionary = v8(attributes, getLocalFileUrl);
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"DCSDictionaryRef _DCSDictionaryCreateWithAssetAttributes(CFDictionaryRef, CFURLRef)"}];
      [currentHandler handleFailureInFunction:v11 file:@"_UIDictionaryManager.m" lineNumber:34 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }
}

- (void)dealloc
{
  dictionary = self->_dictionary;
  if (dictionary)
  {
    CFRelease(dictionary);
    self->_dictionary = 0;
  }

  v4.receiver = self;
  v4.super_class = _UIDefinitionDictionary;
  [(_UIDefinitionDictionary *)&v4 dealloc];
}

- (NSString)localizedLanguageName
{
  if ([(_UIDefinitionDictionary *)self _isTTYDictionary])
  {
    v3 = _UINSLocalizedStringWithDefaultValue(@"TTY Dictionary", @"TTY Dictionary");
  }

  else
  {
    attributes = [(MAAsset *)self->_rawAsset attributes];
    v5 = [attributes objectForKey:@"IndexLanguages"];

    v6 = objc_opt_class();
    firstObject = [v5 firstObject];
    v8 = [v6 _normalizedLanguageStringForLanguageCode:firstObject];

    if ([v5 count] == 1)
    {
      v9 = v8;
    }

    else if ([v5 count] == 2)
    {
      v10 = objc_opt_class();
      v11 = [v5 objectAtIndex:1];
      v12 = [v10 _normalizedLanguageStringForLanguageCode:v11];

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v8, v12];
    }

    else
    {
      v9 = 0;
    }

    v3 = v9;
  }

  return v3;
}

- (NSString)localizedDictionaryName
{
  attributes = [(MAAsset *)self->_rawAsset attributes];
  v3 = [attributes objectForKey:@"DictionaryPackageDisplayName"];
  if (!v3)
  {
    v3 = [attributes objectForKey:@"DictionaryPackageName"];
  }

  stringByDeletingPathExtension = [v3 stringByDeletingPathExtension];

  if (stringByDeletingPathExtension)
  {
    v5 = stringByDeletingPathExtension;
  }

  else
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v7 = *MEMORY[0x1E695D9A8];
    v8 = [attributes objectForKey:@"Language"];
    v5 = [currentLocale displayNameForKey:v7 value:v8];
  }

  return v5;
}

+ (id)_normalizedLanguageStringForLanguageCode:(id)code
{
  v13[64] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  if (!codeCopy)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v4 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:codeCopy];
  if ([v4 isEqual:@"en-US"])
  {
    v5 = _UINSLocalizedStringWithDefaultValue(@"American English", @"American English");
  }

  else
  {
    if (qword_1ED49D850 != -1)
    {
      dispatch_once(&qword_1ED49D850, &__block_literal_global_147);
    }

    v12[1] = 0;
    [codeCopy UTF8String];
    v7 = uldn_localeDisplayName();
    v8 = v7;
    if (v7 >= 257)
    {
      MEMORY[0x1EEE9AC00](v7);
      v10 = v12 - v9;
      [codeCopy UTF8String];
      uldn_localeDisplayName();
      v6 = [MEMORY[0x1E696AEC0] stringWithCharacters:v10 length:v8];
      goto LABEL_11;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:v13 length:v7];
  }

  v6 = v5;
LABEL_11:

LABEL_12:

  return v6;
}

- (BOOL)_hasDefinitionForTerm:(id)term
{
  termCopy = term;
  v5 = [termCopy length];
  if (v5 >= 0xFA)
  {
    v6 = 250;
  }

  else
  {
    v6 = v5;
  }

  v7 = [termCopy substringToIndex:v6];
  v8 = v7;
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    goto LABEL_9;
  }

  v10 = [v7 length];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v11 = getDCSHasDefinitionForTermSymbolLoc_ptr;
  v19 = getDCSHasDefinitionForTermSymbolLoc_ptr;
  if (!getDCSHasDefinitionForTermSymbolLoc_ptr)
  {
    v12 = DictionaryServicesLibrary_0();
    v17[3] = dlsym(v12, "DCSHasDefinitionForTerm");
    getDCSHasDefinitionForTermSymbolLoc_ptr = v17[3];
    v11 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v11)
  {
    LOBYTE(dictionary) = (v11)(dictionary, v8, 0, v10, 2, 0) != 0;
LABEL_9:

    return dictionary;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean _DCSHasDefinitionForTerm(DCSDictionaryRef, CFStringRef, CFRange, DCSTransformStyle, DCSDictionaryRef *)"}];
  [currentHandler handleFailureInFunction:v15 file:@"_UIDictionaryManager.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (id)_HTMLDefinitionForTerm:(id)term type:(int64_t)type
{
  termCopy = term;
  v7 = termCopy;
  if (self->_dictionary)
  {
    v8 = [termCopy length];
    if (v8 >= 0xFA)
    {
      v9 = 250;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 substringToIndex:v9];
    dictionary = self->_dictionary;
    v12 = [v10 length];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v13 = getDCSCopyDefinitionMarkupSymbolLoc_ptr;
    v22 = getDCSCopyDefinitionMarkupSymbolLoc_ptr;
    if (!getDCSCopyDefinitionMarkupSymbolLoc_ptr)
    {
      v14 = DictionaryServicesLibrary_0();
      v20[3] = dlsym(v14, "DCSCopyDefinitionMarkup");
      getDCSCopyDefinitionMarkupSymbolLoc_ptr = v20[3];
      v13 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v13)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFStringRef _DCSCopyDefinitionMarkup(DCSDictionaryRef, CFStringRef, CFRange, DCSTransformStyle, CFURLRef *)"}];
      [currentHandler handleFailureInFunction:v18 file:@"_UIDictionaryManager.m" lineNumber:36 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v15 = (v13)(dictionary, v10, 0, v12, type, 0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_attributedDefinitionForTerm:(id)term
{
  v3 = [(_UIDefinitionDictionary *)self _shortHTMLDefinitionForTerm:term];
  v4 = [v3 dataUsingEncoding:10];

  v5 = [[off_1E70ECB68 alloc] initWithData:v4 options:0];
  v6 = v5;
  if (v5)
  {
    attributedString = [v5 attributedString];
  }

  else
  {
    attributedString = 0;
  }

  return attributedString;
}

- (id)_definitionValueForTerm:(id)term
{
  termCopy = term;
  v5 = [_UIDefinitionValue alloc];
  localizedDictionaryName = [(_UIDefinitionDictionary *)self localizedDictionaryName];
  v7 = [(_UIDefinitionDictionary *)self _attributedDefinitionForTerm:termCopy];
  v8 = [(_UIDefinitionDictionary *)self _fullHTMLDefinitionForTerm:termCopy];
  v9 = [(_UIDefinitionValue *)v5 initWithLocalizedDictionaryName:localizedDictionaryName term:termCopy definition:v7 longDefinition:v8];

  [(_UIDefinitionValue *)v9 setRawAsset:self->_rawAsset];

  return v9;
}

- (BOOL)_isTTYDictionary
{
  attributes = [(MAAsset *)self->_rawAsset attributes];
  v3 = [attributes objectForKey:@"DictionaryPackageName"];
  v4 = [v3 isEqualToString:@"TTY Abbreviations Dictionary.dictionary"];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  localizedDictionaryName = [(_UIDefinitionDictionary *)self localizedDictionaryName];
  activated = [(_UIDefinitionDictionary *)self activated];
  v8 = @"inactive";
  if (activated)
  {
    v8 = @"active";
  }

  v9 = [v3 stringWithFormat:@"%@ <%p>: Dictionary name: %@ (%@), Asset: %@", v5, self, localizedDictionaryName, v8, self->_rawAsset];

  return v9;
}

@end