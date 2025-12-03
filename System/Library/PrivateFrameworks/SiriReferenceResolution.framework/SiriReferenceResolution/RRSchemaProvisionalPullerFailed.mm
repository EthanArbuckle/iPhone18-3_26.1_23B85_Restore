@interface RRSchemaProvisionalPullerFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalPullerFailed)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalPullerFailed)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalPullerFailed

- (RRSchemaProvisionalPullerFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = RRSchemaProvisionalPullerFailed;
  v5 = [(RRSchemaProvisionalPullerFailed *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RRSchemaProvisionalPullerFailed *)v5 setName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"timeout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalPullerFailed setTimeout:](v5, "setTimeout:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalPullerFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalPullerFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalPullerFailed *)self dictionaryRepresentation];
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
  if (self->_name)
  {
    name = [(RRSchemaProvisionalPullerFailed *)self name];
    v5 = [name copy];
    [dictionary setObject:v5 forKeyedSubscript:@"name"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[RRSchemaProvisionalPullerFailed timeout](self, "timeout")}];
    [dictionary setObject:v6 forKeyedSubscript:@"timeout"];
  }

  [(RRSchemaProvisionalPullerFailed *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_timeout;
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

  name = [(RRSchemaProvisionalPullerFailed *)self name];
  name2 = [equalCopy name];
  v7 = name2;
  if ((name != 0) == (name2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  name3 = [(RRSchemaProvisionalPullerFailed *)self name];
  if (name3)
  {
    v9 = name3;
    name4 = [(RRSchemaProvisionalPullerFailed *)self name];
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
    timeout = self->_timeout;
    if (timeout != [equalCopy timeout])
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
  name = [(RRSchemaProvisionalPullerFailed *)self name];

  if (name)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    timeout = self->_timeout;
    PBDataWriterWriteBOOLField();
  }
}

@end