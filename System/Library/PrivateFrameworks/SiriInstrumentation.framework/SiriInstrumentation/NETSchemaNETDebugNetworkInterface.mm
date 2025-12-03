@interface NETSchemaNETDebugNetworkInterface
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETDebugNetworkInterface)initWithDictionary:(id)dictionary;
- (NETSchemaNETDebugNetworkInterface)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBytesReceived:(BOOL)received;
- (void)setHasBytesRetransmitted:(BOOL)retransmitted;
- (void)setHasBytesSent:(BOOL)sent;
- (void)setHasBytesUnacked:(BOOL)unacked;
- (void)setHasDuplicateBytesReceived:(BOOL)received;
- (void)setHasOutOfOrderBytesReceived:(BOOL)received;
- (void)setHasPacketsReceived:(BOOL)received;
- (void)setHasPacketsSent:(BOOL)sent;
- (void)setHasRttBest:(BOOL)best;
- (void)setHasRttSmoothed:(BOOL)smoothed;
- (void)setHasRttVariance:(BOOL)variance;
- (void)setHasSendBandwidth:(BOOL)bandwidth;
- (void)setHasSendBufferBytes:(BOOL)bytes;
- (void)setHasSynRetransmits:(BOOL)retransmits;
- (void)setHasTfoSynDataAcked:(BOOL)acked;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETDebugNetworkInterface

- (NETSchemaNETDebugNetworkInterface)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v43.receiver = self;
  v43.super_class = NETSchemaNETDebugNetworkInterface;
  v5 = [(NETSchemaNETDebugNetworkInterface *)&v43 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rttCurrent"];
    objc_opt_class();
    v41 = v6;
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setRttCurrent:](v5, "setRttCurrent:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"rttSmoothed"];
    objc_opt_class();
    v39 = v7;
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setRttSmoothed:](v5, "setRttSmoothed:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"rttVariance"];
    objc_opt_class();
    v37 = v8;
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setRttVariance:](v5, "setRttVariance:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"rttBest"];
    objc_opt_class();
    v35 = v9;
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setRttBest:](v5, "setRttBest:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"packetsSent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setPacketsSent:](v5, "setPacketsSent:", [v10 unsignedLongLongValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"packetsReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setPacketsReceived:](v5, "setPacketsReceived:", [v11 unsignedLongLongValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"bytesSent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setBytesSent:](v5, "setBytesSent:", [v12 unsignedLongLongValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"bytesRetransmitted"];
    objc_opt_class();
    v42 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setBytesRetransmitted:](v5, "setBytesRetransmitted:", [v13 unsignedLongLongValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"bytesUnacked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setBytesUnacked:](v5, "setBytesUnacked:", [v14 unsignedLongLongValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"bytesReceived"];
    objc_opt_class();
    v40 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setBytesReceived:](v5, "setBytesReceived:", [v15 unsignedLongLongValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"duplicateBytesReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setDuplicateBytesReceived:](v5, "setDuplicateBytesReceived:", [v16 unsignedLongLongValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"outOfOrderBytesReceived"];
    objc_opt_class();
    v38 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setOutOfOrderBytesReceived:](v5, "setOutOfOrderBytesReceived:", [v17 unsignedLongLongValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"sendBufferBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setSendBufferBytes:](v5, "setSendBufferBytes:", [v18 unsignedLongLongValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"sendBandwidth"];
    objc_opt_class();
    v36 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setSendBandwidth:](v5, "setSendBandwidth:", [v19 unsignedLongLongValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"synRetransmits"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setSynRetransmits:](v5, "setSynRetransmits:", [v20 unsignedIntValue]);
    }

    v34 = v12;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"tfoSynDataAcked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setTfoSynDataAcked:](v5, "setTfoSynDataAcked:", [v21 unsignedIntValue]);
    }

    v33 = v21;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"subflowSwitchCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkInterface setSubflowSwitchCount:](v5, "setSubflowSwitchCount:", [v22 unsignedIntValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"networkInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v11;
      v24 = v10;
      v25 = v20;
      v26 = v18;
      v27 = v16;
      v28 = v14;
      v29 = [[NETSchemaNETNetworkInterface alloc] initWithDictionary:v23];
      [(NETSchemaNETDebugNetworkInterface *)v5 setNetworkInterface:v29];

      v14 = v28;
      v16 = v27;
      v18 = v26;
      v20 = v25;
      v10 = v24;
      v11 = v32;
    }

    v30 = v5;
  }

  return v5;
}

- (NETSchemaNETDebugNetworkInterface)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETDebugNetworkInterface *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETDebugNetworkInterface *)self dictionaryRepresentation];
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
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkInterface bytesReceived](self, "bytesReceived")}];
    [dictionary setObject:v9 forKeyedSubscript:@"bytesReceived"];

    has = *p_has;
    if ((*p_has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkInterface bytesRetransmitted](self, "bytesRetransmitted")}];
  [dictionary setObject:v10 forKeyedSubscript:@"bytesRetransmitted"];

  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkInterface bytesSent](self, "bytesSent")}];
  [dictionary setObject:v11 forKeyedSubscript:@"bytesSent"];

  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkInterface bytesUnacked](self, "bytesUnacked")}];
  [dictionary setObject:v12 forKeyedSubscript:@"bytesUnacked"];

  if ((*p_has & 0x400) != 0)
  {
LABEL_6:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkInterface duplicateBytesReceived](self, "duplicateBytesReceived")}];
    [dictionary setObject:v6 forKeyedSubscript:@"duplicateBytesReceived"];
  }

LABEL_7:
  if (self->_networkInterface)
  {
    networkInterface = [(NETSchemaNETDebugNetworkInterface *)self networkInterface];
    dictionaryRepresentation = [networkInterface dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"networkInterface"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"networkInterface"];
    }
  }

  v14 = *p_has;
  if ((*p_has & 0x800) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkInterface outOfOrderBytesReceived](self, "outOfOrderBytesReceived")}];
    [dictionary setObject:v21 forKeyedSubscript:@"outOfOrderBytesReceived"];

    v14 = *p_has;
    if ((*p_has & 0x20) == 0)
    {
LABEL_19:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_38;
    }
  }

  else if ((v14 & 0x20) == 0)
  {
    goto LABEL_19;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkInterface packetsReceived](self, "packetsReceived")}];
  [dictionary setObject:v22 forKeyedSubscript:@"packetsReceived"];

  v14 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_20:
    if ((v14 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkInterface packetsSent](self, "packetsSent")}];
  [dictionary setObject:v23 forKeyedSubscript:@"packetsSent"];

  v14 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_21:
    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugNetworkInterface rttBest](self, "rttBest")}];
  [dictionary setObject:v24 forKeyedSubscript:@"rttBest"];

  v14 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_22:
    if ((v14 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugNetworkInterface rttCurrent](self, "rttCurrent")}];
  [dictionary setObject:v25 forKeyedSubscript:@"rttCurrent"];

  v14 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_23:
    if ((v14 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

LABEL_41:
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugNetworkInterface rttSmoothed](self, "rttSmoothed")}];
  [dictionary setObject:v26 forKeyedSubscript:@"rttSmoothed"];

  v14 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_24:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_42:
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugNetworkInterface rttVariance](self, "rttVariance")}];
  [dictionary setObject:v27 forKeyedSubscript:@"rttVariance"];

  v14 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_25:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_43:
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkInterface sendBandwidth](self, "sendBandwidth")}];
  [dictionary setObject:v28 forKeyedSubscript:@"sendBandwidth"];

  if ((*p_has & 0x1000) != 0)
  {
LABEL_26:
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkInterface sendBufferBytes](self, "sendBufferBytes")}];
    [dictionary setObject:v15 forKeyedSubscript:@"sendBufferBytes"];
  }

LABEL_27:
  if (*(&self->_has + 2))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugNetworkInterface subflowSwitchCount](self, "subflowSwitchCount")}];
    [dictionary setObject:v16 forKeyedSubscript:@"subflowSwitchCount"];
  }

  v17 = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugNetworkInterface synRetransmits](self, "synRetransmits")}];
    [dictionary setObject:v18 forKeyedSubscript:@"synRetransmits"];

    v17 = *p_has;
  }

  if (v17 < 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugNetworkInterface tfoSynDataAcked](self, "tfoSynDataAcked")}];
    [dictionary setObject:v19 forKeyedSubscript:@"tfoSynDataAcked"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v7 = 2654435761 * self->_rttCurrent;
    if ((has & 2) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_rttSmoothed;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v7 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v9 = 2654435761 * self->_rttVariance;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v10 = 2654435761 * self->_rttBest;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v11 = 2654435761u * self->_packetsSent;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v12 = 2654435761u * self->_packetsReceived;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v13 = 2654435761u * self->_bytesSent;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v14 = 2654435761u * self->_bytesRetransmitted;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v15 = 2654435761u * self->_bytesUnacked;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v16 = 2654435761u * self->_bytesReceived;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v17 = 2654435761u * self->_duplicateBytesReceived;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    v18 = 2654435761u * self->_outOfOrderBytesReceived;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v19 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_27:
  v18 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v19 = 2654435761u * self->_sendBufferBytes;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    v20 = 2654435761u * self->_sendBandwidth;
    goto LABEL_30;
  }

LABEL_29:
  v20 = 0;
LABEL_30:
  v25 = v2;
  if ((*&self->_has & 0x4000) != 0)
  {
    v21 = 2654435761 * self->_synRetransmits;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v21 = 0;
    if ((*&self->_has & 0x8000) != 0)
    {
LABEL_32:
      v22 = 2654435761 * self->_tfoSynDataAcked;
      goto LABEL_35;
    }
  }

  v22 = 0;
LABEL_35:
  if (*(&self->_has + 2))
  {
    v23 = 2654435761 * self->_subflowSwitchCount;
  }

  else
  {
    v23 = 0;
  }

  return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(NETSchemaNETNetworkInterface *)self->_networkInterface hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_73;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = equalCopy + 64;
  v8 = equalCopy[64];
  if ((*&has & 1) != (v8 & 1))
  {
    goto LABEL_73;
  }

  if (*&has)
  {
    rttCurrent = self->_rttCurrent;
    if (rttCurrent != [equalCopy rttCurrent])
    {
      goto LABEL_73;
    }

    has = *p_has;
    v8 = *v7;
  }

  v10 = (*&has >> 1) & 1;
  if (v10 == ((v8 >> 1) & 1))
  {
    if (v10)
    {
      rttSmoothed = self->_rttSmoothed;
      if (rttSmoothed != [equalCopy rttSmoothed])
      {
        goto LABEL_73;
      }

      has = *p_has;
      v8 = *v7;
    }

    v12 = (*&has >> 2) & 1;
    if (v12 == ((v8 >> 2) & 1))
    {
      if (v12)
      {
        rttVariance = self->_rttVariance;
        if (rttVariance != [equalCopy rttVariance])
        {
          goto LABEL_73;
        }

        has = *p_has;
        v8 = *v7;
      }

      v14 = (*&has >> 3) & 1;
      if (v14 == ((v8 >> 3) & 1))
      {
        if (v14)
        {
          rttBest = self->_rttBest;
          if (rttBest != [equalCopy rttBest])
          {
            goto LABEL_73;
          }

          has = *p_has;
          v8 = *v7;
        }

        v16 = (*&has >> 4) & 1;
        if (v16 == ((v8 >> 4) & 1))
        {
          if (v16)
          {
            packetsSent = self->_packetsSent;
            if (packetsSent != [equalCopy packetsSent])
            {
              goto LABEL_73;
            }

            has = *p_has;
            v8 = *v7;
          }

          v18 = (*&has >> 5) & 1;
          if (v18 == ((v8 >> 5) & 1))
          {
            if (v18)
            {
              packetsReceived = self->_packetsReceived;
              if (packetsReceived != [equalCopy packetsReceived])
              {
                goto LABEL_73;
              }

              has = *p_has;
              v8 = *v7;
            }

            v20 = (*&has >> 6) & 1;
            if (v20 == ((v8 >> 6) & 1))
            {
              if (v20)
              {
                bytesSent = self->_bytesSent;
                if (bytesSent != [equalCopy bytesSent])
                {
                  goto LABEL_73;
                }

                has = *p_has;
                v8 = *v7;
              }

              v22 = (*&has >> 7) & 1;
              if (v22 == ((v8 >> 7) & 1))
              {
                if (v22)
                {
                  bytesRetransmitted = self->_bytesRetransmitted;
                  if (bytesRetransmitted != [equalCopy bytesRetransmitted])
                  {
                    goto LABEL_73;
                  }

                  has = *p_has;
                  v8 = *v7;
                }

                v24 = (*&has >> 8) & 1;
                if (v24 == ((v8 >> 8) & 1))
                {
                  if (v24)
                  {
                    bytesUnacked = self->_bytesUnacked;
                    if (bytesUnacked != [equalCopy bytesUnacked])
                    {
                      goto LABEL_73;
                    }

                    has = *p_has;
                    v8 = *v7;
                  }

                  v26 = (*&has >> 9) & 1;
                  if (v26 == ((v8 >> 9) & 1))
                  {
                    if (v26)
                    {
                      bytesReceived = self->_bytesReceived;
                      if (bytesReceived != [equalCopy bytesReceived])
                      {
                        goto LABEL_73;
                      }

                      has = *p_has;
                      v8 = *v7;
                    }

                    v28 = (*&has >> 10) & 1;
                    if (v28 == ((v8 >> 10) & 1))
                    {
                      if (v28)
                      {
                        duplicateBytesReceived = self->_duplicateBytesReceived;
                        if (duplicateBytesReceived != [equalCopy duplicateBytesReceived])
                        {
                          goto LABEL_73;
                        }

                        has = *p_has;
                        v8 = *v7;
                      }

                      v30 = (*&has >> 11) & 1;
                      if (v30 == ((v8 >> 11) & 1))
                      {
                        if (v30)
                        {
                          outOfOrderBytesReceived = self->_outOfOrderBytesReceived;
                          if (outOfOrderBytesReceived != [equalCopy outOfOrderBytesReceived])
                          {
                            goto LABEL_73;
                          }

                          has = *p_has;
                          v8 = *v7;
                        }

                        v32 = (*&has >> 12) & 1;
                        if (v32 == ((v8 >> 12) & 1))
                        {
                          if (v32)
                          {
                            sendBufferBytes = self->_sendBufferBytes;
                            if (sendBufferBytes != [equalCopy sendBufferBytes])
                            {
                              goto LABEL_73;
                            }

                            has = *p_has;
                            v8 = *v7;
                          }

                          v34 = (*&has >> 13) & 1;
                          if (v34 == ((v8 >> 13) & 1))
                          {
                            if (v34)
                            {
                              sendBandwidth = self->_sendBandwidth;
                              if (sendBandwidth != [equalCopy sendBandwidth])
                              {
                                goto LABEL_73;
                              }

                              has = *p_has;
                              v8 = *v7;
                            }

                            v36 = (*&has >> 14) & 1;
                            if (v36 == ((v8 >> 14) & 1))
                            {
                              if (v36)
                              {
                                synRetransmits = self->_synRetransmits;
                                if (synRetransmits != [equalCopy synRetransmits])
                                {
                                  goto LABEL_73;
                                }

                                has = *p_has;
                                v8 = *v7;
                              }

                              if (((v8 ^ *&has) & 0x8000) == 0)
                              {
                                if ((*&has & 0x8000) == 0 || (tfoSynDataAcked = self->_tfoSynDataAcked, tfoSynDataAcked == [equalCopy tfoSynDataAcked]))
                                {
                                  if ((*(&self->_has + 2) & 1) == (equalCopy[65] & 1))
                                  {
                                    if ((*(&self->_has + 2) & 1) == 0 || (subflowSwitchCount = self->_subflowSwitchCount, subflowSwitchCount == [equalCopy subflowSwitchCount]))
                                    {
                                      networkInterface = [(NETSchemaNETDebugNetworkInterface *)self networkInterface];
                                      networkInterface2 = [equalCopy networkInterface];
                                      v42 = networkInterface2;
                                      if ((networkInterface != 0) != (networkInterface2 == 0))
                                      {
                                        networkInterface3 = [(NETSchemaNETDebugNetworkInterface *)self networkInterface];
                                        if (!networkInterface3)
                                        {

LABEL_76:
                                          v48 = 1;
                                          goto LABEL_74;
                                        }

                                        v44 = networkInterface3;
                                        networkInterface4 = [(NETSchemaNETDebugNetworkInterface *)self networkInterface];
                                        networkInterface5 = [equalCopy networkInterface];
                                        v47 = [networkInterface4 isEqual:networkInterface5];

                                        if (v47)
                                        {
                                          goto LABEL_76;
                                        }
                                      }

                                      else
                                      {
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_73:
  v48 = 0;
LABEL_74:

  return v48;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_38:
    PBDataWriterWriteUint32Field();
    if ((*p_has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_37:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    goto LABEL_38;
  }

LABEL_16:
  if ((has & 0x8000) == 0)
  {
    goto LABEL_17;
  }

LABEL_39:
  PBDataWriterWriteUint32Field();
LABEL_17:
  if (*(&self->_has + 2))
  {
    PBDataWriterWriteUint32Field();
  }

  networkInterface = [(NETSchemaNETDebugNetworkInterface *)self networkInterface];

  v7 = toCopy;
  if (networkInterface)
  {
    networkInterface2 = [(NETSchemaNETDebugNetworkInterface *)self networkInterface];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (void)setHasTfoSynDataAcked:(BOOL)acked
{
  if (acked)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasSynRetransmits:(BOOL)retransmits
{
  if (retransmits)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasSendBandwidth:(BOOL)bandwidth
{
  if (bandwidth)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasSendBufferBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasOutOfOrderBytesReceived:(BOOL)received
{
  if (received)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasDuplicateBytesReceived:(BOOL)received
{
  if (received)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasBytesReceived:(BOOL)received
{
  if (received)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasBytesUnacked:(BOOL)unacked
{
  if (unacked)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasBytesRetransmitted:(BOOL)retransmitted
{
  if (retransmitted)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasBytesSent:(BOOL)sent
{
  if (sent)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasPacketsReceived:(BOOL)received
{
  if (received)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPacketsSent:(BOOL)sent
{
  if (sent)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRttBest:(BOOL)best
{
  if (best)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRttVariance:(BOOL)variance
{
  if (variance)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRttSmoothed:(BOOL)smoothed
{
  if (smoothed)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NETSchemaNETDebugNetworkInterface;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NETSchemaNETDebugNetworkInterface *)self networkInterface:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NETSchemaNETDebugNetworkInterface *)self deleteNetworkInterface];
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