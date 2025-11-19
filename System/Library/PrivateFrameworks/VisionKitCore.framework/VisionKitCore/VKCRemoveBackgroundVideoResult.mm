@interface VKCRemoveBackgroundVideoResult
- (CGSize)canvasSize;
- (NSData)data;
- (UTType)utType;
- (VKCRemoveBackgroundVideoResult)initWithMADVideoResult:(id)a3 request:(id)a4;
- (void)generateVideoSizeWithData:(id)a3;
@end

@implementation VKCRemoveBackgroundVideoResult

- (VKCRemoveBackgroundVideoResult)initWithMADVideoResult:(id)a3 request:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = VKCRemoveBackgroundVideoResult;
  v9 = [(VKCRemoveBackgroundVideoResult *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_madResult, a3);
    objc_storeStrong(&v10->_request, a4);
    v10->_canvasSize = *MEMORY[0x1E695F060];
    v11 = [(MADVideoRemoveBackgroundResult *)v10->_madResult data];
    [(VKCRemoveBackgroundVideoResult *)v10 generateVideoSizeWithData:v11];
  }

  return v10;
}

- (void)generateVideoSizeWithData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = v4;
    v5 = CGImageSourceCreateWithData(v4, 0);
    v4 = v15;
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

      v4 = v15;
    }
  }
}

- (UTType)utType
{
  v2 = [(VKCRemoveBackgroundVideoResult *)self madResult];
  v3 = [v2 uniformTypeIdentifier];

  return v3;
}

- (NSData)data
{
  v2 = [(VKCRemoveBackgroundVideoResult *)self madResult];
  v3 = [v2 data];

  return v3;
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