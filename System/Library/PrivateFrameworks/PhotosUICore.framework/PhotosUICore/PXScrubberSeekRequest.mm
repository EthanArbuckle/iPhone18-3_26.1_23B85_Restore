@interface PXScrubberSeekRequest
- (PXScrubberSeekRequest)initWithTarget:(id)target seekTime:(double)time;
- (PXVideoScrubberControllerTarget)target;
@end

@implementation PXScrubberSeekRequest

- (PXVideoScrubberControllerTarget)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (PXScrubberSeekRequest)initWithTarget:(id)target seekTime:(double)time
{
  targetCopy = target;
  v13.receiver = self;
  v13.super_class = PXScrubberSeekRequest;
  v8 = [(PXScrubberSeekRequest *)&v13 init];
  if (v8)
  {
    if (!targetCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"PXVideoScrubberController.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"target != nil"}];
    }

    objc_storeWeak(&v8->_target, targetCopy);
    v8->_seekTime = time;
    date = [MEMORY[0x1E695DF00] date];
    dateCreated = v8->_dateCreated;
    v8->_dateCreated = date;
  }

  return v8;
}

@end