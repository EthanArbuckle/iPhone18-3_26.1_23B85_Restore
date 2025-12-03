@interface RBSStateCaptureSetSegment
- (RBSStateCaptureSetSegment)init;
- (id)_stateCapture;
- (void)dealloc;
@end

@implementation RBSStateCaptureSetSegment

- (void)dealloc
{
  [(RBSInvalidatable *)self->_invalidatable invalidate];
  v3.receiver = self;
  v3.super_class = RBSStateCaptureSetSegment;
  [(RBSStateCaptureSetSegment *)&v3 dealloc];
}

- (RBSStateCaptureSetSegment)init
{
  v15.receiver = self;
  v15.super_class = RBSStateCaptureSetSegment;
  v2 = [(RBSStateCaptureSetSegment *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    items = v2->_items;
    v2->_items = v3;

    objc_initWeak(&location, v2);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__RBSStateCaptureSetSegment_init__block_invoke;
    v12[3] = &unk_279B33AD8;
    objc_copyWeak(&v13, &location);
    v5 = MEMORY[0x266729AD0](v12);
    v6 = segmentUniqueID++;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBSStateCaptureSet Segment %d", v6];
    v8 = dispatch_get_global_queue(17, 0);
    v9 = _RBLogAddStateCaptureBlockWithTitle(v8, v7, v5);
    invalidatable = v2->_invalidatable;
    v2->_invalidatable = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

__CFString *__33__RBSStateCaptureSetSegment_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _stateCapture];
  }

  else
  {
    v3 = &stru_287507640;
  }

  return v3;
}

- (id)_stateCapture
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&_stateCaptureLock);
  v3 = [(NSMutableSet *)self->_items copy];
  os_unfair_lock_unlock(&_stateCaptureLock);
  string = [MEMORY[0x277CCAB68] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        captureState = [*(*(&v13 + 1) + 8 * i) captureState];
        [string appendString:captureState];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return string;
}

@end