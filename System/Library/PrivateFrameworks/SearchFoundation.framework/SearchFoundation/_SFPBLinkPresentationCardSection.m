@interface _SFPBLinkPresentationCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBLinkPresentationCardSection)initWithDictionary:(id)a3;
- (_SFPBLinkPresentationCardSection)initWithFacade:(id)a3;
- (_SFPBLinkPresentationCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPeopleToBadge:(id)a3;
- (void)setCoreSpotlightIdentifier:(id)a3;
- (void)setPeopleToBadge:(id)a3;
- (void)setUrl:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBLinkPresentationCardSection

- (_SFPBLinkPresentationCardSection)initWithFacade:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBLinkPresentationCardSection *)self init];
  if (v5)
  {
    v6 = [v4 coreSpotlightIdentifier];

    if (v6)
    {
      v7 = [v4 coreSpotlightIdentifier];
      [(_SFPBLinkPresentationCardSection *)v5 setCoreSpotlightIdentifier:v7];
    }

    v8 = [v4 url];

    if (v8)
    {
      v9 = [v4 url];
      [(_SFPBLinkPresentationCardSection *)v5 setUrl:v9];
    }

    v10 = [v4 peopleToBadge];
    if (v10)
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
    v12 = [v4 peopleToBadge];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [[_SFPBPerson alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    [(_SFPBLinkPresentationCardSection *)v5 setPeopleToBadges:v11];
    if ([v4 hasIsHighlighted])
    {
      -[_SFPBLinkPresentationCardSection setIsHighlighted:](v5, "setIsHighlighted:", [v4 isHighlighted]);
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBLinkPresentationCardSection)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = _SFPBLinkPresentationCardSection;
  v5 = [(_SFPBLinkPresentationCardSection *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBLinkPresentationCardSection *)v5 setCoreSpotlightIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBLinkPresentationCardSection *)v5 setUrl:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"peopleToBadge"];
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

    v18 = [v4 objectForKeyedSubscript:{@"isHighlighted", v22, v23, v24}];
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

- (_SFPBLinkPresentationCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBLinkPresentationCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBLinkPresentationCardSection *)self dictionaryRepresentation];
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

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_coreSpotlightIdentifier)
  {
    v4 = [(_SFPBLinkPresentationCardSection *)self coreSpotlightIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_isHighlighted)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLinkPresentationCardSection isHighlighted](self, "isHighlighted")}];
    [v3 setObject:v6 forKeyedSubscript:@"isHighlighted"];
  }

  if ([(NSArray *)self->_peopleToBadges count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

          v13 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"peopleToBadge"];
  }

  if (self->_url)
  {
    v15 = [(_SFPBLinkPresentationCardSection *)self url];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"url"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBLinkPresentationCardSection *)self coreSpotlightIdentifier];
  v6 = [v4 coreSpotlightIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBLinkPresentationCardSection *)self coreSpotlightIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBLinkPresentationCardSection *)self coreSpotlightIdentifier];
    v10 = [v4 coreSpotlightIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBLinkPresentationCardSection *)self url];
  v6 = [v4 url];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBLinkPresentationCardSection *)self url];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBLinkPresentationCardSection *)self url];
    v15 = [v4 url];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBLinkPresentationCardSection *)self peopleToBadges];
  v6 = [v4 peopleToBadges];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBLinkPresentationCardSection *)self peopleToBadges];
    if (!v17)
    {

LABEL_20:
      isHighlighted = self->_isHighlighted;
      v22 = isHighlighted == [v4 isHighlighted];
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBLinkPresentationCardSection *)self peopleToBadges];
    v20 = [v4 peopleToBadges];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBLinkPresentationCardSection *)self coreSpotlightIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBLinkPresentationCardSection *)self url];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBLinkPresentationCardSection *)self peopleToBadges];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ([(_SFPBLinkPresentationCardSection *)self isHighlighted])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addPeopleToBadge:(id)a3
{
  v4 = a3;
  peopleToBadges = self->_peopleToBadges;
  v8 = v4;
  if (!peopleToBadges)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_peopleToBadges;
    self->_peopleToBadges = v6;

    v4 = v8;
    peopleToBadges = self->_peopleToBadges;
  }

  [(NSArray *)peopleToBadges addObject:v4];
}

- (void)setPeopleToBadge:(id)a3
{
  v4 = [a3 copy];
  peopleToBadges = self->_peopleToBadges;
  self->_peopleToBadges = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setUrl:(id)a3
{
  v4 = [a3 copy];
  url = self->_url;
  self->_url = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCoreSpotlightIdentifier:(id)a3
{
  v4 = [a3 copy];
  coreSpotlightIdentifier = self->_coreSpotlightIdentifier;
  self->_coreSpotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end