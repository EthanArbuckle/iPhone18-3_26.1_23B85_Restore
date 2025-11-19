@interface SUGSchemaSUGSiriHelpSignal
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SUGSchemaSUGSiriHelpSignal)initWithDictionary:(id)a3;
- (SUGSchemaSUGSiriHelpSignal)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSignalType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SUGSchemaSUGSiriHelpSignal

- (SUGSchemaSUGSiriHelpSignal)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUGSchemaSUGSiriHelpSignal;
  v5 = [(SUGSchemaSUGSiriHelpSignal *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"depthFromActiveSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSiriHelpSignal setDepthFromActiveSignal:](v5, "setDepthFromActiveSignal:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"signalValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SUGSchemaSUGSiriHelpSignal *)v5 setSignalValue:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"signalType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSiriHelpSignal setSignalType:](v5, "setSignalType:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (SUGSchemaSUGSiriHelpSignal)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUGSchemaSUGSiriHelpSignal *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUGSchemaSUGSiriHelpSignal *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGSiriHelpSignal depthFromActiveSignal](self, "depthFromActiveSignal")}];
    [v3 setObject:v5 forKeyedSubscript:@"depthFromActiveSignal"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [(SUGSchemaSUGSiriHelpSignal *)self signalType]- 1;
    if (v6 > 5)
    {
      v7 = @"SUGSIGNALTYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E7BB8[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"signalType"];
  }

  if (self->_signalValue)
  {
    v8 = [(SUGSchemaSUGSiriHelpSignal *)self signalValue];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"signalValue"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_depthFromActiveSignal;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_signalValue hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_signalType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    depthFromActiveSignal = self->_depthFromActiveSignal;
    if (depthFromActiveSignal != [v4 depthFromActiveSignal])
    {
      goto LABEL_15;
    }
  }

  v6 = [(SUGSchemaSUGSiriHelpSignal *)self signalValue];
  v7 = [v4 signalValue];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v9 = [(SUGSchemaSUGSiriHelpSignal *)self signalValue];
  if (v9)
  {
    v10 = v9;
    v11 = [(SUGSchemaSUGSiriHelpSignal *)self signalValue];
    v12 = [v4 signalValue];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((v4[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    signalType = self->_signalType;
    if (signalType != [v4 signalType])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = [(SUGSchemaSUGSiriHelpSignal *)self signalValue];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasSignalType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end