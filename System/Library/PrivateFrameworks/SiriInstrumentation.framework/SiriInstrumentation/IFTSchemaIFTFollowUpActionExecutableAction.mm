@interface IFTSchemaIFTFollowUpActionExecutableAction
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTFollowUpActionExecutableAction)initWithDictionary:(id)a3;
- (IFTSchemaIFTFollowUpActionExecutableAction)initWithJSON:(id)a3;
- (IFTSchemaIFTFollowUpActionExecutableActionLinkAction)linkAction;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteLinkAction;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTFollowUpActionExecutableAction

- (IFTSchemaIFTFollowUpActionExecutableAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTFollowUpActionExecutableAction;
  v5 = [(IFTSchemaIFTFollowUpActionExecutableAction *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkAction"];
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

- (IFTSchemaIFTFollowUpActionExecutableAction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTFollowUpActionExecutableAction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self dictionaryRepresentation];
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
  if (self->_linkAction)
  {
    v4 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"linkAction"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"linkAction"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichOneof_Followupactionexecutableaction = self->_whichOneof_Followupactionexecutableaction;
    if (whichOneof_Followupactionexecutableaction == [v4 whichOneof_Followupactionexecutableaction])
    {
      v6 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];
      v7 = [v4 linkAction];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];
        v12 = [v4 linkAction];
        v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];

  if (v4)
  {
    v5 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction];
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTFollowUpActionExecutableAction;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTFollowUpActionExecutableAction *)self linkAction:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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