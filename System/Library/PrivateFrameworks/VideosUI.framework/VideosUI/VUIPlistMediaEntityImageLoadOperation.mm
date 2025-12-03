@interface VUIPlistMediaEntityImageLoadOperation
- (VUIPlistMediaEntityImageLoadOperation)initWithParams:(id)params;
- (VUIPlistMediaEntityImageLoadOperation)initWithParams:(id)params scaleToSize:(CGSize)size cropToFit:(BOOL)fit;
- (void)executionDidBegin;
@end

@implementation VUIPlistMediaEntityImageLoadOperation

- (VUIPlistMediaEntityImageLoadOperation)initWithParams:(id)params scaleToSize:(CGSize)size cropToFit:(BOOL)fit
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The %@ initializer is not available.", v8}];

  return 0;
}

- (VUIPlistMediaEntityImageLoadOperation)initWithParams:(id)params
{
  v4.receiver = self;
  v4.super_class = VUIPlistMediaEntityImageLoadOperation;
  return [(VUIImageLoadParamsOperation *)&v4 initWithParams:params scaleToSize:0 cropToFit:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
}

- (void)executionDidBegin
{
  _plistMediaEntityImageLoadParams = [(VUIPlistMediaEntityImageLoadOperation *)self _plistMediaEntityImageLoadParams];
  imageURL = [_plistMediaEntityImageLoadParams imageURL];
  if ([imageURL isFileURL])
  {
    absoluteString = [imageURL absoluteString];
    if (absoluteString)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:absoluteString];
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;
  }

  else
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:imageURL];
  }

  v9 = v6;
  if ([v6 length])
  {
    v7 = [MEMORY[0x1E69D5940] imageWithData:v9];
    [(VUIImageLoadParamsOperation *)self setImage:v7];
  }

  [(VUIImageLoadParamsOperation *)self setScalingResult:0];
  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

@end