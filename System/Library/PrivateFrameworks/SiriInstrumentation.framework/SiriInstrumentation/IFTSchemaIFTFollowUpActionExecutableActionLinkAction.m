@interface IFTSchemaIFTFollowUpActionExecutableActionLinkAction
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)initWithDictionary:(id)a3;
- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTFollowUpActionExecutableActionLinkAction

- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTFollowUpActionExecutableActionLinkAction;
  v5 = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)v5 setBundleId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"linkShowOutputActionOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTFollowUpActionExecutableActionLinkAction setLinkShowOutputActionOptions:](v5, "setLinkShowOutputActionOptions:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    v4 = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self bundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IFTSchemaIFTFollowUpActionExecutableActionLinkAction linkShowOutputActionOptions](self, "linkShowOutputActionOptions")}];
    [v3 setObject:v6 forKeyedSubscript:@"linkShowOutputActionOptions"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self bundleId];
  v6 = [v4 bundleId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self bundleId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self bundleId];
    v11 = [v4 bundleId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    linkShowOutputActionOptions = self->_linkShowOutputActionOptions;
    if (linkShowOutputActionOptions != [v4 linkShowOutputActionOptions])
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
  v5 = a3;
  v4 = [(IFTSchemaIFTFollowUpActionExecutableActionLinkAction *)self bundleId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v8.receiver = self;
  v8.super_class = IFTSchemaIFTFollowUpActionExecutableActionLinkAction;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:v4];
  v6 = [v4 isConditionSet:{4, v8.receiver, v8.super_class}];

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