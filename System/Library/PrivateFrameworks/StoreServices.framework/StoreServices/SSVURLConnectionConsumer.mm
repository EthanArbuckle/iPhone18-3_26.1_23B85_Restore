@interface SSVURLConnectionConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SSVURLConnectionConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  responseCopy = response;
  dataCopy = data;
  v8 = [[SSURLConnectionResponse alloc] initWithURLResponse:responseCopy bodyData:dataCopy];

  return v8;
}

@end