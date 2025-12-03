@interface VUIPlistMediaDatabaseEntity
- (BOOL)isEqual:(id)equal;
- (VUIPlistMediaDatabaseEntity)init;
- (VUIPlistMediaDatabaseEntity)initWithDictionary:(id)dictionary;
- (VUIPlistMediaDatabaseEntity)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_mediaEntityPropertyDidChange:(id)change;
- (void)dealloc;
@end

@implementation VUIPlistMediaDatabaseEntity

- (VUIPlistMediaDatabaseEntity)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"identifier"}];
  }

  v12.receiver = self;
  v12.super_class = VUIPlistMediaDatabaseEntity;
  v7 = [(VUIPlistMediaDatabaseEntity *)&v12 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_type = type;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__mediaEntityPropertyDidChange_ name:VUIPlistMediaEntityPropertyDidChange object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIPlistMediaDatabaseEntity;
  [(VUIPlistMediaDatabaseEntity *)&v4 dealloc];
}

- (VUIPlistMediaDatabaseEntity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy vui_stringForKey:@"Identifier"];
  v6 = [dictionaryCopy vui_numberForKey:@"Type"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [(VUIPlistMediaDatabaseEntity *)self initWithIdentifier:v5 type:unsignedIntegerValue];
  if (v8)
  {
    v9 = [dictionaryCopy vui_stringForKey:@"Title"];
    v10 = [v9 copy];
    title = v8->_title;
    v8->_title = v10;

    v12 = [dictionaryCopy vui_stringForKey:@"GenreTitle"];
    v13 = [v12 copy];
    genreTitle = v8->_genreTitle;
    v8->_genreTitle = v13;

    v15 = [dictionaryCopy vui_stringForKey:@"ContentDescription"];
    v16 = [v15 copy];
    contentDescription = v8->_contentDescription;
    v8->_contentDescription = v16;

    v18 = [dictionaryCopy vui_stringForKey:@"canonicalId"];
    v19 = [v18 copy];
    canonicalID = v8->_canonicalID;
    v8->_canonicalID = v19;

    v21 = [dictionaryCopy vui_stringForKey:@"CoverArtURL"];
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
  identifier = [(VUIPlistMediaDatabaseEntity *)self identifier];
  [v3 vui_setObjectIfNotNil:identifier forKey:@"Identifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIPlistMediaDatabaseEntity type](self, "type")}];
  [v3 vui_setObjectIfNotNil:v5 forKey:@"Type"];

  title = [(VUIPlistMediaDatabaseEntity *)self title];
  [v3 vui_setObjectIfNotNil:title forKey:@"Title"];

  contentDescription = [(VUIPlistMediaDatabaseEntity *)self contentDescription];
  [v3 vui_setObjectIfNotNil:contentDescription forKey:@"ContentDescription"];

  coverArtURL = [(VUIPlistMediaDatabaseEntity *)self coverArtURL];
  absoluteString = [coverArtURL absoluteString];
  [v3 vui_setObjectIfNotNil:absoluteString forKey:@"CoverArtURL"];

  genreTitle = [(VUIPlistMediaDatabaseEntity *)self genreTitle];
  [v3 vui_setObjectIfNotNil:genreTitle forKey:@"GenreTitle"];

  canonicalID = [(VUIPlistMediaDatabaseEntity *)self canonicalID];
  [v3 vui_setObjectIfNotNil:canonicalID forKey:@"canonicalId"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
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
  type = [(VUIPlistMediaDatabaseEntity *)self type];
  identifier = [(VUIPlistMediaDatabaseEntity *)self identifier];
  v5 = [identifier hash];

  return v5 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identifier = [(VUIPlistMediaDatabaseEntity *)self identifier];
        identifier2 = [(VUIPlistMediaDatabaseEntity *)v6 identifier];
        v9 = identifier;
        v10 = identifier2;
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

        isLocal = [(VUIPlistMediaDatabaseEntity *)self isLocal];
        isLocal2 = [(VUIPlistMediaDatabaseEntity *)v6 isLocal];
        v9 = isLocal;
        v16 = isLocal2;
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

        title = [(VUIPlistMediaDatabaseEntity *)self title];
        title2 = [(VUIPlistMediaDatabaseEntity *)v6 title];
        v9 = title;
        v20 = title2;
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

        contentDescription = [(VUIPlistMediaDatabaseEntity *)self contentDescription];
        contentDescription2 = [(VUIPlistMediaDatabaseEntity *)v6 contentDescription];
        v9 = contentDescription;
        v24 = contentDescription2;
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

        coverArtURL = [(VUIPlistMediaDatabaseEntity *)self coverArtURL];
        coverArtURL2 = [(VUIPlistMediaDatabaseEntity *)v6 coverArtURL];
        v9 = coverArtURL;
        v28 = coverArtURL2;
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

        genreTitle = [(VUIPlistMediaDatabaseEntity *)self genreTitle];
        genreTitle2 = [(VUIPlistMediaDatabaseEntity *)v6 genreTitle];
        v9 = genreTitle;
        v32 = genreTitle2;
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

        type = [(VUIPlistMediaDatabaseEntity *)self type];
        if (type != [(VUIPlistMediaDatabaseEntity *)v6 type])
        {
LABEL_47:
          v12 = 0;
LABEL_50:

          goto LABEL_51;
        }

        canonicalID = [(VUIPlistMediaDatabaseEntity *)self canonicalID];
        canonicalID2 = [(VUIPlistMediaDatabaseEntity *)v6 canonicalID];
        v9 = canonicalID;
        v37 = canonicalID2;
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
  identifier = [(VUIPlistMediaDatabaseEntity *)self identifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"identifier", identifier];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIPlistMediaDatabaseEntity type](self, "type")}];
  v10 = [v8 stringWithFormat:@"%@=%@", @"type", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  isLocal = [(VUIPlistMediaDatabaseEntity *)self isLocal];
  v13 = [v11 stringWithFormat:@"%@=%@", @"isLocal", isLocal];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  title = [(VUIPlistMediaDatabaseEntity *)self title];
  v16 = [v14 stringWithFormat:@"%@=%@", @"title", title];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  contentDescription = [(VUIPlistMediaDatabaseEntity *)self contentDescription];
  v19 = [v17 stringWithFormat:@"%@=%@", @"contentDescription", contentDescription];
  [v3 addObject:v19];

  v20 = MEMORY[0x1E696AEC0];
  coverArtURL = [(VUIPlistMediaDatabaseEntity *)self coverArtURL];
  v22 = [v20 stringWithFormat:@"%@=%@", @"coverArtURL", coverArtURL];
  [v3 addObject:v22];

  v23 = MEMORY[0x1E696AEC0];
  genreTitle = [(VUIPlistMediaDatabaseEntity *)self genreTitle];
  v25 = [v23 stringWithFormat:@"%@=%@", @"genreTitle", genreTitle];
  [v3 addObject:v25];

  v26 = MEMORY[0x1E696AEC0];
  canonicalID = [(VUIPlistMediaDatabaseEntity *)self canonicalID];
  v28 = [v26 stringWithFormat:@"%@=%@", @"canonicalID", canonicalID];
  [v3 addObject:v28];

  v29 = MEMORY[0x1E696AEC0];
  v30 = [v3 componentsJoinedByString:{@", "}];
  v31 = [v29 stringWithFormat:@"<%@>", v30];

  return v31;
}

- (void)_mediaEntityPropertyDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  v5 = object;
  if (object != self)
  {
    identifier = [(VUIPlistMediaDatabaseEntity *)object identifier];
    identifier2 = [(VUIPlistMediaDatabaseEntity *)self identifier];
    v8 = [identifier isEqualToString:identifier2];

    if (v8)
    {
      userInfo = [changeCopy userInfo];
      v10 = [userInfo objectForKey:VUIPlistMediaEntityPropertyDidChangePropertyNameKey];

      userInfo2 = [changeCopy userInfo];
      v12 = [userInfo2 objectForKey:VUIPlistMediaEntityPropertyDidChangePropertyValueKey];

      if (v10)
      {
        null = [MEMORY[0x1E695DFB0] null];

        if (v12 == null)
        {

          v12 = 0;
        }

        [(VUIPlistMediaDatabaseEntity *)self setValue:v12 forKey:v10];
      }
    }
  }
}

@end