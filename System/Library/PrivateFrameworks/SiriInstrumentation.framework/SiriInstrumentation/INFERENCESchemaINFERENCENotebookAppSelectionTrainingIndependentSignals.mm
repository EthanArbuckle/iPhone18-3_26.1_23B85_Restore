@interface INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsNotebookGroupPresent:(BOOL)present;
- (void)setHasIsNotebookPayloadPresent:(BOOL)present;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals

- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals;
  v5 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commonIndependent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCECommonAppIndependentSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)v5 setCommonIndependent:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isNotebookTitlePresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals setIsNotebookTitlePresent:](v5, "setIsNotebookTitlePresent:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isNotebookPayloadPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals setIsNotebookPayloadPresent:](v5, "setIsNotebookPayloadPresent:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isNotebookGroupPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals setIsNotebookGroupPresent:](v5, "setIsNotebookGroupPresent:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self dictionaryRepresentation];
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
  if (self->_commonIndependent)
  {
    commonIndependent = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];
    dictionaryRepresentation = [commonIndependent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"commonIndependent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"commonIndependent"];
    }
  }

  v7 = *(&self->_isNotebookGroupPresent + 1);
  if ((v7 & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals isNotebookGroupPresent](self, "isNotebookGroupPresent")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isNotebookGroupPresent"];

    v7 = *(&self->_isNotebookGroupPresent + 1);
    if ((v7 & 2) == 0)
    {
LABEL_8:
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(&self->_isNotebookGroupPresent + 1) & 2) == 0)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals isNotebookPayloadPresent](self, "isNotebookPayloadPresent")}];
  [dictionary setObject:v11 forKeyedSubscript:@"isNotebookPayloadPresent"];

  if (*(&self->_isNotebookGroupPresent + 1))
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals isNotebookTitlePresent](self, "isNotebookTitlePresent")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isNotebookTitlePresent"];
  }

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(INFERENCESchemaINFERENCECommonAppIndependentSignals *)self->_commonIndependent hash];
  if (!*(&self->_isNotebookGroupPresent + 1))
  {
    v4 = 0;
    if ((*(&self->_isNotebookGroupPresent + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*(&self->_isNotebookGroupPresent + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_isNotebookTitlePresent;
  if ((*(&self->_isNotebookGroupPresent + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_isNotebookPayloadPresent;
  if ((*(&self->_isNotebookGroupPresent + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_isNotebookGroupPresent;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  commonIndependent = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];
  commonIndependent2 = [equalCopy commonIndependent];
  v7 = commonIndependent2;
  if ((commonIndependent != 0) == (commonIndependent2 == 0))
  {

    goto LABEL_20;
  }

  commonIndependent3 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];
  if (commonIndependent3)
  {
    v9 = commonIndependent3;
    commonIndependent4 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];
    commonIndependent5 = [equalCopy commonIndependent];
    v12 = [commonIndependent4 isEqual:commonIndependent5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v13 = *(&self->_isNotebookGroupPresent + 1);
  v14 = equalCopy[19];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (v13)
  {
    isNotebookTitlePresent = self->_isNotebookTitlePresent;
    if (isNotebookTitlePresent != [equalCopy isNotebookTitlePresent])
    {
      goto LABEL_20;
    }

    v13 = *(&self->_isNotebookGroupPresent + 1);
    v14 = equalCopy[19];
  }

  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    isNotebookPayloadPresent = self->_isNotebookPayloadPresent;
    if (isNotebookPayloadPresent == [equalCopy isNotebookPayloadPresent])
    {
      v13 = *(&self->_isNotebookGroupPresent + 1);
      v14 = equalCopy[19];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (v13 >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    isNotebookGroupPresent = self->_isNotebookGroupPresent;
    if (isNotebookGroupPresent != [equalCopy isNotebookGroupPresent])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  commonIndependent = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];

  if (commonIndependent)
  {
    commonIndependent2 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isNotebookGroupPresent + 1);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_isNotebookGroupPresent + 1);
  }

  v7 = toCopy;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
    v6 = *(&self->_isNotebookGroupPresent + 1);
  }

  if ((v6 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
  }
}

- (void)setHasIsNotebookGroupPresent:(BOOL)present
{
  if (present)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotebookGroupPresent + 1) = *(&self->_isNotebookGroupPresent + 1) & 0xFB | v3;
}

- (void)setHasIsNotebookPayloadPresent:(BOOL)present
{
  if (present)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotebookGroupPresent + 1) = *(&self->_isNotebookGroupPresent + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self deleteCommonIndependent];
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