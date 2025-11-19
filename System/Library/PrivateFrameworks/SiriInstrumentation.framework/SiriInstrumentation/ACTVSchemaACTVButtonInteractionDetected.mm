@interface ACTVSchemaACTVButtonInteractionDetected
- (ACTVSchemaACTVButtonInteractionDetected)initWithDictionary:(id)a3;
- (ACTVSchemaACTVButtonInteractionDetected)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ACTVSchemaACTVButtonInteractionDetected

- (ACTVSchemaACTVButtonInteractionDetected)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ACTVSchemaACTVButtonInteractionDetected;
  v5 = [(ACTVSchemaACTVButtonInteractionDetected *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"buttonInteractionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ACTVSchemaACTVButtonInteractionDetected setButtonInteractionType:](v5, "setButtonInteractionType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"buttonName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(ACTVSchemaACTVButtonInteractionDetected *)v5 setButtonName:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (ACTVSchemaACTVButtonInteractionDetected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ACTVSchemaACTVButtonInteractionDetected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ACTVSchemaACTVButtonInteractionDetected *)self dictionaryRepresentation];
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
    v4 = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonInteractionType]- 1;
    if (v4 > 2)
    {
      v5 = @"BUTTONINTERACTIONTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D15B8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"buttonInteractionType"];
  }

  if (self->_buttonName)
  {
    v6 = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"buttonName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_buttonInteractionType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_buttonName hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (buttonInteractionType = self->_buttonInteractionType, buttonInteractionType == [v4 buttonInteractionType]))
      {
        v6 = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonName];
        v7 = [v4 buttonName];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonName];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonName];
          v12 = [v4 buttonName];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonName];

  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end