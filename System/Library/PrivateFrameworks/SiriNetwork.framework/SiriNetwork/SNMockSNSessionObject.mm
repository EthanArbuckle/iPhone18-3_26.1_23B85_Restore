@interface SNMockSNSessionObject
- (id)serializedAceDataError:(id *)error;
@end

@implementation SNMockSNSessionObject

- (id)serializedAceDataError:(id *)error
{
  if (error)
  {
    *error = self->serializedAceDataError;
  }

  data = self->_data;

  return data;
}

@end