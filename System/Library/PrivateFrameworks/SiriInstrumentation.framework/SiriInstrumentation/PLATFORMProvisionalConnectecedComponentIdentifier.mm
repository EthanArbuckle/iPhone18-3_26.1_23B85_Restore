@interface PLATFORMProvisionalConnectecedComponentIdentifier
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLATFORMProvisionalConnectecedComponentIdentifier)initWithDictionary:(id)a3;
- (PLATFORMProvisionalConnectecedComponentIdentifier)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation PLATFORMProvisionalConnectecedComponentIdentifier

- (PLATFORMProvisionalConnectecedComponentIdentifier)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PLATFORMProvisionalConnectecedComponentIdentifier;
  v5 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLATFORMProvisionalConnectecedComponentIdentifier *)v5 setUuid:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"component"];
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

- (PLATFORMProvisionalConnectecedComponentIdentifier)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self dictionaryRepresentation];
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
  if (self->_component)
  {
    v4 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self component];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"component"];
  }

  if (self->_uuid)
  {
    v6 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"uuid"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"uuid"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];
  v6 = [v4 uuid];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];
    v10 = [v4 uuid];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self component];
  v6 = [v4 component];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self component];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self component];
    v15 = [v4 component];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];

  if (v4)
  {
    v5 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self uuid];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)self component];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }
}

@end