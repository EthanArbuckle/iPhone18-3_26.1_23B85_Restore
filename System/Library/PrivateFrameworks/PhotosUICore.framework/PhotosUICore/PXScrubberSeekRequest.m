@interface PXScrubberSeekRequest
- (PXScrubberSeekRequest)initWithTarget:(id)a3 seekTime:(double)a4;
- (PXVideoScrubberControllerTarget)target;
@end

@implementation PXScrubberSeekRequest

- (PXVideoScrubberControllerTarget)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (PXScrubberSeekRequest)initWithTarget:(id)a3 seekTime:(double)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PXScrubberSeekRequest;
  v8 = [(PXScrubberSeekRequest *)&v13 init];
  if (v8)
  {
    if (!v7)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v8 file:@"PXVideoScrubberController.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"target != nil"}];
    }

    objc_storeWeak(&v8->_target, v7);
    v8->_seekTime = a4;
    v9 = [MEMORY[0x1E695DF00] date];
    dateCreated = v8->_dateCreated;
    v8->_dateCreated = v9;
  }

  return v8;
}

@end