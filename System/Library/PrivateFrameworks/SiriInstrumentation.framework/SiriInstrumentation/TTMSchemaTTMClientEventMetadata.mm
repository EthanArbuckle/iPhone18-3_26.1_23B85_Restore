@interface TTMSchemaTTMClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTMSchemaTTMClientEventMetadata)initWithDictionary:(id)dictionary;
- (TTMSchemaTTMClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation TTMSchemaTTMClientEventMetadata

- (TTMSchemaTTMClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = TTMSchemaTTMClientEventMetadata;
  v5 = [(TTMSchemaTTMClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ttmId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTMSchemaTTMClientEventMetadata *)v5 setTtmId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(TTMSchemaTTMClientEventMetadata *)v5 setTrpId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (TTMSchemaTTMClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTMSchemaTTMClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTMSchemaTTMClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_trpId)
  {
    trpId = [(TTMSchemaTTMClientEventMetadata *)self trpId];
    dictionaryRepresentation = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"trpId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"trpId"];
    }
  }

  if (self->_ttmId)
  {
    ttmId = [(TTMSchemaTTMClientEventMetadata *)self ttmId];
    dictionaryRepresentation2 = [ttmId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ttmId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ttmId"];
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

  ttmId = [(TTMSchemaTTMClientEventMetadata *)self ttmId];
  ttmId2 = [equalCopy ttmId];
  if ((ttmId != 0) == (ttmId2 == 0))
  {
    goto LABEL_11;
  }

  ttmId3 = [(TTMSchemaTTMClientEventMetadata *)self ttmId];
  if (ttmId3)
  {
    v8 = ttmId3;
    ttmId4 = [(TTMSchemaTTMClientEventMetadata *)self ttmId];
    ttmId5 = [equalCopy ttmId];
    v11 = [ttmId4 isEqual:ttmId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  ttmId = [(TTMSchemaTTMClientEventMetadata *)self trpId];
  ttmId2 = [equalCopy trpId];
  if ((ttmId != 0) != (ttmId2 == 0))
  {
    trpId = [(TTMSchemaTTMClientEventMetadata *)self trpId];
    if (!trpId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = trpId;
    trpId2 = [(TTMSchemaTTMClientEventMetadata *)self trpId];
    trpId3 = [equalCopy trpId];
    v16 = [trpId2 isEqual:trpId3];

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
  ttmId = [(TTMSchemaTTMClientEventMetadata *)self ttmId];

  if (ttmId)
  {
    ttmId2 = [(TTMSchemaTTMClientEventMetadata *)self ttmId];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(TTMSchemaTTMClientEventMetadata *)self trpId];

  if (trpId)
  {
    trpId2 = [(TTMSchemaTTMClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = TTMSchemaTTMClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  ttmId = [(TTMSchemaTTMClientEventMetadata *)self ttmId];
  v7 = [ttmId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(TTMSchemaTTMClientEventMetadata *)self deleteTtmId];
  }

  trpId = [(TTMSchemaTTMClientEventMetadata *)self trpId];
  v10 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(TTMSchemaTTMClientEventMetadata *)self deleteTrpId];
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