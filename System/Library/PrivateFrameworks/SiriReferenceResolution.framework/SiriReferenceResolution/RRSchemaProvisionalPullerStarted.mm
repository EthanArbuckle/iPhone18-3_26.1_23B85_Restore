@interface RRSchemaProvisionalPullerStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalPullerStarted)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalPullerStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalPullerStarted

- (RRSchemaProvisionalPullerStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RRSchemaProvisionalPullerStarted;
  v5 = [(RRSchemaProvisionalPullerStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RRSchemaProvisionalPullerStarted *)v5 setName:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalPullerStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalPullerStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalPullerStarted *)self dictionaryRepresentation];
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
    name = [(RRSchemaProvisionalPullerStarted *)self name];
    v5 = [name copy];
    [dictionary setObject:v5 forKeyedSubscript:@"name"];
  }

  [(RRSchemaProvisionalPullerStarted *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    name = [(RRSchemaProvisionalPullerStarted *)self name];
    name2 = [equalCopy name];
    v7 = name2;
    if ((name != 0) != (name2 == 0))
    {
      name3 = [(RRSchemaProvisionalPullerStarted *)self name];
      if (!name3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = name3;
      name4 = [(RRSchemaProvisionalPullerStarted *)self name];
      name5 = [equalCopy name];
      v12 = [name4 isEqual:name5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  name = [(RRSchemaProvisionalPullerStarted *)self name];

  if (name)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }
}

@end