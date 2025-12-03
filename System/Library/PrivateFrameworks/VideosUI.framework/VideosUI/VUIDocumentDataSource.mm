@interface VUIDocumentDataSource
+ (BOOL)isCanonicalDocumentRef:(id)ref;
+ (id)documentDataSourceWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (VUIDocumentDataSource)initWithDataSourceDict:(id)dict;
- (VUIDocumentDataSource)initWithDocumentRef:(id)ref;
- (id)debugDescription;
- (id)jsonData;
@end

@implementation VUIDocumentDataSource

+ (id)documentDataSourceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy vui_stringForKey:@"documentRef"];
  v5 = [dictionaryCopy vui_dictionaryForKey:@"uiConfiguration"];
  if ([v4 length])
  {
    v6 = [[VUIDocumentDataSource alloc] initWithDataSourceDict:dictionaryCopy];
    [(VUIDocumentDataSource *)v6 setDocumentRef:v4];
  }

  else if ([v5 count])
  {
    v6 = [[VUIDocumentDataSource alloc] initWithDataSourceDict:dictionaryCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isCanonicalDocumentRef:(id)ref
{
  refCopy = ref;
  v4 = ([refCopy isEqualToString:@"TVShowCanonical"] & 1) != 0 || (objc_msgSend(refCopy, "isEqualToString:", @"MovieCanonical") & 1) != 0 || (objc_msgSend(refCopy, "isEqualToString:", @"EpisodeCanonical") & 1) != 0 || objc_msgSend(refCopy, "isEqualToString:", @"SportsCanonical");

  return v4;
}

- (VUIDocumentDataSource)initWithDocumentRef:(id)ref
{
  refCopy = ref;
  v8.receiver = self;
  v8.super_class = VUIDocumentDataSource;
  v5 = [(VUIDocumentDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VUIDocumentDataSource *)v5 setDocumentRef:refCopy];
  }

  return v6;
}

- (VUIDocumentDataSource)initWithDataSourceDict:(id)dict
{
  dictCopy = dict;
  v30.receiver = self;
  v30.super_class = VUIDocumentDataSource;
  v5 = [(VUIDocumentDataSource *)&v30 init];
  v6 = v5;
  if (v5)
  {
    v5->_shouldLoadPageImmediately = 1;
    v7 = [dictCopy vui_stringForKey:@"documentType"];
    if ([v7 length])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&v6->_documentType, v8);
    v9 = [dictCopy vui_stringForKey:@"controllerRef"];
    if ([v9 length])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&v6->_controllerRef, v10);
    v11 = [dictCopy vui_stringForKey:@"title"];
    if ([v11 length])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&v6->_title, v12);
    v13 = [dictCopy vui_dictionaryForKey:@"contextData"];
    v14 = [v13 count];
    if (v14)
    {
      v14 = [[VUIDocumentContextData alloc] initWithDictionary:v13];
    }

    contextData = v6->_contextData;
    v6->_contextData = v14;

    v16 = [dictCopy vui_dictionaryForKey:@"prefetchedData"];
    v17 = [v16 count];
    if (v17)
    {
      v17 = [[VUIDocumentPreFetchedData alloc] initWithDictionary:v16];
    }

    prefetchData = v6->_prefetchData;
    v6->_prefetchData = v17;

    v19 = [dictCopy vui_dictionaryForKey:@"uiConfiguration"];
    v20 = [VUIDocumentUIConfiguration uiConfigurationWithDict:v19];
    uiConfiguration = v6->_uiConfiguration;
    v6->_uiConfiguration = v20;

    v22 = [dictCopy vui_arrayForKey:@"universalLinks"];
    v23 = [v22 vui_arrayByMappingObjectsUsingBlock:&__block_literal_global_23];
    universalLinks = v6->_universalLinks;
    v6->_universalLinks = v23;

    v25 = [dictCopy vui_stringForKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v25;

    v27 = [dictCopy vui_stringForKey:@"marketingIdentifier"];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:self->_documentRef forKey:@"documentRef"];
  jsonData = [(VUIDocumentContextData *)self->_contextData jsonData];
  [dictionary setValue:jsonData forKey:@"contextData"];

  jsonData2 = [(VUIDocumentPreFetchedData *)self->_prefetchData jsonData];
  [dictionary setValue:jsonData2 forKey:@"prefetchedData"];

  [dictionary setValue:self->_title forKey:@"title"];
  [dictionary setValue:self->_uiConfiguration forKey:@"uiConfiguration"];
  v6 = [(NSArray *)self->_universalLinks vui_arrayByMappingObjectsUsingBlock:&__block_literal_global_201];
  [dictionary setValue:v6 forKey:@"universalLinks"];
  [dictionary setValue:self->_marketingTabIdentifier forKey:@"marketingIdentifier"];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  return v7;
}

- (id)debugDescription
{
  uiConfiguration = [(VUIDocumentDataSource *)self uiConfiguration];
  v4 = MEMORY[0x1E696AEC0];
  documentRef = [(VUIDocumentDataSource *)self documentRef];
  v6 = [v4 stringWithFormat:@"DocumentRef: %@ uiConfiguration %@ action type %ld", documentRef, uiConfiguration, objc_msgSend(uiConfiguration, "type")];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      documentType = [(VUIDocumentDataSource *)self documentType];
      documentType2 = [(VUIDocumentDataSource *)v5 documentType];
      if (documentType == documentType2)
      {
        controllerRef = [(VUIDocumentDataSource *)self controllerRef];
        controllerRef2 = [(VUIDocumentDataSource *)v5 controllerRef];
        if (controllerRef == controllerRef2)
        {
          title = [(VUIDocumentDataSource *)self title];
          title2 = [(VUIDocumentDataSource *)v5 title];
          if (title == title2)
          {
            identifier = [(VUIDocumentDataSource *)self identifier];
            identifier2 = [(VUIDocumentDataSource *)v5 identifier];
            v35 = identifier;
            if (identifier == identifier2)
            {
              v34 = identifier2;
              universalLinks = [(VUIDocumentDataSource *)self universalLinks];
              universalLinks2 = [(VUIDocumentDataSource *)v5 universalLinks];
              v33 = universalLinks;
              if (universalLinks == universalLinks2)
              {
                v32 = universalLinks2;
                marketingTabIdentifier = [(VUIDocumentDataSource *)self marketingTabIdentifier];
                marketingTabIdentifier2 = [(VUIDocumentDataSource *)v5 marketingTabIdentifier];
                v8 = marketingTabIdentifier == marketingTabIdentifier2;

                universalLinks2 = v32;
              }

              else
              {
                v8 = 0;
              }

              identifier2 = v34;
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

      contextData = [(VUIDocumentDataSource *)self contextData];

      v20 = contextData == 0 && v8;
      if (contextData && v8)
      {
        contextData2 = [(VUIDocumentDataSource *)self contextData];
        contextData3 = [(VUIDocumentDataSource *)v5 contextData];
        v20 = [contextData2 isEqual:contextData3];
      }

      prefetchData = [(VUIDocumentDataSource *)self prefetchData];

      v24 = (prefetchData == 0) & v20;
      if (prefetchData && v20)
      {
        prefetchData2 = [(VUIDocumentDataSource *)self prefetchData];
        prefetchData3 = [(VUIDocumentDataSource *)v5 prefetchData];
        v24 = [prefetchData2 isEqual:prefetchData3];
      }

      uiConfiguration = [(VUIDocumentDataSource *)self uiConfiguration];

      v9 = (uiConfiguration == 0) & v24;
      if (uiConfiguration && v24)
      {
        uiConfiguration2 = [(VUIDocumentDataSource *)self uiConfiguration];
        uiConfiguration3 = [(VUIDocumentDataSource *)v5 uiConfiguration];
        v9 = [uiConfiguration2 isEqual:uiConfiguration3];
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