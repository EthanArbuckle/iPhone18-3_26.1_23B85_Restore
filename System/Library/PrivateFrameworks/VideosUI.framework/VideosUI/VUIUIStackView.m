@interface VUIUIStackView
- (VUIUIStackView)initWithFrame:(CGRect)a3;
@end

@implementation VUIUIStackView

- (VUIUIStackView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VUIUIStackView;
  result = [(VUIUIStackView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_axisFollowsDeviceOrientation = 1;
    result->_alignmentFollowsDeviceOrientation = 0;
    result->_lastOrientation = 0;
  }

  return result;
}

@end