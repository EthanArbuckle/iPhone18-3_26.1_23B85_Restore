@interface SIRINLUEXTERNALTurnInput
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActiveTasks:(id)a3;
- (void)addAsrOutputs:(id)a3;
- (void)addExecutedTasks:(id)a3;
- (void)addSalientEntities:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectedToCarPlayUltra:(BOOL)a3;
- (void)setHasTapToEdit:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALTurnInput

- (void)mergeFrom:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  systemDialogActGroup = self->_systemDialogActGroup;
  v6 = *(v4 + 8);
  if (systemDialogActGroup)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALSystemDialogActGroup *)systemDialogActGroup mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALTurnInput *)self setSystemDialogActGroup:?];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = *(v4 + 7);
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALTurnInput *)self addSalientEntities:*(*(&v45 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v9);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = *(v4 + 2);
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUEXTERNALTurnInput *)self addActiveTasks:*(*(&v41 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v14);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = *(v4 + 5);
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(SIRINLUEXTERNALTurnInput *)self addExecutedTasks:*(*(&v37 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v19);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = *(v4 + 3);
  v23 = [v22 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(SIRINLUEXTERNALTurnInput *)self addAsrOutputs:*(*(&v33 + 1) + 8 * m), v33];
      }

      v24 = [v22 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v24);
  }

  turnContext = self->_turnContext;
  v28 = *(v4 + 9);
  if (turnContext)
  {
    if (v28)
    {
      [(SIRINLUEXTERNALTurnContext *)turnContext mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(SIRINLUEXTERNALTurnInput *)self setTurnContext:?];
  }

  if (*(v4 + 6))
  {
    [(SIRINLUEXTERNALTurnInput *)self setLocale:?];
  }

  v29 = *(v4 + 84);
  if ((v29 & 4) != 0)
  {
    self->_tapToEdit = *(v4 + 81);
    *&self->_has |= 4u;
    v29 = *(v4 + 84);
  }

  if (v29)
  {
    self->_startTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  correctionOutcomeOverride = self->_correctionOutcomeOverride;
  v31 = *(v4 + 4);
  if (correctionOutcomeOverride)
  {
    if (v31)
    {
      [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcomeOverride mergeFrom:?];
    }
  }

  else if (v31)
  {
    [(SIRINLUEXTERNALTurnInput *)self setCorrectionOutcomeOverride:?];
  }

  if ((*(v4 + 84) & 2) != 0)
  {
    self->_connectedToCarPlayUltra = *(v4 + 80);
    *&self->_has |= 2u;
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v14 = [(SIRINLUEXTERNALSystemDialogActGroup *)self->_systemDialogActGroup hash];
  v13 = [(NSMutableArray *)self->_salientEntities hash];
  v3 = [(NSMutableArray *)self->_activeTasks hash];
  v4 = [(NSMutableArray *)self->_executedTasks hash];
  v5 = [(NSMutableArray *)self->_asrOutputs hash];
  v6 = [(SIRINLUEXTERNALTurnContext *)self->_turnContext hash];
  v7 = [(NSString *)self->_locale hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_tapToEdit;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v9 = 2654435761u * self->_startTimestamp;
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcomeOverride hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_connectedToCarPlayUltra;
  }

  else
  {
    v11 = 0;
  }

  return v13 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  systemDialogActGroup = self->_systemDialogActGroup;
  if (systemDialogActGroup | *(v4 + 8))
  {
    if (![(SIRINLUEXTERNALSystemDialogActGroup *)systemDialogActGroup isEqual:?])
    {
      goto LABEL_36;
    }
  }

  salientEntities = self->_salientEntities;
  if (salientEntities | *(v4 + 7))
  {
    if (![(NSMutableArray *)salientEntities isEqual:?])
    {
      goto LABEL_36;
    }
  }

  activeTasks = self->_activeTasks;
  if (activeTasks | *(v4 + 2))
  {
    if (![(NSMutableArray *)activeTasks isEqual:?])
    {
      goto LABEL_36;
    }
  }

  executedTasks = self->_executedTasks;
  if (executedTasks | *(v4 + 5))
  {
    if (![(NSMutableArray *)executedTasks isEqual:?])
    {
      goto LABEL_36;
    }
  }

  asrOutputs = self->_asrOutputs;
  if (asrOutputs | *(v4 + 3))
  {
    if (![(NSMutableArray *)asrOutputs isEqual:?])
    {
      goto LABEL_36;
    }
  }

  turnContext = self->_turnContext;
  if (turnContext | *(v4 + 9))
  {
    if (![(SIRINLUEXTERNALTurnContext *)turnContext isEqual:?])
    {
      goto LABEL_36;
    }
  }

  locale = self->_locale;
  if (locale | *(v4 + 6))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_36;
    }
  }

  has = self->_has;
  v13 = *(v4 + 84);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 84) & 4) == 0)
    {
      goto LABEL_36;
    }

    v14 = *(v4 + 81);
    if (self->_tapToEdit)
    {
      if ((*(v4 + 81) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(v4 + 81))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 84) & 4) != 0)
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_startTimestamp != *(v4 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_36;
  }

  correctionOutcomeOverride = self->_correctionOutcomeOverride;
  if (correctionOutcomeOverride | *(v4 + 4))
  {
    if (![(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcomeOverride isEqual:?])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v13 = *(v4 + 84);
  }

  v16 = (v13 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v13 & 2) != 0)
    {
      if (self->_connectedToCarPlayUltra)
      {
        if (*(v4 + 80))
        {
          goto LABEL_39;
        }
      }

      else if (!*(v4 + 80))
      {
LABEL_39:
        v16 = 1;
        goto LABEL_37;
      }
    }

LABEL_36:
    v16 = 0;
  }

LABEL_37:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALSystemDialogActGroup *)self->_systemDialogActGroup copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = self->_salientEntities;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v53 + 1) + 8 * i) copyWithZone:a3];
        [v5 addSalientEntities:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v10);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = self->_activeTasks;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v49 + 1) + 8 * j) copyWithZone:a3];
        [v5 addActiveTasks:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v16);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = self->_executedTasks;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v46;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v45 + 1) + 8 * k) copyWithZone:a3];
        [v5 addExecutedTasks:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v22);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = self->_asrOutputs;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v41 objects:v57 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v42;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v41 + 1) + 8 * m) copyWithZone:{a3, v41}];
        [v5 addAsrOutputs:v31];
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v41 objects:v57 count:16];
    }

    while (v28);
  }

  v32 = [(SIRINLUEXTERNALTurnContext *)self->_turnContext copyWithZone:a3];
  v33 = *(v5 + 72);
  *(v5 + 72) = v32;

  v34 = [(NSString *)self->_locale copyWithZone:a3];
  v35 = *(v5 + 48);
  *(v5 + 48) = v34;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 81) = self->_tapToEdit;
    *(v5 + 84) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_startTimestamp;
    *(v5 + 84) |= 1u;
  }

  v37 = [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcomeOverride copyWithZone:a3, v41];
  v38 = *(v5 + 32);
  *(v5 + 32) = v37;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 80) = self->_connectedToCarPlayUltra;
    *(v5 + 84) |= 2u;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v22 = a3;
  if (self->_systemDialogActGroup)
  {
    [v22 setSystemDialogActGroup:?];
  }

  if ([(SIRINLUEXTERNALTurnInput *)self salientEntitiesCount])
  {
    [v22 clearSalientEntities];
    v4 = [(SIRINLUEXTERNALTurnInput *)self salientEntitiesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALTurnInput *)self salientEntitiesAtIndex:i];
        [v22 addSalientEntities:v7];
      }
    }
  }

  if ([(SIRINLUEXTERNALTurnInput *)self activeTasksCount])
  {
    [v22 clearActiveTasks];
    v8 = [(SIRINLUEXTERNALTurnInput *)self activeTasksCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUEXTERNALTurnInput *)self activeTasksAtIndex:j];
        [v22 addActiveTasks:v11];
      }
    }
  }

  if ([(SIRINLUEXTERNALTurnInput *)self executedTasksCount])
  {
    [v22 clearExecutedTasks];
    v12 = [(SIRINLUEXTERNALTurnInput *)self executedTasksCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUEXTERNALTurnInput *)self executedTasksAtIndex:k];
        [v22 addExecutedTasks:v15];
      }
    }
  }

  if ([(SIRINLUEXTERNALTurnInput *)self asrOutputsCount])
  {
    [v22 clearAsrOutputs];
    v16 = [(SIRINLUEXTERNALTurnInput *)self asrOutputsCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(SIRINLUEXTERNALTurnInput *)self asrOutputsAtIndex:m];
        [v22 addAsrOutputs:v19];
      }
    }
  }

  if (self->_turnContext)
  {
    [v22 setTurnContext:?];
  }

  v20 = v22;
  if (self->_locale)
  {
    [v22 setLocale:?];
    v20 = v22;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v20[81] = self->_tapToEdit;
    v20[84] |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v20 + 1) = self->_startTimestamp;
    v20[84] |= 1u;
  }

  if (self->_correctionOutcomeOverride)
  {
    [v22 setCorrectionOutcomeOverride:?];
    v20 = v22;
  }

  if ((*&self->_has & 2) != 0)
  {
    v20[80] = self->_connectedToCarPlayUltra;
    v20[84] |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_systemDialogActGroup)
  {
    PBDataWriterWriteSubmessage();
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = self->_salientEntities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = self->_activeTasks;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v42 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v13);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = self->_executedTasks;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v38 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v19);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = self->_asrOutputs;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v34 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v25);
  }

  if (self->_turnContext)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    tapToEdit = self->_tapToEdit;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    startTimestamp = self->_startTimestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_correctionOutcomeOverride)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    connectedToCarPlayUltra = self->_connectedToCarPlayUltra;
    PBDataWriterWriteBOOLField();
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  systemDialogActGroup = self->_systemDialogActGroup;
  if (systemDialogActGroup)
  {
    v5 = [(SIRINLUEXTERNALSystemDialogActGroup *)systemDialogActGroup dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"system_dialog_act_group"];
  }

  if ([(NSMutableArray *)self->_salientEntities count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_salientEntities, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v7 = self->_salientEntities;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v58;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v58 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v57 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"salient_entities"];
  }

  if ([(NSMutableArray *)self->_activeTasks count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_activeTasks, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v14 = self->_activeTasks;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v54;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v54 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v53 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"active_tasks"];
  }

  if ([(NSMutableArray *)self->_executedTasks count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_executedTasks, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = self->_executedTasks;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v50;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v50 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v49 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"executed_tasks"];
  }

  if ([(NSMutableArray *)self->_asrOutputs count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_asrOutputs, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v28 = self->_asrOutputs;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v45 objects:v61 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v45 + 1) + 8 * m) dictionaryRepresentation];
          [v27 addObject:v33];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v45 objects:v61 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKey:@"asr_outputs"];
  }

  turnContext = self->_turnContext;
  if (turnContext)
  {
    v35 = [(SIRINLUEXTERNALTurnContext *)turnContext dictionaryRepresentation];
    [v3 setObject:v35 forKey:@"turn_context"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKey:@"locale"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:self->_tapToEdit];
    [v3 setObject:v38 forKey:@"tap_to_edit"];

    has = self->_has;
  }

  if (has)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startTimestamp];
    [v3 setObject:v39 forKey:@"start_timestamp"];
  }

  correctionOutcomeOverride = self->_correctionOutcomeOverride;
  if (correctionOutcomeOverride)
  {
    v41 = [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcomeOverride dictionaryRepresentation];
    [v3 setObject:v41 forKey:@"correction_outcome_override"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:self->_connectedToCarPlayUltra];
    [v3 setObject:v42 forKey:@"connectedToCarPlayUltra"];
  }

  v43 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALTurnInput;
  v4 = [(SIRINLUEXTERNALTurnInput *)&v8 description];
  v5 = [(SIRINLUEXTERNALTurnInput *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasConnectedToCarPlayUltra:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTapToEdit:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addAsrOutputs:(id)a3
{
  v4 = a3;
  asrOutputs = self->_asrOutputs;
  v8 = v4;
  if (!asrOutputs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_asrOutputs;
    self->_asrOutputs = v6;

    v4 = v8;
    asrOutputs = self->_asrOutputs;
  }

  [(NSMutableArray *)asrOutputs addObject:v4];
}

- (void)addExecutedTasks:(id)a3
{
  v4 = a3;
  executedTasks = self->_executedTasks;
  v8 = v4;
  if (!executedTasks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_executedTasks;
    self->_executedTasks = v6;

    v4 = v8;
    executedTasks = self->_executedTasks;
  }

  [(NSMutableArray *)executedTasks addObject:v4];
}

- (void)addActiveTasks:(id)a3
{
  v4 = a3;
  activeTasks = self->_activeTasks;
  v8 = v4;
  if (!activeTasks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_activeTasks;
    self->_activeTasks = v6;

    v4 = v8;
    activeTasks = self->_activeTasks;
  }

  [(NSMutableArray *)activeTasks addObject:v4];
}

- (void)addSalientEntities:(id)a3
{
  v4 = a3;
  salientEntities = self->_salientEntities;
  v8 = v4;
  if (!salientEntities)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_salientEntities;
    self->_salientEntities = v6;

    v4 = v8;
    salientEntities = self->_salientEntities;
  }

  [(NSMutableArray *)salientEntities addObject:v4];
}

@end