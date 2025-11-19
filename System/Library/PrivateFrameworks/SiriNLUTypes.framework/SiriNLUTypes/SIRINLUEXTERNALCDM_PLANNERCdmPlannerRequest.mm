@interface SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest *)self setJsonTranscript:?];
    v4 = v7;
  }

  cdmPlannerRequestIdentifier = self->_cdmPlannerRequestIdentifier;
  v6 = v4[1];
  if (cdmPlannerRequestIdentifier)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)cdmPlannerRequestIdentifier mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest *)self setCdmPlannerRequestIdentifier:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((jsonTranscript = self->_jsonTranscript, !(jsonTranscript | v4[2])) || -[NSString isEqual:](jsonTranscript, "isEqual:")))
  {
    cdmPlannerRequestIdentifier = self->_cdmPlannerRequestIdentifier;
    if (cdmPlannerRequestIdentifier | v4[1])
    {
      v7 = [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)cdmPlannerRequestIdentifier isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_jsonTranscript copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)self->_cdmPlannerRequestIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_jsonTranscript)
  {
    [v4 setJsonTranscript:?];
    v4 = v5;
  }

  if (self->_cdmPlannerRequestIdentifier)
  {
    [v5 setCdmPlannerRequestIdentifier:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_jsonTranscript)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_cdmPlannerRequestIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  jsonTranscript = self->_jsonTranscript;
  if (jsonTranscript)
  {
    [v3 setObject:jsonTranscript forKey:@"json_transcript"];
  }

  cdmPlannerRequestIdentifier = self->_cdmPlannerRequestIdentifier;
  if (cdmPlannerRequestIdentifier)
  {
    v7 = [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)cdmPlannerRequestIdentifier dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"cdm_planner_request_identifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest;
  v4 = [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest *)&v8 description];
  v5 = [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end