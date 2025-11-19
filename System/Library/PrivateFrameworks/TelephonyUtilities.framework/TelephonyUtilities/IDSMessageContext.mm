@interface IDSMessageContext
- (NSString)csd_pseudonym;
@end

@implementation IDSMessageContext

- (NSString)csd_pseudonym
{
  v2 = [(IDSMessageContext *)self toID];
  v3 = IDSCopyAddressDestinationForDestination();

  v4 = IDSCopyRawAddressForDestination();
  if ([v4 destinationIdIsPseudonym])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end