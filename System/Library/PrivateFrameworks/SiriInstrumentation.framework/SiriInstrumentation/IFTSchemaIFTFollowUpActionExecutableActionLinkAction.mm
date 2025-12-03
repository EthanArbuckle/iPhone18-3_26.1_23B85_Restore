@interface IFTSchemaIFTFollowUpActionExecutableActionLinkAction
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTFollowUpActionExecutableActionLinkAction

- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTFollowUpActionExecutableActionLinkAction;
  v5 = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)v5 setBundleId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkShowOutputActionOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTFollowUpActionExecutableActionLinkAction setLinkShowOutputActionOptions:](v5, "setLinkShowOutputActionOptions:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    bundleId = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IFTSchemaIFTFollowUpActionExecutableActionLinkAction linkShowOutputActionOptions](self, "linkShowOutputActionOptions")}];
    [dictionary setObject:v6 forKeyedSubscript:@"linkShowOutputActionOptions"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_linkShowOutputActionOptions;
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

  bundleId = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self bundleId];
  bundleId2 = [equalCopy bundleId];
  v7 = bundleId2;
  if ((bundleId != 0) == (bundleId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  bundleId3 = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self bundleId];
  if (bundleId3)
  {
    v9 = bundleId3;
    bundleId4 = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self bundleId];
    bundleId5 = [equalCopy bundleId];
    v12 = [bundleId4 isEqual:bundleId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    linkShowOutputActionOptions = self->_linkShowOutputActionOptions;
    if (linkShowOutputActionOptions != [equalCopy linkShowOutputActionOptions])
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
  bundleId = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = IFTSchemaIFTFollowUpActionExecutableActionLinkAction;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self deleteBundleId];
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