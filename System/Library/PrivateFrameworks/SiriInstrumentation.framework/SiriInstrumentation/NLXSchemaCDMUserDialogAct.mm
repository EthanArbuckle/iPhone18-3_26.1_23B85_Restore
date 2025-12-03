@interface NLXSchemaCDMUserDialogAct
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMDelegatedUserDialogAct)delegated;
- (NLXSchemaCDMUserAccepted)accepted;
- (NLXSchemaCDMUserAcknowledged)acknowledged;
- (NLXSchemaCDMUserCancelled)cancelled;
- (NLXSchemaCDMUserDialogAct)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMUserDialogAct)initWithJSON:(id)n;
- (NLXSchemaCDMUserRejected)rejected;
- (NLXSchemaCDMUserStatedTask)userStatedTask;
- (NLXSchemaCDMUserWantedToPause)wantedToPause;
- (NLXSchemaCDMUserWantedToProceed)wantedToProceed;
- (NLXSchemaCDMUserWantedToRepeat)wantedToRepeat;
- (NLXSchemaCDMUserWantedToUndo)wantedToUndo;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAccepted;
- (void)deleteAcknowledged;
- (void)deleteCancelled;
- (void)deleteDelegated;
- (void)deleteRejected;
- (void)deleteUserStatedTask;
- (void)deleteWantedToPause;
- (void)deleteWantedToProceed;
- (void)deleteWantedToRepeat;
- (void)deleteWantedToUndo;
- (void)setAccepted:(id)accepted;
- (void)setAcknowledged:(id)acknowledged;
- (void)setCancelled:(id)cancelled;
- (void)setDelegated:(id)delegated;
- (void)setRejected:(id)rejected;
- (void)setUserStatedTask:(id)task;
- (void)setWantedToPause:(id)pause;
- (void)setWantedToProceed:(id)proceed;
- (void)setWantedToRepeat:(id)repeat;
- (void)setWantedToUndo:(id)undo;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMUserDialogAct

- (NLXSchemaCDMUserDialogAct)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = NLXSchemaCDMUserDialogAct;
  v5 = [(NLXSchemaCDMUserDialogAct *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"alignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[USOSchemaUSOUtteranceAlignment alloc] initWithDictionary:v6];
      [(NLXSchemaCDMUserDialogAct *)v5 setAlignment:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"reference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USOSchemaUSOGraph alloc] initWithDictionary:v8];
      [(NLXSchemaCDMUserDialogAct *)v5 setReference:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"accepted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaCDMUserAccepted alloc] initWithDictionary:v10];
      [(NLXSchemaCDMUserDialogAct *)v5 setAccepted:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"rejected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLXSchemaCDMUserRejected alloc] initWithDictionary:v12];
      [(NLXSchemaCDMUserDialogAct *)v5 setRejected:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLXSchemaCDMUserCancelled alloc] initWithDictionary:v14];
      [(NLXSchemaCDMUserDialogAct *)v5 setCancelled:v15];
    }

    v34 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"wantedToRepeat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[NLXSchemaCDMUserWantedToRepeat alloc] initWithDictionary:v16];
      [(NLXSchemaCDMUserDialogAct *)v5 setWantedToRepeat:v17];
    }

    v33 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"acknowledged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[NLXSchemaCDMUserAcknowledged alloc] initWithDictionary:v18];
      [(NLXSchemaCDMUserDialogAct *)v5 setAcknowledged:v19];
    }

    v37 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"wantedToProceed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[NLXSchemaCDMUserWantedToProceed alloc] initWithDictionary:v20];
      [(NLXSchemaCDMUserDialogAct *)v5 setWantedToProceed:v21];
    }

    v35 = v12;
    v36 = v8;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"wantedToPause"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[NLXSchemaCDMUserWantedToPause alloc] initWithDictionary:v22];
      [(NLXSchemaCDMUserDialogAct *)v5 setWantedToPause:v23];
    }

    v24 = v10;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"delegated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[NLXSchemaCDMDelegatedUserDialogAct alloc] initWithDictionary:v25];
      [(NLXSchemaCDMUserDialogAct *)v5 setDelegated:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"userStatedTask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[NLXSchemaCDMUserStatedTask alloc] initWithDictionary:v27];
      [(NLXSchemaCDMUserDialogAct *)v5 setUserStatedTask:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"wantedToUndo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[NLXSchemaCDMUserWantedToUndo alloc] initWithDictionary:v29];
      [(NLXSchemaCDMUserDialogAct *)v5 setWantedToUndo:v30];
    }

    v31 = v5;
  }

  return v5;
}

- (NLXSchemaCDMUserDialogAct)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMUserDialogAct *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMUserDialogAct *)self dictionaryRepresentation];
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
  if (self->_accepted)
  {
    accepted = [(NLXSchemaCDMUserDialogAct *)self accepted];
    dictionaryRepresentation = [accepted dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"accepted"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"accepted"];
    }
  }

  if (self->_acknowledged)
  {
    acknowledged = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
    dictionaryRepresentation2 = [acknowledged dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"acknowledged"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"acknowledged"];
    }
  }

  if (self->_alignment)
  {
    alignment = [(NLXSchemaCDMUserDialogAct *)self alignment];
    dictionaryRepresentation3 = [alignment dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"alignment"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"alignment"];
    }
  }

  if (self->_cancelled)
  {
    cancelled = [(NLXSchemaCDMUserDialogAct *)self cancelled];
    dictionaryRepresentation4 = [cancelled dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"cancelled"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"cancelled"];
    }
  }

  if (self->_delegated)
  {
    delegated = [(NLXSchemaCDMUserDialogAct *)self delegated];
    dictionaryRepresentation5 = [delegated dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"delegated"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"delegated"];
    }
  }

  if (self->_reference)
  {
    reference = [(NLXSchemaCDMUserDialogAct *)self reference];
    dictionaryRepresentation6 = [reference dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"reference"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"reference"];
    }
  }

  if (self->_rejected)
  {
    rejected = [(NLXSchemaCDMUserDialogAct *)self rejected];
    dictionaryRepresentation7 = [rejected dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"rejected"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"rejected"];
    }
  }

  if (self->_userStatedTask)
  {
    userStatedTask = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
    dictionaryRepresentation8 = [userStatedTask dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"userStatedTask"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"userStatedTask"];
    }
  }

  if (self->_wantedToPause)
  {
    wantedToPause = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
    dictionaryRepresentation9 = [wantedToPause dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"wantedToPause"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"wantedToPause"];
    }
  }

  if (self->_wantedToProceed)
  {
    wantedToProceed = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
    dictionaryRepresentation10 = [wantedToProceed dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"wantedToProceed"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"wantedToProceed"];
    }
  }

  if (self->_wantedToRepeat)
  {
    wantedToRepeat = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
    dictionaryRepresentation11 = [wantedToRepeat dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"wantedToRepeat"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"wantedToRepeat"];
    }
  }

  if (self->_wantedToUndo)
  {
    wantedToUndo = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
    dictionaryRepresentation12 = [wantedToUndo dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"wantedToUndo"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"wantedToUndo"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(USOSchemaUSOUtteranceAlignment *)self->_alignment hash];
  v4 = [(USOSchemaUSOGraph *)self->_reference hash]^ v3;
  v5 = [(NLXSchemaCDMUserAccepted *)self->_accepted hash];
  v6 = v4 ^ v5 ^ [(NLXSchemaCDMUserRejected *)self->_rejected hash];
  v7 = [(NLXSchemaCDMUserCancelled *)self->_cancelled hash];
  v8 = v7 ^ [(NLXSchemaCDMUserWantedToRepeat *)self->_wantedToRepeat hash];
  v9 = v6 ^ v8 ^ [(NLXSchemaCDMUserAcknowledged *)self->_acknowledged hash];
  v10 = [(NLXSchemaCDMUserWantedToProceed *)self->_wantedToProceed hash];
  v11 = v10 ^ [(NLXSchemaCDMUserWantedToPause *)self->_wantedToPause hash];
  v12 = v11 ^ [(NLXSchemaCDMDelegatedUserDialogAct *)self->_delegated hash];
  v13 = v9 ^ v12 ^ [(NLXSchemaCDMUserStatedTask *)self->_userStatedTask hash];
  return v13 ^ [(NLXSchemaCDMUserWantedToUndo *)self->_wantedToUndo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  whichUserdialogacttype = self->_whichUserdialogacttype;
  if (whichUserdialogacttype != [equalCopy whichUserdialogacttype])
  {
    goto LABEL_63;
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self alignment];
  alignment2 = [equalCopy alignment];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  alignment3 = [(NLXSchemaCDMUserDialogAct *)self alignment];
  if (alignment3)
  {
    v9 = alignment3;
    alignment4 = [(NLXSchemaCDMUserDialogAct *)self alignment];
    alignment5 = [equalCopy alignment];
    v12 = [alignment4 isEqual:alignment5];

    if (!v12)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self reference];
  alignment2 = [equalCopy reference];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  reference = [(NLXSchemaCDMUserDialogAct *)self reference];
  if (reference)
  {
    v14 = reference;
    reference2 = [(NLXSchemaCDMUserDialogAct *)self reference];
    reference3 = [equalCopy reference];
    v17 = [reference2 isEqual:reference3];

    if (!v17)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self accepted];
  alignment2 = [equalCopy accepted];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  accepted = [(NLXSchemaCDMUserDialogAct *)self accepted];
  if (accepted)
  {
    v19 = accepted;
    accepted2 = [(NLXSchemaCDMUserDialogAct *)self accepted];
    accepted3 = [equalCopy accepted];
    v22 = [accepted2 isEqual:accepted3];

    if (!v22)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self rejected];
  alignment2 = [equalCopy rejected];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  rejected = [(NLXSchemaCDMUserDialogAct *)self rejected];
  if (rejected)
  {
    v24 = rejected;
    rejected2 = [(NLXSchemaCDMUserDialogAct *)self rejected];
    rejected3 = [equalCopy rejected];
    v27 = [rejected2 isEqual:rejected3];

    if (!v27)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self cancelled];
  alignment2 = [equalCopy cancelled];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  cancelled = [(NLXSchemaCDMUserDialogAct *)self cancelled];
  if (cancelled)
  {
    v29 = cancelled;
    cancelled2 = [(NLXSchemaCDMUserDialogAct *)self cancelled];
    cancelled3 = [equalCopy cancelled];
    v32 = [cancelled2 isEqual:cancelled3];

    if (!v32)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
  alignment2 = [equalCopy wantedToRepeat];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  wantedToRepeat = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
  if (wantedToRepeat)
  {
    v34 = wantedToRepeat;
    wantedToRepeat2 = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
    wantedToRepeat3 = [equalCopy wantedToRepeat];
    v37 = [wantedToRepeat2 isEqual:wantedToRepeat3];

    if (!v37)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
  alignment2 = [equalCopy acknowledged];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  acknowledged = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
  if (acknowledged)
  {
    v39 = acknowledged;
    acknowledged2 = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
    acknowledged3 = [equalCopy acknowledged];
    v42 = [acknowledged2 isEqual:acknowledged3];

    if (!v42)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
  alignment2 = [equalCopy wantedToProceed];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  wantedToProceed = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
  if (wantedToProceed)
  {
    v44 = wantedToProceed;
    wantedToProceed2 = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
    wantedToProceed3 = [equalCopy wantedToProceed];
    v47 = [wantedToProceed2 isEqual:wantedToProceed3];

    if (!v47)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
  alignment2 = [equalCopy wantedToPause];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  wantedToPause = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
  if (wantedToPause)
  {
    v49 = wantedToPause;
    wantedToPause2 = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
    wantedToPause3 = [equalCopy wantedToPause];
    v52 = [wantedToPause2 isEqual:wantedToPause3];

    if (!v52)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self delegated];
  alignment2 = [equalCopy delegated];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  delegated = [(NLXSchemaCDMUserDialogAct *)self delegated];
  if (delegated)
  {
    v54 = delegated;
    delegated2 = [(NLXSchemaCDMUserDialogAct *)self delegated];
    delegated3 = [equalCopy delegated];
    v57 = [delegated2 isEqual:delegated3];

    if (!v57)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
  alignment2 = [equalCopy userStatedTask];
  if ((alignment != 0) == (alignment2 == 0))
  {
    goto LABEL_62;
  }

  userStatedTask = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
  if (userStatedTask)
  {
    v59 = userStatedTask;
    userStatedTask2 = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
    userStatedTask3 = [equalCopy userStatedTask];
    v62 = [userStatedTask2 isEqual:userStatedTask3];

    if (!v62)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  alignment = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
  alignment2 = [equalCopy wantedToUndo];
  if ((alignment != 0) != (alignment2 == 0))
  {
    wantedToUndo = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
    if (!wantedToUndo)
    {

LABEL_66:
      v68 = 1;
      goto LABEL_64;
    }

    v64 = wantedToUndo;
    wantedToUndo2 = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
    wantedToUndo3 = [equalCopy wantedToUndo];
    v67 = [wantedToUndo2 isEqual:wantedToUndo3];

    if (v67)
    {
      goto LABEL_66;
    }
  }

  else
  {
LABEL_62:
  }

LABEL_63:
  v68 = 0;
LABEL_64:

  return v68;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  alignment = [(NLXSchemaCDMUserDialogAct *)self alignment];

  if (alignment)
  {
    alignment2 = [(NLXSchemaCDMUserDialogAct *)self alignment];
    PBDataWriterWriteSubmessage();
  }

  reference = [(NLXSchemaCDMUserDialogAct *)self reference];

  if (reference)
  {
    reference2 = [(NLXSchemaCDMUserDialogAct *)self reference];
    PBDataWriterWriteSubmessage();
  }

  accepted = [(NLXSchemaCDMUserDialogAct *)self accepted];

  if (accepted)
  {
    accepted2 = [(NLXSchemaCDMUserDialogAct *)self accepted];
    PBDataWriterWriteSubmessage();
  }

  rejected = [(NLXSchemaCDMUserDialogAct *)self rejected];

  if (rejected)
  {
    rejected2 = [(NLXSchemaCDMUserDialogAct *)self rejected];
    PBDataWriterWriteSubmessage();
  }

  cancelled = [(NLXSchemaCDMUserDialogAct *)self cancelled];

  if (cancelled)
  {
    cancelled2 = [(NLXSchemaCDMUserDialogAct *)self cancelled];
    PBDataWriterWriteSubmessage();
  }

  wantedToRepeat = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];

  if (wantedToRepeat)
  {
    wantedToRepeat2 = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
    PBDataWriterWriteSubmessage();
  }

  acknowledged = [(NLXSchemaCDMUserDialogAct *)self acknowledged];

  if (acknowledged)
  {
    acknowledged2 = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
    PBDataWriterWriteSubmessage();
  }

  wantedToProceed = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];

  if (wantedToProceed)
  {
    wantedToProceed2 = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
    PBDataWriterWriteSubmessage();
  }

  wantedToPause = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];

  if (wantedToPause)
  {
    wantedToPause2 = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
    PBDataWriterWriteSubmessage();
  }

  delegated = [(NLXSchemaCDMUserDialogAct *)self delegated];

  if (delegated)
  {
    delegated2 = [(NLXSchemaCDMUserDialogAct *)self delegated];
    PBDataWriterWriteSubmessage();
  }

  userStatedTask = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];

  if (userStatedTask)
  {
    userStatedTask2 = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
    PBDataWriterWriteSubmessage();
  }

  wantedToUndo = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];

  v27 = toCopy;
  if (wantedToUndo)
  {
    wantedToUndo2 = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
    PBDataWriterWriteSubmessage();

    v27 = toCopy;
  }
}

- (void)deleteWantedToUndo
{
  if (self->_whichUserdialogacttype == 12)
  {
    self->_whichUserdialogacttype = 0;
    self->_wantedToUndo = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMUserWantedToUndo)wantedToUndo
{
  if (self->_whichUserdialogacttype == 12)
  {
    v3 = self->_wantedToUndo;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWantedToUndo:(id)undo
{
  undoCopy = undo;
  accepted = self->_accepted;
  self->_accepted = 0;

  rejected = self->_rejected;
  self->_rejected = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = 0;

  acknowledged = self->_acknowledged;
  self->_acknowledged = 0;

  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = 0;

  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = 0;

  delegated = self->_delegated;
  self->_delegated = 0;

  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = 0;

  v14 = 12;
  if (!undoCopy)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = undoCopy;
}

- (void)deleteUserStatedTask
{
  if (self->_whichUserdialogacttype == 11)
  {
    self->_whichUserdialogacttype = 0;
    self->_userStatedTask = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMUserStatedTask)userStatedTask
{
  if (self->_whichUserdialogacttype == 11)
  {
    v3 = self->_userStatedTask;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserStatedTask:(id)task
{
  taskCopy = task;
  accepted = self->_accepted;
  self->_accepted = 0;

  rejected = self->_rejected;
  self->_rejected = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = 0;

  acknowledged = self->_acknowledged;
  self->_acknowledged = 0;

  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = 0;

  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = 0;

  delegated = self->_delegated;
  self->_delegated = 0;

  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = 0;

  v14 = 11;
  if (!taskCopy)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = taskCopy;
}

- (void)deleteDelegated
{
  if (self->_whichUserdialogacttype == 10)
  {
    self->_whichUserdialogacttype = 0;
    self->_delegated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMDelegatedUserDialogAct)delegated
{
  if (self->_whichUserdialogacttype == 10)
  {
    v3 = self->_delegated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDelegated:(id)delegated
{
  delegatedCopy = delegated;
  accepted = self->_accepted;
  self->_accepted = 0;

  rejected = self->_rejected;
  self->_rejected = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = 0;

  acknowledged = self->_acknowledged;
  self->_acknowledged = 0;

  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = 0;

  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = 0;

  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = 0;

  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = 0;

  v14 = 10;
  if (!delegatedCopy)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  delegated = self->_delegated;
  self->_delegated = delegatedCopy;
}

- (void)deleteWantedToPause
{
  if (self->_whichUserdialogacttype == 9)
  {
    self->_whichUserdialogacttype = 0;
    self->_wantedToPause = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMUserWantedToPause)wantedToPause
{
  if (self->_whichUserdialogacttype == 9)
  {
    v3 = self->_wantedToPause;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWantedToPause:(id)pause
{
  pauseCopy = pause;
  accepted = self->_accepted;
  self->_accepted = 0;

  rejected = self->_rejected;
  self->_rejected = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = 0;

  acknowledged = self->_acknowledged;
  self->_acknowledged = 0;

  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = 0;

  delegated = self->_delegated;
  self->_delegated = 0;

  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = 0;

  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = 0;

  v14 = 9;
  if (!pauseCopy)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = pauseCopy;
}

- (void)deleteWantedToProceed
{
  if (self->_whichUserdialogacttype == 8)
  {
    self->_whichUserdialogacttype = 0;
    self->_wantedToProceed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMUserWantedToProceed)wantedToProceed
{
  if (self->_whichUserdialogacttype == 8)
  {
    v3 = self->_wantedToProceed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWantedToProceed:(id)proceed
{
  proceedCopy = proceed;
  accepted = self->_accepted;
  self->_accepted = 0;

  rejected = self->_rejected;
  self->_rejected = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = 0;

  acknowledged = self->_acknowledged;
  self->_acknowledged = 0;

  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = 0;

  delegated = self->_delegated;
  self->_delegated = 0;

  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = 0;

  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = 0;

  self->_whichUserdialogacttype = 8 * (proceedCopy != 0);
  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = proceedCopy;
}

- (void)deleteAcknowledged
{
  if (self->_whichUserdialogacttype == 7)
  {
    self->_whichUserdialogacttype = 0;
    self->_acknowledged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMUserAcknowledged)acknowledged
{
  if (self->_whichUserdialogacttype == 7)
  {
    v3 = self->_acknowledged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAcknowledged:(id)acknowledged
{
  acknowledgedCopy = acknowledged;
  accepted = self->_accepted;
  self->_accepted = 0;

  rejected = self->_rejected;
  self->_rejected = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = 0;

  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = 0;

  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = 0;

  delegated = self->_delegated;
  self->_delegated = 0;

  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = 0;

  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = 0;

  v14 = 7;
  if (!acknowledgedCopy)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  acknowledged = self->_acknowledged;
  self->_acknowledged = acknowledgedCopy;
}

- (void)deleteWantedToRepeat
{
  if (self->_whichUserdialogacttype == 6)
  {
    self->_whichUserdialogacttype = 0;
    self->_wantedToRepeat = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMUserWantedToRepeat)wantedToRepeat
{
  if (self->_whichUserdialogacttype == 6)
  {
    v3 = self->_wantedToRepeat;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWantedToRepeat:(id)repeat
{
  repeatCopy = repeat;
  accepted = self->_accepted;
  self->_accepted = 0;

  rejected = self->_rejected;
  self->_rejected = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  acknowledged = self->_acknowledged;
  self->_acknowledged = 0;

  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = 0;

  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = 0;

  delegated = self->_delegated;
  self->_delegated = 0;

  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = 0;

  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = 0;

  v14 = 6;
  if (!repeatCopy)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = repeatCopy;
}

- (void)deleteCancelled
{
  if (self->_whichUserdialogacttype == 5)
  {
    self->_whichUserdialogacttype = 0;
    self->_cancelled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMUserCancelled)cancelled
{
  if (self->_whichUserdialogacttype == 5)
  {
    v3 = self->_cancelled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  accepted = self->_accepted;
  self->_accepted = 0;

  rejected = self->_rejected;
  self->_rejected = 0;

  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = 0;

  acknowledged = self->_acknowledged;
  self->_acknowledged = 0;

  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = 0;

  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = 0;

  delegated = self->_delegated;
  self->_delegated = 0;

  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = 0;

  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = 0;

  v14 = 5;
  if (!cancelledCopy)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  cancelled = self->_cancelled;
  self->_cancelled = cancelledCopy;
}

- (void)deleteRejected
{
  if (self->_whichUserdialogacttype == 4)
  {
    self->_whichUserdialogacttype = 0;
    self->_rejected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMUserRejected)rejected
{
  if (self->_whichUserdialogacttype == 4)
  {
    v3 = self->_rejected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRejected:(id)rejected
{
  rejectedCopy = rejected;
  accepted = self->_accepted;
  self->_accepted = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = 0;

  acknowledged = self->_acknowledged;
  self->_acknowledged = 0;

  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = 0;

  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = 0;

  delegated = self->_delegated;
  self->_delegated = 0;

  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = 0;

  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = 0;

  self->_whichUserdialogacttype = 4 * (rejectedCopy != 0);
  rejected = self->_rejected;
  self->_rejected = rejectedCopy;
}

- (void)deleteAccepted
{
  if (self->_whichUserdialogacttype == 3)
  {
    self->_whichUserdialogacttype = 0;
    self->_accepted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMUserAccepted)accepted
{
  if (self->_whichUserdialogacttype == 3)
  {
    v3 = self->_accepted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAccepted:(id)accepted
{
  acceptedCopy = accepted;
  rejected = self->_rejected;
  self->_rejected = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = 0;

  acknowledged = self->_acknowledged;
  self->_acknowledged = 0;

  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = 0;

  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = 0;

  delegated = self->_delegated;
  self->_delegated = 0;

  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = 0;

  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = 0;

  v14 = 3;
  if (!acceptedCopy)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  accepted = self->_accepted;
  self->_accepted = acceptedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v43.receiver = self;
  v43.super_class = NLXSchemaCDMUserDialogAct;
  v5 = [(SISchemaInstrumentationMessage *)&v43 applySensitiveConditionsPolicy:policyCopy];
  alignment = [(NLXSchemaCDMUserDialogAct *)self alignment];
  v7 = [alignment applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteAlignment];
  }

  reference = [(NLXSchemaCDMUserDialogAct *)self reference];
  v10 = [reference applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteReference];
  }

  accepted = [(NLXSchemaCDMUserDialogAct *)self accepted];
  v13 = [accepted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteAccepted];
  }

  rejected = [(NLXSchemaCDMUserDialogAct *)self rejected];
  v16 = [rejected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteRejected];
  }

  cancelled = [(NLXSchemaCDMUserDialogAct *)self cancelled];
  v19 = [cancelled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteCancelled];
  }

  wantedToRepeat = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
  v22 = [wantedToRepeat applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteWantedToRepeat];
  }

  acknowledged = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
  v25 = [acknowledged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteAcknowledged];
  }

  wantedToProceed = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
  v28 = [wantedToProceed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteWantedToProceed];
  }

  wantedToPause = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
  v31 = [wantedToPause applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteWantedToPause];
  }

  delegated = [(NLXSchemaCDMUserDialogAct *)self delegated];
  v34 = [delegated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteDelegated];
  }

  userStatedTask = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
  v37 = [userStatedTask applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteUserStatedTask];
  }

  wantedToUndo = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
  v40 = [wantedToUndo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteWantedToUndo];
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