@interface ICLiveLinkQRConnectionMessageCoder
- (id)messageFromData:(id)data;
- (id)traceIdentifierForMessage:(id)message;
@end

@implementation ICLiveLinkQRConnectionMessageCoder

- (id)traceIdentifierForMessage:(id)message
{
  if (message)
  {
    return *(message + 5);
  }

  else
  {
    return 0;
  }
}

- (id)messageFromData:(id)data
{
  dataCopy = data;
  v4 = [[_ICLLProtocolMessage alloc] initWithData:dataCopy];

  return v4;
}

@end