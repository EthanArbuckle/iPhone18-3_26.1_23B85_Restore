@interface WBSLPLinkMetadataResponse
- (WBSLPLinkMetadataResponse)initWithURL:(id)l metadata:(id)metadata canAttemptFetchNow:(BOOL)now;
@end

@implementation WBSLPLinkMetadataResponse

- (WBSLPLinkMetadataResponse)initWithURL:(id)l metadata:(id)metadata canAttemptFetchNow:(BOOL)now
{
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = WBSLPLinkMetadataResponse;
  v9 = [(WBSSiteMetadataResponse *)&v14 initWithURL:l];
  if (v9)
  {
    v10 = [metadataCopy copy];
    metadata = v9->_metadata;
    v9->_metadata = v10;

    v9->_canAttemptFetchNow = now;
    v12 = v9;
  }

  return v9;
}

@end