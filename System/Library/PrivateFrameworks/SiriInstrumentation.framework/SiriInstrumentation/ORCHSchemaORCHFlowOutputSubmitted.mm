@interface ORCHSchemaORCHFlowOutputSubmitted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHFlowOutputSubmitted)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHFlowOutputSubmitted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAceViewIds:(id)ids;
- (void)setHasFlowCommandReceived:(BOOL)received;
- (void)setHasFlowCommandResponseError:(BOOL)error;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHFlowOutputSubmitted

- (ORCHSchemaORCHFlowOutputSubmitted)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = ORCHSchemaORCHFlowOutputSubmitted;
  v5 = [(ORCHSchemaORCHFlowOutputSubmitted *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"flowOutputSubmissionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHFlowOutputSubmitted setFlowOutputSubmissionId:](v5, "setFlowOutputSubmissionId:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"flowCommandReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHFlowOutputSubmitted setFlowCommandReceived:](v5, "setFlowCommandReceived:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"flowCommandResponseError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHFlowOutputSubmitted setFlowCommandResponseError:](v5, "setFlowCommandResponseError:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"aceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(ORCHSchemaORCHFlowOutputSubmitted *)v5 setAceCommandId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"aceViewIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v9;
      v24 = v8;
      v25 = v7;
      v26 = v6;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[SISchemaUUID alloc] initWithDictionary:v17];
              [(ORCHSchemaORCHFlowOutputSubmitted *)v5 addAceViewIds:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v14);
      }

      v6 = v26;
      v9 = v23;
      v8 = v24;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:{@"subRequestId", v23, v24, v25, v26, v27}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[SISchemaUUID alloc] initWithDictionary:v19];
      [(ORCHSchemaORCHFlowOutputSubmitted *)v5 setSubRequestId:v20];
    }

    v21 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHFlowOutputSubmitted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHFlowOutputSubmitted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHFlowOutputSubmitted *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_aceCommandId)
  {
    aceCommandId = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
    dictionaryRepresentation = [aceCommandId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"aceCommandId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"aceCommandId"];
    }
  }

  if ([(NSArray *)self->_aceViewIds count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = self->_aceViewIds;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"aceViewIds"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHFlowOutputSubmitted flowCommandReceived](self, "flowCommandReceived")}];
    [dictionary setObject:v19 forKeyedSubscript:@"flowCommandReceived"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_20:
      if ((has & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_20;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHFlowOutputSubmitted flowCommandResponseError](self, "flowCommandResponseError", v23)}];
  [dictionary setObject:v20 forKeyedSubscript:@"flowCommandResponseError"];

  if (*&self->_has)
  {
LABEL_21:
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[ORCHSchemaORCHFlowOutputSubmitted flowOutputSubmissionId](self, "flowOutputSubmissionId", v23)}];
    [dictionary setObject:v16 forKeyedSubscript:@"flowOutputSubmissionId"];
  }

LABEL_22:
  if (self->_subRequestId)
  {
    subRequestId = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
    dictionaryRepresentation3 = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"subRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v23];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_flowOutputSubmissionId;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_flowCommandReceived;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_flowCommandResponseError;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_aceCommandId hash];
  v7 = [(NSArray *)self->_aceViewIds hash];
  return v6 ^ v7 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_28;
  }

  if (*&has)
  {
    flowOutputSubmissionId = self->_flowOutputSubmissionId;
    if (flowOutputSubmissionId != [equalCopy flowOutputSubmissionId])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      flowCommandReceived = self->_flowCommandReceived;
      if (flowCommandReceived != [equalCopy flowCommandReceived])
      {
        goto LABEL_28;
      }

      has = self->_has;
      v6 = equalCopy[40];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_28;
    }

    if (v10)
    {
      flowCommandResponseError = self->_flowCommandResponseError;
      if (flowCommandResponseError != [equalCopy flowCommandResponseError])
      {
        goto LABEL_28;
      }
    }

    aceCommandId = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
    aceCommandId2 = [equalCopy aceCommandId];
    if ((aceCommandId != 0) == (aceCommandId2 == 0))
    {
      goto LABEL_27;
    }

    aceCommandId3 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
    if (aceCommandId3)
    {
      v15 = aceCommandId3;
      aceCommandId4 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
      aceCommandId5 = [equalCopy aceCommandId];
      v18 = [aceCommandId4 isEqual:aceCommandId5];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    aceCommandId = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceViewIds];
    aceCommandId2 = [equalCopy aceViewIds];
    if ((aceCommandId != 0) == (aceCommandId2 == 0))
    {
      goto LABEL_27;
    }

    aceViewIds = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceViewIds];
    if (aceViewIds)
    {
      v20 = aceViewIds;
      aceViewIds2 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceViewIds];
      aceViewIds3 = [equalCopy aceViewIds];
      v23 = [aceViewIds2 isEqual:aceViewIds3];

      if (!v23)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    aceCommandId = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
    aceCommandId2 = [equalCopy subRequestId];
    if ((aceCommandId != 0) != (aceCommandId2 == 0))
    {
      subRequestId = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
      if (!subRequestId)
      {

LABEL_31:
        v29 = 1;
        goto LABEL_29;
      }

      v25 = subRequestId;
      subRequestId2 = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
      subRequestId3 = [equalCopy subRequestId];
      v28 = [subRequestId2 isEqual:subRequestId3];

      if (v28)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_27:
    }
  }

LABEL_28:
  v29 = 0;
LABEL_29:

  return v29;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  aceCommandId = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];

  if (aceCommandId)
  {
    aceCommandId2 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_aceViewIds;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  subRequestId = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];

  if (subRequestId)
  {
    subRequestId2 = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addAceViewIds:(id)ids
{
  idsCopy = ids;
  aceViewIds = self->_aceViewIds;
  v8 = idsCopy;
  if (!aceViewIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_aceViewIds;
    self->_aceViewIds = array;

    idsCopy = v8;
    aceViewIds = self->_aceViewIds;
  }

  [(NSArray *)aceViewIds addObject:idsCopy];
}

- (void)setHasFlowCommandResponseError:(BOOL)error
{
  if (error)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasFlowCommandReceived:(BOOL)received
{
  if (received)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = ORCHSchemaORCHFlowOutputSubmitted;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  aceCommandId = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
  v7 = [aceCommandId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHFlowOutputSubmitted *)self deleteAceCommandId];
  }

  aceViewIds = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceViewIds];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:aceViewIds underConditions:policyCopy];
  [(ORCHSchemaORCHFlowOutputSubmitted *)self setAceViewIds:v10];

  subRequestId = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
  v12 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHFlowOutputSubmitted *)self deleteSubRequestId];
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