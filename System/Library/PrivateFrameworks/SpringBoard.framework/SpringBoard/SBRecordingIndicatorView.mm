@interface SBRecordingIndicatorView
- (SBRecordingIndicatorView)init;
- (SBRecordingIndicatorView)initWithCoder:(id)a3;
- (SBRecordingIndicatorView)initWithFrame:(CGRect)a3;
- (double)blurRadius;
- (id)_recordingIndicatorLayer;
- (unint64_t)indicatorType;
- (void)_commonInit;
- (void)setBlurRadius:(double)a3;
- (void)setIndicatorType:(unint64_t)a3;
@end

@implementation SBRecordingIndicatorView

- (id)_recordingIndicatorLayer
{
  if (a1)
  {
    a1 = [a1 layer];
    v1 = vars8;
  }

  return a1;
}

- (SBRecordingIndicatorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBRecordingIndicatorView;
  v3 = [(SBRecordingIndicatorView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBRecordingIndicatorView *)v3 _setAllowsHighContrastForBackgroundColor:1];
  }

  return v4;
}

- (SBRecordingIndicatorView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBRecordingIndicatorView;
  v3 = [(SBRecordingIndicatorView *)&v6 initWithCoder:a3];
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
  if (a1)
  {
    return [a1 _setAllowsHighContrastForBackgroundColor:1];
  }

  return a1;
}

- (double)blurRadius
{
  v2 = [(SBRecordingIndicatorView *)self _recordingIndicatorLayer];
  [v2 blurRadius];
  v4 = v3;

  return v4;
}

- (void)setBlurRadius:(double)a3
{
  v4 = [(SBRecordingIndicatorView *)self _recordingIndicatorLayer];
  [v4 setBlurRadius:a3];
}

- (unint64_t)indicatorType
{
  v2 = [(SBRecordingIndicatorView *)self _recordingIndicatorLayer];
  v3 = [v2 indicatorType];

  return v3;
}

- (void)setIndicatorType:(unint64_t)a3
{
  v4 = [(SBRecordingIndicatorView *)self _recordingIndicatorLayer];
  [v4 setIndicatorType:a3];
}

@end