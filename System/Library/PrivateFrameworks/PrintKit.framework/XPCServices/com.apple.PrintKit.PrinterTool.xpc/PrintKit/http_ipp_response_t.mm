@interface http_ipp_response_t
- (http_ipp_response_t)initWithResponse:(id)response transportStatus:(int)status;
- (http_ipp_response_t)initWithTransportStatus:(int)status;
- (id)description;
- (ipp_status_t)ippStatus;
@end

@implementation http_ipp_response_t

- (http_ipp_response_t)initWithResponse:(id)response transportStatus:(int)status
{
  responseCopy = response;
  v11.receiver = self;
  v11.super_class = http_ipp_response_t;
  v8 = [(http_ipp_response_t *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_ippResponse, response);
    v9->ivar_transportStatus = status;
  }

  return v9;
}

- (http_ipp_response_t)initWithTransportStatus:(int)status
{
  v5.receiver = self;
  v5.super_class = http_ipp_response_t;
  result = [(http_ipp_response_t *)&v5 init];
  if (result)
  {
    result->ivar_transportStatus = status;
  }

  return result;
}

- (ipp_status_t)ippStatus
{
  ippResponse = self->_ippResponse;
  if (ippResponse)
  {
    return [(ipp_response_t *)ippResponse status];
  }

  ivar_transportStatus = self->ivar_transportStatus;
  if (ivar_transportStatus > 6)
  {
    return 1280;
  }

  else
  {
    return dword_10006B9EC[ivar_transportStatus];
  }
}

- (id)description
{
  v3 = toString(self->ivar_transportStatus);
  ippResponse = self->_ippResponse;
  ippStatus = [(http_ipp_response_t *)self ippStatus];
  v6 = "";
  if (!ippResponse)
  {
    v6 = "(nil) ";
  }

  v7 = [NSString stringWithFormat:@"<http %@, ipp status %s%x>", v3, v6, ippStatus];

  return v7;
}

@end