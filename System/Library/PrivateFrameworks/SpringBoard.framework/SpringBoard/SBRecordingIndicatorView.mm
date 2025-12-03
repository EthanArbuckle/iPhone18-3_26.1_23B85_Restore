@interface SBRecordingIndicatorView
- (SBRecordingIndicatorView)init;
- (SBRecordingIndicatorView)initWithCoder:(id)coder;
- (SBRecordingIndicatorView)initWithFrame:(CGRect)frame;
- (double)blurRadius;
- (id)_recordingIndicatorLayer;
- (unint64_t)indicatorType;
- (void)_commonInit;
- (void)setBlurRadius:(double)radius;
- (void)setIndicatorType:(unint64_t)type;
@end

@implementation SBRecordingIndicatorView

- (id)_recordingIndicatorLayer
{
  if (self)
  {
    self = [self layer];
    v1 = vars8;
  }

  return self;
}

- (SBRecordingIndicatorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBRecordingIndicatorView;
  v3 = [(SBRecordingIndicatorView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBRecordingIndicatorView *)v3 _setAllowsHighContrastForBackgroundColor:1];
  }

  return v4;
}

- (SBRecordingIndicatorView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SBRecordingIndicatorView;
  v3 = [(SBRecordingIndicatorView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SBRecordingIndicatorView *)v3 _setAllowsHighContrastForBackgroundColor:1];
  }

  return v4;
}

- (SBRecordingIndicatorView)init
{
  v5.receiver = self;
  v5.super_class = SBRecordingIndicatorView;
  v2 = [(SBRecordingIndicatorView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBRecordingIndicatorView *)v2 _setAllowsHighContrastForBackgroundColor:1];
  }

  return v3;
}

- (void)_commonInit
{
  if (self)
  {
    return [self _setAllowsHighContrastForBackgroundColor:1];
  }

  return self;
}

- (double)blurRadius
{
  _recordingIndicatorLayer = [(SBRecordingIndicatorView *)self _recordingIndicatorLayer];
  [_recordingIndicatorLayer blurRadius];
  v4 = v3;

  return v4;
}

- (void)setBlurRadius:(double)radius
{
  _recordingIndicatorLayer = [(SBRecordingIndicatorView *)self _recordingIndicatorLayer];
  [_recordingIndicatorLayer setBlurRadius:radius];
}

- (unint64_t)indicatorType
{
  _recordingIndicatorLayer = [(SBRecordingIndicatorView *)self _recordingIndicatorLayer];
  indicatorType = [_recordingIndicatorLayer indicatorType];

  return indicatorType;
}

- (void)setIndicatorType:(unint64_t)type
{
  _recordingIndicatorLayer = [(SBRecordingIndicatorView *)self _recordingIndicatorLayer];
  [_recordingIndicatorLayer setIndicatorType:type];
}

@end