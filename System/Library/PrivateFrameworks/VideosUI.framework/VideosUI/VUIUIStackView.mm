@interface VUIUIStackView
- (VUIUIStackView)initWithFrame:(CGRect)frame;
@end

@implementation VUIUIStackView

- (VUIUIStackView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = VUIUIStackView;
  result = [(VUIUIStackView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_axisFollowsDeviceOrientation = 1;
    result->_alignmentFollowsDeviceOrientation = 0;
    result->_lastOrientation = 0;
  }

  return result;
}

@end