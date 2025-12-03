@interface WBSLPLinkMetadataRequest
- (WBSLPLinkMetadataRequest)initWithURL:(id)l allowFetching:(BOOL)fetching;
@end

@implementation WBSLPLinkMetadataRequest

- (WBSLPLinkMetadataRequest)initWithURL:(id)l allowFetching:(BOOL)fetching
{
  v9.receiver = self;
  v9.super_class = WBSLPLinkMetadataRequest;
  v5 = [(WBSSiteMetadataRequest *)&v9 initWithURL:l extraInfo:0];
  v6 = v5;
  if (v5)
  {
    v5->_allowFetching = fetching;
    v7 = v5;
  }

  return v6;
}

@end