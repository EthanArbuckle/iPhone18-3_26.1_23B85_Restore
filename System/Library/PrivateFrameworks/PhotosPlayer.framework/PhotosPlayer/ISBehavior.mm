@interface ISBehavior
- (BOOL)prerollVideoAtRate:(float)rate completionHandler:(id)handler;
- (BOOL)seekVideoPlayerToTime:(id *)time completionHandler:(id)handler;
- (BOOL)seekVideoPlayerToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler;
- (ISBehavior)initWithInitialLayoutInfo:(id)info;
- (ISBehaviorDelegate)delegate;
- (void)setOutputInfo:(id)info withTransitionOptions:(id)options completion:(id)completion;
- (void)setVideoForwardPlaybackEndTime:(id *)time;
- (void)setVideoPlayRate:(float)rate;
- (void)setVideoVolume:(float)volume;
@end

@implementation ISBehavior

- (ISBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setVideoForwardPlaybackEndTime:(id *)time
{
  delegate = [(ISBehavior *)self delegate];
  v6 = *time;
  [delegate behavior:self setVideoForwardPlaybackEndTime:&v6];
}

- (BOOL)prerollVideoAtRate:(float)rate completionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(ISBehavior *)self delegate];
  *&v8 = rate;
  LOBYTE(self) = [delegate behavior:self prerollVideoAtRate:handlerCopy completionHandler:v8];

  return self;
}

- (BOOL)seekVideoPlayerToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(ISBehavior *)self delegate];
  v15 = *time;
  v14 = *before;
  v13 = *after;
  LOBYTE(after) = [delegate behavior:self seekVideoPlayerToTime:&v15 toleranceBefore:&v14 toleranceAfter:&v13 completionHandler:handlerCopy];

  return after;
}

- (BOOL)seekVideoPlayerToTime:(id *)time completionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(ISBehavior *)self delegate];
  v9 = *time;
  LOBYTE(time) = [delegate behavior:self seekVideoPlayerToTime:&v9 completionHandler:handlerCopy];

  return time;
}

- (void)setVideoVolume:(float)volume
{
  delegate = [(ISBehavior *)self delegate];
  *&v5 = volume;
  [delegate behavior:self setVideoVolume:v5];
}

- (void)setVideoPlayRate:(float)rate
{
  delegate = [(ISBehavior *)self delegate];
  *&v5 = rate;
  [delegate behavior:self setVideoPlayRate:v5];
}

- (void)setOutputInfo:(id)info withTransitionOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  infoCopy = info;
  delegate = [(ISBehavior *)self delegate];
  [delegate behavior:self didSetOutputInfo:infoCopy withTransitionOptions:optionsCopy completion:completionCopy];
}

- (ISBehavior)initWithInitialLayoutInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = ISBehavior;
  v6 = [(ISBehavior *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialLayoutInfo, info);
  }

  return v7;
}

@end