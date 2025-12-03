@interface NLXSchemaCDMDelegatedUserDialogActTier1
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMDelegatedUserDialogActTier1)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMDelegatedUserDialogActTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMDelegatedUserDialogActTier1

- (NLXSchemaCDMDelegatedUserDialogActTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMDelegatedUserDialogActTier1;
  v5 = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMDelegatedUserDialogActTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"rewrittenUtterance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NLXSchemaCDMDelegatedUserDialogActTier1 *)v5 setRewrittenUtterance:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaCDMDelegatedUserDialogActTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self dictionaryRepresentation];
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
    linkId = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self linkId];
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

  if (self->_rewrittenUtterance)
  {
    rewrittenUtterance = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self rewrittenUtterance];
    v8 = [rewrittenUtterance copy];
    [dictionary setObject:v8 forKeyedSubscript:@"rewrittenUtterance"];
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

  linkId = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_11;
  }

  linkId3 = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self rewrittenUtterance];
  linkId2 = [equalCopy rewrittenUtterance];
  if ((linkId != 0) != (linkId2 == 0))
  {
    rewrittenUtterance = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self rewrittenUtterance];
    if (!rewrittenUtterance)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = rewrittenUtterance;
    rewrittenUtterance2 = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self rewrittenUtterance];
    rewrittenUtterance3 = [equalCopy rewrittenUtterance];
    v16 = [rewrittenUtterance2 isEqual:rewrittenUtterance3];

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
  linkId = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  rewrittenUtterance = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self rewrittenUtterance];

  if (rewrittenUtterance)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMDelegatedUserDialogActTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self deleteRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self deleteRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self deleteRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self deleteRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self deleteRewrittenUtterance];
  }

  linkId = [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self deleteLinkId];
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