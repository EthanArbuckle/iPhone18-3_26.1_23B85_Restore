@interface SFResultSection
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFResultSection)init;
- (SFResultSection)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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
    uUIDString = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
  }

  return v2;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SFResultSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  bundleIdentifier = [(SFResultSection *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [(SFResultSection *)self bundleIdentifier];
    v6 = [bundleIdentifier2 copy];
    [dictionary setObject:v6 forKeyedSubscript:@"bundleIdentifier"];
  }

  identifier = [(SFResultSection *)self identifier];

  if (identifier)
  {
    identifier2 = [(SFResultSection *)self identifier];
    v9 = [identifier2 copy];
    [dictionary setObject:v9 forKeyedSubscript:@"identifier"];
  }

  v10 = MEMORY[0x1E696AD98];
  [(SFResultSection *)self rankingScore];
  v11 = [v10 numberWithDouble:?];
  [dictionary setObject:v11 forKeyedSubscript:@"rankingScore"];

  results = [(SFResultSection *)self results];
  v13 = [results count];

  if (v13)
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    results2 = [(SFResultSection *)self results];
    v16 = [results2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(results2);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v17 = [results2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    [dictionary setObject:array forKeyedSubscript:@"results"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  bundleIdentifier = [(SFResultSection *)self bundleIdentifier];
  v6 = [bundleIdentifier copy];
  v7 = *(v4 + 40);
  *(v4 + 40) = v6;

  title = [(SFResultSection *)self title];
  v9 = [title copy];
  v10 = *(v4 + 48);
  *(v4 + 48) = v9;

  [(SFResultSection *)self rankingScore];
  *(v4 + 88) = v11;
  results = [(SFResultSection *)self results];
  v13 = [results copy];
  v14 = *(v4 + 16);
  *(v4 + 16) = v13;

  *(v4 + 24) = [(SFResultSection *)self maxInitiallyVisibleResults];
  identifier = [(SFResultSection *)self identifier];
  v16 = *(v4 + 32);
  *(v4 + 32) = identifier;

  *(v4 + 8) = [(SFResultSection *)self isInitiallyHidden];
  button = [(SFResultSection *)self button];
  v18 = [button copy];
  v19 = *(v4 + 80);
  *(v4 + 80) = v18;

  subtitle = [(SFResultSection *)self subtitle];
  v21 = *(v4 + 64);
  *(v4 + 64) = subtitle;

  moreText = [(SFResultSection *)self moreText];
  v23 = [moreText copy];
  v24 = *(v4 + 72);
  *(v4 + 72) = v23;

  *(v4 + 96) = [(SFResultSection *)self totalAvailableResults];
  titleButtonItem = [(SFResultSection *)self titleButtonItem];
  v26 = [titleButtonItem copy];
  v27 = *(v4 + 56);
  *(v4 + 56) = v26;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];
  [coderCopy encodeObject:self->_title forKey:@"_title"];
  [coderCopy encodeDouble:@"_rankingScore" forKey:self->_rankingScore];
  [coderCopy encodeObject:self->_results forKey:@"_results"];
  [coderCopy encodeInteger:self->_maxInitiallyVisibleResults forKey:@"_maxInitiallyVisibleResults"];
  [coderCopy encodeObject:self->_moreText forKey:@"_moreText"];
  [coderCopy encodeObject:self->_button forKey:@"_button"];
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
  [coderCopy encodeBool:self->_isInitiallyHidden forKey:@"_isInitiallyHidden"];
  [coderCopy encodeObject:self->_subtitle forKey:@"_subtitle"];
  [coderCopy encodeInteger:self->_totalAvailableResults forKey:@"_totalAvailableResults"];
  [coderCopy encodeObject:self->_titleButtonItem forKey:@"_titleButtonItem"];
}

- (SFResultSection)initWithCoder:(id)coder
{
  v27[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    coderCopy = coder;
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v5;

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = self->_title;
    self->_title = v7;

    [coderCopy decodeDoubleForKey:@"_rankingScore"];
    self->_rankingScore = v9;
    v10 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_results"];
    results = self->_results;
    self->_results = v13;

    self->_maxInitiallyVisibleResults = [coderCopy decodeIntegerForKey:@"_maxInitiallyVisibleResults"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_moreText"];
    moreText = self->_moreText;
    self->_moreText = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_button"];
    button = self->_button;
    self->_button = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = self->_identifier;
    self->_identifier = v19;

    self->_isInitiallyHidden = [coderCopy decodeBoolForKey:@"_isInitiallyHidden"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_subtitle"];
    subtitle = self->_subtitle;
    self->_subtitle = v21;

    self->_totalAvailableResults = [coderCopy decodeIntegerForKey:@"_totalAvailableResults"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_titleButtonItem"];

    titleButtonItem = self->_titleButtonItem;
    self->_titleButtonItem = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
  return self;
}

@end