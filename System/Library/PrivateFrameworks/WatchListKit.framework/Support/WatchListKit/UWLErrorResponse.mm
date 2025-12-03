@interface UWLErrorResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation UWLErrorResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLErrorResponse;
  v3 = [(UWLErrorResponse *)&v7 description];
  dictionaryRepresentation = [(UWLErrorResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:self->_retryPeriodInSeconds];
  [v3 setObject:v4 forKey:@"retry_period_in_seconds"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_retryPeriodInSeconds;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_retryPeriodInSeconds == equalCopy[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end