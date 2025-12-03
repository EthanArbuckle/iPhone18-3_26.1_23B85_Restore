@interface RRSchemaProvisionalRRGroupIdentifier
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalRRGroupIdentifier)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalRRGroupIdentifier)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalRRGroupIdentifier

- (RRSchemaProvisionalRRGroupIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = RRSchemaProvisionalRRGroupIdentifier;
  v5 = [(RRSchemaProvisionalRRGroupIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"groupId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RRSchemaProvisionalRRGroupIdentifier *)v5 setGroupId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"seq"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalRRGroupIdentifier setSeq:](v5, "setSeq:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalRRGroupIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRRGroupIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalRRGroupIdentifier *)self dictionaryRepresentation];
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
  if (self->_groupId)
  {
    groupId = [(RRSchemaProvisionalRRGroupIdentifier *)self groupId];
    v5 = [groupId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"groupId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[RRSchemaProvisionalRRGroupIdentifier seq](self, "seq")}];
    [dictionary setObject:v6 forKeyedSubscript:@"seq"];
  }

  [(RRSchemaProvisionalRRGroupIdentifier *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  groupId = [(RRSchemaProvisionalRRGroupIdentifier *)self groupId];
  groupId2 = [equalCopy groupId];
  v7 = groupId2;
  if ((groupId != 0) == (groupId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  groupId3 = [(RRSchemaProvisionalRRGroupIdentifier *)self groupId];
  if (groupId3)
  {
    v9 = groupId3;
    groupId4 = [(RRSchemaProvisionalRRGroupIdentifier *)self groupId];
    groupId5 = [equalCopy groupId];
    v12 = [groupId4 isEqual:groupId5];

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
    seq = self->_seq;
    if (seq != [equalCopy seq])
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
  groupId = [(RRSchemaProvisionalRRGroupIdentifier *)self groupId];

  if (groupId)
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