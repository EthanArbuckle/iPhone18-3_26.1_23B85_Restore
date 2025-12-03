@interface _UILabelMarqueeAnimationDelegate
- (UILabel)label;
- (_UILabelMarqueeAnimationDelegate)initWithLabel:(id)label;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation _UILabelMarqueeAnimationDelegate

- (_UILabelMarqueeAnimationDelegate)initWithLabel:(id)label
{
  labelCopy = label;
  v8.receiver = self;
  v8.super_class = _UILabelMarqueeAnimationDelegate;
  v5 = [(_UILabelMarqueeAnimationDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_label, labelCopy);
  }

  return v6;
}

- (void)animationDidStart:(id)start
{
  v34[1] = *MEMORY[0x1E69E9840];
  p_started = &self->_started;
  started = self->_started;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if (started)
  {
    v7 = _UILabelMarqueeUpdatedNotification;
    WeakRetained = objc_loadWeakRetained(p_started + 1);
    v31 = _UILabelMarqueeNotificationDurationKey;
    v9 = MEMORY[0x1E696AD98];
    v10 = WeakRetained;
    [v10 textSizeForWidth:3.40282347e38];
    v12 = v11;
    [v10 marqueeLoopPadding];
    v14 = (v12 + v13) / 30.0;
    _maximumMarqueeTextWidth = [(UILabel *)v10 _maximumMarqueeTextWidth];
    [v10 marqueeLoopPadding];
    v17 = [v9 numberWithDouble:v14 + 1.5 + (_maximumMarqueeTextWidth + v16) / 30.0 - v14 + 0.0];
    v32 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [defaultCenter postNotificationName:v7 object:v10 userInfo:v18];

    p_started = &self->_updated;
  }

  else
  {
    v19 = _UILabelMarqueeStartedNotification;
    v20 = objc_loadWeakRetained(p_started + 1);
    v33 = _UILabelMarqueeNotificationDurationKey;
    v21 = MEMORY[0x1E696AD98];
    v22 = v20;
    [v22 textSizeForWidth:3.40282347e38];
    v24 = v23;
    [v22 marqueeLoopPadding];
    v26 = (v24 + v25) / 30.0;
    _maximumMarqueeTextWidth2 = [(UILabel *)v22 _maximumMarqueeTextWidth];
    [v22 marqueeLoopPadding];
    v29 = [v21 numberWithDouble:v26 + 1.5 + (_maximumMarqueeTextWidth2 + v28) / 30.0 - v26 + 0.0];
    v34[0] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    [defaultCenter postNotificationName:v19 object:v22 userInfo:v30];
  }

  *p_started = 1;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  if (self->_suppressEnded)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62___UILabelMarqueeAnimationDelegate_animationDidStop_finished___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    self->_suppressEnded = 0;
  }

  else
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = _UILabelMarqueeEndedNotification;
    WeakRetained = objc_loadWeakRetained(&self->_label);
    [defaultCenter postNotificationName:v9 object:WeakRetained userInfo:0];

    v11 = objc_loadWeakRetained(&self->_label);
    objc_setAssociatedObject(v11, &__marqueeAnimationDelegateKey, 0, 1);

    if (finishedCopy)
    {
      v12 = objc_loadWeakRetained(&self->_label);
      marqueeRepeatCount = [v12 marqueeRepeatCount];

      if (marqueeRepeatCount)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __62___UILabelMarqueeAnimationDelegate_animationDidStop_finished___block_invoke_2;
        v14[3] = &unk_1E70F3590;
        v14[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], v14);
      }
    }
  }
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end