@interface SSVURLConnectionConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SSVURLConnectionConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[SSURLConnectionResponse alloc] initWithURLResponse:v6 bodyData:v7];

  return v8;
}

@end