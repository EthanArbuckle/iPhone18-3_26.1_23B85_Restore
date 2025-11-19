@interface ISBehavior
- (BOOL)prerollVideoAtRate:(float)a3 completionHandler:(id)a4;
- (BOOL)seekVideoPlayerToTime:(id *)a3 completionHandler:(id)a4;
- (BOOL)seekVideoPlayerToTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 completionHandler:(id)a6;
- (ISBehavior)initWithInitialLayoutInfo:(id)a3;
- (ISBehaviorDelegate)delegate;
- (void)setOutputInfo:(id)a3 withTransitionOptions:(id)a4 completion:(id)a5;
- (void)setVideoForwardPlaybackEndTime:(id *)a3;
- (void)setVideoPlayRate:(float)a3;
- (void)setVideoVolume:(float)a3;
@end

@implementation ISBehavior

- (ISBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setVideoForwardPlaybackEndTime:(id *)a3
{
  v5 = [(ISBehavior *)self delegate];
  v6 = *a3;
  [v5 behavior:self setVideoForwardPlaybackEndTime:&v6];
}

- (BOOL)prerollVideoAtRate:(float)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ISBehavior *)self delegate];
  *&v8 = a3;
  LOBYTE(self) = [v7 behavior:self prerollVideoAtRate:v6 completionHandler:v8];

  return self;
}

- (BOOL)seekVideoPlayerToTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = [(ISBehavior *)self delegate];
  v15 = *a3;
  v14 = *a4;
  v13 = *a5;
  LOBYTE(a5) = [v11 behavior:self seekVideoPlayerToTime:&v15 toleranceBefore:&v14 toleranceAfter:&v13 completionHandler:v10];

  return a5;
}

- (BOOL)seekVideoPlayerToTime:(id *)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ISBehavior *)self delegate];
  v9 = *a3;
  LOBYTE(a3) = [v7 behavior:self seekVideoPlayerToTime:&v9 completionHandler:v6];

  return a3;
}

- (void)setVideoVolume:(float)a3
{
  v6 = [(ISBehavior *)self delegate];
  *&v5 = a3;
  [v6 behavior:self setVideoVolume:v5];
}

- (void)setVideoPlayRate:(float)a3
{
  v6 = [(ISBehavior *)self delegate];
  *&v5 = a3;
  [v6 behavior:self setVideoPlayRate:v5];
}

- (void)setOutputInfo:(id)a3 withTransitionOptions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ISBehavior *)self delegate];
  [v11 behavior:self didSetOutputInfo:v10 withTransitionOptions:v9 completion:v8];
}

- (ISBehavior)initWithInitialLayoutInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISBehavior;
  v6 = [(ISBehavior *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialLayoutInfo, a3);
  }

  return v7;
}

@end