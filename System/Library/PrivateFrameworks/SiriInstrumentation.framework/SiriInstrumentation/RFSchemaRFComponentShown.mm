@interface RFSchemaRFComponentShown
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RFSchemaRFComponentShown)initWithDictionary:(id)a3;
- (RFSchemaRFComponentShown)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation RFSchemaRFComponentShown

- (RFSchemaRFComponentShown)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RFSchemaRFComponentShown;
  v5 = [(RFSchemaRFComponentShown *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"component"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFComponentShown setComponent:](v5, "setComponent:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"componentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(RFSchemaRFComponentShown *)v5 setComponentName:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"componentIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(RFSchemaRFComponentShown *)v5 setComponentIndex:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (RFSchemaRFComponentShown)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RFSchemaRFComponentShown *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RFSchemaRFComponentShown *)self dictionaryRepresentation];
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
    v4 = [(RFSchemaRFComponentShown *)self component]- 1;
    if (v4 > 0x45)
    {
      v5 = @"RFCOMPONENT_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E1970[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"component"];
  }

  if (self->_componentIndex)
  {
    v6 = [(RFSchemaRFComponentShown *)self componentIndex];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"componentIndex"];
  }

  if (self->_componentName)
  {
    v8 = [(RFSchemaRFComponentShown *)self componentName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"componentName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_component;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_componentName hash]^ v3;
  return v4 ^ [(NSString *)self->_componentIndex hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    component = self->_component;
    if (component != [v4 component])
    {
      goto LABEL_15;
    }
  }

  v6 = [(RFSchemaRFComponentShown *)self componentName];
  v7 = [v4 componentName];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(RFSchemaRFComponentShown *)self componentName];
  if (v8)
  {
    v9 = v8;
    v10 = [(RFSchemaRFComponentShown *)self componentName];
    v11 = [v4 componentName];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(RFSchemaRFComponentShown *)self componentIndex];
  v7 = [v4 componentIndex];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(RFSchemaRFComponentShown *)self componentIndex];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(RFSchemaRFComponentShown *)self componentIndex];
    v16 = [v4 componentIndex];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(RFSchemaRFComponentShown *)self componentName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(RFSchemaRFComponentShown *)self componentIndex];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end