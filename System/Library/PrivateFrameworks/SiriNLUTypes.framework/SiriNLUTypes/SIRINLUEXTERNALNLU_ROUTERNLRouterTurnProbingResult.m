@interface SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  nlParseResponse = self->_nlParseResponse;
  v6 = v4[1];
  v9 = v4;
  if (nlParseResponse)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALNLU_ROUTERNLParseResponse *)nlParseResponse mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult *)self setNlParseResponse:?];
  }

  v4 = v9;
LABEL_7:
  pommesResponse = self->_pommesResponse;
  v8 = v4[2];
  if (pommesResponse)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALNLU_ROUTERPommesResponse *)pommesResponse mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult *)self setPommesResponse:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((nlParseResponse = self->_nlParseResponse, !(nlParseResponse | v4[1])) || -[SIRINLUEXTERNALNLU_ROUTERNLParseResponse isEqual:](nlParseResponse, "isEqual:")))
  {
    pommesResponse = self->_pommesResponse;
    if (pommesResponse | v4[2])
    {
      v7 = [(SIRINLUEXTERNALNLU_ROUTERPommesResponse *)pommesResponse isEqual:?];
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
  v6 = [(SIRINLUEXTERNALNLU_ROUTERNLParseResponse *)self->_nlParseResponse copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUEXTERNALNLU_ROUTERPommesResponse *)self->_pommesResponse copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_nlParseResponse)
  {
    [v4 setNlParseResponse:?];
    v4 = v5;
  }

  if (self->_pommesResponse)
  {
    [v5 setPommesResponse:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_nlParseResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_pommesResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  nlParseResponse = self->_nlParseResponse;
  if (nlParseResponse)
  {
    v5 = [(SIRINLUEXTERNALNLU_ROUTERNLParseResponse *)nlParseResponse dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"nl_parse_response"];
  }

  pommesResponse = self->_pommesResponse;
  if (pommesResponse)
  {
    v7 = [(SIRINLUEXTERNALNLU_ROUTERPommesResponse *)pommesResponse dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"pommes_response"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end