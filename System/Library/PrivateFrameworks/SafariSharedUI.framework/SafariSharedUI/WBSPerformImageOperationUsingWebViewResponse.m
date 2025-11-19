@interface WBSPerformImageOperationUsingWebViewResponse
- (WBSPerformImageOperationUsingWebViewResponse)initWithImageType:(id)a3 availableImageSizes:(id)a4;
- (WBSPerformImageOperationUsingWebViewResponse)initWithMultiResolutionImageData:(id)a3 didGenerateResolutions:(BOOL)a4;
@end

@implementation WBSPerformImageOperationUsingWebViewResponse

- (WBSPerformImageOperationUsingWebViewResponse)initWithImageType:(id)a3 availableImageSizes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WBSPerformImageOperationUsingWebViewResponse;
  v8 = [(WBSSiteMetadataResponse *)&v15 initWithURL:0];
  if (v8)
  {
    v9 = [v6 copy];
    imageType = v8->_imageType;
    v8->_imageType = v9;

    v11 = [v7 copy];
    availableImageSizes = v8->_availableImageSizes;
    v8->_availableImageSizes = v11;

    v13 = v8;
  }

  return v8;
}

- (WBSPerformImageOperationUsingWebViewResponse)initWithMultiResolutionImageData:(id)a3 didGenerateResolutions:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = WBSPerformImageOperationUsingWebViewResponse;
  v7 = [(WBSSiteMetadataResponse *)&v12 initWithURL:0];
  if (v7)
  {
    v8 = [v6 copy];
    multiResolutionImageData = v7->_multiResolutionImageData;
    v7->_multiResolutionImageData = v8;

    v7->_didGenerateResolutions = a4;
    v10 = v7;
  }

  return v7;
}

@end