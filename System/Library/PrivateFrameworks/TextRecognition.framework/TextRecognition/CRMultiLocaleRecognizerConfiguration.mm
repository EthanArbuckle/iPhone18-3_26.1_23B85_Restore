@interface CRMultiLocaleRecognizerConfiguration
+ (id)cachedConfigurationWithImageReaderOptions:(id)a3 error:(id *)a4;
- (CRMultiLocaleRecognizerConfiguration)initWithImageReaderOptions:(id)a3 error:(id *)a4;
- (id)initV3DefaultConfigWithOptions:(id)a3;
@end

@implementation CRMultiLocaleRecognizerConfiguration

- (CRMultiLocaleRecognizerConfiguration)initWithImageReaderOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CRMultiLocaleRecognizerConfiguration;
  v7 = [(CRRecognizerConfiguration *)&v14 initWithImageReaderOptions:v6 error:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"CRImageReaderLanguageKey"];

    if (v8)
    {
      v9 = [v6 objectForKeyedSubscript:@"CRImageReaderLanguageKey"];
      v10 = [CRRecognizerConfiguration supportedLanguagesForVersion:[(CRRecognizerConfiguration *)v7 revision]];
      v11 = [CRRecognizerConfiguration languageSetFromInputLanguages:v9 supportedLanguages:v10];
      languages = v7->_languages;
      v7->_languages = v11;
    }
  }

  return v7;
}

+ (id)cachedConfigurationWithImageReaderOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&_MergedGlobals_3);
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  v7 = WeakRetained;
  v8 = objc_loadWeakRetained(&_MergedGlobals_3);
  if (v8 != v5)
  {

LABEL_4:
    v9 = qword_1ED95F5D0;
    qword_1ED95F5D0 = 0;

    v10 = [objc_alloc(objc_opt_class()) initWithImageReaderOptions:v5 error:a4];
    v11 = qword_1ED95F5D0;
    qword_1ED95F5D0 = v10;

    objc_storeWeak(&_MergedGlobals_3, v5);
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

- (id)initV3DefaultConfigWithOptions:(id)a3
{
  v9.receiver = self;
  v9.super_class = CRMultiLocaleRecognizerConfiguration;
  v3 = [(CRRecognizerConfiguration *)&v9 initV3DefaultConfigWithOptions:a3];
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