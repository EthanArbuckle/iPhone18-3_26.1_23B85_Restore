@interface IFTSchemaASTFlatExprUpdateVariant
- (BOOL)isEqual:(id)equal;
- (IFTSchemaASTFlatExprUpdateVariant)initWithDictionary:(id)dictionary;
- (IFTSchemaASTFlatExprUpdateVariant)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPath:(id)path;
- (void)setHasKind:(BOOL)kind;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaASTFlatExprUpdateVariant

- (IFTSchemaASTFlatExprUpdateVariant)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = IFTSchemaASTFlatExprUpdateVariant;
  v5 = [(IFTSchemaASTFlatExprUpdateVariant *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaASTFlatExprUpdateVariant setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"lhs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaASTFlatExprUpdateVariant *)v5 setLhs:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"path"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v7;
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[IFTSchemaASTPath alloc] initWithDictionary:v15];
              [(IFTSchemaASTFlatExprUpdateVariant *)v5 addPath:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v12);
      }

      v7 = v20;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:{@"kind", v20, v21, v22}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaASTFlatExprUpdateVariant setKind:](v5, "setKind:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (IFTSchemaASTFlatExprUpdateVariant)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaASTFlatExprUpdateVariant *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaASTFlatExprUpdateVariant *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaASTFlatExprUpdateVariant exists](self, "exists")}];
    [dictionary setObject:v5 forKeyedSubscript:@"exists"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    kind = [(IFTSchemaASTFlatExprUpdateVariant *)self kind];
    v7 = @"ASTUPDATEKIND_UNKNOWN";
    if (kind == 1)
    {
      v7 = @"ASTUPDATEKIND_APPEND";
    }

    if (kind == 2)
    {
      v8 = @"ASTUPDATEKIND_REPLACE";
    }

    else
    {
      v8 = v7;
    }

    [dictionary setObject:v8 forKeyedSubscript:@"kind"];
  }

  if (self->_lhs)
  {
    v9 = [(IFTSchemaASTFlatExprUpdateVariant *)self lhs];
    dictionaryRepresentation = [v9 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"lhs"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"lhs"];
    }
  }

  if ([(NSArray *)self->_paths count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_paths;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"path"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v21];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(IFTSchemaIFTStatementId *)self->_lhs hash];
  v5 = [(NSArray *)self->_paths hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_kind;
  }

  else
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
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_15;
    }
  }

  paths = [(IFTSchemaASTFlatExprUpdateVariant *)self lhs];
  paths2 = [equalCopy lhs];
  if ((paths != 0) == (paths2 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(IFTSchemaASTFlatExprUpdateVariant *)self lhs];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaASTFlatExprUpdateVariant *)self lhs];
    v11 = [equalCopy lhs];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  paths = [(IFTSchemaASTFlatExprUpdateVariant *)self paths];
  paths2 = [equalCopy paths];
  if ((paths != 0) == (paths2 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  paths3 = [(IFTSchemaASTFlatExprUpdateVariant *)self paths];
  if (paths3)
  {
    v14 = paths3;
    paths4 = [(IFTSchemaASTFlatExprUpdateVariant *)self paths];
    paths5 = [equalCopy paths];
    v17 = [paths4 isEqual:paths5];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 1) & 1;
  if (v20 == ((equalCopy[36] >> 1) & 1))
  {
    if (!v20 || (kind = self->_kind, kind == [equalCopy kind]))
    {
      v18 = 1;
      goto LABEL_16;
    }
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(IFTSchemaASTFlatExprUpdateVariant *)self lhs];

  if (v5)
  {
    v6 = [(IFTSchemaASTFlatExprUpdateVariant *)self lhs];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_paths;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasKind:(BOOL)kind
{
  if (kind)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addPath:(id)path
{
  pathCopy = path;
  paths = self->_paths;
  v8 = pathCopy;
  if (!paths)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_paths;
    self->_paths = array;

    pathCopy = v8;
    paths = self->_paths;
  }

  [(NSArray *)paths addObject:pathCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = IFTSchemaASTFlatExprUpdateVariant;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaASTFlatExprUpdateVariant *)self lhs];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaASTFlatExprUpdateVariant *)self deleteLhs];
  }

  paths = [(IFTSchemaASTFlatExprUpdateVariant *)self paths];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:paths underConditions:policyCopy];
  [(IFTSchemaASTFlatExprUpdateVariant *)self setPaths:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end