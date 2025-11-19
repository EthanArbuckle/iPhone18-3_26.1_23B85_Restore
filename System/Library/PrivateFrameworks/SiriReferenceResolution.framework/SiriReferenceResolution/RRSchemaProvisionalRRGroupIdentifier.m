@interface RRSchemaProvisionalRRGroupIdentifier
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RRSchemaProvisionalRRGroupIdentifier)initWithDictionary:(id)a3;
- (RRSchemaProvisionalRRGroupIdentifier)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation RRSchemaProvisionalRRGroupIdentifier

- (RRSchemaProvisionalRRGroupIdentifier)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RRSchemaProvisionalRRGroupIdentifier;
  v5 = [(RRSchemaProvisionalRRGroupIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"groupId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RRSchemaProvisionalRRGroupIdentifier *)v5 setGroupId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"seq"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalRRGroupIdentifier setSeq:](v5, "setSeq:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalRRGroupIdentifier)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRRGroupIdentifier *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RRSchemaProvisionalRRGroupIdentifier *)self dictionaryRepresentation];
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
  if (self->_groupId)
  {
    v4 = [(RRSchemaProvisionalRRGroupIdentifier *)self groupId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"groupId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[RRSchemaProvisionalRRGroupIdentifier seq](self, "seq")}];
    [v3 setObject:v6 forKeyedSubscript:@"seq"];
  }

  [(RRSchemaProvisionalRRGroupIdentifier *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_groupId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_seq;
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

  v5 = [(RRSchemaProvisionalRRGroupIdentifier *)self groupId];
  v6 = [v4 groupId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(RRSchemaProvisionalRRGroupIdentifier *)self groupId];
  if (v8)
  {
    v9 = v8;
    v10 = [(RRSchemaProvisionalRRGroupIdentifier *)self groupId];
    v11 = [v4 groupId];
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
    seq = self->_seq;
    if (seq != [v4 seq])
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
  v4 = [(RRSchemaProvisionalRRGroupIdentifier *)self groupId];

  if (v4)
  {
    groupId = self->_groupId;
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    seq = self->_seq;
    PBDataWriterWriteUint32Field();
  }
}

@end