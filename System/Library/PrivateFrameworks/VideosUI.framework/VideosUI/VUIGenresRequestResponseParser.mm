@interface VUIGenresRequestResponseParser
- (VUIGenresRequestResponseParser)init;
- (id)_parseRawGenreResults:(id)a3;
- (id)parseAMSURLResult:(id)a3;
@end

@implementation VUIGenresRequestResponseParser

- (VUIGenresRequestResponseParser)init
{
  v6.receiver = self;
  v6.super_class = VUIGenresRequestResponseParser;
  v2 = [(VUIGenresRequestResponseParser *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.tv.mediaAPI", "VUIGenresRequestResponseParser");
    v4 = sLogObject_7;
    sLogObject_7 = v3;
  }

  return v2;
}

- (id)parseAMSURLResult:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    v8 = [v7 vui_arrayForKey:@"data"];

    if (v8)
    {
      v9 = [(VUIGenresRequestResponseParser *)self _parseRawGenreResults:v8];
    }

    else
    {
      v11 = sLogObject_7;
      if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Parsing AMS Genre Fetch with no data bag", v13, 2u);
      }

      v9 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v10 = sLogObject_7;
    if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Parsing AMS Genre Fetch with no object dictionary", buf, 2u);
    }

    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)_parseRawGenreResults:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = &unk_1EE28A000;
    v7 = *v43;
    v32 = *v43;
    do
    {
      v8 = 0;
      v34 = v5;
      do
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v42 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 vui_dictionaryForKey:@"attributes"];
          if (!v10)
          {
            v11 = *(v6 + 299);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Parsing AMS Genre with no Attributes", buf, 2u);
            }
          }

          v12 = [v10 vui_stringForKey:@"name"];
          if (v12)
          {
            v36 = [v9 vui_stringForKey:@"id"];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v13 = v33;
            v14 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v38;
              while (2)
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v38 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v37 + 1) + 8 * i);
                  v19 = [v18 genreTitle];
                  v20 = [v19 isEqualToString:v12];

                  if (v20)
                  {
                    v25 = objc_alloc(MEMORY[0x1E695DF70]);
                    v26 = [v18 genreIdentifiers];
                    v27 = [v25 initWithArray:v26];

                    v22 = v36;
                    [v27 addObject:v36];
                    v28 = [v27 copy];
                    [v18 setGenreIdentifiers:v28];

                    goto LABEL_23;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

            v21 = objc_alloc_init(VUIFamilySharingGenre);
            v22 = v36;
            v46 = v36;
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
            [(VUIFamilySharingGenre *)v21 setGenreIdentifiers:v23];

            [(VUIFamilySharingGenre *)v21 setGenreTitle:v12];
            [v13 addObject:v21];

LABEL_23:
            v6 = &unk_1EE28A000;
            v5 = v34;
            v7 = v32;
          }

          else
          {
            v29 = *(v6 + 299);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Parsing AMS Genre with no Name", buf, 2u);
            }

            v22 = [v9 vui_stringForKey:@"id"];
          }
        }

        else
        {
          v24 = *(v6 + 299);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "Parsing AMS Genre invalid genre dictionary", buf, 2u);
          }
        }

        ++v8;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v5);
  }

  v30 = [v33 copy];

  return v30;
}

@end