@interface VUIDocumentDataSource
+ (BOOL)isCanonicalDocumentRef:(id)a3;
+ (id)documentDataSourceWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VUIDocumentDataSource)initWithDataSourceDict:(id)a3;
- (VUIDocumentDataSource)initWithDocumentRef:(id)a3;
- (id)debugDescription;
- (id)jsonData;
@end

@implementation VUIDocumentDataSource

+ (id)documentDataSourceWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 vui_stringForKey:@"documentRef"];
  v5 = [v3 vui_dictionaryForKey:@"uiConfiguration"];
  if ([v4 length])
  {
    v6 = [[VUIDocumentDataSource alloc] initWithDataSourceDict:v3];
    [(VUIDocumentDataSource *)v6 setDocumentRef:v4];
  }

  else if ([v5 count])
  {
    v6 = [[VUIDocumentDataSource alloc] initWithDataSourceDict:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isCanonicalDocumentRef:(id)a3
{
  v3 = a3;
  v4 = ([v3 isEqualToString:@"TVShowCanonical"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"MovieCanonical") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EpisodeCanonical") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"SportsCanonical");

  return v4;
}

- (VUIDocumentDataSource)initWithDocumentRef:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VUIDocumentDataSource;
  v5 = [(VUIDocumentDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VUIDocumentDataSource *)v5 setDocumentRef:v4];
  }

  return v6;
}

- (VUIDocumentDataSource)initWithDataSourceDict:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = VUIDocumentDataSource;
  v5 = [(VUIDocumentDataSource *)&v30 init];
  v6 = v5;
  if (v5)
  {
    v5->_shouldLoadPageImmediately = 1;
    v7 = [v4 vui_stringForKey:@"documentType"];
    if ([v7 length])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&v6->_documentType, v8);
    v9 = [v4 vui_stringForKey:@"controllerRef"];
    if ([v9 length])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&v6->_controllerRef, v10);
    v11 = [v4 vui_stringForKey:@"title"];
    if ([v11 length])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&v6->_title, v12);
    v13 = [v4 vui_dictionaryForKey:@"contextData"];
    v14 = [v13 count];
    if (v14)
    {
      v14 = [[VUIDocumentContextData alloc] initWithDictionary:v13];
    }

    contextData = v6->_contextData;
    v6->_contextData = v14;

    v16 = [v4 vui_dictionaryForKey:@"prefetchedData"];
    v17 = [v16 count];
    if (v17)
    {
      v17 = [[VUIDocumentPreFetchedData alloc] initWithDictionary:v16];
    }

    prefetchData = v6->_prefetchData;
    v6->_prefetchData = v17;

    v19 = [v4 vui_dictionaryForKey:@"uiConfiguration"];
    v20 = [VUIDocumentUIConfiguration uiConfigurationWithDict:v19];
    uiConfiguration = v6->_uiConfiguration;
    v6->_uiConfiguration = v20;

    v22 = [v4 vui_arrayForKey:@"universalLinks"];
    v23 = [v22 vui_arrayByMappingObjectsUsingBlock:&__block_literal_global_23];
    universalLinks = v6->_universalLinks;
    v6->_universalLinks = v23;

    v25 = [v4 vui_stringForKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v25;

    v27 = [v4 vui_stringForKey:@"marketingIdentifier"];
    if ([v27 length])
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    objc_storeStrong(&v6->_marketingTabIdentifier, v28);
  }

  return v6;
}

- (id)jsonData
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setValue:self->_documentRef forKey:@"documentRef"];
  v4 = [(VUIDocumentContextData *)self->_contextData jsonData];
  [v3 setValue:v4 forKey:@"contextData"];

  v5 = [(VUIDocumentPreFetchedData *)self->_prefetchData jsonData];
  [v3 setValue:v5 forKey:@"prefetchedData"];

  [v3 setValue:self->_title forKey:@"title"];
  [v3 setValue:self->_uiConfiguration forKey:@"uiConfiguration"];
  v6 = [(NSArray *)self->_universalLinks vui_arrayByMappingObjectsUsingBlock:&__block_literal_global_201];
  [v3 setValue:v6 forKey:@"universalLinks"];
  [v3 setValue:self->_marketingTabIdentifier forKey:@"marketingIdentifier"];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];

  return v7;
}

- (id)debugDescription
{
  v3 = [(VUIDocumentDataSource *)self uiConfiguration];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(VUIDocumentDataSource *)self documentRef];
  v6 = [v4 stringWithFormat:@"DocumentRef: %@ uiConfiguration %@ action type %ld", v5, v3, objc_msgSend(v3, "type")];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VUIDocumentDataSource *)self documentType];
      v7 = [(VUIDocumentDataSource *)v5 documentType];
      if (v6 == v7)
      {
        v10 = [(VUIDocumentDataSource *)self controllerRef];
        v11 = [(VUIDocumentDataSource *)v5 controllerRef];
        if (v10 == v11)
        {
          v12 = [(VUIDocumentDataSource *)self title];
          v13 = [(VUIDocumentDataSource *)v5 title];
          if (v12 == v13)
          {
            v14 = [(VUIDocumentDataSource *)self identifier];
            v15 = [(VUIDocumentDataSource *)v5 identifier];
            v35 = v14;
            if (v14 == v15)
            {
              v34 = v15;
              v16 = [(VUIDocumentDataSource *)self universalLinks];
              v17 = [(VUIDocumentDataSource *)v5 universalLinks];
              v33 = v16;
              if (v16 == v17)
              {
                v32 = v17;
                v31 = [(VUIDocumentDataSource *)self marketingTabIdentifier];
                v18 = [(VUIDocumentDataSource *)v5 marketingTabIdentifier];
                v8 = v31 == v18;

                v17 = v32;
              }

              else
              {
                v8 = 0;
              }

              v15 = v34;
            }

            else
            {
              v8 = 0;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v19 = [(VUIDocumentDataSource *)self contextData];

      v20 = v19 == 0 && v8;
      if (v19 && v8)
      {
        v21 = [(VUIDocumentDataSource *)self contextData];
        v22 = [(VUIDocumentDataSource *)v5 contextData];
        v20 = [v21 isEqual:v22];
      }

      v23 = [(VUIDocumentDataSource *)self prefetchData];

      v24 = (v23 == 0) & v20;
      if (v23 && v20)
      {
        v25 = [(VUIDocumentDataSource *)self prefetchData];
        v26 = [(VUIDocumentDataSource *)v5 prefetchData];
        v24 = [v25 isEqual:v26];
      }

      v27 = [(VUIDocumentDataSource *)self uiConfiguration];

      v9 = (v27 == 0) & v24;
      if (v27 && v24)
      {
        v28 = [(VUIDocumentDataSource *)self uiConfiguration];
        v29 = [(VUIDocumentDataSource *)v5 uiConfiguration];
        v9 = [v28 isEqual:v29];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end