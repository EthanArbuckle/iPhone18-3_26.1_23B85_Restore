@interface CRMultiLocaleRecognizerConfiguration
+ (id)cachedConfigurationWithImageReaderOptions:(id)options error:(id *)error;
- (CRMultiLocaleRecognizerConfiguration)initWithImageReaderOptions:(id)options error:(id *)error;
- (id)initV3DefaultConfigWithOptions:(id)options;
@end

@implementation CRMultiLocaleRecognizerConfiguration

- (CRMultiLocaleRecognizerConfiguration)initWithImageReaderOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = CRMultiLocaleRecognizerConfiguration;
  v7 = [(CRRecognizerConfiguration *)&v14 initWithImageReaderOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"CRImageReaderLanguageKey"];

    if (v8)
    {
      v9 = [optionsCopy objectForKeyedSubscript:@"CRImageReaderLanguageKey"];
      v10 = [CRRecognizerConfiguration supportedLanguagesForVersion:[(CRRecognizerConfiguration *)v7 revision]];
      v11 = [CRRecognizerConfiguration languageSetFromInputLanguages:v9 supportedLanguages:v10];
      languages = v7->_languages;
      v7->_languages = v11;
    }
  }

  return v7;
}

+ (id)cachedConfigurationWithImageReaderOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  WeakRetained = objc_loadWeakRetained(&_MergedGlobals_3);
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  v7 = WeakRetained;
  v8 = objc_loadWeakRetained(&_MergedGlobals_3);
  if (v8 != optionsCopy)
  {

LABEL_4:
    v9 = qword_1ED95F5D0;
    qword_1ED95F5D0 = 0;

    v10 = [objc_alloc(objc_opt_class()) initWithImageReaderOptions:optionsCopy error:error];
    v11 = qword_1ED95F5D0;
    qword_1ED95F5D0 = v10;

    objc_storeWeak(&_MergedGlobals_3, optionsCopy);
    goto LABEL_5;
  }

  v13 = qword_1ED95F5D0;

  if (!v13)
  {
    goto LABEL_4;
  }

  v10 = qword_1ED95F5D0;
LABEL_5:

  return v10;
}

- (id)initV3DefaultConfigWithOptions:(id)options
{
  v9.receiver = self;
  v9.super_class = CRMultiLocaleRecognizerConfiguration;
  v3 = [(CRRecognizerConfiguration *)&v9 initV3DefaultConfigWithOptions:options];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFB8]);
    v5 = [CRRecognizerConfiguration supportedLanguagesForVersion:3];
    v6 = [v4 initWithArray:v5];
    v7 = v3[11];
    v3[11] = v6;
  }

  return v3;
}

@end