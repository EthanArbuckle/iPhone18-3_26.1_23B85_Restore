@interface PCPInteractionRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInteractionCommand:(id)command;
- (int)interactionCommand;
- (unint64_t)hash;
- (void)clearOneofValuesForInteractionCommand;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setApplyStateEvent:(id)event;
- (void)setComputeEvent:(id)event;
- (void)setInterruptRequest:(id)request;
- (void)setLifecycleEvent:(id)event;
- (void)setPredictEvent:(id)event;
- (void)setRetrieveStateEvent:(id)event;
- (void)writeTo:(id)to;
@end

@implementation PCPInteractionRecord

- (void)setLifecycleEvent:(id)event
{
  eventCopy = event;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 1;
  lifecycleEvent = self->_lifecycleEvent;
  self->_lifecycleEvent = eventCopy;
}

- (void)setApplyStateEvent:(id)event
{
  eventCopy = event;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 2;
  applyStateEvent = self->_applyStateEvent;
  self->_applyStateEvent = eventCopy;
}

- (void)setRetrieveStateEvent:(id)event
{
  eventCopy = event;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 3;
  retrieveStateEvent = self->_retrieveStateEvent;
  self->_retrieveStateEvent = eventCopy;
}

- (void)setComputeEvent:(id)event
{
  eventCopy = event;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 4;
  computeEvent = self->_computeEvent;
  self->_computeEvent = eventCopy;
}

- (void)setPredictEvent:(id)event
{
  eventCopy = event;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 5;
  predictEvent = self->_predictEvent;
  self->_predictEvent = eventCopy;
}

- (void)setInterruptRequest:(id)request
{
  requestCopy = request;
  [(PCPInteractionRecord *)self clearOneofValuesForInteractionCommand];
  *&self->_has |= 1u;
  self->_interactionCommand = 6;
  interruptRequest = self->_interruptRequest;
  self->_interruptRequest = requestCopy;
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

- (int)StringAsInteractionCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([commandCopy isEqualToString:@"lifecycleEvent"])
  {
    v4 = 1;
  }

  else if ([commandCopy isEqualToString:@"applyStateEvent"])
  {
    v4 = 2;
  }

  else if ([commandCopy isEqualToString:@"retrieveStateEvent"])
  {
    v4 = 3;
  }

  else if ([commandCopy isEqualToString:@"computeEvent"])
  {
    v4 = 4;
  }

  else if ([commandCopy isEqualToString:@"predictEvent"])
  {
    v4 = 5;
  }

  else if ([commandCopy isEqualToString:@"InterruptRequest"])
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
  dictionaryRepresentation = [(PCPInteractionRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  lifecycleEvent = self->_lifecycleEvent;
  if (lifecycleEvent)
  {
    dictionaryRepresentation = [(PCPLifecycleEvent *)lifecycleEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"lifecycleEvent"];
  }

  applyStateEvent = self->_applyStateEvent;
  if (applyStateEvent)
  {
    dictionaryRepresentation2 = [(PCPApplyState *)applyStateEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"applyStateEvent"];
  }

  retrieveStateEvent = self->_retrieveStateEvent;
  if (retrieveStateEvent)
  {
    dictionaryRepresentation3 = [(PCPRetrieveState *)retrieveStateEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"retrieveStateEvent"];
  }

  computeEvent = self->_computeEvent;
  if (computeEvent)
  {
    dictionaryRepresentation4 = [(PCPComputeRequest *)computeEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"computeEvent"];
  }

  predictEvent = self->_predictEvent;
  if (predictEvent)
  {
    dictionaryRepresentation5 = [(PCPPredictRequest *)predictEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"predictEvent"];
  }

  interruptRequest = self->_interruptRequest;
  if (interruptRequest)
  {
    dictionaryRepresentation6 = [(PCPComputeInterruptRequest *)interruptRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"InterruptRequest"];
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

    [dictionary setObject:v17 forKey:@"interaction_command"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_lifecycleEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_applyStateEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_retrieveStateEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_computeEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_predictEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_interruptRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_interactionCommand;
    *(toCopy + 64) |= 1u;
  }

  v5 = toCopy;
  if (self->_lifecycleEvent)
  {
    [toCopy setLifecycleEvent:?];
    toCopy = v5;
  }

  if (self->_applyStateEvent)
  {
    [v5 setApplyStateEvent:?];
    toCopy = v5;
  }

  if (self->_retrieveStateEvent)
  {
    [v5 setRetrieveStateEvent:?];
    toCopy = v5;
  }

  if (self->_computeEvent)
  {
    [v5 setComputeEvent:?];
    toCopy = v5;
  }

  if (self->_predictEvent)
  {
    [v5 setPredictEvent:?];
    toCopy = v5;
  }

  if (self->_interruptRequest)
  {
    [v5 setInterruptRequest:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_interactionCommand;
    *(v5 + 64) |= 1u;
  }

  v7 = [(PCPLifecycleEvent *)self->_lifecycleEvent copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(PCPApplyState *)self->_applyStateEvent copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(PCPRetrieveState *)self->_retrieveStateEvent copyWithZone:zone];
  v12 = v6[7];
  v6[7] = v11;

  v13 = [(PCPComputeRequest *)self->_computeEvent copyWithZone:zone];
  v14 = v6[2];
  v6[2] = v13;

  v15 = [(PCPPredictRequest *)self->_predictEvent copyWithZone:zone];
  v16 = v6[6];
  v6[6] = v15;

  v17 = [(PCPComputeInterruptRequest *)self->_interruptRequest copyWithZone:zone];
  v18 = v6[4];
  v6[4] = v17;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_interactionCommand != *(equalCopy + 6))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  lifecycleEvent = self->_lifecycleEvent;
  if (lifecycleEvent | *(equalCopy + 5) && ![(PCPLifecycleEvent *)lifecycleEvent isEqual:?])
  {
    goto LABEL_19;
  }

  applyStateEvent = self->_applyStateEvent;
  if (applyStateEvent | *(equalCopy + 1))
  {
    if (![(PCPApplyState *)applyStateEvent isEqual:?])
    {
      goto LABEL_19;
    }
  }

  retrieveStateEvent = self->_retrieveStateEvent;
  if (retrieveStateEvent | *(equalCopy + 7))
  {
    if (![(PCPRetrieveState *)retrieveStateEvent isEqual:?])
    {
      goto LABEL_19;
    }
  }

  computeEvent = self->_computeEvent;
  if (computeEvent | *(equalCopy + 2))
  {
    if (![(PCPComputeRequest *)computeEvent isEqual:?])
    {
      goto LABEL_19;
    }
  }

  predictEvent = self->_predictEvent;
  if (predictEvent | *(equalCopy + 6))
  {
    if (![(PCPPredictRequest *)predictEvent isEqual:?])
    {
      goto LABEL_19;
    }
  }

  interruptRequest = self->_interruptRequest;
  if (interruptRequest | *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 64))
  {
    self->_interactionCommand = *(fromCopy + 6);
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