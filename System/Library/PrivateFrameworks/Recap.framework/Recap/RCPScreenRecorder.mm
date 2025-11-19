@interface RCPScreenRecorder
+ (id)takeScreenshot;
+ (id)takeScreenshot:(double)a3;
- (BOOL)isRecording;
- (NSArray)snapshots;
- (void)snapshot;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation RCPScreenRecorder

+ (id)takeScreenshot
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v3 = [RCPScreenRecorder takeScreenshot:?];

  return v3;
}

+ (id)takeScreenshot:(double)a3
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D77728];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  v5 = *MEMORY[0x277D776F0];
  v26[0] = v4;
  v26[1] = &unk_2874269A0;
  v6 = *MEMORY[0x277D77700];
  v25[1] = v5;
  v25[2] = v6;
  v7 = MEMORY[0x277CBEC38];
  v26[2] = MEMORY[0x277CBEC38];
  v25[3] = *MEMORY[0x277D77708];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v26[3] = v8;
  v9 = *MEMORY[0x277D77710];
  v25[4] = *MEMORY[0x277D77718];
  v25[5] = v9;
  v26[4] = &unk_2874269B8;
  v26[5] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v11 = _UIRenderDisplay();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v12 = getFBSOrientationObserverClass_softClass_0;
  v24 = getFBSOrientationObserverClass_softClass_0;
  if (!getFBSOrientationObserverClass_softClass_0)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __getFBSOrientationObserverClass_block_invoke_0;
    v20[3] = &unk_279AF0D80;
    v20[4] = &v21;
    __getFBSOrientationObserverClass_block_invoke_0(v20);
    v12 = v22[3];
  }

  v13 = v12;
  _Block_object_dispose(&v21, 8);
  v14 = objc_alloc_init(v12);
  v15 = [v14 activeInterfaceOrientation];
  if ((v15 - 2) >= 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 - 1;
  }

  [v14 invalidate];
  v17 = objc_alloc_init(RCPScreenSnapshot);
  v18 = [objc_alloc(MEMORY[0x277D755B8]) _initWithIOSurface:v11 scale:v16 orientation:1.0];
  [(RCPScreenSnapshot *)v17 setSnapshotImage:v18];

  [v14 invalidate];

  return v17;
}

- (void)startRecording
{
  self->_recording = 1;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  snapshots = self->_snapshots;
  self->_snapshots = v3;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

  v7 = dispatch_queue_create("RCPScreenRecorder", v6);
  snapshotQueue = self->_snapshotQueue;
  self->_snapshotQueue = v7;

  v9 = dispatch_time(0, 100000000);
  v10 = self->_snapshotQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__RCPScreenRecorder_startRecording__block_invoke;
  block[3] = &unk_279AF0D10;
  block[4] = self;
  dispatch_after(v9, v10, block);
}

- (BOOL)isRecording
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  snapshotQueue = self->_snapshotQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__RCPScreenRecorder_isRecording__block_invoke;
  v5[3] = &unk_279AF1090;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(snapshotQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)stopRecording
{
  snapshotQueue = self->_snapshotQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__RCPScreenRecorder_stopRecording__block_invoke;
  block[3] = &unk_279AF0D10;
  block[4] = self;
  dispatch_sync(snapshotQueue, block);
}

- (NSArray)snapshots
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  snapshotQueue = self->_snapshotQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__RCPScreenRecorder_snapshots__block_invoke;
  v5[3] = &unk_279AF1090;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(snapshotQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__RCPScreenRecorder_snapshots__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)snapshot
{
  v3 = [RCPScreenRecorder takeScreenshot:0.25];
  if (v3)
  {
    [(NSMutableArray *)self->_snapshots addObject:v3];
    [(RCPScreenRecorder *)self maxDuration];
    if (v4 <= 0.0)
    {
      v7 = 0;
    }

    else
    {
      v5 = [v3 timestamp];
      [(RCPScreenRecorder *)self maxDuration];
      v7 = v5 - RCPMachTimestampFromTimeInterval(v6);
    }

    v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v9 = [(NSMutableArray *)self->_snapshots lastObject];
    v10 = [v9 index];

    if ([(NSMutableArray *)self->_snapshots count])
    {
      v11 = 0;
      do
      {
        v12 = [(NSMutableArray *)self->_snapshots objectAtIndexedSubscript:v11];
        v13 = [v12 index];

        if (!v7 || (-[NSMutableArray objectAtIndexedSubscript:](self->_snapshots, "objectAtIndexedSubscript:", v11), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 timestamp], v14, v15 >= v7))
        {
          v16 = 0;
          v17 = 1;
          while (1)
          {
            v18 = v17;
            if (v10 - v13 > *(&RCPScreenRecorderSnapshotDiscardRates + v16))
            {
              if (v13 % *(&RCPScreenRecorderSnapshotDiscardRates + v16 + 1))
              {
                break;
              }
            }

            v17 = 0;
            v16 = 2;
            if ((v18 & 1) == 0)
            {
              goto LABEL_14;
            }
          }
        }

        [v8 addIndex:v11];
LABEL_14:
        ++v11;
      }

      while (v11 < [(NSMutableArray *)self->_snapshots count]);
    }

    [(NSMutableArray *)self->_snapshots removeObjectsAtIndexes:v8];
    if (self->_recording)
    {
      v19 = dispatch_time(0, 100000000);
      snapshotQueue = self->_snapshotQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__RCPScreenRecorder_snapshot__block_invoke;
      block[3] = &unk_279AF0D10;
      block[4] = self;
      dispatch_after(v19, snapshotQueue, block);
    }
  }
}

@end