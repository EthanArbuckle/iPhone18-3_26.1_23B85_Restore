@interface _SFPBDrillDownMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCardMetadata)cardOnlyMetadata;
- (_SFPBCardSearchMetadata)cardSearchMetadata;
- (_SFPBDrillDownMetadata)initWithDictionary:(id)a3;
- (_SFPBDrillDownMetadata)initWithFacade:(id)a3;
- (_SFPBDrillDownMetadata)initWithJSON:(id)a3;
- (_SFPBEntitySearchMetadata)entitySearchMetadata;
- (_SFPBEntitySearchMetadata)entitySearchOnlyMetadata;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCardDomains:(id)a3;
- (void)addCardIdentifiers:(id)a3;
- (void)setCardDomains:(id)a3;
- (void)setCardIdentifier:(id)a3;
- (void)setCardIdentifiers:(id)a3;
- (void)setCardOnlyMetadata:(id)a3;
- (void)setCardSearchMetadata:(id)a3;
- (void)setDebugParams:(id)a3;
- (void)setEntitySearchMetadata:(id)a3;
- (void)setEntitySearchOnlyMetadata:(id)a3;
- (void)setParams:(id)a3;
- (void)setQtype:(id)a3;
- (void)setViewConfigName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBDrillDownMetadata

- (_SFPBDrillDownMetadata)initWithFacade:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBDrillDownMetadata *)self init];
  if (v5)
  {
    v6 = [v4 cardIdentifier];

    if (v6)
    {
      v7 = [v4 cardIdentifier];
      [(_SFPBDrillDownMetadata *)v5 setCardIdentifier:v7];
    }

    v8 = [v4 cardIdentifiers];
    if (v8)
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
    v10 = [v4 cardIdentifiers];
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v58 count:16];
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
            objc_enumerationMutation(v10);
          }

          if (*(*(&v53 + 1) + 8 * i))
          {
            [v9 addObject:?];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v12);
    }

    [(_SFPBDrillDownMetadata *)v5 setCardIdentifiers:v9];
    v15 = [v4 cardDomains];
    if (v15)
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
    v17 = [v4 cardDomains];
    v18 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
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
            objc_enumerationMutation(v17);
          }

          if (*(*(&v49 + 1) + 8 * j))
          {
            [v16 addObject:?];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v19);
    }

    [(_SFPBDrillDownMetadata *)v5 setCardDomains:v16];
    v22 = [v4 qtype];

    if (v22)
    {
      v23 = [v4 qtype];
      [(_SFPBDrillDownMetadata *)v5 setQtype:v23];
    }

    v24 = [v4 viewConfigName];

    if (v24)
    {
      v25 = [v4 viewConfigName];
      [(_SFPBDrillDownMetadata *)v5 setViewConfigName:v25];
    }

    if ([v4 hasCardOnlyMetadata])
    {
      v26 = [v4 cardOnlyMetadata];

      if (v26)
      {
        v27 = [_SFPBCardMetadata alloc];
        v28 = [v4 cardOnlyMetadata];
        v29 = [(_SFPBCardMetadata *)v27 initWithFacade:v28];
        [(_SFPBDrillDownMetadata *)v5 setCardOnlyMetadata:v29];
      }
    }

    if ([v4 hasEntitySearchOnlyMetadata])
    {
      v30 = [v4 entitySearchOnlyMetadata];

      if (v30)
      {
        v31 = [_SFPBEntitySearchMetadata alloc];
        v32 = [v4 entitySearchOnlyMetadata];
        v33 = [(_SFPBEntitySearchMetadata *)v31 initWithFacade:v32];
        [(_SFPBDrillDownMetadata *)v5 setEntitySearchOnlyMetadata:v33];
      }
    }

    if ([v4 hasCardSearchMetadata])
    {
      v34 = [v4 cardSearchMetadata];

      if (v34)
      {
        v35 = [_SFPBCardSearchMetadata alloc];
        v36 = [v4 cardSearchMetadata];
        v37 = [(_SFPBCardSearchMetadata *)v35 initWithFacade:v36];
        [(_SFPBDrillDownMetadata *)v5 setCardSearchMetadata:v37];
      }
    }

    if ([v4 hasEntitySearchMetadata])
    {
      v38 = [v4 entitySearchMetadata];

      if (v38)
      {
        v39 = [_SFPBEntitySearchMetadata alloc];
        v40 = [v4 entitySearchMetadata];
        v41 = [(_SFPBEntitySearchMetadata *)v39 initWithFacade:v40];
        [(_SFPBDrillDownMetadata *)v5 setEntitySearchMetadata:v41];
      }
    }

    v42 = [v4 debugParams];

    if (v42)
    {
      v43 = [v4 debugParams];
      [(_SFPBDrillDownMetadata *)v5 setDebugParams:v43];
    }

    v44 = [v4 params];

    if (v44)
    {
      v45 = [v4 params];
      [(_SFPBDrillDownMetadata *)v5 setParams:v45];
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDrillDownMetadata)initWithDictionary:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v55.receiver = self;
  v55.super_class = _SFPBDrillDownMetadata;
  v5 = [(_SFPBDrillDownMetadata *)&v55 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"cardIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBDrillDownMetadata *)v5 setCardIdentifier:v7];
    }

    v46 = v6;
    v8 = [v4 objectForKeyedSubscript:@"cardIdentifiers"];
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

    v16 = [v4 objectForKeyedSubscript:@"cardDomains"];
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

    v24 = [v4 objectForKeyedSubscript:@"qtype"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBDrillDownMetadata *)v5 setQtype:v25];
    }

    v26 = [v4 objectForKeyedSubscript:{@"viewConfigName", v24}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBDrillDownMetadata *)v5 setViewConfigName:v27];
    }

    v44 = v16;
    v28 = [v4 objectForKeyedSubscript:@"cardOnlyMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBCardMetadata alloc] initWithDictionary:v28];
      [(_SFPBDrillDownMetadata *)v5 setCardOnlyMetadata:v29];
    }

    v45 = v8;
    v30 = [v4 objectForKeyedSubscript:@"entitySearchOnlyMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBEntitySearchMetadata alloc] initWithDictionary:v30];
      [(_SFPBDrillDownMetadata *)v5 setEntitySearchOnlyMetadata:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"cardSearchMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBCardSearchMetadata alloc] initWithDictionary:v32];
      [(_SFPBDrillDownMetadata *)v5 setCardSearchMetadata:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"entitySearchMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBEntitySearchMetadata alloc] initWithDictionary:v34];
      [(_SFPBDrillDownMetadata *)v5 setEntitySearchMetadata:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"debugParams"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [v36 copy];
      [(_SFPBDrillDownMetadata *)v5 setDebugParams:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"params"];
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

- (_SFPBDrillDownMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBDrillDownMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBDrillDownMetadata *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_cardDomains)
  {
    v4 = [(_SFPBDrillDownMetadata *)self cardDomains];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"cardDomains"];
  }

  if (self->_cardIdentifier)
  {
    v6 = [(_SFPBDrillDownMetadata *)self cardIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"cardIdentifier"];
  }

  if (self->_cardIdentifiers)
  {
    v8 = [(_SFPBDrillDownMetadata *)self cardIdentifiers];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"cardIdentifiers"];
  }

  if (self->_cardOnlyMetadata)
  {
    v10 = [(_SFPBDrillDownMetadata *)self cardOnlyMetadata];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"cardOnlyMetadata"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"cardOnlyMetadata"];
    }
  }

  if (self->_cardSearchMetadata)
  {
    v13 = [(_SFPBDrillDownMetadata *)self cardSearchMetadata];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"cardSearchMetadata"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"cardSearchMetadata"];
    }
  }

  if (self->_debugParams)
  {
    v16 = [(_SFPBDrillDownMetadata *)self debugParams];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"debugParams"];
  }

  if (self->_entitySearchMetadata)
  {
    v18 = [(_SFPBDrillDownMetadata *)self entitySearchMetadata];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"entitySearchMetadata"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"entitySearchMetadata"];
    }
  }

  if (self->_entitySearchOnlyMetadata)
  {
    v21 = [(_SFPBDrillDownMetadata *)self entitySearchOnlyMetadata];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"entitySearchOnlyMetadata"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"entitySearchOnlyMetadata"];
    }
  }

  if (self->_params)
  {
    v24 = [(_SFPBDrillDownMetadata *)self params];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"params"];
  }

  if (self->_qtype)
  {
    v26 = [(_SFPBDrillDownMetadata *)self qtype];
    v27 = [v26 copy];
    [v3 setObject:v27 forKeyedSubscript:@"qtype"];
  }

  if (self->_viewConfigName)
  {
    v28 = [(_SFPBDrillDownMetadata *)self viewConfigName];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"viewConfigName"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  v5 = [(_SFPBDrillDownMetadata *)self cardIdentifier];
  v6 = [v4 cardIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v7 = [(_SFPBDrillDownMetadata *)self cardIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBDrillDownMetadata *)self cardIdentifier];
    v10 = [v4 cardIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDrillDownMetadata *)self cardIdentifiers];
  v6 = [v4 cardIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v12 = [(_SFPBDrillDownMetadata *)self cardIdentifiers];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBDrillDownMetadata *)self cardIdentifiers];
    v15 = [v4 cardIdentifiers];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDrillDownMetadata *)self cardDomains];
  v6 = [v4 cardDomains];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v17 = [(_SFPBDrillDownMetadata *)self cardDomains];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBDrillDownMetadata *)self cardDomains];
    v20 = [v4 cardDomains];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDrillDownMetadata *)self qtype];
  v6 = [v4 qtype];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v22 = [(_SFPBDrillDownMetadata *)self qtype];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBDrillDownMetadata *)self qtype];
    v25 = [v4 qtype];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDrillDownMetadata *)self viewConfigName];
  v6 = [v4 viewConfigName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v27 = [(_SFPBDrillDownMetadata *)self viewConfigName];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBDrillDownMetadata *)self viewConfigName];
    v30 = [v4 viewConfigName];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDrillDownMetadata *)self cardOnlyMetadata];
  v6 = [v4 cardOnlyMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v32 = [(_SFPBDrillDownMetadata *)self cardOnlyMetadata];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBDrillDownMetadata *)self cardOnlyMetadata];
    v35 = [v4 cardOnlyMetadata];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDrillDownMetadata *)self entitySearchOnlyMetadata];
  v6 = [v4 entitySearchOnlyMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v37 = [(_SFPBDrillDownMetadata *)self entitySearchOnlyMetadata];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBDrillDownMetadata *)self entitySearchOnlyMetadata];
    v40 = [v4 entitySearchOnlyMetadata];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDrillDownMetadata *)self cardSearchMetadata];
  v6 = [v4 cardSearchMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v42 = [(_SFPBDrillDownMetadata *)self cardSearchMetadata];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBDrillDownMetadata *)self cardSearchMetadata];
    v45 = [v4 cardSearchMetadata];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDrillDownMetadata *)self entitySearchMetadata];
  v6 = [v4 entitySearchMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v47 = [(_SFPBDrillDownMetadata *)self entitySearchMetadata];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBDrillDownMetadata *)self entitySearchMetadata];
    v50 = [v4 entitySearchMetadata];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDrillDownMetadata *)self debugParams];
  v6 = [v4 debugParams];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v52 = [(_SFPBDrillDownMetadata *)self debugParams];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBDrillDownMetadata *)self debugParams];
    v55 = [v4 debugParams];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDrillDownMetadata *)self params];
  v6 = [v4 params];
  if ((v5 != 0) != (v6 == 0))
  {
    v57 = [(_SFPBDrillDownMetadata *)self params];
    if (!v57)
    {

LABEL_60:
      v62 = 1;
      goto LABEL_58;
    }

    v58 = v57;
    v59 = [(_SFPBDrillDownMetadata *)self params];
    v60 = [v4 params];
    v61 = [v59 isEqual:v60];

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

- (void)writeTo:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBDrillDownMetadata *)self cardIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBDrillDownMetadata *)self cardIdentifiers];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v12 = [(_SFPBDrillDownMetadata *)self cardDomains];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v14);
  }

  v18 = [(_SFPBDrillDownMetadata *)self qtype];
  if (v18)
  {
    PBDataWriterWriteStringField();
  }

  v19 = [(_SFPBDrillDownMetadata *)self viewConfigName];
  if (v19)
  {
    PBDataWriterWriteStringField();
  }

  v20 = [(_SFPBDrillDownMetadata *)self cardOnlyMetadata];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBDrillDownMetadata *)self entitySearchOnlyMetadata];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBDrillDownMetadata *)self cardSearchMetadata];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBDrillDownMetadata *)self entitySearchMetadata];
  if (v23)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_SFPBDrillDownMetadata *)self debugParams];
  if (v24)
  {
    PBDataWriterWriteStringField();
  }

  v25 = [(_SFPBDrillDownMetadata *)self params];
  if (v25)
  {
    PBDataWriterWriteStringField();
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)setParams:(id)a3
{
  v4 = [a3 copy];
  params = self->_params;
  self->_params = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDebugParams:(id)a3
{
  v4 = [a3 copy];
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

- (void)setEntitySearchMetadata:(id)a3
{
  v4 = a3;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = 0;

  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = 0;

  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = 0;

  self->_whichMetadata = 4 * (v4 != 0);
  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = v4;
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

- (void)setCardSearchMetadata:(id)a3
{
  v4 = a3;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = 0;

  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = 0;

  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = 0;

  v8 = 3;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichMetadata = v8;
  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = v4;
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

- (void)setEntitySearchOnlyMetadata:(id)a3
{
  v4 = a3;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = 0;

  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = 0;

  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = 0;

  self->_whichMetadata = 2 * (v4 != 0);
  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = v4;
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

- (void)setCardOnlyMetadata:(id)a3
{
  v4 = a3;
  entitySearchOnlyMetadata = self->_entitySearchOnlyMetadata;
  self->_entitySearchOnlyMetadata = 0;

  cardSearchMetadata = self->_cardSearchMetadata;
  self->_cardSearchMetadata = 0;

  entitySearchMetadata = self->_entitySearchMetadata;
  self->_entitySearchMetadata = 0;

  self->_whichMetadata = v4 != 0;
  cardOnlyMetadata = self->_cardOnlyMetadata;
  self->_cardOnlyMetadata = v4;
}

- (void)setViewConfigName:(id)a3
{
  v4 = [a3 copy];
  viewConfigName = self->_viewConfigName;
  self->_viewConfigName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setQtype:(id)a3
{
  v4 = [a3 copy];
  qtype = self->_qtype;
  self->_qtype = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCardDomains:(id)a3
{
  v4 = a3;
  cardDomains = self->_cardDomains;
  v8 = v4;
  if (!cardDomains)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardDomains;
    self->_cardDomains = v6;

    v4 = v8;
    cardDomains = self->_cardDomains;
  }

  [(NSArray *)cardDomains addObject:v4];
}

- (void)setCardDomains:(id)a3
{
  v4 = [a3 copy];
  cardDomains = self->_cardDomains;
  self->_cardDomains = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCardIdentifiers:(id)a3
{
  v4 = a3;
  cardIdentifiers = self->_cardIdentifiers;
  v8 = v4;
  if (!cardIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardIdentifiers;
    self->_cardIdentifiers = v6;

    v4 = v8;
    cardIdentifiers = self->_cardIdentifiers;
  }

  [(NSArray *)cardIdentifiers addObject:v4];
}

- (void)setCardIdentifiers:(id)a3
{
  v4 = [a3 copy];
  cardIdentifiers = self->_cardIdentifiers;
  self->_cardIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCardIdentifier:(id)a3
{
  v4 = [a3 copy];
  cardIdentifier = self->_cardIdentifier;
  self->_cardIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end