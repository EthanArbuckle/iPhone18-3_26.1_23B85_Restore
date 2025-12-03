@interface IFTSchemaIFTFollowUpActionExecutableAction
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTFollowUpActionExecutableAction)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTFollowUpActionExecutableAction)initWithJSON:(id)n;
- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)linkAction;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteLinkAction;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTFollowUpActionExecutableAction

- (IFTSchemaIFTFollowUpActionExecutableAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTFollowUpActionExecutableAction;
  v5 = [(IFTSchemaIFTFollowUpActionExecutableAction *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTFollowUpActionExecutableActionLinkAction alloc] initWithDictionary:v6];
      [(IFTSchemaIFTFollowUpActionExecutableAction *)v5 setLinkAction:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTFollowUpActionExecutableAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTFollowUpActionExecutableAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTFollowUpActionExecutableAction *)self dictionaryRepresentation];
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
  if (self->_linkAction)
  {
    linkAction = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];
    dictionaryRepresentation = [linkAction dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkAction"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkAction"];
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
    whichOneof_Followupactionexecutableaction = self->_whichOneof_Followupactionexecutableaction;
    if (whichOneof_Followupactionexecutableaction == [equalCopy whichOneof_Followupactionexecutableaction])
    {
      linkAction = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];
      linkAction2 = [equalCopy linkAction];
      v8 = linkAction2;
      if ((linkAction != 0) != (linkAction2 == 0))
      {
        linkAction3 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];
        if (!linkAction3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = linkAction3;
        linkAction4 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];
        linkAction5 = [equalCopy linkAction];
        v13 = [linkAction4 isEqual:linkAction5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkAction = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];

  if (linkAction)
  {
    linkAction2 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteLinkAction
{
  if (self->_whichOneof_Followupactionexecutableaction == 1)
  {
    self->_whichOneof_Followupactionexecutableaction = 0;
    self->_linkAction = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)linkAction
{
  if (self->_whichOneof_Followupactionexecutableaction == 1)
  {
    v3 = self->_linkAction;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTFollowUpActionExecutableAction;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTFollowUpActionExecutableAction *)self deleteLinkAction];
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