@interface WBSLPLinkMetadataRequest
- (WBSLPLinkMetadataRequest)initWithURL:(id)a3 allowFetching:(BOOL)a4;
@end

@implementation WBSLPLinkMetadataRequest

- (WBSLPLinkMetadataRequest)initWithURL:(id)a3 allowFetching:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = WBSLPLinkMetadataRequest;
  v5 = [(WBSSiteMetadataRequest *)&v9 initWithURL:a3 extraInfo:0];
  v6 = v5;
  if (v5)
  {
    v5->_allowFetching = a4;
    v7 = v5;
  }

  return v6;
}

@end