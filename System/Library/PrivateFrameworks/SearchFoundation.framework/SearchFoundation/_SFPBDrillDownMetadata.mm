@interface _SFPBDrillDownMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCardMetadata)cardOnlyMetadata;
- (_SFPBCardSearchMetadata)cardSearchMetadata;
- (_SFPBDrillDownMetadata)initWithDictionary:(id)dictionary;
- (_SFPBDrillDownMetadata)initWithFacade:(id)facade;
- (_SFPBDrillDownMetadata)initWithJSON:(id)n;
- (_SFPBEntitySearchMetadata)entitySearchMetadata;
- (_SFPBEntitySearchMetadata)entitySearchOnlyMetadata;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCardDomains:(id)domains;
- (void)addCardIdentifiers:(id)identifiers;
- (void)setCardDomains:(id)domains;
- (void)setCardIdentifier:(id)identifier;
- (void)setCardIdentifiers:(id)identifiers;
- (void)setCardOnlyMetadata:(id)metadata;
- (void)setCardSearchMetadata:(id)metadata;
- (void)setDebugParams:(id)params;
- (void)setEntitySearchMetadata:(id)metadata;
- (void)setEntitySearchOnlyMetadata:(id)metadata;
- (void)setParams:(id)params;
- (void)setQtype:(id)qtype;
- (void)setViewConfigName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBDrillDownMetadata

- (_SFPBDrillDownMetadata)initWithFacade:(id)facade
{
  v59 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBDrillDownMetadata *)self init];
  if (v5)
  {
    cardIdentifier = [facadeCopy cardIdentifier];

    if (cardIdentifier)
    {
      cardIdentifier2 = [facadeCopy cardIdentifier];
      [(_SFPBDrillDownMetadata *)v5 setCardIdentifier:cardIdentifier2];
    }

    cardIdentifiers = [facadeCopy cardIdentifiers];
    if (cardIdentifiers)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    cardIdentifiers2 = [facadeCopy cardIdentifiers];
    v11 = [cardIdentifiers2 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v54;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(cardIdentifiers2);
          }

          if (*(*(&v53 + 1) + 8 * i))
          {
            [v9 addObject:?];
          }
        }

        v12 = [cardIdentifiers2 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v12);
    }

    [(_SFPBDrillDownMetadata *)v5 setCardIdentifiers:v9];
    cardDomains = [facadeCopy cardDomains];
    if (cardDomains)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v16 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    cardDomains2 = [facadeCopy cardDomains];
    v18 = [cardDomains2 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v50;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v50 != v20)
          {
            objc_enumerationMutation(cardDomains2);
          }

          if (*(*(&v49 + 1) + 8 * j))
          {
            [v16 addObject:?];
          }
        }

        v19 = [cardDomains2 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v19);
    }

    [(_SFPBDrillDownMetadata *)v5 setCardDomains:v16];
    qtype = [facadeCopy qtype];

    if (qtype)
    {
      qtype2 = [facadeCopy qtype];
      [(_SFPBDrillDownMetadata *)v5 setQtype:qtype2];
    }

    viewConfigName = [facadeCopy viewConfigName];

    if (viewConfigName)
    {
      viewConfigName2 = [facadeCopy viewConfigName];
      [(_SFPBDrillDownMetadata *)v5 setViewConfigName:viewConfigName2];
    }

    if ([facadeCopy hasCardOnlyMetadata])
    {
      cardOnlyMetadata = [facadeCopy cardOnlyMetadata];

      if (cardOnlyMetadata)
      {
        v27 = [_SFPBCardMetadata alloc];
        cardOnlyMetadata2 = [facadeCopy cardOnlyMetadata];
        v29 = [(_SFPBCardMetadata *)v27 initWithFacade:cardOnlyMetadata2];
        [(_SFPBDrillDownMetadata *)v5 setCardOnlyMetadata:v29];
      }
    }

    if ([facadeCopy hasEntitySearchOnlyMetadata])
    {
      entitySearchOnlyMetadata = [facadeCopy entitySearchOnlyMetadata];

      if (entitySearchOnlyMetadata)
      {
        v31 = [_SFPBEntitySearchMetadata alloc];
        entitySearchOnlyMetadata2 = [facadeCopy entitySearchOnlyMetadata];
        v33 = [(_SFPBEntitySearchMetadata *)v31 initWithFacade:entitySearchOnlyMetadata2];
        [(_SFPBDrillDownMetadata *)v5 setEntitySearchOnlyMetadata:v33];
      }
    }

    if ([facadeCopy hasCardSearchMetadata])
    {
      cardSearchMetadata = [facadeCopy cardSearchMetadata];

      if (cardSearchMetadata)
      {
        v35 = [_SFPBCardSearchMetadata alloc];
        cardSearchMetadata2 = [facadeCopy cardSearchMetadata];
        v37 = [(_SFPBCardSearchMetadata *)v35 initWithFacade:cardSearchMetadata2];
        [(_SFPBDrillDownMetadata *)v5 setCardSearchMetadata:v37];
      }
    }

    if ([facadeCopy hasEntitySearchMetadata])
    {
      entitySearchMetadata = [facadeCopy entitySearchMetadata];

      if (entitySearchMetadata)
      {
        v39 = [_SFPBEntitySearchMetadata alloc];
        entitySearchMetadata2 = [facadeCopy entitySearchMetadata];
        v41 = [(_SFPBEntitySearchMetadata *)v39 initWithFacade:entitySearchMetadata2];
        [(_SFPBDrillDownMetadata *)v5 setEntitySearchMetadata:v41];
      }
    }

    debugParams = [facadeCopy debugParams];

    if (debugParams)
    {
      debugParams2 = [facadeCopy debugParams];
      [(_SFPBDrillDownMetadata *)v5 setDebugParams:debugParams2];
    }

    params = [facadeCopy params];

    if (params)
    {
      params2 = [facadeCopy params];
      [(_SFPBDrillDownMetadata *)v5 setParams:params2];
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDrillDownMetadata)initWithDictionary:(id)dictionary
{
  v58 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v55.receiver = self;
  v55.super_class = _SFPBDrillDownMetadata;
  v5 = [(_SFPBDrillDownMetadata *)&v55 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cardIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBDrillDownMetadata *)v5 setCardIdentifier:v7];
    }

    v46 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"cardIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v52;
        do
        {
          v13 = 0;
          do
          {
            if (*v52 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v51 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 copy];
              [(_SFPBDrillDownMetadata *)v5 addCardIdentifiers:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v11);
      }
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"cardDomains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v48;
        do
        {
          v21 = 0;
          do
          {
            if (*v48 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v47 + 1) + 8 * v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [v22 copy];
              [(_SFPBDrillDownMetadata *)v5 addCardDomains:v23];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v19);
      }
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"qtype"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBDrillDownMetadata *)v5 setQtype:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:{@"viewConfigName", v24}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBDrillDownMetadata *)v5 setViewConfigName:v27];
    }

    v44 = v16;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"cardOnlyMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBCardMetadata alloc] initWithDictionary:v28];
      [(_SFPBDrillDownMetadata *)v5 setCardOnlyMetadata:v29];
    }

    v45 = v8;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"entitySearchOnlyMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBEntitySearchMetadata alloc] initWithDictionary:v30];
      [(_SFPBDrillDownMetadata *)v5 setEntitySearchOnlyMetadata:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"cardSearchMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBCardSearchMetadata alloc] initWithDictionary:v32];
      [(_SFPBDrillDownMetadata *)v5 setCardSearchMetadata:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"entitySearchMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBEntitySearchMetadata alloc] initWithDictionary:v34];
      [(_SFPBDrillDownMetadata *)v5 setEntitySearchMetadata:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"debugParams"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [v36 copy];
      [(_SFPBDrillDownMetadata *)v5 setDebugParams:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"params"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 copy];
      [(_SFPBDrillDownMetadata *)v5 setParams:v39];
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDrillDownMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBDrillDownMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBDrillDownMetadata *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_cardDomains)
  {
    cardDomains = [(_SFPBDrillDownMetadata *)self cardDomains];
    v5 = [cardDomains copy];
    [dictionary setObject:v5 forKeyedSubscript:@"cardDomains"];
  }

  if (self->_cardIdentifier)
  {
    cardIdentifier = [(_SFPBDrillDownMetadata *)self cardIdentifier];
    v7 = [cardIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"cardIdentifier"];
  }

  if (self->_cardIdentifiers)
  {
    cardIdentifiers = [(_SFPBDrillDownMetadata *)self cardIdentifiers];
    v9 = [cardIdentifiers copy];
    [dictionary setObject:v9 forKeyedSubscript:@"cardIdentifiers"];
  }

  if (self->_cardOnlyMetadata)
  {
    cardOnlyMetadata = [(_SFPBDrillDownMetadata *)self cardOnlyMetadata];
    dictionaryRepresentation = [cardOnlyMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cardOnlyMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cardOnlyMetadata"];
    }
  }

  if (self->_cardSearchMetadata)
  {
    cardSearchMetadata = [(_SFPBDrillDownMetadata *)self cardSearchMetadata];
    dictionaryRepresentation2 = [cardSearchMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"cardSearchMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"cardSearchMetadata"];
    }
  }

  if (self->_debugParams)
  {
    debugParams = [(_SFPBDrillDownMetadata *)self debugParams];
    v17 = [debugParams copy];
    [dictionary setObject:v17 forKeyedSubscript:@"debugParams"];
  }

  if (self->_entitySearchMetadata)
  {
    entitySearchMetadata = [(_SFPBDrillDownMetadata *)self entitySearchMetadata];
    dictionaryRepresentation3 = [entitySearchMetadata dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"entitySearchMetadata"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"entitySearchMetadata"];
    }
  }

  if (self->_entitySearchOnlyMetadata)
  {
    entitySearchOnlyMetadata = [(_SFPBDrillDownMetadata *)self entitySearchOnlyMetadata];
    dictionaryRepresentation4 = [entitySearchOnlyMetadata dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"entitySearchOnlyMetadata"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"entitySearchOnlyMetadata"];
    }
  }

  if (self->_params)
  {
    params = [(_SFPBDrillDownMetadata *)self params];
    v25 = [params copy];
    [dictionary setObject:v25 forKeyedSubscript:@"params"];
  }

  if (self->_qtype)
  {
    qtype = [(_SFPBDrillDownMetadata *)self qtype];
    v27 = [qtype copy];
    [dictionary setObject:v27 forKeyedSubscript:@"qtype"];
  }

  if (self->_viewConfigName)
  {
    viewConfigName = [(_SFPBDrillDownMetadata *)self viewConfigName];
    v29 = [viewConfigName copy];
    [dictionary setObject:v29 forKeyedSubscript:@"viewConfigName"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_cardIdentifier hash];
  v4 = [(NSArray *)self->_cardIdentifiers hash]^ v3;
  v5 = [(NSArray *)self->_cardDomains hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_qtype hash];
  v7 = [(NSString *)self->_viewConfigName hash];
  v8 = v7 ^ [(_SFPBCardMetadata *)self->_cardOnlyMetadata hash];
  v9 = v6 ^ v8 ^ [(_SFPBEntitySearchMetadata *)self->_entitySearchOnlyMetadata hash];
  v10 = [(_SFPBCardSearchMetadata *)self->_cardSearchMetadata hash];
  v11 = v10 ^ [(_SFPBEntitySearchMetadata *)self->_entitySearchMetadata hash];
  v12 = v11 ^ [(NSString *)self->_debugParams hash];
  return v9 ^ v12 ^ [(NSString *)self->_params hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self cardIdentifier];
  cardIdentifier2 = [equalCopy cardIdentifier];
  if ((cardIdentifier != 0) == (cardIdentifier2 == 0))
  {
    goto LABEL_56;
  }

  cardIdentifier3 = [(_SFPBDrillDownMetadata *)self cardIdentifier];
  if (cardIdentifier3)
  {
    v8 = cardIdentifier3;
    cardIdentifier4 = [(_SFPBDrillDownMetadata *)self cardIdentifier];
    cardIdentifier5 = [equalCopy cardIdentifier];
    v11 = [cardIdentifier4 isEqual:cardIdentifier5];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self cardIdentifiers];
  cardIdentifier2 = [equalCopy cardIdentifiers];
  if ((cardIdentifier != 0) == (cardIdentifier2 == 0))
  {
    goto LABEL_56;
  }

  cardIdentifiers = [(_SFPBDrillDownMetadata *)self cardIdentifiers];
  if (cardIdentifiers)
  {
    v13 = cardIdentifiers;
    cardIdentifiers2 = [(_SFPBDrillDownMetadata *)self cardIdentifiers];
    cardIdentifiers3 = [equalCopy cardIdentifiers];
    v16 = [cardIdentifiers2 isEqual:cardIdentifiers3];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self cardDomains];
  cardIdentifier2 = [equalCopy cardDomains];
  if ((cardIdentifier != 0) == (cardIdentifier2 == 0))
  {
    goto LABEL_56;
  }

  cardDomains = [(_SFPBDrillDownMetadata *)self cardDomains];
  if (cardDomains)
  {
    v18 = cardDomains;
    cardDomains2 = [(_SFPBDrillDownMetadata *)self cardDomains];
    cardDomains3 = [equalCopy cardDomains];
    v21 = [cardDomains2 isEqual:cardDomains3];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self qtype];
  cardIdentifier2 = [equalCopy qtype];
  if ((cardIdentifier != 0) == (cardIdentifier2 == 0))
  {
    goto LABEL_56;
  }

  qtype = [(_SFPBDrillDownMetadata *)self qtype];
  if (qtype)
  {
    v23 = qtype;
    qtype2 = [(_SFPBDrillDownMetadata *)self qtype];
    qtype3 = [equalCopy qtype];
    v26 = [qtype2 isEqual:qtype3];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self viewConfigName];
  cardIdentifier2 = [equalCopy viewConfigName];
  if ((cardIdentifier != 0) == (cardIdentifier2 == 0))
  {
    goto LABEL_56;
  }

  viewConfigName = [(_SFPBDrillDownMetadata *)self viewConfigName];
  if (viewConfigName)
  {
    v28 = viewConfigName;
    viewConfigName2 = [(_SFPBDrillDownMetadata *)self viewConfigName];
    viewConfigName3 = [equalCopy viewConfigName];
    v31 = [viewConfigName2 isEqual:viewConfigName3];

    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self cardOnlyMetadata];
  cardIdentifier2 = [equalCopy cardOnlyMetadata];
  if ((cardIdentifier != 0) == (cardIdentifier2 == 0))
  {
    goto LABEL_56;
  }

  cardOnlyMetadata = [(_SFPBDrillDownMetadata *)self cardOnlyMetadata];
  if (cardOnlyMetadata)
  {
    v33 = cardOnlyMetadata;
    cardOnlyMetadata2 = [(_SFPBDrillDownMetadata *)self cardOnlyMetadata];
    cardOnlyMetadata3 = [equalCopy cardOnlyMetadata];
    v36 = [cardOnlyMetadata2 isEqual:cardOnlyMetadata3];

    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self entitySearchOnlyMetadata];
  cardIdentifier2 = [equalCopy entitySearchOnlyMetadata];
  if ((cardIdentifier != 0) == (cardIdentifier2 == 0))
  {
    goto LABEL_56;
  }

  entitySearchOnlyMetadata = [(_SFPBDrillDownMetadata *)self entitySearchOnlyMetadata];
  if (entitySearchOnlyMetadata)
  {
    v38 = entitySearchOnlyMetadata;
    entitySearchOnlyMetadata2 = [(_SFPBDrillDownMetadata *)self entitySearchOnlyMetadata];
    entitySearchOnlyMetadata3 = [equalCopy entitySearchOnlyMetadata];
    v41 = [entitySearchOnlyMetadata2 isEqual:entitySearchOnlyMetadata3];

    if (!v41)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self cardSearchMetadata];
  cardIdentifier2 = [equalCopy cardSearchMetadata];
  if ((cardIdentifier != 0) == (cardIdentifier2 == 0))
  {
    goto LABEL_56;
  }

  cardSearchMetadata = [(_SFPBDrillDownMetadata *)self cardSearchMetadata];
  if (cardSearchMetadata)
  {
    v43 = cardSearchMetadata;
    cardSearchMetadata2 = [(_SFPBDrillDownMetadata *)self cardSearchMetadata];
    cardSearchMetadata3 = [equalCopy cardSearchMetadata];
    v46 = [cardSearchMetadata2 isEqual:cardSearchMetadata3];

    if (!v46)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self entitySearchMetadata];
  cardIdentifier2 = [equalCopy entitySearchMetadata];
  if ((cardIdentifier != 0) == (cardIdentifier2 == 0))
  {
    goto LABEL_56;
  }

  entitySearchMetadata = [(_SFPBDrillDownMetadata *)self entitySearchMetadata];
  if (entitySearchMetadata)
  {
    v48 = entitySearchMetadata;
    entitySearchMetadata2 = [(_SFPBDrillDownMetadata *)self entitySearchMetadata];
    entitySearchMetadata3 = [equalCopy entitySearchMetadata];
    v51 = [entitySearchMetadata2 isEqual:entitySearchMetadata3];

    if (!v51)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self debugParams];
  cardIdentifier2 = [equalCopy debugParams];
  if ((cardIdentifier != 0) == (cardIdentifier2 == 0))
  {
    goto LABEL_56;
  }

  debugParams = [(_SFPBDrillDownMetadata *)self debugParams];
  if (debugParams)
  {
    v53 = debugParams;
    debugParams2 = [(_SFPBDrillDownMetadata *)self debugParams];
    debugParams3 = [equalCopy debugParams];
    v56 = [debugParams2 isEqual:debugParams3];

    if (!v56)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  cardIdentifier = [(_SFPBDrillDownMetadata *)self params];
  cardIdentifier2 = [equalCopy params];
  if ((cardIdentifier != 0) != (cardIdentifier2 == 0))
  {
    params = [(_SFPBDrillDownMetadata *)self params];
    if (!params)
    {

LABEL_60:
      v62 = 1;
      goto LABEL_58;
    }

    v58 = params;
    params2 = [(_SFPBDrillDownMetadata *)self params];
    params3 = [equalCopy params];
    v61 = [params2 isEqual:params3];

    if (v61)
    {
      goto LABEL_60;
    }
  }

  else
  {
LABEL_56:
  }

LABEL_57:
  v62 = 0;
LABEL_58:

  return v62;
}

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  cardIdentifier = [(_SFPBDrillDownMetadata *)self cardIdentifier];
  if (cardIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  cardIdentifiers = [(_SFPBDrillDownMetadata *)self cardIdentifiers];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [cardIdentifiers countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(cardIdentifiers);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [cardIdentifiers countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  cardDomains = [(_SFPBDrillDownMetadata *)self cardDomains];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = [cardDomains countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(cardDomains);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [cardDomains countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v14);
  }

  qtype = [(_SFPBDrillDownMetadata *)self qtype];
  if (qtype)
  {
    PBDataWriterWriteStringField();
  }

  viewConfigName = [(_SFPBDrillDownMetadata *)self viewConfigName];
  if (viewConfigName)
  {
    PBDataWriterWriteStringField();
  }

  cardOnlyMetadata = [(_SFPBDrillDownMetadata *)self cardOnlyMetadata];
  if (cardOnlyMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  entitySearchOnlyMetadata = [(_SFPBDrillDownMetadata *)self entitySearchOnlyMetadata];
  if (entitySearchOnlyMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  cardSearchMetadata = [(_SFPBDrillDownMetadata *)self cardSearchMetadata];
  if (cardSearchMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  entitySearchMetadata = [(_SFPBDrillDownMetadata *)self entitySearchMetadata];
  if (entitySearchMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  debugParams = [(_SFPBDrillDownMetadata *)self debugParams];
  if (debugParams)
  {
    PBDataWriterWriteStringField();
  }

  params = [(_SFPBDrillDownMetadata *)self params];
  if (params)
  {
    PBDataWriterWriteStringField();
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)setParams:(id)params
{
  v4 = [params copy];
  params = self->_params;
  self->_params = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDebugParams:(id)params
{
  v4 = [params copy];
  debugParams = self->_debugParams;
  self->_debugParams = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_SFPBEntitySearchMetadata)entitySearchMetadata
{
  if (self->_whichMetadata == 4)
  {
    v3 = self->_entitySearchMetadata;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEntitySearchMetadata:(id)metadata
{
  metadataCopy = metadata;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = 0;

  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = 0;

  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = 0;

  self->_whichMetadata = 4 * (metadataCopy != 0);
  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = metadataCopy;
}

- (_SFPBCardSearchMetadata)cardSearchMetadata
{
  if (self->_whichMetadata == 3)
  {
    v3 = self->_cardSearchMetadata;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCardSearchMetadata:(id)metadata
{
  metadataCopy = metadata;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = 0;

  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = 0;

  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = 0;

  v8 = 3;
  if (!metadataCopy)
  {
    v8 = 0;
  }

  self->_whichMetadata = v8;
  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = metadataCopy;
}

- (_SFPBEntitySearchMetadata)entitySearchOnlyMetadata
{
  if (self->_whichMetadata == 2)
  {
    v3 = self->_entitySearchOnlyMetadata;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEntitySearchOnlyMetadata:(id)metadata
{
  metadataCopy = metadata;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = 0;

  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = 0;

  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = 0;

  self->_whichMetadata = 2 * (metadataCopy != 0);
  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = metadataCopy;
}

- (_SFPBCardMetadata)cardOnlyMetadata
{
  if (self->_whichMetadata == 1)
  {
    v3 = self->_cardOnlyMetadata;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCardOnlyMetadata:(id)metadata
{
  metadataCopy = metadata;
  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = 0;

  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = 0;

  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = 0;

  self->_whichMetadata = metadataCopy != 0;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = metadataCopy;
}

- (void)setViewConfigName:(id)name
{
  v4 = [name copy];
  viewConfigName = self->_viewConfigName;
  self->_viewConfigName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setQtype:(id)qtype
{
  v4 = [qtype copy];
  qtype = self->_qtype;
  self->_qtype = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCardDomains:(id)domains
{
  domainsCopy = domains;
  cardDomains = self->_cardDomains;
  v8 = domainsCopy;
  if (!cardDomains)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardDomains;
    self->_cardDomains = array;

    domainsCopy = v8;
    cardDomains = self->_cardDomains;
  }

  [(NSArray *)cardDomains addObject:domainsCopy];
}

- (void)setCardDomains:(id)domains
{
  v4 = [domains copy];
  cardDomains = self->_cardDomains;
  self->_cardDomains = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCardIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  cardIdentifiers = self->_cardIdentifiers;
  v8 = identifiersCopy;
  if (!cardIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardIdentifiers;
    self->_cardIdentifiers = array;

    identifiersCopy = v8;
    cardIdentifiers = self->_cardIdentifiers;
  }

  [(NSArray *)cardIdentifiers addObject:identifiersCopy];
}

- (void)setCardIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
  cardIdentifiers = self->_cardIdentifiers;
  self->_cardIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCardIdentifier:(id)identifier
{
  v4 = [identifier copy];
  cardIdentifier = self->_cardIdentifier;
  self->_cardIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end