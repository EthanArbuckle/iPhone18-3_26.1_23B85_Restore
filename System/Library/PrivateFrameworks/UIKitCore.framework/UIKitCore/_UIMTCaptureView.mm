@interface _UIMTCaptureView
- (_UIMTCaptureView)initWithFrame:(CGRect)frame;
- (id)mt_captureGroupName;
@end

@implementation _UIMTCaptureView

- (_UIMTCaptureView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = _UIMTCaptureView;
  v3 = [(UIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _backdropLayer = [(_UIMTCaptureView *)v3 _backdropLayer];
    [_backdropLayer setCaptureOnly:1];
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%p: %@>", v4, v8];
    [_backdropLayer setGroupName:v9];
  }

  return v4;
}

- (id)mt_captureGroupName
{
  _backdropLayer = [(_UIMTCaptureView *)self _backdropLayer];
  groupName = [_backdropLayer groupName];

  return groupName;
}

@end