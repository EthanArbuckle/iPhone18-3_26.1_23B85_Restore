@interface MPFaceDetector
- (BOOL)_pathIsInQueue:(id)queue;
- (MPFaceDetector)init;
- (void)_addPathToQueue:(id)queue;
- (void)_checkPlayingSlides;
- (void)_removePathToQueue:(id)queue;
- (void)_setupTimer;
- (void)_start;
- (void)checkPlayingSlides;
- (void)dealloc;
- (void)detectFaces:(id)faces;
- (void)start;
- (void)stop;
@end

@implementation MPFaceDetector

- (MPFaceDetector)init
{
  v8.receiver = self;
  v8.super_class = MPFaceDetector;
  v2 = [(MPFaceDetector *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    v2->mDetectionQueue = v3;
    [(NSOperationQueue *)v3 setMaxConcurrentOperationCount:1];
    v2->mPathsInQueue = objc_alloc_init(NSMutableSet);
    v2->mPlayingSlides = objc_alloc_init(NSMutableSet);
    v4 = objc_alloc_init(NSLock);
    v2->mPathQueueLock = v4;
    [(NSLock *)v4 setName:@"MPFaceDetector.pathQueueLock"];
    v5 = objc_alloc_init(NSLock);
    v2->mPlayingSlidesLock = v5;
    [(NSLock *)v5 setName:@"MPFaceDetector.playingSlidesLock"];
    v6 = objc_alloc_init(NSLock);
    v2->mStartStopLock = v6;
    [(NSLock *)v6 setName:@"MPFaceDetector.startStopLock"];
    v2->mCheckTimer = 0;
    v2->mIsCancelled = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(MPFaceDetector *)self stop];

  self->mCheckTimer = 0;
  self->mDetectionQueue = 0;

  self->mDocument = 0;
  self->mRenderer = 0;

  self->mPathsInQueue = 0;
  self->mPathQueueLock = 0;

  self->mPlayingSlides = 0;
  self->mPlayingSlidesLock = 0;

  self->mStartStopLock = 0;
  v3.receiver = self;
  v3.super_class = MPFaceDetector;
  [(MPFaceDetector *)&v3 dealloc];
}

- (void)start
{
  if (!self->mIsCancelled)
  {
    [NSThread detachNewThreadSelector:"_start" toTarget:self withObject:0];
  }
}

- (void)_addPathToQueue:(id)queue
{
  [(NSLock *)self->mPathQueueLock lock];
  [(NSMutableSet *)self->mPathsInQueue addObject:queue];
  mPathQueueLock = self->mPathQueueLock;

  [(NSLock *)mPathQueueLock unlock];
}

- (void)_removePathToQueue:(id)queue
{
  [(NSLock *)self->mPathQueueLock lock];
  [(NSMutableSet *)self->mPathsInQueue removeObject:queue];
  mPathQueueLock = self->mPathQueueLock;

  [(NSLock *)mPathQueueLock unlock];
}

- (BOOL)_pathIsInQueue:(id)queue
{
  [(NSLock *)self->mPathQueueLock lock];
  LOBYTE(queue) = [(NSMutableSet *)self->mPathsInQueue containsObject:queue];
  [(NSLock *)self->mPathQueueLock unlock];
  return queue;
}

- (void)_start
{
  [NSThread setThreadPriority:0.2];
  context = objc_autoreleasePoolPush();
  [(NSLock *)self->mStartStopLock lock];
  allSlides = [(MPDocument *)self->mDocument allSlides];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [allSlides countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(allSlides);
      }

      if (self->mIsCancelled)
      {
        break;
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      if (!-[MPFaceDetector _pathIsInQueue:](self, "_pathIsInQueue:", [v8 path]) && !-[MPDocument regionsOfInterestForPath:](self->mDocument, "regionsOfInterestForPath:", objc_msgSend(v8, "path")))
      {
        v9 = [[NSDictionary alloc] initWithObjectsAndKeys:{v8, @"slide", 0}];
        v10 = [[NSInvocationOperation alloc] initWithTarget:self selector:"detectFaces:" object:v9];
        [v10 setQualityOfService:9];
        [v10 setQueuePriority:-8];

        -[MPFaceDetector _addPathToQueue:](self, "_addPathToQueue:", [v8 path]);
        [(NSOperationQueue *)self->mDetectionQueue addOperation:v10];
      }

      if (v5 == ++v7)
      {
        v5 = [allSlides countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(NSLock *)self->mStartStopLock unlock];
  objc_autoreleasePoolPop(context);
}

- (void)detectFaces:(id)faces
{
  v5 = objc_autoreleasePoolPush();
  if (!self->mIsCancelled)
  {
    v6 = [faces objectForKey:@"slide"];
    path = [v6 path];
    v8 = [(MPDocument *)self->mDocument regionsOfInterestForPath:path];
    v9 = v8;
    if (!v8)
    {
      v8 = [(MPDocument *)self->mDocument regionsOfInterestForPath:path detect:1];
    }

    if (!self->mIsCancelled)
    {
      if (v8)
      {
        v10 = [v8 count];
        if (!v9)
        {
          if (v10)
          {
            if ([-[MRMarimbaPlayback currentSlides](self->mRenderer "currentSlides")])
            {
              [(NSLock *)self->mPlayingSlidesLock lock];
              [(NSMutableSet *)self->mPlayingSlides addObject:v6];
              if (!self->mCheckTimer)
              {
                [(MPFaceDetector *)self performSelectorOnMainThread:"_setupTimer" withObject:0 waitUntilDone:0];
              }

              [(NSLock *)self->mPlayingSlidesLock unlock];
            }

            else
            {
              [+[MPCropController sharedController](MPCropController "sharedController")];
              [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
            }
          }
        }
      }

      -[MPFaceDetector _removePathToQueue:](self, "_removePathToQueue:", [v6 path]);
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_setupTimer
{
  if (!self->mCheckTimer)
  {
    self->mCheckTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"_checkPlayingSlides" selector:0 userInfo:0 repeats:5.0];
  }
}

- (void)_checkPlayingSlides
{
  self->mCheckTimer = 0;

  [NSThread detachNewThreadSelector:"checkPlayingSlides" toTarget:self withObject:0];
}

- (void)checkPlayingSlides
{
  v3 = objc_autoreleasePoolPush();
  if (!self->mIsCancelled)
  {
    [NSThread setThreadPriority:0.2];
    [(NSLock *)self->mPlayingSlidesLock lock];
    if ([(NSMutableSet *)self->mPlayingSlides count])
    {
      v4 = [(NSMutableSet *)self->mPlayingSlides copy];
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v10 + 1) + 8 * i);
            if (([-[MRMarimbaPlayback currentSlides](self->mRenderer "currentSlides")] & 1) == 0)
            {
              [+[MPCropController sharedController](MPCropController "sharedController")];
              [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
              [(NSMutableSet *)self->mPlayingSlides removeObject:v9];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }

      if ([(NSMutableSet *)self->mPlayingSlides count]&& !self->mCheckTimer)
      {
        [(MPFaceDetector *)self performSelectorOnMainThread:"_setupTimer" withObject:0 waitUntilDone:0];
      }
    }

    [(NSLock *)self->mPlayingSlidesLock unlock];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)stop
{
  [(NSLock *)self->mStartStopLock lock];
  self->mIsCancelled = 1;
  [(NSTimer *)self->mCheckTimer invalidate];

  self->mCheckTimer = 0;
  [(NSOperationQueue *)self->mDetectionQueue setSuspended:0];
  [(NSOperationQueue *)self->mDetectionQueue cancelAllOperations];
  [(NSMutableSet *)self->mPathsInQueue removeAllObjects];
  mStartStopLock = self->mStartStopLock;

  [(NSLock *)mStartStopLock unlock];
}

@end