@interface UWLErrorResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation UWLErrorResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLErrorResponse;
  v3 = [(UWLErrorResponse *)&v7 description];
  v4 = [(UWLErrorResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:self->_retryPeriodInSeconds];
  [v3 setObject:v4 forKey:@"retry_period_in_seconds"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_retryPeriodInSeconds;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_retryPeriodInSeconds == v4[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end