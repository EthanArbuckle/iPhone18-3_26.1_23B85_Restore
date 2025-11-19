@interface INFERENCESchemaINFERENCEPromptContext
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEConfirmationPromptContext)confirmationPromptContext;
- (INFERENCESchemaINFERENCEDisambiguationPromptContext)disambiguationPromptContext;
- (INFERENCESchemaINFERENCEPromptContext)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEPromptContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteConfirmationPromptContext;
- (void)deleteDisambiguationPromptContext;
- (void)setConfirmationPromptContext:(id)a3;
- (void)setDisambiguationPromptContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEPromptContext

- (INFERENCESchemaINFERENCEPromptContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCEPromptContext;
  v5 = [(INFERENCESchemaINFERENCEPromptContext *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"tag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPromptContext setTag:](v5, "setTag:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"confirmationPromptContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[INFERENCESchemaINFERENCEConfirmationPromptContext alloc] initWithDictionary:v7];
      [(INFERENCESchemaINFERENCEPromptContext *)v5 setConfirmationPromptContext:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"disambiguationPromptContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[INFERENCESchemaINFERENCEDisambiguationPromptContext alloc] initWithDictionary:v9];
      [(INFERENCESchemaINFERENCEPromptContext *)v5 setDisambiguationPromptContext:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEPromptContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEPromptContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEPromptContext *)self dictionaryRepresentation];
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
  if (self->_confirmationPromptContext)
  {
    v4 = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"confirmationPromptContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"confirmationPromptContext"];
    }
  }

  if (self->_disambiguationPromptContext)
  {
    v7 = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"disambiguationPromptContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"disambiguationPromptContext"];
    }
  }

  if (*&self->_has)
  {
    v10 = [(INFERENCESchemaINFERENCEPromptContext *)self tag]- 1;
    if (v10 > 2)
    {
      v11 = @"INFERENCEPROMPTTAG_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D8A80[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"tag"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_tag;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self->_confirmationPromptContext hash]^ v3;
  return v4 ^ [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self->_disambiguationPromptContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  whichPromptcontext = self->_whichPromptcontext;
  if (whichPromptcontext != [v4 whichPromptcontext])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    tag = self->_tag;
    if (tag != [v4 tag])
    {
      goto LABEL_16;
    }
  }

  v7 = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
  v8 = [v4 confirmationPromptContext];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_15;
  }

  v9 = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
  if (v9)
  {
    v10 = v9;
    v11 = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
    v12 = [v4 confirmationPromptContext];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
  v8 = [v4 disambiguationPromptContext];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
    v17 = [v4 disambiguationPromptContext];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];

  if (v4)
  {
    v5 = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];

  v7 = v9;
  if (v6)
  {
    v8 = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (void)deleteDisambiguationPromptContext
{
  if (self->_whichPromptcontext == 3)
  {
    self->_whichPromptcontext = 0;
    self->_disambiguationPromptContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEDisambiguationPromptContext)disambiguationPromptContext
{
  if (self->_whichPromptcontext == 3)
  {
    v3 = self->_disambiguationPromptContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDisambiguationPromptContext:(id)a3
{
  v4 = a3;
  confirmationPromptContext = self->_confirmationPromptContext;
  self->_confirmationPromptContext = 0;

  v6 = 3;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichPromptcontext = v6;
  disambiguationPromptContext = self->_disambiguationPromptContext;
  self->_disambiguationPromptContext = v4;
}

- (void)deleteConfirmationPromptContext
{
  if (self->_whichPromptcontext == 2)
  {
    self->_whichPromptcontext = 0;
    self->_confirmationPromptContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEConfirmationPromptContext)confirmationPromptContext
{
  if (self->_whichPromptcontext == 2)
  {
    v3 = self->_confirmationPromptContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConfirmationPromptContext:(id)a3
{
  v4 = a3;
  disambiguationPromptContext = self->_disambiguationPromptContext;
  self->_disambiguationPromptContext = 0;

  self->_whichPromptcontext = 2 * (v4 != 0);
  confirmationPromptContext = self->_confirmationPromptContext;
  self->_confirmationPromptContext = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCEPromptContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCEPromptContext *)self deleteConfirmationPromptContext];
  }

  v9 = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(INFERENCESchemaINFERENCEPromptContext *)self deleteDisambiguationPromptContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end