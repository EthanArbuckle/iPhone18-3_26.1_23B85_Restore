@interface VUIImageLoadParamsOperation
- (CGSize)scaleToSize;
- (VUIImageLoadParamsOperation)init;
- (VUIImageLoadParamsOperation)initWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5;
@end

@implementation VUIImageLoadParamsOperation

- (VUIImageLoadParamsOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIImageLoadParamsOperation)initWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v10 = a3;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8) && v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The cropToFit parameter cannot be set to YES when no scale size is given"];
  }

  v16.receiver = self;
  v16.super_class = VUIImageLoadParamsOperation;
  v13 = [(VUIImageLoadParamsOperation *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_params, a3);
    v14->_scaleToSize.width = width;
    v14->_scaleToSize.height = height;
    v14->_cropToFit = v5;
  }

  return v14;
}

- (CGSize)scaleToSize
{
  width = self->_scaleToSize.width;
  height = self->_scaleToSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end