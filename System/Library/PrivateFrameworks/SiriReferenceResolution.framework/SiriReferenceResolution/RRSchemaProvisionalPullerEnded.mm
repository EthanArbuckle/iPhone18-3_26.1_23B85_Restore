@interface RRSchemaProvisionalPullerEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalPullerEnded)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalPullerEnded)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalPullerEnded

- (RRSchemaProvisionalPullerEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = RRSchemaProvisionalPullerEnded;
  v5 = [(RRSchemaProvisionalPullerEnded *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RRSchemaProvisionalPullerEnded *)v5 setName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"entityCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalPullerEnded setEntityCount:](v5, "setEntityCount:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalPullerEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalPullerEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalPullerEnded *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[RRSchemaProvisionalPullerEnded entityCount](self, "entityCount")}];
    [dictionary setObject:v4 forKeyedSubscript:@"entityCount"];
  }

  if (self->_name)
  {
    name = [(RRSchemaProvisionalPullerEnded *)self name];
    v6 = [name copy];
    [dictionary setObject:v6 forKeyedSubscript:@"name"];
  }

  [(RRSchemaProvisionalPullerEnded *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  name = [(RRSchemaProvisionalPullerEnded *)self name];
  name2 = [equalCopy name];
  v7 = name2;
  if ((name != 0) == (name2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  name3 = [(RRSchemaProvisionalPullerEnded *)self name];
  if (name3)
  {
    v9 = name3;
    name4 = [(RRSchemaProvisionalPullerEnded *)self name];
    name5 = [equalCopy name];
    v12 = [name4 isEqual:name5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((equalCopy[20] & 1) != (*&self->_has & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    entityCount = self->_entityCount;
    if (entityCount != [equalCopy entityCount])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  name = [(RRSchemaProvisionalPullerEnded *)self name];

  if (name)
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