@interface MWTSchemaMWTEventMetadata
- (BOOL)isEqual:(id)equal;
- (MWTSchemaMWTEventMetadata)initWithDictionary:(id)dictionary;
- (MWTSchemaMWTEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MWTSchemaMWTEventMetadata

- (MWTSchemaMWTEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MWTSchemaMWTEventMetadata;
  v5 = [(MWTSchemaMWTEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mwtId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MWTSchemaMWTEventMetadata *)v5 setMwtId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(MWTSchemaMWTEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(MWTSchemaMWTEventMetadata *)v5 setSubRequestId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (MWTSchemaMWTEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MWTSchemaMWTEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MWTSchemaMWTEventMetadata *)self dictionaryRepresentation];
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
  if (self->_mwtId)
  {
    mwtId = [(MWTSchemaMWTEventMetadata *)self mwtId];
    dictionaryRepresentation = [mwtId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"mwtId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"mwtId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(MWTSchemaMWTEventMetadata *)self requestId];
    dictionaryRepresentation2 = [requestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"requestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_subRequestId)
  {
    subRequestId = [(MWTSchemaMWTEventMetadata *)self subRequestId];
    dictionaryRepresentation3 = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"subRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_mwtId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  mwtId = [(MWTSchemaMWTEventMetadata *)self mwtId];
  mwtId2 = [equalCopy mwtId];
  if ((mwtId != 0) == (mwtId2 == 0))
  {
    goto LABEL_16;
  }

  mwtId3 = [(MWTSchemaMWTEventMetadata *)self mwtId];
  if (mwtId3)
  {
    v8 = mwtId3;
    mwtId4 = [(MWTSchemaMWTEventMetadata *)self mwtId];
    mwtId5 = [equalCopy mwtId];
    v11 = [mwtId4 isEqual:mwtId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  mwtId = [(MWTSchemaMWTEventMetadata *)self requestId];
  mwtId2 = [equalCopy requestId];
  if ((mwtId != 0) == (mwtId2 == 0))
  {
    goto LABEL_16;
  }

  requestId = [(MWTSchemaMWTEventMetadata *)self requestId];
  if (requestId)
  {
    v13 = requestId;
    requestId2 = [(MWTSchemaMWTEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v16 = [requestId2 isEqual:requestId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  mwtId = [(MWTSchemaMWTEventMetadata *)self subRequestId];
  mwtId2 = [equalCopy subRequestId];
  if ((mwtId != 0) != (mwtId2 == 0))
  {
    subRequestId = [(MWTSchemaMWTEventMetadata *)self subRequestId];
    if (!subRequestId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = subRequestId;
    subRequestId2 = [(MWTSchemaMWTEventMetadata *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v21 = [subRequestId2 isEqual:subRequestId3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  mwtId = [(MWTSchemaMWTEventMetadata *)self mwtId];

  if (mwtId)
  {
    mwtId2 = [(MWTSchemaMWTEventMetadata *)self mwtId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(MWTSchemaMWTEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(MWTSchemaMWTEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(MWTSchemaMWTEventMetadata *)self subRequestId];

  v9 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(MWTSchemaMWTEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = MWTSchemaMWTEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  mwtId = [(MWTSchemaMWTEventMetadata *)self mwtId];
  v7 = [mwtId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MWTSchemaMWTEventMetadata *)self deleteMwtId];
  }

  requestId = [(MWTSchemaMWTEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MWTSchemaMWTEventMetadata *)self deleteRequestId];
  }

  subRequestId = [(MWTSchemaMWTEventMetadata *)self subRequestId];
  v13 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(MWTSchemaMWTEventMetadata *)self deleteSubRequestId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end