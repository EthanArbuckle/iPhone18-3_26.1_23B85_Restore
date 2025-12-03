@interface WBSPerformImageOperationUsingWebViewResponse
- (WBSPerformImageOperationUsingWebViewResponse)initWithImageType:(id)type availableImageSizes:(id)sizes;
- (WBSPerformImageOperationUsingWebViewResponse)initWithMultiResolutionImageData:(id)data didGenerateResolutions:(BOOL)resolutions;
@end

@implementation WBSPerformImageOperationUsingWebViewResponse

- (WBSPerformImageOperationUsingWebViewResponse)initWithImageType:(id)type availableImageSizes:(id)sizes
{
  typeCopy = type;
  sizesCopy = sizes;
  v15.receiver = self;
  v15.super_class = WBSPerformImageOperationUsingWebViewResponse;
  v8 = [(WBSSiteMetadataResponse *)&v15 initWithURL:0];
  if (v8)
  {
    v9 = [typeCopy copy];
    imageType = v8->_imageType;
    v8->_imageType = v9;

    v11 = [sizesCopy copy];
    availableImageSizes = v8->_availableImageSizes;
    v8->_availableImageSizes = v11;

    v13 = v8;
  }

  return v8;
}

- (WBSPerformImageOperationUsingWebViewResponse)initWithMultiResolutionImageData:(id)data didGenerateResolutions:(BOOL)resolutions
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = WBSPerformImageOperationUsingWebViewResponse;
  v7 = [(WBSSiteMetadataResponse *)&v12 initWithURL:0];
  if (v7)
  {
    v8 = [dataCopy copy];
    multiResolutionImageData = v7->_multiResolutionImageData;
    v7->_multiResolutionImageData = v8;

    v7->_didGenerateResolutions = resolutions;
    v10 = v7;
  }

  return v7;
}

@end