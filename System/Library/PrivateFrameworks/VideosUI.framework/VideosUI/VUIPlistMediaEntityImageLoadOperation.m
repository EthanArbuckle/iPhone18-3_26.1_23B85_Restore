@interface VUIPlistMediaEntityImageLoadOperation
- (VUIPlistMediaEntityImageLoadOperation)initWithParams:(id)a3;
- (VUIPlistMediaEntityImageLoadOperation)initWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5;
- (void)executionDidBegin;
@end

@implementation VUIPlistMediaEntityImageLoadOperation

- (VUIPlistMediaEntityImageLoadOperation)initWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The %@ initializer is not available.", v8}];

  return 0;
}

- (VUIPlistMediaEntityImageLoadOperation)initWithParams:(id)a3
{
  v4.receiver = self;
  v4.super_class = VUIPlistMediaEntityImageLoadOperation;
  return [(VUIImageLoadParamsOperation *)&v4 initWithParams:a3 scaleToSize:0 cropToFit:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
}

- (void)executionDidBegin
{
  v3 = [(VUIPlistMediaEntityImageLoadOperation *)self _plistMediaEntityImageLoadParams];
  v4 = [v3 imageURL];
  if ([v4 isFileURL])
  {
    v5 = [v4 absoluteString];
    if (v5)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5];
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;
  }

  else
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
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