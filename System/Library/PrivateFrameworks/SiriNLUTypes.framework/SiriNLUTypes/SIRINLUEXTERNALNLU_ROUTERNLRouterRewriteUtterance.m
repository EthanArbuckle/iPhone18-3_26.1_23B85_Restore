@interface SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRoutingDecision:(id)a3;
- (int)routingDecision;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  utteranceId = self->_utteranceId;
  v6 = *(v4 + 4);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  if (*(v4 + 2))
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance *)self setRewriteUtterance:?];
    v4 = v9;
  }

  if (*(v4 + 40))
  {
    self->_routingDecision = *(v4 + 6);
    *&self->_has |= 1u;
  }

  correctionOutcome = self->_correctionOutcome;
  v8 = *(v4 + 1);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  utteranceId = self->_utteranceId;
  if (utteranceId | *(v4 + 4))
  {
    if (![(SIRINLUEXTERNALUUID *)utteranceId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  rewriteUtterance = self->_rewriteUtterance;
  if (rewriteUtterance | *(v4 + 2))
  {
    if (![(NSString *)rewriteUtterance isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_routingDecision != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  correctionOutcome = self->_correctionOutcome;
  if (correctionOutcome | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_utteranceId copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_rewriteUtterance copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_routingDecision;
    *(v5 + 40) |= 1u;
  }

  v10 = [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcome copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_utteranceId)
  {
    [v4 setUtteranceId:?];
    v4 = v5;
  }

  if (self->_rewriteUtterance)
  {
    [v5 setRewriteUtterance:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_routingDecision;
    *(v4 + 40) |= 1u;
  }

  if (self->_correctionOutcome)
  {
    [v5 setCorrectionOutcome:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_utteranceId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_rewriteUtterance)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    routingDecision = self->_routingDecision;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_correctionOutcome)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  utteranceId = self->_utteranceId;
  if (utteranceId)
  {
    v5 = [(SIRINLUEXTERNALUUID *)utteranceId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"utterance_id"];
  }

  rewriteUtterance = self->_rewriteUtterance;
  if (rewriteUtterance)
  {
    [v3 setObject:rewriteUtterance forKey:@"rewrite_utterance"];
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

    [v3 setObject:v8 forKey:@"routing_decision"];
  }

  correctionOutcome = self->_correctionOutcome;
  if (correctionOutcome)
  {
    v10 = [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcome dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"correction_outcome"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterRewriteUtterance *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsRoutingDecision:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NL_ROUTER_ROUTING_DECISION_UNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NL_ROUTER_ROUTING_DECISION_SIRI_X"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NL_ROUTER_ROUTING_DECISION_PLANNER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NL_ROUTER_ROUTING_DECISION_GEN_AI"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NL_ROUTER_ROUTING_DECISION_SEARCH"])
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