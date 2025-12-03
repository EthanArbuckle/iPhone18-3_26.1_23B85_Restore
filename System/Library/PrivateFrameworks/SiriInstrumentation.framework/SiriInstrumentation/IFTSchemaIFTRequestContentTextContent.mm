@interface IFTSchemaIFTRequestContentTextContent
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTRequestContentTextContent)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTRequestContentTextContent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTRequestContentTextContent

- (IFTSchemaIFTRequestContentTextContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTRequestContentTextContent;
  v5 = [(IFTSchemaIFTRequestContentTextContent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTRequestContentTextContent *)v5 setStatementId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(IFTSchemaIFTRequestContentTextContent *)v5 setLinkId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTRequestContentTextContent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRequestContentTextContent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTRequestContentTextContent *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    linkId = [(IFTSchemaIFTRequestContentTextContent *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTRequestContentTextContent *)self statementId];
    dictionaryRepresentation2 = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"statementId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"statementId"];
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

  statementId = [(IFTSchemaIFTRequestContentTextContent *)self statementId];
  statementId2 = [equalCopy statementId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_11;
  }

  statementId3 = [(IFTSchemaIFTRequestContentTextContent *)self statementId];
  if (statementId3)
  {
    v8 = statementId3;
    statementId4 = [(IFTSchemaIFTRequestContentTextContent *)self statementId];
    statementId5 = [equalCopy statementId];
    v11 = [statementId4 isEqual:statementId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTRequestContentTextContent *)self linkId];
  statementId2 = [equalCopy linkId];
  if ((statementId != 0) != (statementId2 == 0))
  {
    linkId = [(IFTSchemaIFTRequestContentTextContent *)self linkId];
    if (!linkId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = linkId;
    linkId2 = [(IFTSchemaIFTRequestContentTextContent *)self linkId];
    linkId3 = [equalCopy linkId];
    v16 = [linkId2 isEqual:linkId3];

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
  statementId = [(IFTSchemaIFTRequestContentTextContent *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTRequestContentTextContent *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  linkId = [(IFTSchemaIFTRequestContentTextContent *)self linkId];

  if (linkId)
  {
    linkId2 = [(IFTSchemaIFTRequestContentTextContent *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTRequestContentTextContent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  statementId = [(IFTSchemaIFTRequestContentTextContent *)self statementId];
  v7 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTRequestContentTextContent *)self deleteStatementId];
  }

  linkId = [(IFTSchemaIFTRequestContentTextContent *)self linkId];
  v10 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTRequestContentTextContent *)self deleteLinkId];
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