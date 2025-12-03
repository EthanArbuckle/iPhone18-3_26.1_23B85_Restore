@interface SISchemaViewContainer
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaViewContainer)initWithDictionary:(id)dictionary;
- (SISchemaViewContainer)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaViewContainer

- (SISchemaViewContainer)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = SISchemaViewContainer;
  v5 = [(SISchemaViewContainer *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"viewID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaViewContainer *)v5 setViewID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"snippetClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaViewContainer *)v5 setSnippetClass:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dialogIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaViewContainer *)v5 setDialogIdentifier:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"dialogPhase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SISchemaViewContainer *)v5 setDialogPhase:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (SISchemaViewContainer)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaViewContainer *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaViewContainer *)self dictionaryRepresentation];
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
  if (self->_dialogIdentifier)
  {
    dialogIdentifier = [(SISchemaViewContainer *)self dialogIdentifier];
    v5 = [dialogIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"dialogIdentifier"];
  }

  if (self->_dialogPhase)
  {
    dialogPhase = [(SISchemaViewContainer *)self dialogPhase];
    v7 = [dialogPhase copy];
    [dictionary setObject:v7 forKeyedSubscript:@"dialogPhase"];
  }

  if (self->_snippetClass)
  {
    snippetClass = [(SISchemaViewContainer *)self snippetClass];
    v9 = [snippetClass copy];
    [dictionary setObject:v9 forKeyedSubscript:@"snippetClass"];
  }

  if (self->_viewID)
  {
    viewID = [(SISchemaViewContainer *)self viewID];
    v11 = [viewID copy];
    [dictionary setObject:v11 forKeyedSubscript:@"viewID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_viewID hash];
  v4 = [(NSString *)self->_snippetClass hash]^ v3;
  v5 = [(NSString *)self->_dialogIdentifier hash];
  return v4 ^ v5 ^ [(NSString *)self->_dialogPhase hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  viewID = [(SISchemaViewContainer *)self viewID];
  viewID2 = [equalCopy viewID];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_21;
  }

  viewID3 = [(SISchemaViewContainer *)self viewID];
  if (viewID3)
  {
    v8 = viewID3;
    viewID4 = [(SISchemaViewContainer *)self viewID];
    viewID5 = [equalCopy viewID];
    v11 = [viewID4 isEqual:viewID5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  viewID = [(SISchemaViewContainer *)self snippetClass];
  viewID2 = [equalCopy snippetClass];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_21;
  }

  snippetClass = [(SISchemaViewContainer *)self snippetClass];
  if (snippetClass)
  {
    v13 = snippetClass;
    snippetClass2 = [(SISchemaViewContainer *)self snippetClass];
    snippetClass3 = [equalCopy snippetClass];
    v16 = [snippetClass2 isEqual:snippetClass3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  viewID = [(SISchemaViewContainer *)self dialogIdentifier];
  viewID2 = [equalCopy dialogIdentifier];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_21;
  }

  dialogIdentifier = [(SISchemaViewContainer *)self dialogIdentifier];
  if (dialogIdentifier)
  {
    v18 = dialogIdentifier;
    dialogIdentifier2 = [(SISchemaViewContainer *)self dialogIdentifier];
    dialogIdentifier3 = [equalCopy dialogIdentifier];
    v21 = [dialogIdentifier2 isEqual:dialogIdentifier3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  viewID = [(SISchemaViewContainer *)self dialogPhase];
  viewID2 = [equalCopy dialogPhase];
  if ((viewID != 0) != (viewID2 == 0))
  {
    dialogPhase = [(SISchemaViewContainer *)self dialogPhase];
    if (!dialogPhase)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = dialogPhase;
    dialogPhase2 = [(SISchemaViewContainer *)self dialogPhase];
    dialogPhase3 = [equalCopy dialogPhase];
    v26 = [dialogPhase2 isEqual:dialogPhase3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  viewID = [(SISchemaViewContainer *)self viewID];

  if (viewID)
  {
    PBDataWriterWriteStringField();
  }

  snippetClass = [(SISchemaViewContainer *)self snippetClass];

  if (snippetClass)
  {
    PBDataWriterWriteStringField();
  }

  dialogIdentifier = [(SISchemaViewContainer *)self dialogIdentifier];

  if (dialogIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  dialogPhase = [(SISchemaViewContainer *)self dialogPhase];

  v8 = toCopy;
  if (dialogPhase)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end