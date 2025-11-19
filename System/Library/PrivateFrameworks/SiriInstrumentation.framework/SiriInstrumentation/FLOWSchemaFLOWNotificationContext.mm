@interface FLOWSchemaFLOWNotificationContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWNotificationContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWNotificationContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsHighlight:(BOOL)a3;
- (void)setHasIsSummarized:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWNotificationContext

- (FLOWSchemaFLOWNotificationContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FLOWSchemaFLOWNotificationContext;
  v5 = [(FLOWSchemaFLOWNotificationContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isLongNotification"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWNotificationContext setIsLongNotification:](v5, "setIsLongNotification:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isSummarized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWNotificationContext setIsSummarized:](v5, "setIsSummarized:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isHighlight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWNotificationContext setIsHighlight:](v5, "setIsHighlight:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWNotificationContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWNotificationContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWNotificationContext *)self dictionaryRepresentation];
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
  v4 = *(&self->_isHighlight + 1);
  if ((v4 & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWNotificationContext isHighlight](self, "isHighlight")}];
    [v3 setObject:v7 forKeyedSubscript:@"isHighlight"];

    v4 = *(&self->_isHighlight + 1);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!*(&self->_isHighlight + 1))
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWNotificationContext isLongNotification](self, "isLongNotification")}];
  [v3 setObject:v8 forKeyedSubscript:@"isLongNotification"];

  if ((*(&self->_isHighlight + 1) & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWNotificationContext isSummarized](self, "isSummarized")}];
    [v3 setObject:v5 forKeyedSubscript:@"isSummarized"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (!*(&self->_isHighlight + 1))
  {
    v2 = 0;
    if ((*(&self->_isHighlight + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*(&self->_isHighlight + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_isLongNotification;
  if ((*(&self->_isHighlight + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_isSummarized;
  if ((*(&self->_isHighlight + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_isHighlight;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(&self->_isHighlight + 1);
  v6 = v4[11];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    isLongNotification = self->_isLongNotification;
    if (isLongNotification != [v4 isLongNotification])
    {
      goto LABEL_14;
    }

    v5 = *(&self->_isHighlight + 1);
    v6 = v4[11];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    isSummarized = self->_isSummarized;
    if (isSummarized == [v4 isSummarized])
    {
      v5 = *(&self->_isHighlight + 1);
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
    isHighlight = self->_isHighlight;
    if (isHighlight != [v4 isHighlight])
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
  v5 = *(&self->_isHighlight + 1);
  v6 = v4;
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    v5 = *(&self->_isHighlight + 1);
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

  else if ((*(&self->_isHighlight + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = v6;
  if ((*(&self->_isHighlight + 1) & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasIsHighlight:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isHighlight + 1) = *(&self->_isHighlight + 1) & 0xFB | v3;
}

- (void)setHasIsSummarized:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isHighlight + 1) = *(&self->_isHighlight + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end