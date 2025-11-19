@interface RRSchemaProvisionalPullerEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RRSchemaProvisionalPullerEnded)initWithDictionary:(id)a3;
- (RRSchemaProvisionalPullerEnded)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation RRSchemaProvisionalPullerEnded

- (RRSchemaProvisionalPullerEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RRSchemaProvisionalPullerEnded;
  v5 = [(RRSchemaProvisionalPullerEnded *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RRSchemaProvisionalPullerEnded *)v5 setName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"entityCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalPullerEnded setEntityCount:](v5, "setEntityCount:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalPullerEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalPullerEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RRSchemaProvisionalPullerEnded *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[RRSchemaProvisionalPullerEnded entityCount](self, "entityCount")}];
    [v3 setObject:v4 forKeyedSubscript:@"entityCount"];
  }

  if (self->_name)
  {
    v5 = [(RRSchemaProvisionalPullerEnded *)self name];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"name"];
  }

  [(RRSchemaProvisionalPullerEnded *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_entityCount;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(RRSchemaProvisionalPullerEnded *)self name];
  v6 = [v4 name];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(RRSchemaProvisionalPullerEnded *)self name];
  if (v8)
  {
    v9 = v8;
    v10 = [(RRSchemaProvisionalPullerEnded *)self name];
    v11 = [v4 name];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((v4[20] & 1) != (*&self->_has & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    entityCount = self->_entityCount;
    if (entityCount != [v4 entityCount])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(RRSchemaProvisionalPullerEnded *)self name];

  if (v4)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    entityCount = self->_entityCount;
    PBDataWriterWriteInt32Field();
  }
}

@end