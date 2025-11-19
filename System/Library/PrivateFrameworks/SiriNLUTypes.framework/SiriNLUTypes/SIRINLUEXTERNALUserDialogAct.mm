@interface SIRINLUEXTERNALUserDialogAct
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUserDialogAct

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  accepted = self->_accepted;
  v27 = v4;
  v6 = v4[1];
  if (accepted)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUserAccepted *)accepted mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setAccepted:?];
  }

  rejected = self->_rejected;
  v8 = v27[6];
  if (rejected)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUserRejected *)rejected mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setRejected:?];
  }

  cancelled = self->_cancelled;
  v10 = v27[4];
  if (cancelled)
  {
    if (v10)
    {
      [(SIRINLUEXTERNALUserCancelled *)cancelled mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setCancelled:?];
  }

  wantedToRepeat = self->_wantedToRepeat;
  v12 = v27[10];
  if (wantedToRepeat)
  {
    if (v12)
    {
      [(SIRINLUEXTERNALUserWantedToRepeat *)wantedToRepeat mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setWantedToRepeat:?];
  }

  acknowledged = self->_acknowledged;
  v14 = v27[2];
  if (acknowledged)
  {
    if (v14)
    {
      [(SIRINLUEXTERNALUserAcknowledged *)acknowledged mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setAcknowledged:?];
  }

  wantedToProceed = self->_wantedToProceed;
  v16 = v27[9];
  if (wantedToProceed)
  {
    if (v16)
    {
      [(SIRINLUEXTERNALUserWantedToProceed *)wantedToProceed mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setWantedToProceed:?];
  }

  wantedToPause = self->_wantedToPause;
  v18 = v27[8];
  if (wantedToPause)
  {
    if (v18)
    {
      [(SIRINLUEXTERNALUserWantedToPause *)wantedToPause mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setWantedToPause:?];
  }

  delegated = self->_delegated;
  v20 = v27[5];
  if (delegated)
  {
    if (v20)
    {
      [(SIRINLUEXTERNALDelegatedUserDialogAct *)delegated mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setDelegated:?];
  }

  userStatedTask = self->_userStatedTask;
  v22 = v27[7];
  if (userStatedTask)
  {
    if (v22)
    {
      [(SIRINLUEXTERNALUserStatedTask *)userStatedTask mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setUserStatedTask:?];
  }

  wantedToUndo = self->_wantedToUndo;
  v24 = v27[11];
  if (wantedToUndo)
  {
    if (v24)
    {
      [(SIRINLUEXTERNALUserWantedToUndo *)wantedToUndo mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setWantedToUndo:?];
  }

  alignment = self->_alignment;
  v26 = v27[3];
  if (alignment)
  {
    if (v26)
    {
      [(SIRINLUEXTERNALUtteranceAlignment *)alignment mergeFrom:?];
    }
  }

  else if (v26)
  {
    [(SIRINLUEXTERNALUserDialogAct *)self setAlignment:?];
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUserAccepted *)self->_accepted hash];
  v4 = [(SIRINLUEXTERNALUserRejected *)self->_rejected hash]^ v3;
  v5 = [(SIRINLUEXTERNALUserCancelled *)self->_cancelled hash];
  v6 = v4 ^ v5 ^ [(SIRINLUEXTERNALUserWantedToRepeat *)self->_wantedToRepeat hash];
  v7 = [(SIRINLUEXTERNALUserAcknowledged *)self->_acknowledged hash];
  v8 = v7 ^ [(SIRINLUEXTERNALUserWantedToProceed *)self->_wantedToProceed hash];
  v9 = v6 ^ v8 ^ [(SIRINLUEXTERNALUserWantedToPause *)self->_wantedToPause hash];
  v10 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)self->_delegated hash];
  v11 = v10 ^ [(SIRINLUEXTERNALUserStatedTask *)self->_userStatedTask hash];
  v12 = v11 ^ [(SIRINLUEXTERNALUserWantedToUndo *)self->_wantedToUndo hash];
  return v9 ^ v12 ^ [(SIRINLUEXTERNALUtteranceAlignment *)self->_alignment hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  accepted = self->_accepted;
  if (accepted | v4[1])
  {
    if (![(SIRINLUEXTERNALUserAccepted *)accepted isEqual:?])
    {
      goto LABEL_24;
    }
  }

  rejected = self->_rejected;
  if (rejected | v4[6] && ![(SIRINLUEXTERNALUserRejected *)rejected isEqual:?])
  {
    goto LABEL_24;
  }

  cancelled = self->_cancelled;
  if (cancelled | v4[4] && ![(SIRINLUEXTERNALUserCancelled *)cancelled isEqual:?])
  {
    goto LABEL_24;
  }

  if (((wantedToRepeat = self->_wantedToRepeat, !(wantedToRepeat | v4[10])) || [(SIRINLUEXTERNALUserWantedToRepeat *)wantedToRepeat isEqual:?]) && ((acknowledged = self->_acknowledged, !(acknowledged | v4[2])) || [(SIRINLUEXTERNALUserAcknowledged *)acknowledged isEqual:?]) && ((wantedToProceed = self->_wantedToProceed, !(wantedToProceed | v4[9])) || [(SIRINLUEXTERNALUserWantedToProceed *)wantedToProceed isEqual:?]) && ((wantedToPause = self->_wantedToPause, !(wantedToPause | v4[8])) || [(SIRINLUEXTERNALUserWantedToPause *)wantedToPause isEqual:?]) && ((delegated = self->_delegated, !(delegated | v4[5])) || [(SIRINLUEXTERNALDelegatedUserDialogAct *)delegated isEqual:?]) && ((userStatedTask = self->_userStatedTask, !(userStatedTask | v4[7])) || [(SIRINLUEXTERNALUserStatedTask *)userStatedTask isEqual:?]) && ((wantedToUndo = self->_wantedToUndo, !(wantedToUndo | v4[11])) || [(SIRINLUEXTERNALUserWantedToUndo *)wantedToUndo isEqual:?]))
  {
    alignment = self->_alignment;
    if (alignment | v4[3])
    {
      v16 = [(SIRINLUEXTERNALUtteranceAlignment *)alignment isEqual:?];
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
LABEL_24:
    v16 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUserAccepted *)self->_accepted copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUEXTERNALUserRejected *)self->_rejected copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(SIRINLUEXTERNALUserCancelled *)self->_cancelled copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(SIRINLUEXTERNALUserWantedToRepeat *)self->_wantedToRepeat copyWithZone:a3];
  v13 = v5[10];
  v5[10] = v12;

  v14 = [(SIRINLUEXTERNALUserAcknowledged *)self->_acknowledged copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(SIRINLUEXTERNALUserWantedToProceed *)self->_wantedToProceed copyWithZone:a3];
  v17 = v5[9];
  v5[9] = v16;

  v18 = [(SIRINLUEXTERNALUserWantedToPause *)self->_wantedToPause copyWithZone:a3];
  v19 = v5[8];
  v5[8] = v18;

  v20 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)self->_delegated copyWithZone:a3];
  v21 = v5[5];
  v5[5] = v20;

  v22 = [(SIRINLUEXTERNALUserStatedTask *)self->_userStatedTask copyWithZone:a3];
  v23 = v5[7];
  v5[7] = v22;

  v24 = [(SIRINLUEXTERNALUserWantedToUndo *)self->_wantedToUndo copyWithZone:a3];
  v25 = v5[11];
  v5[11] = v24;

  v26 = [(SIRINLUEXTERNALUtteranceAlignment *)self->_alignment copyWithZone:a3];
  v27 = v5[3];
  v5[3] = v26;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_accepted)
  {
    [v4 setAccepted:?];
    v4 = v5;
  }

  if (self->_rejected)
  {
    [v5 setRejected:?];
    v4 = v5;
  }

  if (self->_cancelled)
  {
    [v5 setCancelled:?];
    v4 = v5;
  }

  if (self->_wantedToRepeat)
  {
    [v5 setWantedToRepeat:?];
    v4 = v5;
  }

  if (self->_acknowledged)
  {
    [v5 setAcknowledged:?];
    v4 = v5;
  }

  if (self->_wantedToProceed)
  {
    [v5 setWantedToProceed:?];
    v4 = v5;
  }

  if (self->_wantedToPause)
  {
    [v5 setWantedToPause:?];
    v4 = v5;
  }

  if (self->_delegated)
  {
    [v5 setDelegated:?];
    v4 = v5;
  }

  if (self->_userStatedTask)
  {
    [v5 setUserStatedTask:?];
    v4 = v5;
  }

  if (self->_wantedToUndo)
  {
    [v5 setWantedToUndo:?];
    v4 = v5;
  }

  if (self->_alignment)
  {
    [v5 setAlignment:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_accepted)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_rejected)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_cancelled)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_wantedToRepeat)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_acknowledged)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_wantedToProceed)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_wantedToPause)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_delegated)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userStatedTask)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_wantedToUndo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_alignment)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  accepted = self->_accepted;
  if (accepted)
  {
    v5 = [(SIRINLUEXTERNALUserAccepted *)accepted dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"accepted"];
  }

  rejected = self->_rejected;
  if (rejected)
  {
    v7 = [(SIRINLUEXTERNALUserRejected *)rejected dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"rejected"];
  }

  cancelled = self->_cancelled;
  if (cancelled)
  {
    v9 = [(SIRINLUEXTERNALUserCancelled *)cancelled dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"cancelled"];
  }

  wantedToRepeat = self->_wantedToRepeat;
  if (wantedToRepeat)
  {
    v11 = [(SIRINLUEXTERNALUserWantedToRepeat *)wantedToRepeat dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"wanted_to_repeat"];
  }

  acknowledged = self->_acknowledged;
  if (acknowledged)
  {
    v13 = [(SIRINLUEXTERNALUserAcknowledged *)acknowledged dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"acknowledged"];
  }

  wantedToProceed = self->_wantedToProceed;
  if (wantedToProceed)
  {
    v15 = [(SIRINLUEXTERNALUserWantedToProceed *)wantedToProceed dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"wanted_to_proceed"];
  }

  wantedToPause = self->_wantedToPause;
  if (wantedToPause)
  {
    v17 = [(SIRINLUEXTERNALUserWantedToPause *)wantedToPause dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"wanted_to_pause"];
  }

  delegated = self->_delegated;
  if (delegated)
  {
    v19 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)delegated dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"delegated"];
  }

  userStatedTask = self->_userStatedTask;
  if (userStatedTask)
  {
    v21 = [(SIRINLUEXTERNALUserStatedTask *)userStatedTask dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"user_stated_task"];
  }

  wantedToUndo = self->_wantedToUndo;
  if (wantedToUndo)
  {
    v23 = [(SIRINLUEXTERNALUserWantedToUndo *)wantedToUndo dictionaryRepresentation];
    [v3 setObject:v23 forKey:@"wanted_to_undo"];
  }

  alignment = self->_alignment;
  if (alignment)
  {
    v25 = [(SIRINLUEXTERNALUtteranceAlignment *)alignment dictionaryRepresentation];
    [v3 setObject:v25 forKey:@"alignment"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUserDialogAct;
  v4 = [(SIRINLUEXTERNALUserDialogAct *)&v8 description];
  v5 = [(SIRINLUEXTERNALUserDialogAct *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end