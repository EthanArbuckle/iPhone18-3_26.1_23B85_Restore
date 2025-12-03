@interface VUIPlistMediaDatabaseSeason
- (BOOL)isEqual:(id)equal;
- (VUIPlistMediaDatabaseSeason)initWithDictionary:(id)dictionary show:(id)show;
- (VUIPlistMediaDatabaseSeason)initWithIdentifier:(id)identifier show:(id)show;
- (VUIPlistMediaDatabaseSeason)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (VUIPlistMediaDatabaseShow)show;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)episodeForIdentifier:(id)identifier;
- (id)isLocal;
- (void)setEpisodes:(id)episodes;
@end

@implementation VUIPlistMediaDatabaseSeason

- (VUIPlistMediaDatabaseSeason)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = VUIPlistMediaDatabaseSeason;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v8 initWithIdentifier:identifier type:type];
  v5 = v4;
  if (v4)
  {
    episodes = v4->_episodes;
    v4->_episodes = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (VUIPlistMediaDatabaseSeason)initWithIdentifier:(id)identifier show:(id)show
{
  showCopy = show;
  v7 = [(VUIPlistMediaDatabaseSeason *)self initWithIdentifier:identifier type:5];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_show, showCopy);
  }

  return v8;
}

- (VUIPlistMediaDatabaseSeason)initWithDictionary:(id)dictionary show:(id)show
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  showCopy = show;
  v25.receiver = self;
  v25.super_class = VUIPlistMediaDatabaseSeason;
  v8 = [(VUIPlistMediaDatabaseEntity *)&v25 initWithDictionary:dictionaryCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_show, showCopy);
    v10 = [dictionaryCopy vui_numberForKey:@"SeasonNumber"];
    v11 = [v10 copy];
    seasonNumber = v9->_seasonNumber;
    v9->_seasonNumber = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [dictionaryCopy vui_arrayForKey:@"Episodes"];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[VUIPlistMediaDatabaseItem alloc] initWithDictionary:*(*(&v21 + 1) + 8 * v18)];
          [(VUIPlistMediaDatabaseItem *)v19 setSeason:v9];
          [v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v16);
    }

    [(VUIPlistMediaDatabaseSeason *)v9 setEpisodes:v13];
  }

  return v9;
}

- (void)setEpisodes:(id)episodes
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEB0];
  episodesCopy = episodes;
  v6 = [v4 sortDescriptorWithKey:@"episodeNumber" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [episodesCopy sortedArrayUsingDescriptors:v7];

  episodes = self->_episodes;
  self->_episodes = v8;
}

- (id)episodeForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  episodes = [(VUIPlistMediaDatabaseSeason *)self episodes];
  v6 = [episodes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(episodes);
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

      v6 = [episodes countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  episodes = [(VUIPlistMediaDatabaseSeason *)self episodes];
  v3 = [episodes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(episodes);
        }

        isLocal = [*(*(&v9 + 1) + 8 * i) isLocal];

        if (isLocal)
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [episodes countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VUIPlistMediaDatabaseSeason;
  dictionaryRepresentation = [(VUIPlistMediaDatabaseEntity *)&v18 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];
  seasonNumber = [(VUIPlistMediaDatabaseSeason *)self seasonNumber];
  [v4 vui_setObjectIfNotNil:seasonNumber forKey:@"SeasonNumber"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  episodes = [(VUIPlistMediaDatabaseSeason *)self episodes];
  v8 = [episodes countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(episodes);
        }

        dictionaryRepresentation2 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
        [v6 addObject:dictionaryRepresentation2];
      }

      v9 = [episodes countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  [v4 setObject:v6 forKey:@"Episodes"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = VUIPlistMediaDatabaseSeason;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v10 copyWithZone:zone];
  v5 = [(NSNumber *)self->_seasonNumber copy];
  v6 = v4[9];
  v4[9] = v5;

  v7 = [(NSArray *)self->_episodes copy];
  v8 = v4[10];
  v4[10] = v7;

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

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v18.receiver = self;
        v18.super_class = VUIPlistMediaDatabaseSeason;
        if (![(VUIPlistMediaDatabaseEntity *)&v18 isEqual:v6])
        {
LABEL_9:
          v12 = 0;
LABEL_19:

          goto LABEL_20;
        }

        seasonNumber = [(VUIPlistMediaDatabaseSeason *)self seasonNumber];
        seasonNumber2 = [(VUIPlistMediaDatabaseSeason *)v6 seasonNumber];
        v9 = seasonNumber;
        v10 = seasonNumber2;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v10)
          {
LABEL_18:

            goto LABEL_19;
          }

          v13 = [v9 isEqual:v10];

          if ((v13 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        episodes = [(VUIPlistMediaDatabaseSeason *)self episodes];
        episodes2 = [(VUIPlistMediaDatabaseSeason *)v6 episodes];
        v9 = episodes;
        v16 = episodes2;
        v11 = v16;
        if (v9 == v16)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
          if (v9 && v16)
          {
            v12 = [v9 isEqual:v16];
          }
        }

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIPlistMediaDatabaseSeason;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  seasonNumber = [(VUIPlistMediaDatabaseSeason *)self seasonNumber];
  v7 = [v5 stringWithFormat:@"%@=%@", @"seasonNumber", seasonNumber];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  episodes = [(VUIPlistMediaDatabaseSeason *)self episodes];
  v10 = [v8 stringWithFormat:@"%@=%@", @"episodes", episodes];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

- (VUIPlistMediaDatabaseShow)show
{
  WeakRetained = objc_loadWeakRetained(&self->_show);

  return WeakRetained;
}

@end