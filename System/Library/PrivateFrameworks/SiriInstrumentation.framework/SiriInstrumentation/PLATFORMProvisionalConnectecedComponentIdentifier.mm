@interface PLATFORMProvisionalConnectecedComponentIdentifier
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLATFORMProvisionalConnectecedComponentIdentifier)initWithDictionary:(id)dictionary;
- (PLATFORMProvisionalConnectecedComponentIdentifier)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation PLATFORMProvisionalConnectecedComponentIdentifier

- (PLATFORMProvisionalConnectecedComponentIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PLATFORMProvisionalConnectecedComponentIdentifier;
  v5 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLATFORMProvisionalConnectecedComponentIdentifier *)v5 setUuid:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"component"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PLATFORMProvisionalConnectecedComponentIdentifier *)v5 setComponent:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PLATFORMProvisionalConnectecedComponentIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self dictionaryRepresentation];
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
  if (self->_component)
  {
    component = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self component];
    v5 = [component copy];
    [dictionary setObject:v5 forKeyedSubscript:@"component"];
  }

  if (self->_uuid)
  {
    uuid = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];
    dictionaryRepresentation = [uuid dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"uuid"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"uuid"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  uuid = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];
  uuid2 = [equalCopy uuid];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_11;
  }

  uuid3 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];
  if (uuid3)
  {
    v8 = uuid3;
    uuid4 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];
    uuid5 = [equalCopy uuid];
    v11 = [uuid4 isEqual:uuid5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  uuid = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self component];
  uuid2 = [equalCopy component];
  if ((uuid != 0) != (uuid2 == 0))
  {
    component = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self component];
    if (!component)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = component;
    component2 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self component];
    component3 = [equalCopy component];
    v16 = [component2 isEqual:component3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  uuid = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];

  if (uuid)
  {
    uuid2 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];
    PBDataWriterWriteSubmessage();
  }

  component = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self component];

  if (component)
  {
    PBDataWriterWriteStringField();
  }
}

@end