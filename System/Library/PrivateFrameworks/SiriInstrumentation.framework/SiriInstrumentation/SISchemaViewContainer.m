@interface SISchemaViewContainer
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaViewContainer)initWithDictionary:(id)a3;
- (SISchemaViewContainer)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaViewContainer

- (SISchemaViewContainer)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SISchemaViewContainer;
  v5 = [(SISchemaViewContainer *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"viewID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaViewContainer *)v5 setViewID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"snippetClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaViewContainer *)v5 setSnippetClass:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"dialogIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaViewContainer *)v5 setDialogIdentifier:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"dialogPhase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SISchemaViewContainer *)v5 setDialogPhase:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (SISchemaViewContainer)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaViewContainer *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaViewContainer *)self dictionaryRepresentation];
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
  if (self->_dialogIdentifier)
  {
    v4 = [(SISchemaViewContainer *)self dialogIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"dialogIdentifier"];
  }

  if (self->_dialogPhase)
  {
    v6 = [(SISchemaViewContainer *)self dialogPhase];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"dialogPhase"];
  }

  if (self->_snippetClass)
  {
    v8 = [(SISchemaViewContainer *)self snippetClass];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"snippetClass"];
  }

  if (self->_viewID)
  {
    v10 = [(SISchemaViewContainer *)self viewID];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"viewID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_viewID hash];
  v4 = [(NSString *)self->_snippetClass hash]^ v3;
  v5 = [(NSString *)self->_dialogIdentifier hash];
  return v4 ^ v5 ^ [(NSString *)self->_dialogPhase hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(SISchemaViewContainer *)self viewID];
  v6 = [v4 viewID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(SISchemaViewContainer *)self viewID];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaViewContainer *)self viewID];
    v10 = [v4 viewID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(SISchemaViewContainer *)self snippetClass];
  v6 = [v4 snippetClass];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(SISchemaViewContainer *)self snippetClass];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaViewContainer *)self snippetClass];
    v15 = [v4 snippetClass];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(SISchemaViewContainer *)self dialogIdentifier];
  v6 = [v4 dialogIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(SISchemaViewContainer *)self dialogIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = [(SISchemaViewContainer *)self dialogIdentifier];
    v20 = [v4 dialogIdentifier];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(SISchemaViewContainer *)self dialogPhase];
  v6 = [v4 dialogPhase];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(SISchemaViewContainer *)self dialogPhase];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(SISchemaViewContainer *)self dialogPhase];
    v25 = [v4 dialogPhase];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(SISchemaViewContainer *)self viewID];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SISchemaViewContainer *)self snippetClass];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SISchemaViewContainer *)self dialogIdentifier];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(SISchemaViewContainer *)self dialogPhase];

  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end