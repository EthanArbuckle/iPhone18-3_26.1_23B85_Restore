@interface RRSchemaRRGroupIdentifier
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaRRGroupIdentifier)initWithDictionary:(id)dictionary;
- (RRSchemaRRGroupIdentifier)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaRRGroupIdentifier

- (RRSchemaRRGroupIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = RRSchemaRRGroupIdentifier;
  v5 = [(RRSchemaRRGroupIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"groupId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RRSchemaRRGroupIdentifier *)v5 setGroupId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"seq"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaRRGroupIdentifier setSeq:](v5, "setSeq:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (RRSchemaRRGroupIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaRRGroupIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaRRGroupIdentifier *)self dictionaryRepresentation];
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
    groupId = [(RRSchemaRRGroupIdentifier *)self groupId];
    v5 = [groupId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"groupId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[RRSchemaRRGroupIdentifier seq](self, "seq")}];
    [dictionary setObject:v6 forKeyedSubscript:@"seq"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

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

  groupId = [(RRSchemaRRGroupIdentifier *)self groupId];
  groupId2 = [equalCopy groupId];
  v7 = groupId2;
  if ((groupId != 0) == (groupId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  groupId3 = [(RRSchemaRRGroupIdentifier *)self groupId];
  if (groupId3)
  {
    v9 = groupId3;
    groupId4 = [(RRSchemaRRGroupIdentifier *)self groupId];
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

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
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
  groupId = [(RRSchemaRRGroupIdentifier *)self groupId];

  if (groupId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end