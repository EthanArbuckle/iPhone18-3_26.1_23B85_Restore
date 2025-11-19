@interface RFSchemaRFPatternExecuted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RFSchemaRFPatternExecuted)initWithDictionary:(id)a3;
- (RFSchemaRFPatternExecuted)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RFSchemaRFPatternExecuted

- (RFSchemaRFPatternExecuted)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = RFSchemaRFPatternExecuted;
  v5 = [(RFSchemaRFPatternExecuted *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"patternId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RFSchemaRFPatternExecuted *)v5 setPatternId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"pattern"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFPatternExecuted setPattern:](v5, "setPattern:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"mode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFPatternExecuted setMode:](v5, "setMode:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"responseViewId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(RFSchemaRFPatternExecuted *)v5 setResponseViewId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (RFSchemaRFPatternExecuted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RFSchemaRFPatternExecuted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RFSchemaRFPatternExecuted *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [(RFSchemaRFPatternExecuted *)self mode]- 1;
    if (v5 > 3)
    {
      v6 = @"RFSIRIMODE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E1E48[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"mode"];
    has = self->_has;
  }

  if (has)
  {
    v7 = [(RFSchemaRFPatternExecuted *)self pattern]- 1;
    if (v7 > 0x11)
    {
      v8 = @"RFPATTERN_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E1E68[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"pattern"];
  }

  if (self->_patternId)
  {
    v9 = [(RFSchemaRFPatternExecuted *)self patternId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"patternId"];
  }

  if (self->_responseViewId)
  {
    v11 = [(RFSchemaRFPatternExecuted *)self responseViewId];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"responseViewId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_patternId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_pattern;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSString *)self->_responseViewId hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_mode;
  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_responseViewId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(RFSchemaRFPatternExecuted *)self patternId];
  v6 = [v4 patternId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(RFSchemaRFPatternExecuted *)self patternId];
  if (v7)
  {
    v8 = v7;
    v9 = [(RFSchemaRFPatternExecuted *)self patternId];
    v10 = [v4 patternId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    pattern = self->_pattern;
    if (pattern != [v4 pattern])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = v4[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    mode = self->_mode;
    if (mode != [v4 mode])
    {
      goto LABEL_19;
    }
  }

  v5 = [(RFSchemaRFPatternExecuted *)self responseViewId];
  v6 = [v4 responseViewId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v17 = [(RFSchemaRFPatternExecuted *)self responseViewId];
  if (!v17)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [(RFSchemaRFPatternExecuted *)self responseViewId];
  v20 = [v4 responseViewId];
  v21 = [v19 isEqual:v20];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(RFSchemaRFPatternExecuted *)self patternId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(RFSchemaRFPatternExecuted *)self responseViewId];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (void)setHasMode:(BOOL)a3
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