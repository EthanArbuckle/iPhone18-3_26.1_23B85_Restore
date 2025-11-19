@interface FLOWLINKSchemaFLOWLINKActionParameter
- (BOOL)isEqual:(id)a3;
- (FLOWLINKSchemaFLOWLINKActionParameter)initWithDictionary:(id)a3;
- (FLOWLINKSchemaFLOWLINKActionParameter)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWLINKSchemaFLOWLINKActionParameter

- (FLOWLINKSchemaFLOWLINKActionParameter)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FLOWLINKSchemaFLOWLINKActionParameter;
  v5 = [(FLOWLINKSchemaFLOWLINKActionParameter *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWLINKSchemaFLOWLINKActionParameter *)v5 setName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isArray"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWLINKSchemaFLOWLINKActionParameter setIsArray:](v5, "setIsArray:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWLINKSchemaFLOWLINKActionParameter setType:](v5, "setType:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKActionParameter)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKActionParameter *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWLINKSchemaFLOWLINKActionParameter *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWLINKSchemaFLOWLINKActionParameter isArray](self, "isArray")}];
    [v3 setObject:v4 forKeyedSubscript:@"isArray"];
  }

  if (self->_name)
  {
    v5 = [(FLOWLINKSchemaFLOWLINKActionParameter *)self name];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"name"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [(FLOWLINKSchemaFLOWLINKActionParameter *)self type]- 1;
    if (v7 > 0x16)
    {
      v8 = @"LINKPARAMETERTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D4D28[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"type"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isArray;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_type;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(FLOWLINKSchemaFLOWLINKActionParameter *)self name];
  v6 = [v4 name];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(FLOWLINKSchemaFLOWLINKActionParameter *)self name];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLOWLINKSchemaFLOWLINKActionParameter *)self name];
    v11 = [v4 name];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    isArray = self->_isArray;
    if (isArray == [v4 isArray])
    {
      has = self->_has;
      v14 = v4[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    type = self->_type;
    if (type != [v4 type])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(FLOWLINKSchemaFLOWLINKActionParameter *)self name];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v6 = v7;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
  }
}

- (void)setHasType:(BOOL)a3
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