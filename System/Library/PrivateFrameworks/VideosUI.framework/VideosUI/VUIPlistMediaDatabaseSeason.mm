@interface VUIPlistMediaDatabaseSeason
- (BOOL)isEqual:(id)a3;
- (VUIPlistMediaDatabaseSeason)initWithDictionary:(id)a3 show:(id)a4;
- (VUIPlistMediaDatabaseSeason)initWithIdentifier:(id)a3 show:(id)a4;
- (VUIPlistMediaDatabaseSeason)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (VUIPlistMediaDatabaseShow)show;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)episodeForIdentifier:(id)a3;
- (id)isLocal;
- (void)setEpisodes:(id)a3;
@end

@implementation VUIPlistMediaDatabaseSeason

- (VUIPlistMediaDatabaseSeason)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = VUIPlistMediaDatabaseSeason;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v8 initWithIdentifier:a3 type:a4];
  v5 = v4;
  if (v4)
  {
    episodes = v4->_episodes;
    v4->_episodes = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (VUIPlistMediaDatabaseSeason)initWithIdentifier:(id)a3 show:(id)a4
{
  v6 = a4;
  v7 = [(VUIPlistMediaDatabaseSeason *)self initWithIdentifier:a3 type:5];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_show, v6);
  }

  return v8;
}

- (VUIPlistMediaDatabaseSeason)initWithDictionary:(id)a3 show:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = VUIPlistMediaDatabaseSeason;
  v8 = [(VUIPlistMediaDatabaseEntity *)&v25 initWithDictionary:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_show, v7);
    v10 = [v6 vui_numberForKey:@"SeasonNumber"];
    v11 = [v10 copy];
    seasonNumber = v9->_seasonNumber;
    v9->_seasonNumber = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [v6 vui_arrayForKey:@"Episodes"];
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

- (void)setEpisodes:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEB0];
  v5 = a3;
  v6 = [v4 sortDescriptorWithKey:@"episodeNumber" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  episodes = self->_episodes;
  self->_episodes = v8;
}

- (id)episodeForIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(VUIPlistMediaDatabaseSeason *)self episodes];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(VUIPlistMediaDatabaseSeason *)self episodes];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) isLocal];

        if (v6)
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(VUIPlistMediaDatabaseEntity *)&v18 dictionaryRepresentation];
  v4 = [v3 mutableCopy];
  v5 = [(VUIPlistMediaDatabaseSeason *)self seasonNumber];
  [v4 vui_setObjectIfNotNil:v5 forKey:@"SeasonNumber"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(VUIPlistMediaDatabaseSeason *)self episodes];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  [v4 setObject:v6 forKey:@"Episodes"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = VUIPlistMediaDatabaseSeason;
  v4 = [(VUIPlistMediaDatabaseEntity *)&v10 copyWithZone:a3];
  v5 = [(NSNumber *)self->_seasonNumber copy];
  v6 = v4[9];
  v4[9] = v5;

  v7 = [(NSArray *)self->_episodes copy];
  v8 = v4[10];
  v4[10] = v7;

  return v4;
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
        v18.receiver = self;
        v18.super_class = VUIPlistMediaDatabaseSeason;
        if (![(VUIPlistMediaDatabaseEntity *)&v18 isEqual:v6])
        {
LABEL_9:
          v12 = 0;
LABEL_19:

          goto LABEL_20;
        }

        v7 = [(VUIPlistMediaDatabaseSeason *)self seasonNumber];
        v8 = [(VUIPlistMediaDatabaseSeason *)v6 seasonNumber];
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
LABEL_18:

            goto LABEL_19;
          }

          v13 = [v9 isEqual:v10];

          if ((v13 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v14 = [(VUIPlistMediaDatabaseSeason *)self episodes];
        v15 = [(VUIPlistMediaDatabaseSeason *)v6 episodes];
        v9 = v14;
        v16 = v15;
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
  v6 = [(VUIPlistMediaDatabaseSeason *)self seasonNumber];
  v7 = [v5 stringWithFormat:@"%@=%@", @"seasonNumber", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIPlistMediaDatabaseSeason *)self episodes];
  v10 = [v8 stringWithFormat:@"%@=%@", @"episodes", v9];
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