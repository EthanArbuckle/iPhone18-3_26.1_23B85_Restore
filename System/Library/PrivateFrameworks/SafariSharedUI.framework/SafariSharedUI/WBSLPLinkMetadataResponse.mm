@interface WBSLPLinkMetadataResponse
- (WBSLPLinkMetadataResponse)initWithURL:(id)a3 metadata:(id)a4 canAttemptFetchNow:(BOOL)a5;
@end

@implementation WBSLPLinkMetadataResponse

- (WBSLPLinkMetadataResponse)initWithURL:(id)a3 metadata:(id)a4 canAttemptFetchNow:(BOOL)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WBSLPLinkMetadataResponse;
  v9 = [(WBSSiteMetadataResponse *)&v14 initWithURL:a3];
  if (v9)
  {
    v10 = [v8 copy];
    metadata = v9->_metadata;
    v9->_metadata = v10;

    v9->_canAttemptFetchNow = a5;
    v12 = v9;
  }

  return v9;
}

@end