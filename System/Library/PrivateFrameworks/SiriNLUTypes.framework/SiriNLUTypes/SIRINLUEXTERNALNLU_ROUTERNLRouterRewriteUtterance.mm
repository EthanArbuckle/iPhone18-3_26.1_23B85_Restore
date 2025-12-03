@interface SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRoutingDecision:(id)decision;
- (int)routingDecision;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  utteranceId = self->_utteranceId;
  v6 = *(fromCopy + 4);
  v9 = fromCopy;
  if (utteranceId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALUUID *)utteranceId mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance *)self setUtteranceId:?];
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 2))
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance *)self setRewriteUtterance:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 40))
  {
    self->_routingDecision = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  correctionOutcome = self->_correctionOutcome;
  v8 = *(fromCopy + 1);
  if (correctionOutcome)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcome mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance *)self setCorrectionOutcome:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_utteranceId hash];
  v4 = [(NSString *)self->_rewriteUtterance hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_routingDecision;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcome hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  utteranceId = self->_utteranceId;
  if (utteranceId | *(equalCopy + 4))
  {
    if (![(SIRINLUEXTERNALUUID *)utteranceId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  rewriteUtterance = self->_rewriteUtterance;
  if (rewriteUtterance | *(equalCopy + 2))
  {
    if (![(NSString *)rewriteUtterance isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_routingDecision != *(equalCopy + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  correctionOutcome = self->_correctionOutcome;
  if (correctionOutcome | *(equalCopy + 1))
  {
    v9 = [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcome isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_utteranceId copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_rewriteUtterance copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_routingDecision;
    *(v5 + 40) |= 1u;
  }

  v10 = [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcome copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_utteranceId)
  {
    [toCopy setUtteranceId:?];
    toCopy = v5;
  }

  if (self->_rewriteUtterance)
  {
    [v5 setRewriteUtterance:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_routingDecision;
    *(toCopy + 40) |= 1u;
  }

  if (self->_correctionOutcome)
  {
    [v5 setCorrectionOutcome:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_utteranceId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_rewriteUtterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    routingDecision = self->_routingDecision;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_correctionOutcome)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  utteranceId = self->_utteranceId;
  if (utteranceId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)utteranceId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"utterance_id"];
  }

  rewriteUtterance = self->_rewriteUtterance;
  if (rewriteUtterance)
  {
    [dictionary setObject:rewriteUtterance forKey:@"rewrite_utterance"];
  }

  if (*&self->_has)
  {
    routingDecision = self->_routingDecision;
    if (routingDecision >= 5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_routingDecision];
    }

    else
    {
      v8 = off_1E8328288[routingDecision];
    }

    [dictionary setObject:v8 forKey:@"routing_decision"];
  }

  correctionOutcome = self->_correctionOutcome;
  if (correctionOutcome)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcome dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"correction_outcome"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsRoutingDecision:(id)decision
{
  decisionCopy = decision;
  if ([decisionCopy isEqualToString:@"NL_ROUTER_ROUTING_DECISION_UNSET"])
  {
    v4 = 0;
  }

  else if ([decisionCopy isEqualToString:@"NL_ROUTER_ROUTING_DECISION_SIRI_X"])
  {
    v4 = 1;
  }

  else if ([decisionCopy isEqualToString:@"NL_ROUTER_ROUTING_DECISION_PLANNER"])
  {
    v4 = 2;
  }

  else if ([decisionCopy isEqualToString:@"NL_ROUTER_ROUTING_DECISION_GEN_AI"])
  {
    v4 = 3;
  }

  else if ([decisionCopy isEqualToString:@"NL_ROUTER_ROUTING_DECISION_SEARCH"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)routingDecision
{
  if (*&self->_has)
  {
    return self->_routingDecision;
  }

  else
  {
    return 0;
  }
}

@end