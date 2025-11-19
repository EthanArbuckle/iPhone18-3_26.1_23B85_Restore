@interface VUIDocumentPreFetchedDataPlayerHUD
- (VUIDocumentPreFetchedDataPlayerHUD)initWithDictionary:(id)a3;
- (id)jsonData;
@end

@implementation VUIDocumentPreFetchedDataPlayerHUD

- (VUIDocumentPreFetchedDataPlayerHUD)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VUIDocumentPreFetchedDataPlayerHUD;
  v5 = [(VUIDocumentPreFetchedData *)&v13 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"tabId"];
    if (v6)
    {
      [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setTabId:v6];
    }

    v7 = [v4 objectForKey:@"title"];
    if (v7)
    {
      [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setTitle:v7];
    }

    v8 = [v4 objectForKey:@"canonicalId"];
    if (v8)
    {
      [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setCanonicalId:v8];
    }

    -[VUIDocumentPreFetchedDataPlayerHUD setIsMultiviewPlayer:](v5, "setIsMultiviewPlayer:", [v4 vui_BOOLForKey:@"isMultiviewPlayer" defaultValue:0]);
    -[VUIDocumentPreFetchedDataPlayerHUD setPlayFromStart:](v5, "setPlayFromStart:", [v4 vui_BOOLForKey:@"playFromStart" defaultValue:0]);
    -[VUIDocumentPreFetchedDataPlayerHUD setIncludeMultiviewButton:](v5, "setIncludeMultiviewButton:", [v4 vui_BOOLForKey:@"includeMultiviewButton" defaultValue:0]);
    v9 = [v4 objectForKey:@"locale"];
    [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setLocale:v9];

    v10 = [v4 objectForKey:@"multiviewIdentifiers"];
    [(VUIDocumentPreFetchedDataPlayerHUD *)v5 setMultiviewIdentifiers:v10];

    v11 = [v4 objectForKey:@"excludedCanonicals"];
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
  v4 = [(VUIDocumentPreFetchedDataPlayerHUD *)self tabId];
  [v3 vui_setObjectIfNotNil:v4 forKey:@"tabId"];

  v5 = [(VUIDocumentPreFetchedDataPlayerHUD *)self title];
  [v3 vui_setObjectIfNotNil:v5 forKey:@"title"];

  v6 = [(VUIDocumentPreFetchedDataPlayerHUD *)self canonicalId];
  [v3 vui_setObjectIfNotNil:v6 forKey:@"canonicalId"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIDocumentPreFetchedDataPlayerHUD isMultiviewPlayer](self, "isMultiviewPlayer")}];
  [v3 setObject:v7 forKey:@"isMultiviewPlayer"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIDocumentPreFetchedDataPlayerHUD playFromStart](self, "playFromStart")}];
  [v3 setObject:v8 forKey:@"playFromStart"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIDocumentPreFetchedDataPlayerHUD includeMultiviewButton](self, "includeMultiviewButton")}];
  [v3 setObject:v9 forKey:@"includeMultiviewButton"];

  v10 = [(VUIDocumentPreFetchedDataPlayerHUD *)self multiviewIdentifiers];
  [v3 vui_setObjectIfNotNil:v10 forKey:@"multiviewIdentifiers"];

  v11 = [(VUIDocumentPreFetchedDataPlayerHUD *)self locale];
  [v3 vui_setObjectIfNotNil:v11 forKey:@"locale"];

  v12 = [(VUIDocumentPreFetchedDataPlayerHUD *)self excludedCanonicals];
  v13 = v12;
  v14 = MEMORY[0x1E695E0F0];
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  [v3 setObject:v15 forKey:@"excludedCanonicals"];
  v16 = [v3 copy];

  return v16;
}

@end