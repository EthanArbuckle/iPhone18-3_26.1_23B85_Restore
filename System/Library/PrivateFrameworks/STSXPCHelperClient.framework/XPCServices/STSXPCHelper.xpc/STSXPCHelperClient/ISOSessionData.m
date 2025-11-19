@interface ISOSessionData
- (id)description;
@end

@implementation ISOSessionData

- (id)description
{
  v3 = [NSString alloc];
  if (self)
  {
    encData = self->_encData;
  }

  else
  {
    encData = 0;
  }

  v5 = [(NSData *)encData length];
  v6 = [(ISOSessionData *)self status];
  v7 = [v3 initWithFormat:@"{data len=%lu, statusCode=%@}", v5, v6];

  return v7;
}

@end