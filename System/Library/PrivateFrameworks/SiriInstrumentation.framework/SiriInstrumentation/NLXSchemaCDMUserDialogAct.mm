@interface NLXSchemaCDMUserDialogAct
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMDelegatedUserDialogAct)delegated;
- (NLXSchemaCDMUserAccepted)accepted;
- (NLXSchemaCDMUserAcknowledged)acknowledged;
- (NLXSchemaCDMUserCancelled)cancelled;
- (NLXSchemaCDMUserDialogAct)initWithDictionary:(id)a3;
- (NLXSchemaCDMUserDialogAct)initWithJSON:(id)a3;
- (NLXSchemaCDMUserRejected)rejected;
- (NLXSchemaCDMUserStatedTask)userStatedTask;
- (NLXSchemaCDMUserWantedToPause)wantedToPause;
- (NLXSchemaCDMUserWantedToProceed)wantedToProceed;
- (NLXSchemaCDMUserWantedToRepeat)wantedToRepeat;
- (NLXSchemaCDMUserWantedToUndo)wantedToUndo;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAccepted:(id)a3;
- (void)setAcknowledged:(id)a3;
- (void)setCancelled:(id)a3;
- (void)setDelegated:(id)a3;
- (void)setRejected:(id)a3;
- (void)setUserStatedTask:(id)a3;
- (void)setWantedToPause:(id)a3;
- (void)setWantedToProceed:(id)a3;
- (void)setWantedToRepeat:(id)a3;
- (void)setWantedToUndo:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMUserDialogAct

- (NLXSchemaCDMUserDialogAct)initWithDictionary:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = NLXSchemaCDMUserDialogAct;
  v5 = [(NLXSchemaCDMUserDialogAct *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"alignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[USOSchemaUSOUtteranceAlignment alloc] initWithDictionary:v6];
      [(NLXSchemaCDMUserDialogAct *)v5 setAlignment:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"reference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USOSchemaUSOGraph alloc] initWithDictionary:v8];
      [(NLXSchemaCDMUserDialogAct *)v5 setReference:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"accepted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaCDMUserAccepted alloc] initWithDictionary:v10];
      [(NLXSchemaCDMUserDialogAct *)v5 setAccepted:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"rejected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLXSchemaCDMUserRejected alloc] initWithDictionary:v12];
      [(NLXSchemaCDMUserDialogAct *)v5 setRejected:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLXSchemaCDMUserCancelled alloc] initWithDictionary:v14];
      [(NLXSchemaCDMUserDialogAct *)v5 setCancelled:v15];
    }

    v34 = v14;
    v16 = [v4 objectForKeyedSubscript:@"wantedToRepeat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[NLXSchemaCDMUserWantedToRepeat alloc] initWithDictionary:v16];
      [(NLXSchemaCDMUserDialogAct *)v5 setWantedToRepeat:v17];
    }

    v33 = v16;
    v18 = [v4 objectForKeyedSubscript:@"acknowledged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[NLXSchemaCDMUserAcknowledged alloc] initWithDictionary:v18];
      [(NLXSchemaCDMUserDialogAct *)v5 setAcknowledged:v19];
    }

    v37 = v6;
    v20 = [v4 objectForKeyedSubscript:@"wantedToProceed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[NLXSchemaCDMUserWantedToProceed alloc] initWithDictionary:v20];
      [(NLXSchemaCDMUserDialogAct *)v5 setWantedToProceed:v21];
    }

    v35 = v12;
    v36 = v8;
    v22 = [v4 objectForKeyedSubscript:@"wantedToPause"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[NLXSchemaCDMUserWantedToPause alloc] initWithDictionary:v22];
      [(NLXSchemaCDMUserDialogAct *)v5 setWantedToPause:v23];
    }

    v24 = v10;
    v25 = [v4 objectForKeyedSubscript:@"delegated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[NLXSchemaCDMDelegatedUserDialogAct alloc] initWithDictionary:v25];
      [(NLXSchemaCDMUserDialogAct *)v5 setDelegated:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"userStatedTask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[NLXSchemaCDMUserStatedTask alloc] initWithDictionary:v27];
      [(NLXSchemaCDMUserDialogAct *)v5 setUserStatedTask:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"wantedToUndo"];
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

- (NLXSchemaCDMUserDialogAct)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMUserDialogAct *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMUserDialogAct *)self dictionaryRepresentation];
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
  if (self->_accepted)
  {
    v4 = [(NLXSchemaCDMUserDialogAct *)self accepted];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"accepted"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"accepted"];
    }
  }

  if (self->_acknowledged)
  {
    v7 = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"acknowledged"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"acknowledged"];
    }
  }

  if (self->_alignment)
  {
    v10 = [(NLXSchemaCDMUserDialogAct *)self alignment];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"alignment"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"alignment"];
    }
  }

  if (self->_cancelled)
  {
    v13 = [(NLXSchemaCDMUserDialogAct *)self cancelled];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"cancelled"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"cancelled"];
    }
  }

  if (self->_delegated)
  {
    v16 = [(NLXSchemaCDMUserDialogAct *)self delegated];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"delegated"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"delegated"];
    }
  }

  if (self->_reference)
  {
    v19 = [(NLXSchemaCDMUserDialogAct *)self reference];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"reference"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"reference"];
    }
  }

  if (self->_rejected)
  {
    v22 = [(NLXSchemaCDMUserDialogAct *)self rejected];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"rejected"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"rejected"];
    }
  }

  if (self->_userStatedTask)
  {
    v25 = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"userStatedTask"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"userStatedTask"];
    }
  }

  if (self->_wantedToPause)
  {
    v28 = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"wantedToPause"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"wantedToPause"];
    }
  }

  if (self->_wantedToProceed)
  {
    v31 = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"wantedToProceed"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"wantedToProceed"];
    }
  }

  if (self->_wantedToRepeat)
  {
    v34 = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"wantedToRepeat"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"wantedToRepeat"];
    }
  }

  if (self->_wantedToUndo)
  {
    v37 = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"wantedToUndo"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"wantedToUndo"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  whichUserdialogacttype = self->_whichUserdialogacttype;
  if (whichUserdialogacttype != [v4 whichUserdialogacttype])
  {
    goto LABEL_63;
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self alignment];
  v7 = [v4 alignment];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v8 = [(NLXSchemaCDMUserDialogAct *)self alignment];
  if (v8)
  {
    v9 = v8;
    v10 = [(NLXSchemaCDMUserDialogAct *)self alignment];
    v11 = [v4 alignment];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self reference];
  v7 = [v4 reference];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v13 = [(NLXSchemaCDMUserDialogAct *)self reference];
  if (v13)
  {
    v14 = v13;
    v15 = [(NLXSchemaCDMUserDialogAct *)self reference];
    v16 = [v4 reference];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self accepted];
  v7 = [v4 accepted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v18 = [(NLXSchemaCDMUserDialogAct *)self accepted];
  if (v18)
  {
    v19 = v18;
    v20 = [(NLXSchemaCDMUserDialogAct *)self accepted];
    v21 = [v4 accepted];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self rejected];
  v7 = [v4 rejected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v23 = [(NLXSchemaCDMUserDialogAct *)self rejected];
  if (v23)
  {
    v24 = v23;
    v25 = [(NLXSchemaCDMUserDialogAct *)self rejected];
    v26 = [v4 rejected];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self cancelled];
  v7 = [v4 cancelled];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v28 = [(NLXSchemaCDMUserDialogAct *)self cancelled];
  if (v28)
  {
    v29 = v28;
    v30 = [(NLXSchemaCDMUserDialogAct *)self cancelled];
    v31 = [v4 cancelled];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
  v7 = [v4 wantedToRepeat];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v33 = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
  if (v33)
  {
    v34 = v33;
    v35 = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
    v36 = [v4 wantedToRepeat];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
  v7 = [v4 acknowledged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v38 = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
  if (v38)
  {
    v39 = v38;
    v40 = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
    v41 = [v4 acknowledged];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
  v7 = [v4 wantedToProceed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v43 = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
  if (v43)
  {
    v44 = v43;
    v45 = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
    v46 = [v4 wantedToProceed];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
  v7 = [v4 wantedToPause];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v48 = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
  if (v48)
  {
    v49 = v48;
    v50 = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
    v51 = [v4 wantedToPause];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self delegated];
  v7 = [v4 delegated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v53 = [(NLXSchemaCDMUserDialogAct *)self delegated];
  if (v53)
  {
    v54 = v53;
    v55 = [(NLXSchemaCDMUserDialogAct *)self delegated];
    v56 = [v4 delegated];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
  v7 = [v4 userStatedTask];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_62;
  }

  v58 = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
  if (v58)
  {
    v59 = v58;
    v60 = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
    v61 = [v4 userStatedTask];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
  v7 = [v4 wantedToUndo];
  if ((v6 != 0) != (v7 == 0))
  {
    v63 = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
    if (!v63)
    {

LABEL_66:
      v68 = 1;
      goto LABEL_64;
    }

    v64 = v63;
    v65 = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
    v66 = [v4 wantedToUndo];
    v67 = [v65 isEqual:v66];

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

- (void)writeTo:(id)a3
{
  v29 = a3;
  v4 = [(NLXSchemaCDMUserDialogAct *)self alignment];

  if (v4)
  {
    v5 = [(NLXSchemaCDMUserDialogAct *)self alignment];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLXSchemaCDMUserDialogAct *)self reference];

  if (v6)
  {
    v7 = [(NLXSchemaCDMUserDialogAct *)self reference];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(NLXSchemaCDMUserDialogAct *)self accepted];

  if (v8)
  {
    v9 = [(NLXSchemaCDMUserDialogAct *)self accepted];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(NLXSchemaCDMUserDialogAct *)self rejected];

  if (v10)
  {
    v11 = [(NLXSchemaCDMUserDialogAct *)self rejected];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(NLXSchemaCDMUserDialogAct *)self cancelled];

  if (v12)
  {
    v13 = [(NLXSchemaCDMUserDialogAct *)self cancelled];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];

  if (v14)
  {
    v15 = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(NLXSchemaCDMUserDialogAct *)self acknowledged];

  if (v16)
  {
    v17 = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];

  if (v18)
  {
    v19 = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];

  if (v20)
  {
    v21 = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(NLXSchemaCDMUserDialogAct *)self delegated];

  if (v22)
  {
    v23 = [(NLXSchemaCDMUserDialogAct *)self delegated];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];

  if (v24)
  {
    v25 = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];

  v27 = v29;
  if (v26)
  {
    v28 = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
    PBDataWriterWriteSubmessage();

    v27 = v29;
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

- (void)setWantedToUndo:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  wantedToUndo = self->_wantedToUndo;
  self->_wantedToUndo = v4;
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

- (void)setUserStatedTask:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  userStatedTask = self->_userStatedTask;
  self->_userStatedTask = v4;
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

- (void)setDelegated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  delegated = self->_delegated;
  self->_delegated = v4;
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

- (void)setWantedToPause:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  wantedToPause = self->_wantedToPause;
  self->_wantedToPause = v4;
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

- (void)setWantedToProceed:(id)a3
{
  v4 = a3;
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

  self->_whichUserdialogacttype = 8 * (v4 != 0);
  wantedToProceed = self->_wantedToProceed;
  self->_wantedToProceed = v4;
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

- (void)setAcknowledged:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  acknowledged = self->_acknowledged;
  self->_acknowledged = v4;
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

- (void)setWantedToRepeat:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  wantedToRepeat = self->_wantedToRepeat;
  self->_wantedToRepeat = v4;
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

- (void)setCancelled:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  cancelled = self->_cancelled;
  self->_cancelled = v4;
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

- (void)setRejected:(id)a3
{
  v4 = a3;
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

  self->_whichUserdialogacttype = 4 * (v4 != 0);
  rejected = self->_rejected;
  self->_rejected = v4;
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

- (void)setAccepted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichUserdialogacttype = v14;
  accepted = self->_accepted;
  self->_accepted = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = NLXSchemaCDMUserDialogAct;
  v5 = [(SISchemaInstrumentationMessage *)&v43 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMUserDialogAct *)self alignment];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteAlignment];
  }

  v9 = [(NLXSchemaCDMUserDialogAct *)self reference];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteReference];
  }

  v12 = [(NLXSchemaCDMUserDialogAct *)self accepted];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteAccepted];
  }

  v15 = [(NLXSchemaCDMUserDialogAct *)self rejected];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteRejected];
  }

  v18 = [(NLXSchemaCDMUserDialogAct *)self cancelled];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteCancelled];
  }

  v21 = [(NLXSchemaCDMUserDialogAct *)self wantedToRepeat];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteWantedToRepeat];
  }

  v24 = [(NLXSchemaCDMUserDialogAct *)self acknowledged];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteAcknowledged];
  }

  v27 = [(NLXSchemaCDMUserDialogAct *)self wantedToProceed];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteWantedToProceed];
  }

  v30 = [(NLXSchemaCDMUserDialogAct *)self wantedToPause];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteWantedToPause];
  }

  v33 = [(NLXSchemaCDMUserDialogAct *)self delegated];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteDelegated];
  }

  v36 = [(NLXSchemaCDMUserDialogAct *)self userStatedTask];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(NLXSchemaCDMUserDialogAct *)self deleteUserStatedTask];
  }

  v39 = [(NLXSchemaCDMUserDialogAct *)self wantedToUndo];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
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