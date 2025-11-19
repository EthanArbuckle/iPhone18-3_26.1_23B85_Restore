@interface PCPInteractionRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInteractionCommand:(id)a3;
- (int)interactionCommand;
- (unint64_t)hash;
- (void)clearOneofValuesForInteractionCommand;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setApplyStateEvent:(id)a3;
- (void)setComputeEvent:(id)a3;
- (void)setInterruptRequest:(id)a3;
- (void)setLifecycleEvent:(id)a3;
- (void)setPredictEvent:(id)a3;
- (void)setRetrieveStateEvent:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPInteractionRecord

- (void)setLifecycleEvent:(id)a3
{
  v4 = a3;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 1;
  lifecycleEvent = self->_lifecycleEvent;
  self->_lifecycleEvent = v4;
}

- (void)setApplyStateEvent:(id)a3
{
  v4 = a3;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 2;
  applyStateEvent = self->_applyStateEvent;
  self->_applyStateEvent = v4;
}

- (void)setRetrieveStateEvent:(id)a3
{
  v4 = a3;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 3;
  retrieveStateEvent = self->_retrieveStateEvent;
  self->_retrieveStateEvent = v4;
}

- (void)setComputeEvent:(id)a3
{
  v4 = a3;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 4;
  computeEvent = self->_computeEvent;
  self->_computeEvent = v4;
}

- (void)setPredictEvent:(id)a3
{
  v4 = a3;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 5;
  predictEvent = self->_predictEvent;
  self->_predictEvent = v4;
}

- (void)setInterruptRequest:(id)a3
{
  v4 = a3;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 6;
  interruptRequest = self->_interruptRequest;
  self->_interruptRequest = v4;
}

- (int)interactionCommand
{
  if (*&self->_has)
  {
    return self->_interactionCommand;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsInteractionCommand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"lifecycleEvent"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"applyStateEvent"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"retrieveStateEvent"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"computeEvent"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"predictEvent"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"InterruptRequest"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForInteractionCommand
{
  *&self->_has &= ~1u;
  self->_interactionCommand = 0;
  lifecycleEvent = self->_lifecycleEvent;
  self->_lifecycleEvent = 0;

  applyStateEvent = self->_applyStateEvent;
  self->_applyStateEvent = 0;

  retrieveStateEvent = self->_retrieveStateEvent;
  self->_retrieveStateEvent = 0;

  computeEvent = self->_computeEvent;
  self->_computeEvent = 0;

  predictEvent = self->_predictEvent;
  self->_predictEvent = 0;

  interruptRequest = self->_interruptRequest;
  self->_interruptRequest = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPInteractionRecord;
  v4 = [(PCPInteractionRecord *)&v8 description];
  v5 = [(PCPInteractionRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  lifecycleEvent = self->_lifecycleEvent;
  if (lifecycleEvent)
  {
    v5 = [(PCPLifecycleEvent *)lifecycleEvent dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"lifecycleEvent"];
  }

  applyStateEvent = self->_applyStateEvent;
  if (applyStateEvent)
  {
    v7 = [(PCPApplyState *)applyStateEvent dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"applyStateEvent"];
  }

  retrieveStateEvent = self->_retrieveStateEvent;
  if (retrieveStateEvent)
  {
    v9 = [(PCPRetrieveState *)retrieveStateEvent dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"retrieveStateEvent"];
  }

  computeEvent = self->_computeEvent;
  if (computeEvent)
  {
    v11 = [(PCPComputeRequest *)computeEvent dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"computeEvent"];
  }

  predictEvent = self->_predictEvent;
  if (predictEvent)
  {
    v13 = [(PCPPredictRequest *)predictEvent dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"predictEvent"];
  }

  interruptRequest = self->_interruptRequest;
  if (interruptRequest)
  {
    v15 = [(PCPComputeInterruptRequest *)interruptRequest dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"InterruptRequest"];
  }

  if (*&self->_has)
  {
    interactionCommand = self->_interactionCommand;
    if (interactionCommand >= 7)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_interactionCommand];
    }

    else
    {
      v17 = off_1E83B8098[interactionCommand];
    }

    [v3 setObject:v17 forKey:@"interaction_command"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_lifecycleEvent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_applyStateEvent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_retrieveStateEvent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_computeEvent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_predictEvent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_interruptRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_interactionCommand;
    *(v4 + 64) |= 1u;
  }

  v5 = v4;
  if (self->_lifecycleEvent)
  {
    [v4 setLifecycleEvent:?];
    v4 = v5;
  }

  if (self->_applyStateEvent)
  {
    [v5 setApplyStateEvent:?];
    v4 = v5;
  }

  if (self->_retrieveStateEvent)
  {
    [v5 setRetrieveStateEvent:?];
    v4 = v5;
  }

  if (self->_computeEvent)
  {
    [v5 setComputeEvent:?];
    v4 = v5;
  }

  if (self->_predictEvent)
  {
    [v5 setPredictEvent:?];
    v4 = v5;
  }

  if (self->_interruptRequest)
  {
    [v5 setInterruptRequest:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_interactionCommand;
    *(v5 + 64) |= 1u;
  }

  v7 = [(PCPLifecycleEvent *)self->_lifecycleEvent copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(PCPApplyState *)self->_applyStateEvent copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(PCPRetrieveState *)self->_retrieveStateEvent copyWithZone:a3];
  v12 = v6[7];
  v6[7] = v11;

  v13 = [(PCPComputeRequest *)self->_computeEvent copyWithZone:a3];
  v14 = v6[2];
  v6[2] = v13;

  v15 = [(PCPPredictRequest *)self->_predictEvent copyWithZone:a3];
  v16 = v6[6];
  v6[6] = v15;

  v17 = [(PCPComputeInterruptRequest *)self->_interruptRequest copyWithZone:a3];
  v18 = v6[4];
  v6[4] = v17;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_interactionCommand != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  lifecycleEvent = self->_lifecycleEvent;
  if (lifecycleEvent | *(v4 + 5) && ![(PCPLifecycleEvent *)lifecycleEvent isEqual:?])
  {
    goto LABEL_19;
  }

  applyStateEvent = self->_applyStateEvent;
  if (applyStateEvent | *(v4 + 1))
  {
    if (![(PCPApplyState *)applyStateEvent isEqual:?])
    {
      goto LABEL_19;
    }
  }

  retrieveStateEvent = self->_retrieveStateEvent;
  if (retrieveStateEvent | *(v4 + 7))
  {
    if (![(PCPRetrieveState *)retrieveStateEvent isEqual:?])
    {
      goto LABEL_19;
    }
  }

  computeEvent = self->_computeEvent;
  if (computeEvent | *(v4 + 2))
  {
    if (![(PCPComputeRequest *)computeEvent isEqual:?])
    {
      goto LABEL_19;
    }
  }

  predictEvent = self->_predictEvent;
  if (predictEvent | *(v4 + 6))
  {
    if (![(PCPPredictRequest *)predictEvent isEqual:?])
    {
      goto LABEL_19;
    }
  }

  interruptRequest = self->_interruptRequest;
  if (interruptRequest | *(v4 + 4))
  {
    v12 = [(PCPComputeInterruptRequest *)interruptRequest isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_interactionCommand;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PCPLifecycleEvent *)self->_lifecycleEvent hash]^ v3;
  v5 = [(PCPApplyState *)self->_applyStateEvent hash];
  v6 = v4 ^ v5 ^ [(PCPRetrieveState *)self->_retrieveStateEvent hash];
  v7 = [(PCPComputeRequest *)self->_computeEvent hash];
  v8 = v7 ^ [(PCPPredictRequest *)self->_predictEvent hash];
  return v6 ^ v8 ^ [(PCPComputeInterruptRequest *)self->_interruptRequest hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 64))
  {
    self->_interactionCommand = *(v4 + 6);
    *&self->_has |= 1u;
  }

  lifecycleEvent = self->_lifecycleEvent;
  v7 = v5[5];
  v18 = v5;
  if (lifecycleEvent)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(PCPLifecycleEvent *)lifecycleEvent mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(PCPInteractionRecord *)self setLifecycleEvent:?];
  }

  v5 = v18;
LABEL_9:
  applyStateEvent = self->_applyStateEvent;
  v9 = v5[1];
  if (applyStateEvent)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(PCPApplyState *)applyStateEvent mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(PCPInteractionRecord *)self setApplyStateEvent:?];
  }

  v5 = v18;
LABEL_15:
  retrieveStateEvent = self->_retrieveStateEvent;
  v11 = v5[7];
  if (retrieveStateEvent)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(PCPRetrieveState *)retrieveStateEvent mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(PCPInteractionRecord *)self setRetrieveStateEvent:?];
  }

  v5 = v18;
LABEL_21:
  computeEvent = self->_computeEvent;
  v13 = v5[2];
  if (computeEvent)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(PCPComputeRequest *)computeEvent mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(PCPInteractionRecord *)self setComputeEvent:?];
  }

  v5 = v18;
LABEL_27:
  predictEvent = self->_predictEvent;
  v15 = v5[6];
  if (predictEvent)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(PCPPredictRequest *)predictEvent mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(PCPInteractionRecord *)self setPredictEvent:?];
  }

  v5 = v18;
LABEL_33:
  interruptRequest = self->_interruptRequest;
  v17 = v5[4];
  if (interruptRequest)
  {
    if (v17)
    {
      [(PCPComputeInterruptRequest *)interruptRequest mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(PCPInteractionRecord *)self setInterruptRequest:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end