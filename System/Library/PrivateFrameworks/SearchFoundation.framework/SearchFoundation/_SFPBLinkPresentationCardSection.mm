@interface _SFPBLinkPresentationCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBLinkPresentationCardSection)initWithDictionary:(id)dictionary;
- (_SFPBLinkPresentationCardSection)initWithFacade:(id)facade;
- (_SFPBLinkPresentationCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPeopleToBadge:(id)badge;
- (void)setCoreSpotlightIdentifier:(id)identifier;
- (void)setPeopleToBadge:(id)badge;
- (void)setUrl:(id)url;
- (void)writeTo:(id)to;
@end

@implementation _SFPBLinkPresentationCardSection

- (_SFPBLinkPresentationCardSection)initWithFacade:(id)facade
{
  v26 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBLinkPresentationCardSection *)self init];
  if (v5)
  {
    coreSpotlightIdentifier = [facadeCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [facadeCopy coreSpotlightIdentifier];
      [(_SFPBLinkPresentationCardSection *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    v8 = [facadeCopy url];

    if (v8)
    {
      v9 = [facadeCopy url];
      [(_SFPBLinkPresentationCardSection *)v5 setUrl:v9];
    }

    peopleToBadge = [facadeCopy peopleToBadge];
    if (peopleToBadge)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    peopleToBadge2 = [facadeCopy peopleToBadge];
    v13 = [peopleToBadge2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(peopleToBadge2);
          }

          v17 = [[_SFPBPerson alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [peopleToBadge2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    [(_SFPBLinkPresentationCardSection *)v5 setPeopleToBadges:v11];
    if ([facadeCopy hasIsHighlighted])
    {
      -[_SFPBLinkPresentationCardSection setIsHighlighted:](v5, "setIsHighlighted:", [facadeCopy isHighlighted]);
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBLinkPresentationCardSection)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = _SFPBLinkPresentationCardSection;
  v5 = [(_SFPBLinkPresentationCardSection *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBLinkPresentationCardSection *)v5 setCoreSpotlightIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBLinkPresentationCardSection *)v5 setUrl:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"peopleToBadge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v8;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        do
        {
          v15 = 0;
          do
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v24 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[_SFPBPerson alloc] initWithDictionary:v16];
              [(_SFPBLinkPresentationCardSection *)v5 addPeopleToBadge:v17];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v13);
      }

      v8 = v22;
      v6 = v23;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:{@"isHighlighted", v22, v23, v24}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLinkPresentationCardSection setIsHighlighted:](v5, "setIsHighlighted:", [v18 BOOLValue]);
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBLinkPresentationCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBLinkPresentationCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBLinkPresentationCardSection *)self dictionaryRepresentation];
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

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_coreSpotlightIdentifier)
  {
    coreSpotlightIdentifier = [(_SFPBLinkPresentationCardSection *)self coreSpotlightIdentifier];
    v5 = [coreSpotlightIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_isHighlighted)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLinkPresentationCardSection isHighlighted](self, "isHighlighted")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isHighlighted"];
  }

  if ([(NSArray *)self->_peopleToBadges count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_peopleToBadges;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"peopleToBadge"];
  }

  if (self->_url)
  {
    v15 = [(_SFPBLinkPresentationCardSection *)self url];
    v16 = [v15 copy];
    [dictionary setObject:v16 forKeyedSubscript:@"url"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_coreSpotlightIdentifier hash];
  v4 = [(NSString *)self->_url hash];
  v5 = [(NSArray *)self->_peopleToBadges hash];
  v6 = 2654435761;
  if (!self->_isHighlighted)
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  coreSpotlightIdentifier = [(_SFPBLinkPresentationCardSection *)self coreSpotlightIdentifier];
  coreSpotlightIdentifier2 = [equalCopy coreSpotlightIdentifier];
  if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  coreSpotlightIdentifier3 = [(_SFPBLinkPresentationCardSection *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier3)
  {
    v8 = coreSpotlightIdentifier3;
    coreSpotlightIdentifier4 = [(_SFPBLinkPresentationCardSection *)self coreSpotlightIdentifier];
    coreSpotlightIdentifier5 = [equalCopy coreSpotlightIdentifier];
    v11 = [coreSpotlightIdentifier4 isEqual:coreSpotlightIdentifier5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  coreSpotlightIdentifier = [(_SFPBLinkPresentationCardSection *)self url];
  coreSpotlightIdentifier2 = [equalCopy url];
  if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBLinkPresentationCardSection *)self url];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBLinkPresentationCardSection *)self url];
    v15 = [equalCopy url];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  coreSpotlightIdentifier = [(_SFPBLinkPresentationCardSection *)self peopleToBadges];
  coreSpotlightIdentifier2 = [equalCopy peopleToBadges];
  if ((coreSpotlightIdentifier != 0) != (coreSpotlightIdentifier2 == 0))
  {
    peopleToBadges = [(_SFPBLinkPresentationCardSection *)self peopleToBadges];
    if (!peopleToBadges)
    {

LABEL_20:
      isHighlighted = self->_isHighlighted;
      v22 = isHighlighted == [equalCopy isHighlighted];
      goto LABEL_18;
    }

    v18 = peopleToBadges;
    peopleToBadges2 = [(_SFPBLinkPresentationCardSection *)self peopleToBadges];
    peopleToBadges3 = [equalCopy peopleToBadges];
    v21 = [peopleToBadges2 isEqual:peopleToBadges3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  coreSpotlightIdentifier = [(_SFPBLinkPresentationCardSection *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBLinkPresentationCardSection *)self url];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  peopleToBadges = [(_SFPBLinkPresentationCardSection *)self peopleToBadges];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [peopleToBadges countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(peopleToBadges);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [peopleToBadges countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ([(_SFPBLinkPresentationCardSection *)self isHighlighted])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addPeopleToBadge:(id)badge
{
  badgeCopy = badge;
  peopleToBadges = self->_peopleToBadges;
  v8 = badgeCopy;
  if (!peopleToBadges)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_peopleToBadges;
    self->_peopleToBadges = array;

    badgeCopy = v8;
    peopleToBadges = self->_peopleToBadges;
  }

  [(NSArray *)peopleToBadges addObject:badgeCopy];
}

- (void)setPeopleToBadge:(id)badge
{
  v4 = [badge copy];
  peopleToBadges = self->_peopleToBadges;
  self->_peopleToBadges = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setUrl:(id)url
{
  v4 = [url copy];
  url = self->_url;
  self->_url = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCoreSpotlightIdentifier:(id)identifier
{
  v4 = [identifier copy];
  coreSpotlightIdentifier = self->_coreSpotlightIdentifier;
  self->_coreSpotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end