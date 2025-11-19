@interface WFiTunesSessionManager
- (WFiTunesSessionManager)initWithSessionConfiguration:(id)a3;
- (void)getMediaWithURL:(id)a3 completion:(id)a4;
- (void)lookupMediaWithBundleIdentifier:(id)a3 countryCode:(id)a4 completion:(id)a5;
- (void)lookupMediaWithISBN:(unint64_t)a3 completion:(id)a4;
- (void)lookupMediaWithIdentifiers:(id)a3 countryCode:(id)a4 completion:(id)a5;
- (void)lookupMediaWithUPC:(unint64_t)a3 completion:(id)a4;
- (void)searchForMediaOfType:(id)a3 limitedToEntityType:(id)a4 withTerm:(id)a5 forAttribute:(id)a6 countryCode:(id)a7 limit:(unint64_t)a8 completion:(id)a9;
@end

@implementation WFiTunesSessionManager

- (void)getMediaWithURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFiTunesSessionManager *)self session];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__WFiTunesSessionManager_getMediaWithURL_completion___block_invoke;
  v11[3] = &unk_1E837AE90;
  v12 = v6;
  v9 = v6;
  v10 = [v8 dataTaskWithURL:v7 completionHandler:v11];

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

- (void)lookupMediaWithISBN:(unint64_t)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AF20];
  v7 = a4;
  v8 = [(WFiTunesSessionManager *)self baseURL];
  v9 = [v6 componentsWithURL:v8 resolvingAgainstBaseURL:0];

  [v9 setPath:@"/lookup"];
  v10 = MEMORY[0x1E696AF60];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a3];
  v12 = [v10 queryItemWithName:@"isbn" value:v11];
  v16[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v9 setQueryItems:v13];

  v14 = [v9 URL];
  [(WFiTunesSessionManager *)self getMediaWithURL:v14 completion:v7];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)lookupMediaWithUPC:(unint64_t)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AF20];
  v7 = a4;
  v8 = [(WFiTunesSessionManager *)self baseURL];
  v9 = [v6 componentsWithURL:v8 resolvingAgainstBaseURL:0];

  [v9 setPath:@"/lookup"];
  v10 = MEMORY[0x1E696AF60];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a3];
  v12 = [v10 queryItemWithName:@"upc" value:v11];
  v16[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v9 setQueryItems:v13];

  v14 = [v9 URL];
  [(WFiTunesSessionManager *)self getMediaWithURL:v14 completion:v7];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)lookupMediaWithBundleIdentifier:(id)a3 countryCode:(id)a4 completion:(id)a5
{
  v17 = a4;
  v8 = MEMORY[0x1E696AF20];
  v9 = a5;
  v10 = a3;
  v11 = [(WFiTunesSessionManager *)self baseURL];
  v12 = [v8 componentsWithURL:v11 resolvingAgainstBaseURL:0];

  [v12 setPath:@"/lookup"];
  v13 = objc_opt_new();
  v14 = [MEMORY[0x1E696AF60] queryItemWithName:@"bundleId" value:v10];

  [v13 addObject:v14];
  if (v17)
  {
    v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"country" value:v17];
    [v13 addObject:v15];
  }

  [v12 setQueryItems:v13];
  v16 = [v12 URL];
  [(WFiTunesSessionManager *)self getMediaWithURL:v16 completion:v9];
}

- (void)lookupMediaWithIdentifiers:(id)a3 countryCode:(id)a4 completion:(id)a5
{
  v19 = a4;
  v8 = MEMORY[0x1E696AF20];
  v9 = a5;
  v10 = a3;
  v11 = [(WFiTunesSessionManager *)self baseURL];
  v12 = [v8 componentsWithURL:v11 resolvingAgainstBaseURL:0];

  [v12 setPath:@"/lookup"];
  v13 = objc_opt_new();
  v14 = MEMORY[0x1E696AF60];
  v15 = [v10 componentsJoinedByString:{@", "}];

  v16 = [v14 queryItemWithName:@"id" value:v15];
  [v13 addObject:v16];

  if (v19)
  {
    v17 = [MEMORY[0x1E696AF60] queryItemWithName:@"country" value:v19];
    [v13 addObject:v17];
  }

  [v12 setQueryItems:v13];
  v18 = [v12 URL];
  [(WFiTunesSessionManager *)self getMediaWithURL:v18 completion:v9];
}

- (void)searchForMediaOfType:(id)a3 limitedToEntityType:(id)a4 withTerm:(id)a5 forAttribute:(id)a6 countryCode:(id)a7 limit:(unint64_t)a8 completion:(id)a9
{
  v36 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  if (!v18)
  {
    v20 = [MEMORY[0x1E695DF58] currentLocale];
    v18 = [v20 objectForKey:*MEMORY[0x1E695D978]];
  }

  v21 = MEMORY[0x1E695DF70];
  v35 = v16;
  v22 = [MEMORY[0x1E696AF60] queryItemWithName:@"term" value:v16];
  v23 = [MEMORY[0x1E696AF60] queryItemWithName:@"country" value:v18];
  v24 = [v21 arrayWithObjects:{v22, v23, 0}];

  if (v36)
  {
    v25 = [MEMORY[0x1E696AF60] queryItemWithName:@"media" value:v36];
    [v24 addObject:v25];
  }

  if (v15)
  {
    v26 = [MEMORY[0x1E696AF60] queryItemWithName:@"entity" value:v15];
    [v24 addObject:v26];
  }

  if (v17)
  {
    v27 = [MEMORY[0x1E696AF60] queryItemWithName:@"attribute" value:v17];
    [v24 addObject:v27];
  }

  if (a8)
  {
    v28 = MEMORY[0x1E696AF60];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a8];
    v30 = [v28 queryItemWithName:@"limit" value:v29];
    [v24 addObject:v30];
  }

  v31 = MEMORY[0x1E696AF20];
  v32 = [(WFiTunesSessionManager *)self baseURL];
  v33 = [v31 componentsWithURL:v32 resolvingAgainstBaseURL:0];

  [v33 setPath:@"/search"];
  [v33 setQueryItems:v24];
  v34 = [v33 URL];
  [(WFiTunesSessionManager *)self getMediaWithURL:v34 completion:v19];
}

- (WFiTunesSessionManager)initWithSessionConfiguration:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFiTunesSessionManager;
  v5 = [(WFiTunesSessionManager *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E696AF78];
    v7 = v4;
    if (!v4)
    {
      v7 = [MEMORY[0x1E696AF80] wf_defaultSessionConfiguration];
    }

    v8 = [v6 sessionWithConfiguration:v7];
    session = v5->_session;
    v5->_session = v8;

    if (!v4)
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