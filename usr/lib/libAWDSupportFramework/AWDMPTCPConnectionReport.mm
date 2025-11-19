@interface AWDMPTCPConnectionReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInterfaceReports:(id)a3;
- (void)addSubflowSwitchingReports:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasEstablishmentCellularFallback:(BOOL)a3;
- (void)setHasEstablishmentFailureError:(BOOL)a3;
- (void)setHasEstablishmentForcedTcpFallback:(BOOL)a3;
- (void)setHasEstablishmentSuccess:(BOOL)a3;
- (void)setHasEstablishmentSynRetransmits:(BOOL)a3;
- (void)setHasEstablishmentTcpFallback:(BOOL)a3;
- (void)setHasPostConnectMultiHomed:(BOOL)a3;
- (void)setHasPostConnectSessionLifetime:(BOOL)a3;
- (void)setHasPostConnectSingleHomed:(BOOL)a3;
- (void)setHasPostConnectSubflowAttemptCount:(BOOL)a3;
- (void)setHasPostConnectSubflowMaxSubflowCount:(BOOL)a3;
- (void)setHasSubflowSwitchingCount:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMPTCPConnectionReport

- (void)dealloc
{
  [(AWDMPTCPConnectionReport *)self setClientId:0];
  [(AWDMPTCPConnectionReport *)self setEstablishmentInterfaceName:0];
  [(AWDMPTCPConnectionReport *)self setInterfaceReports:0];
  [(AWDMPTCPConnectionReport *)self setSubflowSwitchingReports:0];
  v3.receiver = self;
  v3.super_class = AWDMPTCPConnectionReport;
  [(AWDMPTCPConnectionReport *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasEstablishmentSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasEstablishmentFailureError:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasEstablishmentTcpFallback:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasEstablishmentCellularFallback:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasEstablishmentSynRetransmits:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasEstablishmentForcedTcpFallback:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasPostConnectMultiHomed:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasPostConnectSingleHomed:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasPostConnectSubflowAttemptCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPostConnectSubflowMaxSubflowCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasPostConnectSessionLifetime:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSubflowSwitchingCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)addInterfaceReports:(id)a3
{
  interfaceReports = self->_interfaceReports;
  if (!interfaceReports)
  {
    interfaceReports = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_interfaceReports = interfaceReports;
  }

  [(NSMutableArray *)interfaceReports addObject:a3];
}

- (void)addSubflowSwitchingReports:(id)a3
{
  subflowSwitchingReports = self->_subflowSwitchingReports;
  if (!subflowSwitchingReports)
  {
    subflowSwitchingReports = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_subflowSwitchingReports = subflowSwitchingReports;
  }

  [(NSMutableArray *)subflowSwitchingReports addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMPTCPConnectionReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMPTCPConnectionReport description](&v3, sel_description), -[AWDMPTCPConnectionReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  clientId = self->_clientId;
  if (clientId)
  {
    [v3 setObject:clientId forKey:@"client_id"];
  }

  establishmentInterfaceName = self->_establishmentInterfaceName;
  if (establishmentInterfaceName)
  {
    [v3 setObject:establishmentInterfaceName forKey:@"establishment_interface_name"];
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_establishmentSuccess), @"establishment_success"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_42;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_9;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_establishmentFailureError), @"establishment_failure_error"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_establishmentTcpFallback), @"establishment_tcp_fallback"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_establishmentCellularFallback), @"establishment_cellular_fallback"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_establishmentTime), @"establishment_time"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_establishmentSynRetransmits), @"establishment_syn_retransmits"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_establishmentForcedTcpFallback), @"establishment_forced_tcp_fallback"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_15:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_postConnectMultiHomed), @"post_connect_multi_homed"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_postConnectSingleHomed), @"post_connect_single_homed"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_postConnectSubflowAttemptCount), @"post_connect_subflow_attempt_count"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_18:
    if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_postConnectSubflowMaxSubflowCount), @"post_connect_subflow_max_subflow_count"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_19:
    if ((has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_postConnectSessionLifetime), @"post_connect_session_lifetime"}];
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_20:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_subflowSwitchingCount), @"subflow_switching_count"}];
  }

LABEL_21:
  if ([(NSMutableArray *)self->_interfaceReports count])
  {
    v7 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_interfaceReports, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    interfaceReports = self->_interfaceReports;
    v9 = [(NSMutableArray *)interfaceReports countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(interfaceReports);
          }

          [v7 addObject:{objc_msgSend(*(*(&v25 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v10 = [(NSMutableArray *)interfaceReports countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"interface_reports"];
  }

  if ([(NSMutableArray *)self->_subflowSwitchingReports count])
  {
    v13 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_subflowSwitchingReports, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    subflowSwitchingReports = self->_subflowSwitchingReports;
    v15 = [(NSMutableArray *)subflowSwitchingReports countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(subflowSwitchingReports);
          }

          [v13 addObject:{objc_msgSend(*(*(&v21 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v16 = [(NSMutableArray *)subflowSwitchingReports countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"subflow_switching_reports"];
  }

  v19 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v42 = *MEMORY[0x29EDCA608];
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_establishmentInterfaceName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    establishmentSuccess = self->_establishmentSuccess;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_9;
  }

  establishmentFailureError = self->_establishmentFailureError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  establishmentTcpFallback = self->_establishmentTcpFallback;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  establishmentCellularFallback = self->_establishmentCellularFallback;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  establishmentTime = self->_establishmentTime;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  establishmentSynRetransmits = self->_establishmentSynRetransmits;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  establishmentForcedTcpFallback = self->_establishmentForcedTcpFallback;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_15:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  postConnectMultiHomed = self->_postConnectMultiHomed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  postConnectSingleHomed = self->_postConnectSingleHomed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  postConnectSubflowAttemptCount = self->_postConnectSubflowAttemptCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_18:
    if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  postConnectSubflowMaxSubflowCount = self->_postConnectSubflowMaxSubflowCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_19:
    if ((has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_47:
  postConnectSessionLifetime = self->_postConnectSessionLifetime;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_20:
    subflowSwitchingCount = self->_subflowSwitchingCount;
    PBDataWriterWriteInt32Field();
  }

LABEL_21:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  interfaceReports = self->_interfaceReports;
  v8 = [(NSMutableArray *)interfaceReports countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(interfaceReports);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)interfaceReports countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v9);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  subflowSwitchingReports = self->_subflowSwitchingReports;
  v14 = [(NSMutableArray *)subflowSwitchingReports countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(subflowSwitchingReports);
        }

        v18 = *(*(&v32 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)subflowSwitchingReports countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 52) |= 4u;
  }

  if (self->_clientId)
  {
    [a3 setClientId:?];
  }

  if (self->_establishmentInterfaceName)
  {
    [a3 setEstablishmentInterfaceName:?];
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(a3 + 98) = self->_establishmentSuccess;
    *(a3 + 52) |= 0x400u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(a3 + 10) = self->_establishmentFailureError;
  *(a3 + 52) |= 8u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a3 + 99) = self->_establishmentTcpFallback;
  *(a3 + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a3 + 96) = self->_establishmentCellularFallback;
  *(a3 + 52) |= 0x100u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 1) = *&self->_establishmentTime;
  *(a3 + 52) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 14) = self->_establishmentSynRetransmits;
  *(a3 + 52) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 97) = self->_establishmentForcedTcpFallback;
  *(a3 + 52) |= 0x200u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_15:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 100) = self->_postConnectMultiHomed;
  *(a3 + 52) |= 0x1000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 101) = self->_postConnectSingleHomed;
  *(a3 + 52) |= 0x2000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 18) = self->_postConnectSubflowAttemptCount;
  *(a3 + 52) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_18:
    if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_41:
    *(a3 + 2) = *&self->_postConnectSessionLifetime;
    *(a3 + 52) |= 2u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_40:
  *(a3 + 19) = self->_postConnectSubflowMaxSubflowCount;
  *(a3 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_19:
  if ((has & 0x80) != 0)
  {
LABEL_20:
    *(a3 + 20) = self->_subflowSwitchingCount;
    *(a3 + 52) |= 0x80u;
  }

LABEL_21:
  if ([(AWDMPTCPConnectionReport *)self interfaceReportsCount])
  {
    [a3 clearInterfaceReports];
    v6 = [(AWDMPTCPConnectionReport *)self interfaceReportsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addInterfaceReports:{-[AWDMPTCPConnectionReport interfaceReportsAtIndex:](self, "interfaceReportsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDMPTCPConnectionReport *)self subflowSwitchingReportsCount])
  {
    [a3 clearSubflowSwitchingReports];
    v9 = [(AWDMPTCPConnectionReport *)self subflowSwitchingReportsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [a3 addSubflowSwitchingReports:{-[AWDMPTCPConnectionReport subflowSwitchingReportsAtIndex:](self, "subflowSwitchingReportsAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 104) |= 4u;
  }

  *(v6 + 32) = [(NSString *)self->_clientId copyWithZone:a3];
  *(v6 + 48) = [(NSString *)self->_establishmentInterfaceName copyWithZone:a3];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v6 + 98) = self->_establishmentSuccess;
    *(v6 + 104) |= 0x400u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 0x800) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 40) = self->_establishmentFailureError;
  *(v6 + 104) |= 8u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v6 + 99) = self->_establishmentTcpFallback;
  *(v6 + 104) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v6 + 96) = self->_establishmentCellularFallback;
  *(v6 + 104) |= 0x100u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v6 + 8) = self->_establishmentTime;
  *(v6 + 104) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v6 + 56) = self->_establishmentSynRetransmits;
  *(v6 + 104) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v6 + 97) = self->_establishmentForcedTcpFallback;
  *(v6 + 104) |= 0x200u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 100) = self->_postConnectMultiHomed;
  *(v6 + 104) |= 0x1000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_12:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 101) = self->_postConnectSingleHomed;
  *(v6 + 104) |= 0x2000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 72) = self->_postConnectSubflowAttemptCount;
  *(v6 + 104) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 76) = self->_postConnectSubflowMaxSubflowCount;
  *(v6 + 104) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_43:
  *(v6 + 16) = self->_postConnectSessionLifetime;
  *(v6 + 104) |= 2u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_16:
    *(v6 + 80) = self->_subflowSwitchingCount;
    *(v6 + 104) |= 0x80u;
  }

LABEL_17:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  interfaceReports = self->_interfaceReports;
  v9 = [(NSMutableArray *)interfaceReports countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(interfaceReports);
        }

        v13 = [*(*(&v26 + 1) + 8 * i) copyWithZone:a3];
        [v6 addInterfaceReports:v13];
      }

      v10 = [(NSMutableArray *)interfaceReports countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  subflowSwitchingReports = self->_subflowSwitchingReports;
  v15 = [(NSMutableArray *)subflowSwitchingReports countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(subflowSwitchingReports);
        }

        v19 = [*(*(&v22 + 1) + 8 * j) copyWithZone:a3];
        [v6 addSubflowSwitchingReports:v19];
      }

      v16 = [(NSMutableArray *)subflowSwitchingReports countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 52);
    if ((*&self->_has & 4) != 0)
    {
      if ((v6 & 4) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_98;
      }
    }

    else if ((v6 & 4) != 0)
    {
      goto LABEL_98;
    }

    clientId = self->_clientId;
    if (!(clientId | *(a3 + 4)) || (v5 = [(NSString *)clientId isEqual:?]) != 0)
    {
      establishmentInterfaceName = self->_establishmentInterfaceName;
      if (!(establishmentInterfaceName | *(a3 + 6)) || (v5 = [(NSString *)establishmentInterfaceName isEqual:?]) != 0)
      {
        has = self->_has;
        v10 = *(a3 + 52);
        if ((has & 0x400) != 0)
        {
          if ((*(a3 + 52) & 0x400) == 0)
          {
            goto LABEL_98;
          }

          v11 = *(a3 + 98);
          if (self->_establishmentSuccess)
          {
            if ((*(a3 + 98) & 1) == 0)
            {
              goto LABEL_98;
            }
          }

          else if (*(a3 + 98))
          {
            goto LABEL_98;
          }
        }

        else if ((*(a3 + 52) & 0x400) != 0)
        {
          goto LABEL_98;
        }

        if ((has & 8) != 0)
        {
          if ((v10 & 8) == 0 || self->_establishmentFailureError != *(a3 + 10))
          {
            goto LABEL_98;
          }
        }

        else if ((v10 & 8) != 0)
        {
          goto LABEL_98;
        }

        if ((*&self->_has & 0x800) != 0)
        {
          if ((*(a3 + 52) & 0x800) == 0)
          {
            goto LABEL_98;
          }

          v12 = *(a3 + 99);
          if (self->_establishmentTcpFallback)
          {
            if ((*(a3 + 99) & 1) == 0)
            {
              goto LABEL_98;
            }
          }

          else if (*(a3 + 99))
          {
            goto LABEL_98;
          }
        }

        else if ((*(a3 + 52) & 0x800) != 0)
        {
          goto LABEL_98;
        }

        if ((*&self->_has & 0x100) != 0)
        {
          if ((*(a3 + 52) & 0x100) == 0)
          {
            goto LABEL_98;
          }

          v13 = *(a3 + 96);
          if (self->_establishmentCellularFallback)
          {
            if ((*(a3 + 96) & 1) == 0)
            {
              goto LABEL_98;
            }
          }

          else if (*(a3 + 96))
          {
            goto LABEL_98;
          }
        }

        else if ((*(a3 + 52) & 0x100) != 0)
        {
          goto LABEL_98;
        }

        if (has)
        {
          if ((v10 & 1) == 0 || self->_establishmentTime != *(a3 + 1))
          {
            goto LABEL_98;
          }
        }

        else if (v10)
        {
          goto LABEL_98;
        }

        if ((has & 0x10) != 0)
        {
          if ((v10 & 0x10) == 0 || self->_establishmentSynRetransmits != *(a3 + 14))
          {
            goto LABEL_98;
          }
        }

        else if ((v10 & 0x10) != 0)
        {
          goto LABEL_98;
        }

        if ((*&self->_has & 0x200) != 0)
        {
          if ((*(a3 + 52) & 0x200) == 0)
          {
            goto LABEL_98;
          }

          v14 = *(a3 + 97);
          if (self->_establishmentForcedTcpFallback)
          {
            if ((*(a3 + 97) & 1) == 0)
            {
              goto LABEL_98;
            }
          }

          else if (*(a3 + 97))
          {
            goto LABEL_98;
          }
        }

        else if ((*(a3 + 52) & 0x200) != 0)
        {
          goto LABEL_98;
        }

        if ((*&self->_has & 0x1000) != 0)
        {
          if ((*(a3 + 52) & 0x1000) == 0)
          {
            goto LABEL_98;
          }

          v15 = *(a3 + 100);
          if (self->_postConnectMultiHomed)
          {
            if ((*(a3 + 100) & 1) == 0)
            {
              goto LABEL_98;
            }
          }

          else if (*(a3 + 100))
          {
            goto LABEL_98;
          }
        }

        else if ((*(a3 + 52) & 0x1000) != 0)
        {
          goto LABEL_98;
        }

        if ((*&self->_has & 0x2000) != 0)
        {
          if ((*(a3 + 52) & 0x2000) != 0)
          {
            v16 = *(a3 + 101);
            if (self->_postConnectSingleHomed)
            {
              if ((*(a3 + 101) & 1) == 0)
              {
                goto LABEL_98;
              }
            }

            else if (*(a3 + 101))
            {
              goto LABEL_98;
            }

            goto LABEL_56;
          }
        }

        else if ((*(a3 + 52) & 0x2000) == 0)
        {
LABEL_56:
          if ((has & 0x20) != 0)
          {
            if ((v10 & 0x20) == 0 || self->_postConnectSubflowAttemptCount != *(a3 + 18))
            {
              goto LABEL_98;
            }
          }

          else if ((v10 & 0x20) != 0)
          {
            goto LABEL_98;
          }

          if ((has & 0x40) != 0)
          {
            if ((v10 & 0x40) == 0 || self->_postConnectSubflowMaxSubflowCount != *(a3 + 19))
            {
              goto LABEL_98;
            }
          }

          else if ((v10 & 0x40) != 0)
          {
            goto LABEL_98;
          }

          if ((has & 2) != 0)
          {
            if ((v10 & 2) == 0 || self->_postConnectSessionLifetime != *(a3 + 2))
            {
              goto LABEL_98;
            }
          }

          else if ((v10 & 2) != 0)
          {
            goto LABEL_98;
          }

          if ((has & 0x80) != 0)
          {
            if ((v10 & 0x80) == 0 || self->_subflowSwitchingCount != *(a3 + 20))
            {
              goto LABEL_98;
            }
          }

          else if ((v10 & 0x80) != 0)
          {
            goto LABEL_98;
          }

          interfaceReports = self->_interfaceReports;
          if (!(interfaceReports | *(a3 + 8)) || (v5 = [(NSMutableArray *)interfaceReports isEqual:?]) != 0)
          {
            subflowSwitchingReports = self->_subflowSwitchingReports;
            if (subflowSwitchingReports | *(a3 + 11))
            {

              LOBYTE(v5) = [(NSMutableArray *)subflowSwitchingReports isEqual:?];
            }

            else
            {
              LOBYTE(v5) = 1;
            }
          }

          return v5;
        }

LABEL_98:
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_clientId hash];
  v5 = [(NSString *)self->_establishmentInterfaceName hash];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v9 = 2654435761 * self->_establishmentSuccess;
    if ((has & 8) != 0)
    {
LABEL_6:
      v10 = 2654435761 * self->_establishmentFailureError;
      if ((*&self->_has & 0x800) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_7:
    v11 = 2654435761 * self->_establishmentTcpFallback;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v12 = 0;
    if (has)
    {
      goto LABEL_9;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

LABEL_15:
  v11 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v12 = 2654435761 * self->_establishmentCellularFallback;
  if ((has & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  establishmentTime = self->_establishmentTime;
  if (establishmentTime < 0.0)
  {
    establishmentTime = -establishmentTime;
  }

  *v6.i64 = floor(establishmentTime + 0.5);
  v14 = (establishmentTime - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v15), v7, v6);
  v16 = 2654435761u * *v6.i64;
  if (v14 >= 0.0)
  {
    if (v14 > 0.0)
    {
      v16 += v14;
    }
  }

  else
  {
    v16 -= fabs(v14);
  }

LABEL_18:
  if ((has & 0x10) != 0)
  {
    v17 = 2654435761 * self->_establishmentSynRetransmits;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_20:
      v18 = 2654435761 * self->_establishmentForcedTcpFallback;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v17 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_20;
    }
  }

  v18 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_21:
    v19 = 2654435761 * self->_postConnectMultiHomed;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  v19 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_22:
    v20 = 2654435761 * self->_postConnectSingleHomed;
    if ((has & 0x20) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  v20 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_23:
    v21 = 2654435761 * self->_postConnectSubflowAttemptCount;
    if ((has & 0x40) != 0)
    {
      goto LABEL_24;
    }

LABEL_34:
    v22 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_25;
    }

LABEL_35:
    v26 = 0;
    goto LABEL_36;
  }

LABEL_33:
  v21 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_24:
  v22 = 2654435761 * self->_postConnectSubflowMaxSubflowCount;
  if ((has & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_25:
  postConnectSessionLifetime = self->_postConnectSessionLifetime;
  if (postConnectSessionLifetime < 0.0)
  {
    postConnectSessionLifetime = -postConnectSessionLifetime;
  }

  *v6.i64 = floor(postConnectSessionLifetime + 0.5);
  v24 = (postConnectSessionLifetime - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  v26 = 2654435761u * *vbslq_s8(vnegq_f64(v25), v7, v6).i64;
  if (v24 >= 0.0)
  {
    if (v24 > 0.0)
    {
      v26 += v24;
    }
  }

  else
  {
    v26 -= fabs(v24);
  }

LABEL_36:
  if ((has & 0x80) != 0)
  {
    v27 = 2654435761 * self->_subflowSwitchingCount;
  }

  else
  {
    v27 = 0;
  }

  v28 = v4 ^ v3 ^ v5 ^ v9;
  v29 = v10 ^ v11 ^ v12 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v26 ^ v27 ^ [(NSMutableArray *)self->_interfaceReports hash];
  return v28 ^ v29 ^ [(NSMutableArray *)self->_subflowSwitchingReports hash];
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x29EDCA608];
  if ((*(a3 + 52) & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
  }

  if (*(a3 + 4))
  {
    [(AWDMPTCPConnectionReport *)self setClientId:?];
  }

  if (*(a3 + 6))
  {
    [(AWDMPTCPConnectionReport *)self setEstablishmentInterfaceName:?];
  }

  v5 = *(a3 + 52);
  if ((v5 & 0x400) != 0)
  {
    self->_establishmentSuccess = *(a3 + 98);
    *&self->_has |= 0x400u;
    v5 = *(a3 + 52);
    if ((v5 & 8) == 0)
    {
LABEL_9:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_establishmentFailureError = *(a3 + 10);
  *&self->_has |= 8u;
  v5 = *(a3 + 52);
  if ((v5 & 0x800) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_establishmentTcpFallback = *(a3 + 99);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_establishmentCellularFallback = *(a3 + 96);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 52);
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_establishmentTime = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_establishmentSynRetransmits = *(a3 + 14);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_establishmentForcedTcpFallback = *(a3 + 97);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 52);
  if ((v5 & 0x1000) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_postConnectMultiHomed = *(a3 + 100);
  *&self->_has |= 0x1000u;
  v5 = *(a3 + 52);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_postConnectSingleHomed = *(a3 + 101);
  *&self->_has |= 0x2000u;
  v5 = *(a3 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_postConnectSubflowAttemptCount = *(a3 + 18);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_18:
    if ((v5 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_postConnectSubflowMaxSubflowCount = *(a3 + 19);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_19:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_47:
  self->_postConnectSessionLifetime = *(a3 + 2);
  *&self->_has |= 2u;
  if ((*(a3 + 52) & 0x80) != 0)
  {
LABEL_20:
    self->_subflowSwitchingCount = *(a3 + 20);
    *&self->_has |= 0x80u;
  }

LABEL_21:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(a3 + 8);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDMPTCPConnectionReport *)self addInterfaceReports:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(a3 + 11);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AWDMPTCPConnectionReport *)self addSubflowSwitchingReports:*(*(&v17 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x29EDCA608];
}

@end