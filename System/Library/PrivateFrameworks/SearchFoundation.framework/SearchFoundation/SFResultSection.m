@interface SFResultSection
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFResultSection)init;
- (SFResultSection)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFResultSection

- (SFResultSection)init
{
  v7.receiver = self;
  v7.super_class = SFResultSection;
  v2 = [(SFResultSection *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;
  }

  return v2;
}

- (NSData)jsonData
{
  v2 = [(SFResultSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(SFResultSection *)self bundleIdentifier];

  if (v4)
  {
    v5 = [(SFResultSection *)self bundleIdentifier];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"bundleIdentifier"];
  }

  v7 = [(SFResultSection *)self identifier];

  if (v7)
  {
    v8 = [(SFResultSection *)self identifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"identifier"];
  }

  v10 = MEMORY[0x1E696AD98];
  [(SFResultSection *)self rankingScore];
  v11 = [v10 numberWithDouble:?];
  [v3 setObject:v11 forKeyedSubscript:@"rankingScore"];

  v12 = [(SFResultSection *)self results];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = [(SFResultSection *)self results];
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"results"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFResultSection *)self bundleIdentifier];
  v6 = [v5 copy];
  v7 = *(v4 + 40);
  *(v4 + 40) = v6;

  v8 = [(SFResultSection *)self title];
  v9 = [v8 copy];
  v10 = *(v4 + 48);
  *(v4 + 48) = v9;

  [(SFResultSection *)self rankingScore];
  *(v4 + 88) = v11;
  v12 = [(SFResultSection *)self results];
  v13 = [v12 copy];
  v14 = *(v4 + 16);
  *(v4 + 16) = v13;

  *(v4 + 24) = [(SFResultSection *)self maxInitiallyVisibleResults];
  v15 = [(SFResultSection *)self identifier];
  v16 = *(v4 + 32);
  *(v4 + 32) = v15;

  *(v4 + 8) = [(SFResultSection *)self isInitiallyHidden];
  v17 = [(SFResultSection *)self button];
  v18 = [v17 copy];
  v19 = *(v4 + 80);
  *(v4 + 80) = v18;

  v20 = [(SFResultSection *)self subtitle];
  v21 = *(v4 + 64);
  *(v4 + 64) = v20;

  v22 = [(SFResultSection *)self moreText];
  v23 = [v22 copy];
  v24 = *(v4 + 72);
  *(v4 + 72) = v23;

  *(v4 + 96) = [(SFResultSection *)self totalAvailableResults];
  v25 = [(SFResultSection *)self titleButtonItem];
  v26 = [v25 copy];
  v27 = *(v4 + 56);
  *(v4 + 56) = v26;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];
  [v5 encodeObject:self->_title forKey:@"_title"];
  [v5 encodeDouble:@"_rankingScore" forKey:self->_rankingScore];
  [v5 encodeObject:self->_results forKey:@"_results"];
  [v5 encodeInteger:self->_maxInitiallyVisibleResults forKey:@"_maxInitiallyVisibleResults"];
  [v5 encodeObject:self->_moreText forKey:@"_moreText"];
  [v5 encodeObject:self->_button forKey:@"_button"];
  [v5 encodeObject:self->_identifier forKey:@"_identifier"];
  [v5 encodeBool:self->_isInitiallyHidden forKey:@"_isInitiallyHidden"];
  [v5 encodeObject:self->_subtitle forKey:@"_subtitle"];
  [v5 encodeInteger:self->_totalAvailableResults forKey:@"_totalAvailableResults"];
  [v5 encodeObject:self->_titleButtonItem forKey:@"_titleButtonItem"];
}

- (SFResultSection)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = a3;
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v5;

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = self->_title;
    self->_title = v7;

    [v4 decodeDoubleForKey:@"_rankingScore"];
    self->_rankingScore = v9;
    v10 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_results"];
    results = self->_results;
    self->_results = v13;

    self->_maxInitiallyVisibleResults = [v4 decodeIntegerForKey:@"_maxInitiallyVisibleResults"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_moreText"];
    moreText = self->_moreText;
    self->_moreText = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_button"];
    button = self->_button;
    self->_button = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = self->_identifier;
    self->_identifier = v19;

    self->_isInitiallyHidden = [v4 decodeBoolForKey:@"_isInitiallyHidden"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_subtitle"];
    subtitle = self->_subtitle;
    self->_subtitle = v21;

    self->_totalAvailableResults = [v4 decodeIntegerForKey:@"_totalAvailableResults"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_titleButtonItem"];

    titleButtonItem = self->_titleButtonItem;
    self->_titleButtonItem = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
  return self;
}

@end