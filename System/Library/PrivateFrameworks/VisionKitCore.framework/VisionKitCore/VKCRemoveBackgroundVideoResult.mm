@interface VKCRemoveBackgroundVideoResult
- (CGSize)canvasSize;
- (NSData)data;
- (UTType)utType;
- (VKCRemoveBackgroundVideoResult)initWithMADVideoResult:(id)result request:(id)request;
- (void)generateVideoSizeWithData:(id)data;
@end

@implementation VKCRemoveBackgroundVideoResult

- (VKCRemoveBackgroundVideoResult)initWithMADVideoResult:(id)result request:(id)request
{
  resultCopy = result;
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = VKCRemoveBackgroundVideoResult;
  v9 = [(VKCRemoveBackgroundVideoResult *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_madResult, result);
    objc_storeStrong(&v10->_request, request);
    v10->_canvasSize = *MEMORY[0x1E695F060];
    data = [(MADVideoRemoveBackgroundResult *)v10->_madResult data];
    [(VKCRemoveBackgroundVideoResult *)v10 generateVideoSizeWithData:data];
  }

  return v10;
}

- (void)generateVideoSizeWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v15 = dataCopy;
    v5 = CGImageSourceCreateWithData(dataCopy, 0);
    dataCopy = v15;
    if (v5)
    {
      v6 = CGImageSourceCopyProperties(v5, 0);
      v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x1E696DD20]];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DD10]];
        [v9 doubleValue];
        v11 = v10;

        v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696DD08]];
        [v12 doubleValue];
        v14 = v13;

        [(VKCRemoveBackgroundVideoResult *)self setCanvasSize:v11, v14];
      }

      CFRelease(v5);

      dataCopy = v15;
    }
  }
}

- (UTType)utType
{
  madResult = [(VKCRemoveBackgroundVideoResult *)self madResult];
  uniformTypeIdentifier = [madResult uniformTypeIdentifier];

  return uniformTypeIdentifier;
}

- (NSData)data
{
  madResult = [(VKCRemoveBackgroundVideoResult *)self madResult];
  data = [madResult data];

  return data;
}

- (CGSize)canvasSize
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end