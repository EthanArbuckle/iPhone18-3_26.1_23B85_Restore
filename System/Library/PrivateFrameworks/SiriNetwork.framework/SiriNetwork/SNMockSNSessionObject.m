@interface SNMockSNSessionObject
- (id)serializedAceDataError:(id *)a3;
@end

@implementation SNMockSNSessionObject

- (id)serializedAceDataError:(id *)a3
{
  if (a3)
  {
    *a3 = self->serializedAceDataError;
  }

  data = self->_data;

  return data;
}

@end