@interface CRTextDetectorModelV3Input
- (CRTextDetectorModelV3Input)initWithImg_input:(__CVBuffer *)img_input;
- (id)featureValueForName:(id)name;
@end

@implementation CRTextDetectorModelV3Input

- (CRTextDetectorModelV3Input)initWithImg_input:(__CVBuffer *)img_input
{
  if (self)
  {
    self->_img_input = img_input;
  }

  return self;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"img_input"])
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