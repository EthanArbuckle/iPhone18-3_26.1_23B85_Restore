@interface SISchemaSendWithoutConfirmation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaSendWithoutConfirmation)initWithDictionary:(id)a3;
- (SISchemaSendWithoutConfirmation)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsEnabledForCarPlay:(BOOL)a3;
- (void)setHasIsEnabledForHeadphones:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaSendWithoutConfirmation

- (SISchemaSendWithoutConfirmation)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SISchemaSendWithoutConfirmation;
  v5 = [(SISchemaSendWithoutConfirmation *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaSendWithoutConfirmation setIsEnabled:](v5, "setIsEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isEnabledForHeadphones"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaSendWithoutConfirmation setIsEnabledForHeadphones:](v5, "setIsEnabledForHeadphones:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isEnabledForCarPlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaSendWithoutConfirmation setIsEnabledForCarPlay:](v5, "setIsEnabledForCarPlay:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaSendWithoutConfirmation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaSendWithoutConfirmation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaSendWithoutConfirmation *)self dictionaryRepresentation];
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
  v4 = *(&self->_isEnabledForCarPlay + 1);
  if (v4)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaSendWithoutConfirmation isEnabled](self, "isEnabled")}];
    [v3 setObject:v7 forKeyedSubscript:@"isEnabled"];

    v4 = *(&self->_isEnabledForCarPlay + 1);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_isEnabledForCarPlay + 1) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaSendWithoutConfirmation isEnabledForCarPlay](self, "isEnabledForCarPlay")}];
  [v3 setObject:v8 forKeyedSubscript:@"isEnabledForCarPlay"];

  if ((*(&self->_isEnabledForCarPlay + 1) & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaSendWithoutConfirmation isEnabledForHeadphones](self, "isEnabledForHeadphones")}];
    [v3 setObject:v5 forKeyedSubscript:@"isEnabledForHeadphones"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (!*(&self->_isEnabledForCarPlay + 1))
  {
    v2 = 0;
    if ((*(&self->_isEnabledForCarPlay + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*(&self->_isEnabledForCarPlay + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_isEnabled;
  if ((*(&self->_isEnabledForCarPlay + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_isEnabledForHeadphones;
  if ((*(&self->_isEnabledForCarPlay + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_isEnabledForCarPlay;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(&self->_isEnabledForCarPlay + 1);
  v6 = v4[11];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    isEnabled = self->_isEnabled;
    if (isEnabled != [v4 isEnabled])
    {
      goto LABEL_14;
    }

    v5 = *(&self->_isEnabledForCarPlay + 1);
    v6 = v4[11];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    isEnabledForHeadphones = self->_isEnabledForHeadphones;
    if (isEnabledForHeadphones == [v4 isEnabledForHeadphones])
    {
      v5 = *(&self->_isEnabledForCarPlay + 1);
      v6 = v4[11];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    isEnabledForCarPlay = self->_isEnabledForCarPlay;
    if (isEnabledForCarPlay != [v4 isEnabledForCarPlay])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = *(&self->_isEnabledForCarPlay + 1);
  v6 = v4;
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    v5 = *(&self->_isEnabledForCarPlay + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_isEnabledForCarPlay + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = v6;
  if ((*(&self->_isEnabledForCarPlay + 1) & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasIsEnabledForCarPlay:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEnabledForCarPlay + 1) = *(&self->_isEnabledForCarPlay + 1) & 0xFB | v3;
}

- (void)setHasIsEnabledForHeadphones:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEnabledForCarPlay + 1) = *(&self->_isEnabledForCarPlay + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end