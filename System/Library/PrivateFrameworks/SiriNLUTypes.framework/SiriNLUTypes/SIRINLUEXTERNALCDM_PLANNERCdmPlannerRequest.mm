@interface SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest *)self setJsonTranscript:?];
    fromCopy = v7;
  }

  cdmPlannerRequestIdentifier = self->_cdmPlannerRequestIdentifier;
  v6 = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((jsonTranscript = self->_jsonTranscript, !(jsonTranscript | equalCopy[2])) || -[NSString isEqual:](jsonTranscript, "isEqual:")))
  {
    cdmPlannerRequestIdentifier = self->_cdmPlannerRequestIdentifier;
    if (cdmPlannerRequestIdentifier | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_jsonTranscript copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)self->_cdmPlannerRequestIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_jsonTranscript)
  {
    [toCopy setJsonTranscript:?];
    toCopy = v5;
  }

  if (self->_cdmPlannerRequestIdentifier)
  {
    [v5 setCdmPlannerRequestIdentifier:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_jsonTranscript)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_cdmPlannerRequestIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  jsonTranscript = self->_jsonTranscript;
  if (jsonTranscript)
  {
    [dictionary setObject:jsonTranscript forKey:@"json_transcript"];
  }

  cdmPlannerRequestIdentifier = self->_cdmPlannerRequestIdentifier;
  if (cdmPlannerRequestIdentifier)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)cdmPlannerRequestIdentifier dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"cdm_planner_request_identifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest;
  v4 = [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end