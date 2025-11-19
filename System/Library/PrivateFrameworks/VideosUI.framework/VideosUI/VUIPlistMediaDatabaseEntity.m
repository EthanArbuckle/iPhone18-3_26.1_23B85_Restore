@interface VUIPlistMediaDatabaseEntity
- (BOOL)isEqual:(id)a3;
- (VUIPlistMediaDatabaseEntity)init;
- (VUIPlistMediaDatabaseEntity)initWithDictionary:(id)a3;
- (VUIPlistMediaDatabaseEntity)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_mediaEntityPropertyDidChange:(id)a3;
- (void)dealloc;
@end

@implementation VUIPlistMediaDatabaseEntity

- (VUIPlistMediaDatabaseEntity)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"identifier"}];
  }

  v12.receiver = self;
  v12.super_class = VUIPlistMediaDatabaseEntity;
  v7 = [(VUIPlistMediaDatabaseEntity *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_type = a4;
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel__mediaEntityPropertyDidChange_ name:VUIPlistMediaEntityPropertyDidChange object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIPlistMediaDatabaseEntity;
  [(VUIPlistMediaDatabaseEntity *)&v4 dealloc];
}

- (VUIPlistMediaDatabaseEntity)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 vui_stringForKey:@"Identifier"];
  v6 = [v4 vui_numberForKey:@"Type"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [(VUIPlistMediaDatabaseEntity *)self initWithIdentifier:v5 type:v7];
  if (v8)
  {
    v9 = [v4 vui_stringForKey:@"Title"];
    v10 = [v9 copy];
    title = v8->_title;
    v8->_title = v10;

    v12 = [v4 vui_stringForKey:@"GenreTitle"];
    v13 = [v12 copy];
    genreTitle = v8->_genreTitle;
    v8->_genreTitle = v13;

    v15 = [v4 vui_stringForKey:@"ContentDescription"];
    v16 = [v15 copy];
    contentDescription = v8->_contentDescription;
    v8->_contentDescription = v16;

    v18 = [v4 vui_stringForKey:@"canonicalId"];
    v19 = [v18 copy];
    canonicalID = v8->_canonicalID;
    v8->_canonicalID = v19;

    v21 = [v4 vui_stringForKey:@"CoverArtURL"];
    if (v21)
    {
      v22 = [MEMORY[0x1E695DFF8] URLWithString:v21];
      coverArtURL = v8->_coverArtURL;
      v8->_coverArtURL = v22;
    }
  }

  return v8;
}

- (VUIPlistMediaDatabaseEntity)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(VUIPlistMediaDatabaseEntity *)self identifier];
  [v3 vui_setObjectIfNotNil:v4 forKey:@"Identifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIPlistMediaDatabaseEntity type](self, "type")}];
  [v3 vui_setObjectIfNotNil:v5 forKey:@"Type"];

  v6 = [(VUIPlistMediaDatabaseEntity *)self title];
  [v3 vui_setObjectIfNotNil:v6 forKey:@"Title"];

  v7 = [(VUIPlistMediaDatabaseEntity *)self contentDescription];
  [v3 vui_setObjectIfNotNil:v7 forKey:@"ContentDescription"];

  v8 = [(VUIPlistMediaDatabaseEntity *)self coverArtURL];
  v9 = [v8 absoluteString];
  [v3 vui_setObjectIfNotNil:v9 forKey:@"CoverArtURL"];

  v10 = [(VUIPlistMediaDatabaseEntity *)self genreTitle];
  [v3 vui_setObjectIfNotNil:v10 forKey:@"GenreTitle"];

  v11 = [(VUIPlistMediaDatabaseEntity *)self canonicalID];
  [v3 vui_setObjectIfNotNil:v11 forKey:@"canonicalId"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:self->_identifier type:self->_type];
  v5 = [(NSString *)self->_title copy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(NSString *)self->_contentDescription copy];
  v8 = v4[5];
  v4[5] = v7;

  v9 = [(NSURL *)self->_coverArtURL copy];
  v10 = v4[6];
  v4[6] = v9;

  v11 = [(NSString *)self->_genreTitle copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSString *)self->_canonicalID copy];
  v14 = v4[7];
  v4[7] = v13;

  return v4;
}

- (unint64_t)hash
{
  v3 = [(VUIPlistMediaDatabaseEntity *)self type];
  v4 = [(VUIPlistMediaDatabaseEntity *)self identifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUIPlistMediaDatabaseEntity *)self identifier];
        v8 = [(VUIPlistMediaDatabaseEntity *)v6 identifier];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v10)
          {
            goto LABEL_49;
          }

          v13 = [v9 isEqual:v10];

          if ((v13 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v14 = [(VUIPlistMediaDatabaseEntity *)self isLocal];
        v15 = [(VUIPlistMediaDatabaseEntity *)v6 isLocal];
        v9 = v14;
        v16 = v15;
        v11 = v16;
        if (v9 == v16)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v16)
          {
            goto LABEL_49;
          }

          v17 = [v9 isEqual:v16];

          if ((v17 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v18 = [(VUIPlistMediaDatabaseEntity *)self title];
        v19 = [(VUIPlistMediaDatabaseEntity *)v6 title];
        v9 = v18;
        v20 = v19;
        v11 = v20;
        if (v9 == v20)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v20)
          {
            goto LABEL_49;
          }

          v21 = [v9 isEqual:v20];

          if ((v21 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v22 = [(VUIPlistMediaDatabaseEntity *)self contentDescription];
        v23 = [(VUIPlistMediaDatabaseEntity *)v6 contentDescription];
        v9 = v22;
        v24 = v23;
        v11 = v24;
        if (v9 == v24)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v24)
          {
            goto LABEL_49;
          }

          v25 = [v9 isEqual:v24];

          if ((v25 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v26 = [(VUIPlistMediaDatabaseEntity *)self coverArtURL];
        v27 = [(VUIPlistMediaDatabaseEntity *)v6 coverArtURL];
        v9 = v26;
        v28 = v27;
        v11 = v28;
        if (v9 == v28)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v28)
          {
            goto LABEL_49;
          }

          v29 = [v9 isEqual:v28];

          if ((v29 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v30 = [(VUIPlistMediaDatabaseEntity *)self genreTitle];
        v31 = [(VUIPlistMediaDatabaseEntity *)v6 genreTitle];
        v9 = v30;
        v32 = v31;
        v11 = v32;
        if (v9 == v32)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v32)
          {
            goto LABEL_49;
          }

          v33 = [v9 isEqual:v32];

          if ((v33 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v34 = [(VUIPlistMediaDatabaseEntity *)self type];
        if (v34 != [(VUIPlistMediaDatabaseEntity *)v6 type])
        {
LABEL_47:
          v12 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v35 = [(VUIPlistMediaDatabaseEntity *)self canonicalID];
        v36 = [(VUIPlistMediaDatabaseEntity *)v6 canonicalID];
        v9 = v35;
        v37 = v36;
        v11 = v37;
        if (v9 == v37)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
          if (v9 && v37)
          {
            v12 = [v9 isEqual:v37];
          }
        }

LABEL_49:

        goto LABEL_50;
      }
    }

    v12 = 0;
  }

LABEL_51:

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33.receiver = self;
  v33.super_class = VUIPlistMediaDatabaseEntity;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v33 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIPlistMediaDatabaseEntity *)self identifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"identifier", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIPlistMediaDatabaseEntity type](self, "type")}];
  v10 = [v8 stringWithFormat:@"%@=%@", @"type", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(VUIPlistMediaDatabaseEntity *)self isLocal];
  v13 = [v11 stringWithFormat:@"%@=%@", @"isLocal", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(VUIPlistMediaDatabaseEntity *)self title];
  v16 = [v14 stringWithFormat:@"%@=%@", @"title", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [(VUIPlistMediaDatabaseEntity *)self contentDescription];
  v19 = [v17 stringWithFormat:@"%@=%@", @"contentDescription", v18];
  [v3 addObject:v19];

  v20 = MEMORY[0x1E696AEC0];
  v21 = [(VUIPlistMediaDatabaseEntity *)self coverArtURL];
  v22 = [v20 stringWithFormat:@"%@=%@", @"coverArtURL", v21];
  [v3 addObject:v22];

  v23 = MEMORY[0x1E696AEC0];
  v24 = [(VUIPlistMediaDatabaseEntity *)self genreTitle];
  v25 = [v23 stringWithFormat:@"%@=%@", @"genreTitle", v24];
  [v3 addObject:v25];

  v26 = MEMORY[0x1E696AEC0];
  v27 = [(VUIPlistMediaDatabaseEntity *)self canonicalID];
  v28 = [v26 stringWithFormat:@"%@=%@", @"canonicalID", v27];
  [v3 addObject:v28];

  v29 = MEMORY[0x1E696AEC0];
  v30 = [v3 componentsJoinedByString:{@", "}];
  v31 = [v29 stringWithFormat:@"<%@>", v30];

  return v31;
}

- (void)_mediaEntityPropertyDidChange:(id)a3
{
  v14 = a3;
  v4 = [v14 object];
  v5 = v4;
  if (v4 != self)
  {
    v6 = [(VUIPlistMediaDatabaseEntity *)v4 identifier];
    v7 = [(VUIPlistMediaDatabaseEntity *)self identifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = [v14 userInfo];
      v10 = [v9 objectForKey:VUIPlistMediaEntityPropertyDidChangePropertyNameKey];

      v11 = [v14 userInfo];
      v12 = [v11 objectForKey:VUIPlistMediaEntityPropertyDidChangePropertyValueKey];

      if (v10)
      {
        v13 = [MEMORY[0x1E695DFB0] null];

        if (v12 == v13)
        {

          v12 = 0;
        }

        [(VUIPlistMediaDatabaseEntity *)self setValue:v12 forKey:v10];
      }
    }
  }
}

@end