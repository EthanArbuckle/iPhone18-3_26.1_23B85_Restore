@interface VUIFamilySharingMediaEntitiesResponseMetadataParser
- (VUIFamilySharingMediaEntitiesResponseMetadataParser)init;
- (id)_parseOffsetFromMetaBag;
- (id)_parseTotalFromMetaBag;
- (id)parseAMSURLResult:(id)a3;
@end

@implementation VUIFamilySharingMediaEntitiesResponseMetadataParser

- (VUIFamilySharingMediaEntitiesResponseMetadataParser)init
{
  v6.receiver = self;
  v6.super_class = VUIFamilySharingMediaEntitiesResponseMetadataParser;
  v2 = [(VUIFamilySharingMediaEntitiesResponseMetadataParser *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.tv.mediaAPI", "VUIFamilySharingMediaEntitiesResponseMetadataParser");
    v4 = sLogObject_3;
    sLogObject_3 = v3;
  }

  return v2;
}

- (id)parseAMSURLResult:(id)a3
{
  v4 = a3;
  [(VUIFamilySharingMediaEntitiesResponseMetadataParser *)self setResult:v4];
  v5 = objc_alloc_init(VUIMediaAPIResponseMetadata);
  v6 = [v4 object];

  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  if (v4)
  {
    v7 = [(VUIFamilySharingMediaEntitiesResponseMetadataParser *)self _parseTotalFromMetaBag];
    [(VUIMediaAPIResponseMetadata *)v5 setTotal:v7];

    v8 = [(VUIFamilySharingMediaEntitiesResponseMetadataParser *)self _parseOffsetFromMetaBag];
    [(VUIMediaAPIResponseMetadata *)v5 setOffset:v8];
  }

  else
  {
    v9 = sLogObject_3;
    if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Parsing AMS Metadata with no object dictionary", v11, 2u);
    }
  }

  return v5;
}

- (id)_parseTotalFromMetaBag
{
  v2 = [(VUIFamilySharingMediaEntitiesResponseMetadataParser *)self result];
  v3 = [v2 object];
  v4 = [v3 vui_dictionaryForKey:@"meta"];

  if (!v4)
  {
    v5 = sLogObject_3;
    if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Parsing AMS Meta with no meta bag", v8, 2u);
    }
  }

  v6 = [v4 vui_numberForKey:@"total"];

  return v6;
}

- (id)_parseOffsetFromMetaBag
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [(VUIFamilySharingMediaEntitiesResponseMetadataParser *)self result];
  v3 = [v2 object];
  v4 = [v3 vui_stringForKey:@"next"];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v4];
    [v5 queryItems];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 name];
          v13 = [v12 isEqualToString:@"offset"];

          if (v13)
          {
            v14 = [v11 value];
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v15 = sLogObject_3;
    if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Parsing AMS Meta with no offset bag", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

@end