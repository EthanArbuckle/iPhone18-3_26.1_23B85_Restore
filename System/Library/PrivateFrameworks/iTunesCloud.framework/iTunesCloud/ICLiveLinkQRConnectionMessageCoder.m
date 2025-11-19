@interface ICLiveLinkQRConnectionMessageCoder
- (id)messageFromData:(id)a3;
- (id)traceIdentifierForMessage:(id)a3;
@end

@implementation ICLiveLinkQRConnectionMessageCoder

- (id)traceIdentifierForMessage:(id)a3
{
  if (a3)
  {
    return *(a3 + 5);
  }

  else
  {
    return 0;
  }
}

- (id)messageFromData:(id)a3
{
  v3 = a3;
  v4 = [[_ICLLProtocolMessage alloc] initWithData:v3];

  return v4;
}

@end