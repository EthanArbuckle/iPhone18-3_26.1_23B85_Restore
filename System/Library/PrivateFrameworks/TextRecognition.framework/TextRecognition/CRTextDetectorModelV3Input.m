@interface CRTextDetectorModelV3Input
- (CRTextDetectorModelV3Input)initWithImg_input:(__CVBuffer *)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation CRTextDetectorModelV3Input

- (CRTextDetectorModelV3Input)initWithImg_input:(__CVBuffer *)a3
{
  if (self)
  {
    self->_img_input = a3;
  }

  return self;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"img_input"])
  {
    v4 = [MEMORY[0x1E695FE60] featureValueWithPixelBuffer:self->_img_input];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end