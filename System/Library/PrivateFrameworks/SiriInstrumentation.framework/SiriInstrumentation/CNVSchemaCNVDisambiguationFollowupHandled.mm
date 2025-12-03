@interface CNVSchemaCNVDisambiguationFollowupHandled
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVDisambiguationFollowupHandled)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVDisambiguationFollowupHandled)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVDisambiguationFollowupHandled

- (CNVSchemaCNVDisambiguationFollowupHandled)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CNVSchemaCNVDisambiguationFollowupHandled;
  v5 = [(CNVSchemaCNVDisambiguationFollowupHandled *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CNVSchemaCNVDisambiguationFollowupHandled *)v5 setActionCandidateId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (CNVSchemaCNVDisambiguationFollowupHandled)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVDisambiguationFollowupHandled *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVDisambiguationFollowupHandled *)self dictionaryRepresentation];
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
  if (self->_actionCandidateId)
  {
    actionCandidateId = [(CNVSchemaCNVDisambiguationFollowupHandled *)self actionCandidateId];
    dictionaryRepresentation = [actionCandidateId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionCandidateId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionCandidateId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    actionCandidateId = [(CNVSchemaCNVDisambiguationFollowupHandled *)self actionCandidateId];
    actionCandidateId2 = [equalCopy actionCandidateId];
    v7 = actionCandidateId2;
    if ((actionCandidateId != 0) != (actionCandidateId2 == 0))
    {
      actionCandidateId3 = [(CNVSchemaCNVDisambiguationFollowupHandled *)self actionCandidateId];
      if (!actionCandidateId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = actionCandidateId3;
      actionCandidateId4 = [(CNVSchemaCNVDisambiguationFollowupHandled *)self actionCandidateId];
      actionCandidateId5 = [equalCopy actionCandidateId];
      v12 = [actionCandidateId4 isEqual:actionCandidateId5];

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
  actionCandidateId = [(CNVSchemaCNVDisambiguationFollowupHandled *)self actionCandidateId];

  if (actionCandidateId)
  {
    actionCandidateId2 = [(CNVSchemaCNVDisambiguationFollowupHandled *)self actionCandidateId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVDisambiguationFollowupHandled;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CNVSchemaCNVDisambiguationFollowupHandled *)self actionCandidateId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CNVSchemaCNVDisambiguationFollowupHandled *)self deleteActionCandidateId];
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