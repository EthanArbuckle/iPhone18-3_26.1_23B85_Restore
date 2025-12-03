@interface NETSchemaNETNetworkInterface
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETNetworkInterface)initWithDictionary:(id)dictionary;
- (NETSchemaNETNetworkInterface)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETNetworkInterface

- (NETSchemaNETNetworkInterface)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = NETSchemaNETNetworkInterface;
  v5 = [(NETSchemaNETNetworkInterface *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NETSchemaNETNetworkInterface *)v5 setName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"connectionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETNetworkInterface setConnectionType:](v5, "setConnectionType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (NETSchemaNETNetworkInterface)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETNetworkInterface *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETNetworkInterface *)self dictionaryRepresentation];
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
    v4 = [(NETSchemaNETNetworkInterface *)self connectionType]- 1;
    if (v4 > 0x16)
    {
      v5 = @"NETCONNECTIONTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DB190[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"connectionType"];
  }

  if (self->_name)
  {
    name = [(NETSchemaNETNetworkInterface *)self name];
    v7 = [name copy];
    [dictionary setObject:v7 forKeyedSubscript:@"name"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_connectionType;
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

  name = [(NETSchemaNETNetworkInterface *)self name];
  name2 = [equalCopy name];
  v7 = name2;
  if ((name != 0) == (name2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  name3 = [(NETSchemaNETNetworkInterface *)self name];
  if (name3)
  {
    v9 = name3;
    name4 = [(NETSchemaNETNetworkInterface *)self name];
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

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    connectionType = self->_connectionType;
    if (connectionType != [equalCopy connectionType])
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
  name = [(NETSchemaNETNetworkInterface *)self name];

  if (name)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end