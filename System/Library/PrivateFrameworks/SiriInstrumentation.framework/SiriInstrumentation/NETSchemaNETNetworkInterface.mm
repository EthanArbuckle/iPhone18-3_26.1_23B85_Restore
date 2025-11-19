@interface NETSchemaNETNetworkInterface
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETNetworkInterface)initWithDictionary:(id)a3;
- (NETSchemaNETNetworkInterface)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETNetworkInterface

- (NETSchemaNETNetworkInterface)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NETSchemaNETNetworkInterface;
  v5 = [(NETSchemaNETNetworkInterface *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NETSchemaNETNetworkInterface *)v5 setName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"connectionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETNetworkInterface setConnectionType:](v5, "setConnectionType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (NETSchemaNETNetworkInterface)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETNetworkInterface *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETNetworkInterface *)self dictionaryRepresentation];
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
    v4 = [(NETSchemaNETNetworkInterface *)self connectionType]- 1;
    if (v4 > 0x16)
    {
      v5 = @"NETCONNECTIONTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DB190[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"connectionType"];
  }

  if (self->_name)
  {
    v6 = [(NETSchemaNETNetworkInterface *)self name];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"name"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NETSchemaNETNetworkInterface *)self name];
  v6 = [v4 name];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(NETSchemaNETNetworkInterface *)self name];
  if (v8)
  {
    v9 = v8;
    v10 = [(NETSchemaNETNetworkInterface *)self name];
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

  if ((*&self->_has & 1) != (v4[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    connectionType = self->_connectionType;
    if (connectionType != [v4 connectionType])
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
  v5 = a3;
  v4 = [(NETSchemaNETNetworkInterface *)self name];

  if (v4)
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