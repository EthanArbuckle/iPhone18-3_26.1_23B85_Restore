@interface SISchemaUUFRSelected
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUUFRCasinoCardSelected)casinoCardSelected;
- (SISchemaUUFRSelected)initWithDictionary:(id)dictionary;
- (SISchemaUUFRSelected)initWithJSON:(id)n;
- (SISchemaUUFRSnippetViewSelected)snippetViewSelected;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteCasinoCardSelected;
- (void)deleteSnippetViewSelected;
- (void)setCasinoCardSelected:(id)selected;
- (void)setSnippetViewSelected:(id)selected;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUUFRSelected

- (SISchemaUUFRSelected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaUUFRSelected;
  v5 = [(SISchemaUUFRSelected *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"casinoCardSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUFRCasinoCardSelected alloc] initWithDictionary:v6];
      [(SISchemaUUFRSelected *)v5 setCasinoCardSelected:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"snippetViewSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUFRSnippetViewSelected alloc] initWithDictionary:v8];
      [(SISchemaUUFRSelected *)v5 setSnippetViewSelected:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaUUFRSelected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUUFRSelected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUUFRSelected *)self dictionaryRepresentation];
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
  if (self->_casinoCardSelected)
  {
    casinoCardSelected = [(SISchemaUUFRSelected *)self casinoCardSelected];
    dictionaryRepresentation = [casinoCardSelected dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"casinoCardSelected"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"casinoCardSelected"];
    }
  }

  if (self->_snippetViewSelected)
  {
    snippetViewSelected = [(SISchemaUUFRSelected *)self snippetViewSelected];
    dictionaryRepresentation2 = [snippetViewSelected dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"snippetViewSelected"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"snippetViewSelected"];
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
    goto LABEL_13;
  }

  whichSelectionevent = self->_whichSelectionevent;
  if (whichSelectionevent != [equalCopy whichSelectionevent])
  {
    goto LABEL_13;
  }

  casinoCardSelected = [(SISchemaUUFRSelected *)self casinoCardSelected];
  casinoCardSelected2 = [equalCopy casinoCardSelected];
  if ((casinoCardSelected != 0) == (casinoCardSelected2 == 0))
  {
    goto LABEL_12;
  }

  casinoCardSelected3 = [(SISchemaUUFRSelected *)self casinoCardSelected];
  if (casinoCardSelected3)
  {
    v9 = casinoCardSelected3;
    casinoCardSelected4 = [(SISchemaUUFRSelected *)self casinoCardSelected];
    casinoCardSelected5 = [equalCopy casinoCardSelected];
    v12 = [casinoCardSelected4 isEqual:casinoCardSelected5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  casinoCardSelected = [(SISchemaUUFRSelected *)self snippetViewSelected];
  casinoCardSelected2 = [equalCopy snippetViewSelected];
  if ((casinoCardSelected != 0) != (casinoCardSelected2 == 0))
  {
    snippetViewSelected = [(SISchemaUUFRSelected *)self snippetViewSelected];
    if (!snippetViewSelected)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = snippetViewSelected;
    snippetViewSelected2 = [(SISchemaUUFRSelected *)self snippetViewSelected];
    snippetViewSelected3 = [equalCopy snippetViewSelected];
    v17 = [snippetViewSelected2 isEqual:snippetViewSelected3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  casinoCardSelected = [(SISchemaUUFRSelected *)self casinoCardSelected];

  if (casinoCardSelected)
  {
    casinoCardSelected2 = [(SISchemaUUFRSelected *)self casinoCardSelected];
    PBDataWriterWriteSubmessage();
  }

  snippetViewSelected = [(SISchemaUUFRSelected *)self snippetViewSelected];

  if (snippetViewSelected)
  {
    snippetViewSelected2 = [(SISchemaUUFRSelected *)self snippetViewSelected];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteSnippetViewSelected
{
  if (self->_whichSelectionevent == 2)
  {
    self->_whichSelectionevent = 0;
    self->_snippetViewSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaUUFRSnippetViewSelected)snippetViewSelected
{
  if (self->_whichSelectionevent == 2)
  {
    v3 = self->_snippetViewSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSnippetViewSelected:(id)selected
{
  selectedCopy = selected;
  casinoCardSelected = self->_casinoCardSelected;
  self->_casinoCardSelected = 0;

  self->_whichSelectionevent = 2 * (selectedCopy != 0);
  snippetViewSelected = self->_snippetViewSelected;
  self->_snippetViewSelected = selectedCopy;
}

- (void)deleteCasinoCardSelected
{
  if (self->_whichSelectionevent == 1)
  {
    self->_whichSelectionevent = 0;
    self->_casinoCardSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaUUFRCasinoCardSelected)casinoCardSelected
{
  if (self->_whichSelectionevent == 1)
  {
    v3 = self->_casinoCardSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCasinoCardSelected:(id)selected
{
  selectedCopy = selected;
  snippetViewSelected = self->_snippetViewSelected;
  self->_snippetViewSelected = 0;

  self->_whichSelectionevent = selectedCopy != 0;
  casinoCardSelected = self->_casinoCardSelected;
  self->_casinoCardSelected = selectedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaUUFRSelected;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  casinoCardSelected = [(SISchemaUUFRSelected *)self casinoCardSelected];
  v7 = [casinoCardSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaUUFRSelected *)self deleteCasinoCardSelected];
  }

  snippetViewSelected = [(SISchemaUUFRSelected *)self snippetViewSelected];
  v10 = [snippetViewSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaUUFRSelected *)self deleteSnippetViewSelected];
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