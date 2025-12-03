@interface VUIPlistMediaDatabaseShow
- (BOOL)isEqual:(id)equal;
- (VUIPlistMediaDatabaseShow)initWithDictionary:(id)dictionary;
- (VUIPlistMediaDatabaseShow)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)isLocal;
- (id)seasonForIdentifier:(id)identifier;
- (void)setSeasons:(id)seasons;
@end

@implementation VUIPlistMediaDatabaseShow

- (VUIPlistMediaDatabaseShow)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = VUIPlistMediaDatabaseShow;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v8 initWithIdentifier:identifier type:type];
  v5 = v4;
  if (v4)
  {
    seasons = v4->_seasons;
    v4->_seasons = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (VUIPlistMediaDatabaseShow)initWithDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = VUIPlistMediaDatabaseShow;
  v5 = [(VUIPlistMediaDatabaseEntity *)&v18 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [dictionaryCopy vui_arrayForKey:@"Seasons"];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[VUIPlistMediaDatabaseSeason alloc] initWithDictionary:*(*(&v14 + 1) + 8 * v11) show:v5];
          [v6 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }

    [(VUIPlistMediaDatabaseShow *)v5 setSeasons:v6];
  }

  return v5;
}

- (void)setSeasons:(id)seasons
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEB0];
  seasonsCopy = seasons;
  v6 = [v4 sortDescriptorWithKey:@"seasonNumber" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [seasonsCopy sortedArrayUsingDescriptors:v7];

  seasons = self->_seasons;
  self->_seasons = v8;
}

- (id)seasonForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  seasons = [(VUIPlistMediaDatabaseShow *)self seasons];
  v6 = [seasons countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(seasons);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [seasons countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)isLocal
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  seasons = [(VUIPlistMediaDatabaseShow *)self seasons];
  v3 = [seasons countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(seasons);
        }

        isLocal = [*(*(&v9 + 1) + 8 * i) isLocal];

        if (isLocal)
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [seasons countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];

  return v7;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VUIPlistMediaDatabaseShow;
  dictionaryRepresentation = [(VUIPlistMediaDatabaseEntity *)&v17 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  seasons = [(VUIPlistMediaDatabaseShow *)self seasons];
  v7 = [seasons countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(seasons);
        }

        dictionaryRepresentation2 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
        [v5 addObject:dictionaryRepresentation2];
      }

      v8 = [seasons countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  [v4 setObject:v5 forKey:@"Seasons"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = VUIPlistMediaDatabaseShow;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v8 copyWithZone:zone];
  v5 = [(NSArray *)self->_seasons copy];
  v6 = v4[8];
  v4[8] = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v14.receiver = self;
    v14.super_class = VUIPlistMediaDatabaseShow;
    if ([(VUIPlistMediaDatabaseEntity *)&v14 isEqual:v6])
    {
      seasons = [(VUIPlistMediaDatabaseShow *)self seasons];
      seasons2 = [(VUIPlistMediaDatabaseShow *)v6 seasons];
      v9 = seasons;
      v10 = seasons2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12.receiver = self;
  v12.super_class = VUIPlistMediaDatabaseShow;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  seasons = [(VUIPlistMediaDatabaseShow *)self seasons];
  v7 = [v5 stringWithFormat:@"%@=%@", @"seasons", seasons];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end