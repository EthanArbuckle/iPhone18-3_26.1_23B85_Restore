@interface WFiTunesSessionManager
- (WFiTunesSessionManager)initWithSessionConfiguration:(id)configuration;
- (void)getMediaWithURL:(id)l completion:(id)completion;
- (void)lookupMediaWithBundleIdentifier:(id)identifier countryCode:(id)code completion:(id)completion;
- (void)lookupMediaWithISBN:(unint64_t)n completion:(id)completion;
- (void)lookupMediaWithIdentifiers:(id)identifiers countryCode:(id)code completion:(id)completion;
- (void)lookupMediaWithUPC:(unint64_t)c completion:(id)completion;
- (void)searchForMediaOfType:(id)type limitedToEntityType:(id)entityType withTerm:(id)term forAttribute:(id)attribute countryCode:(id)code limit:(unint64_t)limit completion:(id)completion;
@end

@implementation WFiTunesSessionManager

- (void)getMediaWithURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  session = [(WFiTunesSessionManager *)self session];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__WFiTunesSessionManager_getMediaWithURL_completion___block_invoke;
  v11[3] = &unk_1E837AE90;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [session dataTaskWithURL:lCopy completionHandler:v11];

  [v10 resume];
}

void __53__WFiTunesSessionManager_getMediaWithURL_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 length])
  {
    v15 = v7;
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v15];
    v9 = v15;

    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"results"];
      v11 = *(a1 + 32);
      if (v10)
      {
        v14 = v9;
        v12 = [MTLJSONAdapter modelsOfClass:objc_opt_class() fromJSONArray:v10 error:&v14];
        v13 = v14;

        (*(v11 + 16))(v11, v12, v13);
        v9 = v13;
      }

      else
      {
        (*(v11 + 16))(v11, 0, v9);
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }

    v7 = v9;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)lookupMediaWithISBN:(unint64_t)n completion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AF20];
  completionCopy = completion;
  baseURL = [(WFiTunesSessionManager *)self baseURL];
  v9 = [v6 componentsWithURL:baseURL resolvingAgainstBaseURL:0];

  [v9 setPath:@"/lookup"];
  v10 = MEMORY[0x1E696AF60];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", n];
  v12 = [v10 queryItemWithName:@"isbn" value:v11];
  v16[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v9 setQueryItems:v13];

  v14 = [v9 URL];
  [(WFiTunesSessionManager *)self getMediaWithURL:v14 completion:completionCopy];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)lookupMediaWithUPC:(unint64_t)c completion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AF20];
  completionCopy = completion;
  baseURL = [(WFiTunesSessionManager *)self baseURL];
  v9 = [v6 componentsWithURL:baseURL resolvingAgainstBaseURL:0];

  [v9 setPath:@"/lookup"];
  v10 = MEMORY[0x1E696AF60];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", c];
  v12 = [v10 queryItemWithName:@"upc" value:v11];
  v16[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v9 setQueryItems:v13];

  v14 = [v9 URL];
  [(WFiTunesSessionManager *)self getMediaWithURL:v14 completion:completionCopy];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)lookupMediaWithBundleIdentifier:(id)identifier countryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  v8 = MEMORY[0x1E696AF20];
  completionCopy = completion;
  identifierCopy = identifier;
  baseURL = [(WFiTunesSessionManager *)self baseURL];
  v12 = [v8 componentsWithURL:baseURL resolvingAgainstBaseURL:0];

  [v12 setPath:@"/lookup"];
  v13 = objc_opt_new();
  v14 = [MEMORY[0x1E696AF60] queryItemWithName:@"bundleId" value:identifierCopy];

  [v13 addObject:v14];
  if (codeCopy)
  {
    v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"country" value:codeCopy];
    [v13 addObject:v15];
  }

  [v12 setQueryItems:v13];
  v16 = [v12 URL];
  [(WFiTunesSessionManager *)self getMediaWithURL:v16 completion:completionCopy];
}

- (void)lookupMediaWithIdentifiers:(id)identifiers countryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  v8 = MEMORY[0x1E696AF20];
  completionCopy = completion;
  identifiersCopy = identifiers;
  baseURL = [(WFiTunesSessionManager *)self baseURL];
  v12 = [v8 componentsWithURL:baseURL resolvingAgainstBaseURL:0];

  [v12 setPath:@"/lookup"];
  v13 = objc_opt_new();
  v14 = MEMORY[0x1E696AF60];
  v15 = [identifiersCopy componentsJoinedByString:{@", "}];

  v16 = [v14 queryItemWithName:@"id" value:v15];
  [v13 addObject:v16];

  if (codeCopy)
  {
    v17 = [MEMORY[0x1E696AF60] queryItemWithName:@"country" value:codeCopy];
    [v13 addObject:v17];
  }

  [v12 setQueryItems:v13];
  v18 = [v12 URL];
  [(WFiTunesSessionManager *)self getMediaWithURL:v18 completion:completionCopy];
}

- (void)searchForMediaOfType:(id)type limitedToEntityType:(id)entityType withTerm:(id)term forAttribute:(id)attribute countryCode:(id)code limit:(unint64_t)limit completion:(id)completion
{
  typeCopy = type;
  entityTypeCopy = entityType;
  termCopy = term;
  attributeCopy = attribute;
  codeCopy = code;
  completionCopy = completion;
  if (!codeCopy)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    codeCopy = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
  }

  v21 = MEMORY[0x1E695DF70];
  v35 = termCopy;
  v22 = [MEMORY[0x1E696AF60] queryItemWithName:@"term" value:termCopy];
  v23 = [MEMORY[0x1E696AF60] queryItemWithName:@"country" value:codeCopy];
  v24 = [v21 arrayWithObjects:{v22, v23, 0}];

  if (typeCopy)
  {
    v25 = [MEMORY[0x1E696AF60] queryItemWithName:@"media" value:typeCopy];
    [v24 addObject:v25];
  }

  if (entityTypeCopy)
  {
    v26 = [MEMORY[0x1E696AF60] queryItemWithName:@"entity" value:entityTypeCopy];
    [v24 addObject:v26];
  }

  if (attributeCopy)
  {
    v27 = [MEMORY[0x1E696AF60] queryItemWithName:@"attribute" value:attributeCopy];
    [v24 addObject:v27];
  }

  if (limit)
  {
    v28 = MEMORY[0x1E696AF60];
    limit = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", limit];
    v30 = [v28 queryItemWithName:@"limit" value:limit];
    [v24 addObject:v30];
  }

  v31 = MEMORY[0x1E696AF20];
  baseURL = [(WFiTunesSessionManager *)self baseURL];
  v33 = [v31 componentsWithURL:baseURL resolvingAgainstBaseURL:0];

  [v33 setPath:@"/search"];
  [v33 setQueryItems:v24];
  v34 = [v33 URL];
  [(WFiTunesSessionManager *)self getMediaWithURL:v34 completion:completionCopy];
}

- (WFiTunesSessionManager)initWithSessionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = WFiTunesSessionManager;
  v5 = [(WFiTunesSessionManager *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E696AF78];
    wf_defaultSessionConfiguration = configurationCopy;
    if (!configurationCopy)
    {
      wf_defaultSessionConfiguration = [MEMORY[0x1E696AF80] wf_defaultSessionConfiguration];
    }

    v8 = [v6 sessionWithConfiguration:wf_defaultSessionConfiguration];
    session = v5->_session;
    v5->_session = v8;

    if (!configurationCopy)
    {
    }

    v10 = [MEMORY[0x1E695DFF8] URLWithString:@"https://itunes.apple.com/"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v10;

    v12 = v5;
  }

  return v5;
}

@end