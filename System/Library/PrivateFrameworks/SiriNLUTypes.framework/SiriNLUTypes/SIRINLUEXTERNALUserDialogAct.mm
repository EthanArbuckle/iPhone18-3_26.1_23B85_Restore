@interface SIRINLUEXTERNALUserDialogAct
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALUserDialogAct

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  accepted = self->_accepted;
  v27 = fromCopy;
  v6 = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  accepted = self->_accepted;
  if (accepted | equalCopy[1])
  {
    if (![(SIRINLUEXTERNALUserAccepted *)accepted isEqual:?])
    {
      goto LABEL_24;
    }
  }

  rejected = self->_rejected;
  if (rejected | equalCopy[6] && ![(SIRINLUEXTERNALUserRejected *)rejected isEqual:?])
  {
    goto LABEL_24;
  }

  cancelled = self->_cancelled;
  if (cancelled | equalCopy[4] && ![(SIRINLUEXTERNALUserCancelled *)cancelled isEqual:?])
  {
    goto LABEL_24;
  }

  if (((wantedToRepeat = self->_wantedToRepeat, !(wantedToRepeat | equalCopy[10])) || [(SIRINLUEXTERNALUserWantedToRepeat *)wantedToRepeat isEqual:?]) && ((acknowledged = self->_acknowledged, !(acknowledged | equalCopy[2])) || [(SIRINLUEXTERNALUserAcknowledged *)acknowledged isEqual:?]) && ((wantedToProceed = self->_wantedToProceed, !(wantedToProceed | equalCopy[9])) || [(SIRINLUEXTERNALUserWantedToProceed *)wantedToProceed isEqual:?]) && ((wantedToPause = self->_wantedToPause, !(wantedToPause | equalCopy[8])) || [(SIRINLUEXTERNALUserWantedToPause *)wantedToPause isEqual:?]) && ((delegated = self->_delegated, !(delegated | equalCopy[5])) || [(SIRINLUEXTERNALDelegatedUserDialogAct *)delegated isEqual:?]) && ((userStatedTask = self->_userStatedTask, !(userStatedTask | equalCopy[7])) || [(SIRINLUEXTERNALUserStatedTask *)userStatedTask isEqual:?]) && ((wantedToUndo = self->_wantedToUndo, !(wantedToUndo | equalCopy[11])) || [(SIRINLUEXTERNALUserWantedToUndo *)wantedToUndo isEqual:?]))
  {
    alignment = self->_alignment;
    if (alignment | equalCopy[3])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUserAccepted *)self->_accepted copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUEXTERNALUserRejected *)self->_rejected copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(SIRINLUEXTERNALUserCancelled *)self->_cancelled copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(SIRINLUEXTERNALUserWantedToRepeat *)self->_wantedToRepeat copyWithZone:zone];
  v13 = v5[10];
  v5[10] = v12;

  v14 = [(SIRINLUEXTERNALUserAcknowledged *)self->_acknowledged copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(SIRINLUEXTERNALUserWantedToProceed *)self->_wantedToProceed copyWithZone:zone];
  v17 = v5[9];
  v5[9] = v16;

  v18 = [(SIRINLUEXTERNALUserWantedToPause *)self->_wantedToPause copyWithZone:zone];
  v19 = v5[8];
  v5[8] = v18;

  v20 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)self->_delegated copyWithZone:zone];
  v21 = v5[5];
  v5[5] = v20;

  v22 = [(SIRINLUEXTERNALUserStatedTask *)self->_userStatedTask copyWithZone:zone];
  v23 = v5[7];
  v5[7] = v22;

  v24 = [(SIRINLUEXTERNALUserWantedToUndo *)self->_wantedToUndo copyWithZone:zone];
  v25 = v5[11];
  v5[11] = v24;

  v26 = [(SIRINLUEXTERNALUtteranceAlignment *)self->_alignment copyWithZone:zone];
  v27 = v5[3];
  v5[3] = v26;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_accepted)
  {
    [toCopy setAccepted:?];
    toCopy = v5;
  }

  if (self->_rejected)
  {
    [v5 setRejected:?];
    toCopy = v5;
  }

  if (self->_cancelled)
  {
    [v5 setCancelled:?];
    toCopy = v5;
  }

  if (self->_wantedToRepeat)
  {
    [v5 setWantedToRepeat:?];
    toCopy = v5;
  }

  if (self->_acknowledged)
  {
    [v5 setAcknowledged:?];
    toCopy = v5;
  }

  if (self->_wantedToProceed)
  {
    [v5 setWantedToProceed:?];
    toCopy = v5;
  }

  if (self->_wantedToPause)
  {
    [v5 setWantedToPause:?];
    toCopy = v5;
  }

  if (self->_delegated)
  {
    [v5 setDelegated:?];
    toCopy = v5;
  }

  if (self->_userStatedTask)
  {
    [v5 setUserStatedTask:?];
    toCopy = v5;
  }

  if (self->_wantedToUndo)
  {
    [v5 setWantedToUndo:?];
    toCopy = v5;
  }

  if (self->_alignment)
  {
    [v5 setAlignment:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_accepted)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_rejected)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_cancelled)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_wantedToRepeat)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_acknowledged)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_wantedToProceed)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_wantedToPause)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_delegated)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_userStatedTask)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_wantedToUndo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_alignment)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  accepted = self->_accepted;
  if (accepted)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUserAccepted *)accepted dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"accepted"];
  }

  rejected = self->_rejected;
  if (rejected)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUserRejected *)rejected dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"rejected"];
  }

  cancelled = self->_cancelled;
  if (cancelled)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALUserCancelled *)cancelled dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"cancelled"];
  }

  wantedToRepeat = self->_wantedToRepeat;
  if (wantedToRepeat)
  {
    dictionaryRepresentation4 = [(SIRINLUEXTERNALUserWantedToRepeat *)wantedToRepeat dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"wanted_to_repeat"];
  }

  acknowledged = self->_acknowledged;
  if (acknowledged)
  {
    dictionaryRepresentation5 = [(SIRINLUEXTERNALUserAcknowledged *)acknowledged dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"acknowledged"];
  }

  wantedToProceed = self->_wantedToProceed;
  if (wantedToProceed)
  {
    dictionaryRepresentation6 = [(SIRINLUEXTERNALUserWantedToProceed *)wantedToProceed dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"wanted_to_proceed"];
  }

  wantedToPause = self->_wantedToPause;
  if (wantedToPause)
  {
    dictionaryRepresentation7 = [(SIRINLUEXTERNALUserWantedToPause *)wantedToPause dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"wanted_to_pause"];
  }

  delegated = self->_delegated;
  if (delegated)
  {
    dictionaryRepresentation8 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)delegated dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"delegated"];
  }

  userStatedTask = self->_userStatedTask;
  if (userStatedTask)
  {
    dictionaryRepresentation9 = [(SIRINLUEXTERNALUserStatedTask *)userStatedTask dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation9 forKey:@"user_stated_task"];
  }

  wantedToUndo = self->_wantedToUndo;
  if (wantedToUndo)
  {
    dictionaryRepresentation10 = [(SIRINLUEXTERNALUserWantedToUndo *)wantedToUndo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation10 forKey:@"wanted_to_undo"];
  }

  alignment = self->_alignment;
  if (alignment)
  {
    dictionaryRepresentation11 = [(SIRINLUEXTERNALUtteranceAlignment *)alignment dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation11 forKey:@"alignment"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUserDialogAct;
  v4 = [(SIRINLUEXTERNALUserDialogAct *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALUserDialogAct *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end