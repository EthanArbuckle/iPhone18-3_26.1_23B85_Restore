@interface VUIDocumentPreFetchedDataPlayerHUD
- (VUIDocumentPreFetchedDataPlayerHUD)initWithDictionary:(id)dictionary;
- (id)jsonData;
@end

@implementation VUIDocumentPreFetchedDataPlayerHUD

- (VUIDocumentPreFetchedDataPlayerHUD)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = VUIDocumentPreFetchedDataPlayerHUD;
  v5 = [(VUIDocumentPreFetchedData *)&v13 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"tabId"];
    if (v6)
    {
      [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setTabId:v6];
    }

    v7 = [dictionaryCopy objectForKey:@"title"];
    if (v7)
    {
      [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setTitle:v7];
    }

    v8 = [dictionaryCopy objectForKey:@"canonicalId"];
    if (v8)
    {
      [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setCanonicalId:v8];
    }

    -[VUIDocumentPreFetchedDataPlayerHUD setIsMultiviewPlayer:](v5, "setIsMultiviewPlayer:", [dictionaryCopy vui_BOOLForKey:@"isMultiviewPlayer" defaultValue:0]);
    -[VUIDocumentPreFetchedDataPlayerHUD setPlayFromStart:](v5, "setPlayFromStart:", [dictionaryCopy vui_BOOLForKey:@"playFromStart" defaultValue:0]);
    -[VUIDocumentPreFetchedDataPlayerHUD setIncludeMultiviewButton:](v5, "setIncludeMultiviewButton:", [dictionaryCopy vui_BOOLForKey:@"includeMultiviewButton" defaultValue:0]);
    v9 = [dictionaryCopy objectForKey:@"locale"];
    [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setLocale:v9];

    v10 = [dictionaryCopy objectForKey:@"multiviewIdentifiers"];
    [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setMultiviewIdentifiers:v10];

    v11 = [dictionaryCopy objectForKey:@"excludedCanonicals"];
    if (v11)
    {
      [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setExcludedCanonicals:v11];
    }
  }

  return v5;
}

- (id)jsonData
{
  v3 = objc_opt_new();
  tabId = [(VUIDocumentPreFetchedDataPlayerHUD *)self tabId];
  [v3 vui_setObjectIfNotNil:tabId forKey:@"tabId"];

  title = [(VUIDocumentPreFetchedDataPlayerHUD *)self title];
  [v3 vui_setObjectIfNotNil:title forKey:@"title"];

  canonicalId = [(VUIDocumentPreFetchedDataPlayerHUD *)self canonicalId];
  [v3 vui_setObjectIfNotNil:canonicalId forKey:@"canonicalId"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIDocumentPreFetchedDataPlayerHUD isMultiviewPlayer](self, "isMultiviewPlayer")}];
  [v3 setObject:v7 forKey:@"isMultiviewPlayer"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIDocumentPreFetchedDataPlayerHUD playFromStart](self, "playFromStart")}];
  [v3 setObject:v8 forKey:@"playFromStart"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIDocumentPreFetchedDataPlayerHUD includeMultiviewButton](self, "includeMultiviewButton")}];
  [v3 setObject:v9 forKey:@"includeMultiviewButton"];

  multiviewIdentifiers = [(VUIDocumentPreFetchedDataPlayerHUD *)self multiviewIdentifiers];
  [v3 vui_setObjectIfNotNil:multiviewIdentifiers forKey:@"multiviewIdentifiers"];

  locale = [(VUIDocumentPreFetchedDataPlayerHUD *)self locale];
  [v3 vui_setObjectIfNotNil:locale forKey:@"locale"];

  excludedCanonicals = [(VUIDocumentPreFetchedDataPlayerHUD *)self excludedCanonicals];
  v13 = excludedCanonicals;
  v14 = MEMORY[0x1E695E0F0];
  if (excludedCanonicals)
  {
    v14 = excludedCanonicals;
  }

  v15 = v14;

  [v3 setObject:v15 forKey:@"excludedCanonicals"];
  v16 = [v3 copy];

  return v16;
}

@end