@interface _UIProgressView
- (CGSize)intrinsicContentSize;
- (_UIProgressView)initWithFrame:(CGRect)frame;
- (void)_updateProgressValue;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setTrackedProgress:(id)progress;
@end

@implementation _UIProgressView

- (void)dealloc
{
  trackedProgress = self->_trackedProgress;
  if (trackedProgress)
  {
    [(NSProgress *)trackedProgress removeObserver:self forKeyPath:@"fractionCompleted"];
  }

  v4.receiver = self;
  v4.super_class = _UIProgressView;
  [(UIView *)&v4 dealloc];
}

- (_UIProgressView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIProgressView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, 65.0, 65.0];
  if (v3)
  {
    v4 = [_UICircleProgressView alloc];
    [(UIView *)v3 frame];
    v5 = [(_UICircleProgressView *)v4 initWithFrame:?];
    progressView = v3->_progressView;
    v3->_progressView = v5;

    [(_UICircleProgressView *)v3->_progressView setShowProgressTray:1];
    [(_UICircleProgressView *)v3->_progressView setProgressLineWidth:3.0];
    [(UIView *)v3 addSubview:v3->_progressView];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = 65.0;
  v3 = 65.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setTrackedProgress:(id)progress
{
  progressCopy = progress;
  trackedProgress = self->_trackedProgress;
  if (trackedProgress)
  {
    [(NSProgress *)trackedProgress removeObserver:self forKeyPath:@"fractionCompleted"];
    v6 = self->_trackedProgress;
  }

  else
  {
    v6 = 0;
  }

  self->_trackedProgress = progressCopy;
  v7 = progressCopy;

  [(NSProgress *)self->_trackedProgress addObserver:self forKeyPath:@"fractionCompleted" options:1 context:0];

  [(_UIProgressView *)self _updateProgressValue];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___UIProgressView_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateProgressValue
{
  [(NSProgress *)self->_trackedProgress fractionCompleted];
  progressView = self->_progressView;

  [(_UICircleProgressView *)progressView setProgress:1 animated:0 completion:?];
}

@end