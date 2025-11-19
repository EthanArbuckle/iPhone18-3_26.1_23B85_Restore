@interface VCPBWorkflow
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRemoteQuarantineStatus:(id)a3;
- (int)remoteQuarantineStatus;
- (unint64_t)hash;
- (void)addInputClasses:(id)a3;
- (void)addWorkflowTypes:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIconColor:(BOOL)a3;
- (void)setHasIconGlyph:(BOOL)a3;
- (void)setHasIntegerLastMigratedClientVersion:(BOOL)a3;
- (void)setHasIntegerMinimumClientVersion:(BOOL)a3;
- (void)setHasModificationDate:(BOOL)a3;
- (void)setHasRemoteQuarantineStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPBWorkflow

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 12))
  {
    [(VCPBWorkflow *)self setName:?];
  }

  v5 = *(v4 + 128);
  if ((v5 & 0x10) != 0)
  {
    self->_iconColor = *(v4 + 14);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 128);
    if ((v5 & 0x20) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    }
  }

  else if ((*(v4 + 128) & 0x20) == 0)
  {
    goto LABEL_5;
  }

  self->_iconGlyph = *(v4 + 15);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 128);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_43:
  self->_creationDate = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 128) & 8) != 0)
  {
LABEL_7:
    self->_modificationDate = *(v4 + 4);
    *&self->_has |= 8u;
  }

LABEL_8:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(v4 + 15);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(VCPBWorkflow *)self addWorkflowTypes:*(*(&v22 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = *(v4 + 9);
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(VCPBWorkflow *)self addInputClasses:*(*(&v18 + 1) + 8 * j), v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  if (*(v4 + 6))
  {
    [(VCPBWorkflow *)self setActionsData:?];
  }

  if (*(v4 + 8))
  {
    [(VCPBWorkflow *)self setImportQuestionsData:?];
  }

  v16 = *(v4 + 128);
  if ((v16 & 4) != 0)
  {
    self->_integerMinimumClientVersion = *(v4 + 3);
    *&self->_has |= 4u;
    v16 = *(v4 + 128);
  }

  if ((v16 & 2) != 0)
  {
    self->_integerLastMigratedClientVersion = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 11))
  {
    [(VCPBWorkflow *)self setMinimumClientVersion:?];
  }

  if (*(v4 + 10))
  {
    [(VCPBWorkflow *)self setLastMigratedClientVersion:?];
  }

  if (*(v4 + 5))
  {
    [(VCPBWorkflow *)self setAccessResourcePerWorkflowStateData:?];
  }

  if ((*(v4 + 128) & 0x40) != 0)
  {
    self->_remoteQuarantineStatus = *(v4 + 26);
    *&self->_has |= 0x40u;
  }

  if (*(v4 + 14))
  {
    [(VCPBWorkflow *)self setSubtitle:?];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v27 = [(NSString *)self->_name hash];
  if ((*&self->_has & 0x10) == 0)
  {
    v26 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v25 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v26 = 2654435761 * self->_iconColor;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v25 = 2654435761 * self->_iconGlyph;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  creationDate = self->_creationDate;
  if (creationDate < 0.0)
  {
    creationDate = -creationDate;
  }

  *v3.i64 = floor(creationDate + 0.5);
  v6 = (creationDate - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v7), v4, v3);
  v8 = 2654435761u * *v3.i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_11:
  v24 = v8;
  if ((*&self->_has & 8) != 0)
  {
    modificationDate = self->_modificationDate;
    if (modificationDate < 0.0)
    {
      modificationDate = -modificationDate;
    }

    *v3.i64 = floor(modificationDate + 0.5);
    v11 = (modificationDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v4, v3).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v23 = [(NSMutableArray *)self->_workflowTypes hash];
  v22 = [(NSMutableArray *)self->_inputClasses hash];
  v13 = [(NSData *)self->_actionsData hash];
  v14 = [(NSData *)self->_importQuestionsData hash];
  if ((*&self->_has & 4) != 0)
  {
    v15 = 2654435761u * self->_integerMinimumClientVersion;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v15 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_23:
      v16 = 2654435761u * self->_integerLastMigratedClientVersion;
      goto LABEL_26;
    }
  }

  v16 = 0;
LABEL_26:
  v17 = [(NSString *)self->_minimumClientVersion hash];
  v18 = [(NSString *)self->_lastMigratedClientVersion hash];
  v19 = [(NSData *)self->_accessResourcePerWorkflowStateData hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v20 = 2654435761 * self->_remoteQuarantineStatus;
  }

  else
  {
    v20 = 0;
  }

  return v26 ^ v27 ^ v25 ^ v24 ^ v9 ^ v23 ^ v22 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ [(NSString *)self->_subtitle hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  name = self->_name;
  if (name | *(v4 + 12))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_55;
    }
  }

  v6 = *(v4 + 128);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 128) & 0x10) == 0 || self->_iconColor != *(v4 + 14))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 128) & 0x10) != 0)
  {
LABEL_55:
    v17 = 0;
    goto LABEL_56;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 128) & 0x20) == 0 || self->_iconGlyph != *(v4 + 15))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 128) & 0x20) != 0)
  {
    goto LABEL_55;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 128) & 1) == 0 || self->_creationDate != *(v4 + 1))
    {
      goto LABEL_55;
    }
  }

  else if (*(v4 + 128))
  {
    goto LABEL_55;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 128) & 8) == 0 || self->_modificationDate != *(v4 + 4))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 128) & 8) != 0)
  {
    goto LABEL_55;
  }

  workflowTypes = self->_workflowTypes;
  if (workflowTypes | *(v4 + 15) && ![(NSMutableArray *)workflowTypes isEqual:?])
  {
    goto LABEL_55;
  }

  inputClasses = self->_inputClasses;
  if (inputClasses | *(v4 + 9))
  {
    if (![(NSMutableArray *)inputClasses isEqual:?])
    {
      goto LABEL_55;
    }
  }

  actionsData = self->_actionsData;
  if (actionsData | *(v4 + 6))
  {
    if (![(NSData *)actionsData isEqual:?])
    {
      goto LABEL_55;
    }
  }

  importQuestionsData = self->_importQuestionsData;
  if (importQuestionsData | *(v4 + 8))
  {
    if (![(NSData *)importQuestionsData isEqual:?])
    {
      goto LABEL_55;
    }
  }

  v11 = *(v4 + 128);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 128) & 4) == 0 || self->_integerMinimumClientVersion != *(v4 + 3))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 128) & 4) != 0)
  {
    goto LABEL_55;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 128) & 2) == 0 || self->_integerLastMigratedClientVersion != *(v4 + 2))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 128) & 2) != 0)
  {
    goto LABEL_55;
  }

  minimumClientVersion = self->_minimumClientVersion;
  if (minimumClientVersion | *(v4 + 11) && ![(NSString *)minimumClientVersion isEqual:?])
  {
    goto LABEL_55;
  }

  lastMigratedClientVersion = self->_lastMigratedClientVersion;
  if (lastMigratedClientVersion | *(v4 + 10))
  {
    if (![(NSString *)lastMigratedClientVersion isEqual:?])
    {
      goto LABEL_55;
    }
  }

  accessResourcePerWorkflowStateData = self->_accessResourcePerWorkflowStateData;
  if (accessResourcePerWorkflowStateData | *(v4 + 5))
  {
    if (![(NSData *)accessResourcePerWorkflowStateData isEqual:?])
    {
      goto LABEL_55;
    }
  }

  v15 = *(v4 + 128);
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 128) & 0x40) == 0 || self->_remoteQuarantineStatus != *(v4 + 26))
    {
      goto LABEL_55;
    }
  }

  else if ((*(v4 + 128) & 0x40) != 0)
  {
    goto LABEL_55;
  }

  subtitle = self->_subtitle;
  if (subtitle | *(v4 + 14))
  {
    v17 = [(NSString *)subtitle isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_56:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 56) = self->_iconColor;
    *(v5 + 128) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 60) = self->_iconGlyph;
  *(v5 + 128) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_29:
  *(v5 + 8) = self->_creationDate;
  *(v5 + 128) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v5 + 32) = self->_modificationDate;
    *(v5 + 128) |= 8u;
  }

LABEL_6:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = self->_workflowTypes;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v40 + 1) + 8 * i) copyWithZone:a3];
        [v5 addWorkflowTypes:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v11);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = self->_inputClasses;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v36 + 1) + 8 * j) copyWithZone:{a3, v36}];
        [v5 addInputClasses:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v17);
  }

  v21 = [(NSData *)self->_actionsData copyWithZone:a3];
  v22 = *(v5 + 48);
  *(v5 + 48) = v21;

  v23 = [(NSData *)self->_importQuestionsData copyWithZone:a3];
  v24 = *(v5 + 64);
  *(v5 + 64) = v23;

  v25 = self->_has;
  if ((v25 & 4) != 0)
  {
    *(v5 + 24) = self->_integerMinimumClientVersion;
    *(v5 + 128) |= 4u;
    v25 = self->_has;
  }

  if ((v25 & 2) != 0)
  {
    *(v5 + 16) = self->_integerLastMigratedClientVersion;
    *(v5 + 128) |= 2u;
  }

  v26 = [(NSString *)self->_minimumClientVersion copyWithZone:a3, v36];
  v27 = *(v5 + 88);
  *(v5 + 88) = v26;

  v28 = [(NSString *)self->_lastMigratedClientVersion copyWithZone:a3];
  v29 = *(v5 + 80);
  *(v5 + 80) = v28;

  v30 = [(NSData *)self->_accessResourcePerWorkflowStateData copyWithZone:a3];
  v31 = *(v5 + 40);
  *(v5 + 40) = v30;

  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 104) = self->_remoteQuarantineStatus;
    *(v5 + 128) |= 0x40u;
  }

  v32 = [(NSString *)self->_subtitle copyWithZone:a3];
  v33 = *(v5 + 112);
  *(v5 + 112) = v32;

  v34 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v16;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 14) = self->_iconColor;
    *(v4 + 128) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_39:
      *(v4 + 1) = *&self->_creationDate;
      *(v4 + 128) |= 1u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 15) = self->_iconGlyph;
  *(v4 + 128) |= 0x20u;
  has = self->_has;
  if (has)
  {
    goto LABEL_39;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_7:
    *(v4 + 4) = *&self->_modificationDate;
    *(v4 + 128) |= 8u;
  }

LABEL_8:
  if ([(VCPBWorkflow *)self workflowTypesCount])
  {
    [v16 clearWorkflowTypes];
    v6 = [(VCPBWorkflow *)self workflowTypesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(VCPBWorkflow *)self workflowTypesAtIndex:i];
        [v16 addWorkflowTypes:v9];
      }
    }
  }

  if ([(VCPBWorkflow *)self inputClassesCount])
  {
    [v16 clearInputClasses];
    v10 = [(VCPBWorkflow *)self inputClassesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(VCPBWorkflow *)self inputClassesAtIndex:j];
        [v16 addInputClasses:v13];
      }
    }
  }

  if (self->_actionsData)
  {
    [v16 setActionsData:?];
  }

  v14 = v16;
  if (self->_importQuestionsData)
  {
    [v16 setImportQuestionsData:?];
    v14 = v16;
  }

  v15 = self->_has;
  if ((v15 & 4) != 0)
  {
    v14[3] = self->_integerMinimumClientVersion;
    *(v14 + 128) |= 4u;
    v15 = self->_has;
  }

  if ((v15 & 2) != 0)
  {
    v14[2] = self->_integerLastMigratedClientVersion;
    *(v14 + 128) |= 2u;
  }

  if (self->_minimumClientVersion)
  {
    [v16 setMinimumClientVersion:?];
    v14 = v16;
  }

  if (self->_lastMigratedClientVersion)
  {
    [v16 setLastMigratedClientVersion:?];
    v14 = v16;
  }

  if (self->_accessResourcePerWorkflowStateData)
  {
    [v16 setAccessResourcePerWorkflowStateData:?];
    v14 = v16;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(v14 + 26) = self->_remoteQuarantineStatus;
    *(v14 + 128) |= 0x40u;
  }

  if (self->_subtitle)
  {
    [v16 setSubtitle:?];
    v14 = v16;
  }
}

- (void)writeTo:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    iconColor = self->_iconColor;
    PBDataWriterWriteFixed32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  iconGlyph = self->_iconGlyph;
  PBDataWriterWriteFixed32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_43:
  creationDate = self->_creationDate;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_8:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_workflowTypes;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = self->_inputClasses;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v15);
  }

  if (self->_actionsData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_importQuestionsData)
  {
    PBDataWriterWriteDataField();
  }

  v19 = self->_has;
  if ((v19 & 4) != 0)
  {
    integerMinimumClientVersion = self->_integerMinimumClientVersion;
    PBDataWriterWriteUint64Field();
    v19 = self->_has;
  }

  if ((v19 & 2) != 0)
  {
    integerLastMigratedClientVersion = self->_integerLastMigratedClientVersion;
    PBDataWriterWriteUint64Field();
  }

  if (self->_minimumClientVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lastMigratedClientVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessResourcePerWorkflowStateData)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    remoteQuarantineStatus = self->_remoteQuarantineStatus;
    PBDataWriterWriteInt32Field();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_iconColor];
    [v4 setObject:v20 forKey:@"iconColor"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_iconGlyph];
  [v4 setObject:v21 forKey:@"iconGlyph"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_31:
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [v4 setObject:v22 forKey:@"creationDate"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
    [v4 setObject:v7 forKey:@"modificationDate"];
  }

LABEL_8:
  workflowTypes = self->_workflowTypes;
  if (workflowTypes)
  {
    [v4 setObject:workflowTypes forKey:@"workflowTypes"];
  }

  inputClasses = self->_inputClasses;
  if (inputClasses)
  {
    [v4 setObject:inputClasses forKey:@"inputClasses"];
  }

  actionsData = self->_actionsData;
  if (actionsData)
  {
    [v4 setObject:actionsData forKey:@"actionsData"];
  }

  importQuestionsData = self->_importQuestionsData;
  if (importQuestionsData)
  {
    [v4 setObject:importQuestionsData forKey:@"importQuestionsData"];
  }

  v12 = self->_has;
  if ((v12 & 4) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_integerMinimumClientVersion];
    [v4 setObject:v13 forKey:@"integerMinimumClientVersion"];

    v12 = self->_has;
  }

  if ((v12 & 2) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_integerLastMigratedClientVersion];
    [v4 setObject:v14 forKey:@"integerLastMigratedClientVersion"];
  }

  minimumClientVersion = self->_minimumClientVersion;
  if (minimumClientVersion)
  {
    [v4 setObject:minimumClientVersion forKey:@"minimumClientVersion"];
  }

  lastMigratedClientVersion = self->_lastMigratedClientVersion;
  if (lastMigratedClientVersion)
  {
    [v4 setObject:lastMigratedClientVersion forKey:@"lastMigratedClientVersion"];
  }

  accessResourcePerWorkflowStateData = self->_accessResourcePerWorkflowStateData;
  if (accessResourcePerWorkflowStateData)
  {
    [v4 setObject:accessResourcePerWorkflowStateData forKey:@"accessResourcePerWorkflowStateData"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v18 = self->_remoteQuarantineStatus - 1;
    if (v18 >= 3)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_remoteQuarantineStatus];
    }

    else
    {
      v19 = off_2788FEB70[v18];
    }

    [v4 setObject:v19 forKey:@"remoteQuarantineStatus"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VCPBWorkflow;
  v4 = [(VCPBWorkflow *)&v8 description];
  v5 = [(VCPBWorkflow *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsRemoteQuarantineStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotQuarantined"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Quarantined"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"QuarantinedAllowedByUser"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRemoteQuarantineStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)remoteQuarantineStatus
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_remoteQuarantineStatus;
  }

  else
  {
    return 1;
  }
}

- (void)setHasIntegerLastMigratedClientVersion:(BOOL)a3
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

- (void)setHasIntegerMinimumClientVersion:(BOOL)a3
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

- (void)addInputClasses:(id)a3
{
  v4 = a3;
  inputClasses = self->_inputClasses;
  v8 = v4;
  if (!inputClasses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_inputClasses;
    self->_inputClasses = v6;

    v4 = v8;
    inputClasses = self->_inputClasses;
  }

  [(NSMutableArray *)inputClasses addObject:v4];
}

- (void)addWorkflowTypes:(id)a3
{
  v4 = a3;
  workflowTypes = self->_workflowTypes;
  v8 = v4;
  if (!workflowTypes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_workflowTypes;
    self->_workflowTypes = v6;

    v4 = v8;
    workflowTypes = self->_workflowTypes;
  }

  [(NSMutableArray *)workflowTypes addObject:v4];
}

- (void)setHasModificationDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIconGlyph:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIconColor:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

@end