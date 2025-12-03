@interface CSSyncQueue
+ (id)lastSlowSample:(id)sample;
+ (unint64_t)nextCheckpoint:(id)checkpoint;
- (CSSyncQueue)init;
- (id)getNextSortedArrayAndFlush:(BOOL)flush;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
@end

@implementation CSSyncQueue

+ (id)lastSlowSample:(id)sample
{
  sampleCopy = sample;
  v4 = +[CSPlatformInfo sharedInstance];
  isMDevice = [v4 isMDevice];

  v6 = &off_100410B78;
  if (!isMDevice)
  {
    v6 = off_100410B70;
  }

  v7 = *v6;
  objc_opt_class();
  v8 = [sampleCopy count];
  if (v8)
  {
    v9 = v8 - 1;
    while (1)
    {
      v10 = [sampleCopy objectAtIndexedSubscript:v9];
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (--v9 == -1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  return v10;
}

+ (unint64_t)nextCheckpoint:(id)checkpoint
{
  checkpointCopy = checkpoint;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([checkpointCopy timestamp] >> 6 >= 0xC35)
      {
        v4 = [checkpointCopy timestamp] - 200000;
        goto LABEL_13;
      }

      timestamp = [checkpointCopy timestamp];
    }

    else
    {
      if (qword_100456808 != -1)
      {
        sub_1002BF30C();
      }

      v5 = qword_100456810;
      if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Unexpected checkpoint class", v8, 2u);
      }

      timestamp = [checkpointCopy timestamp];
    }

    v4 = timestamp;
    goto LABEL_13;
  }

  v4 = [checkpointCopy timestamp] + 1251;
LABEL_13:

  return v4;
}

- (CSSyncQueue)init
{
  v6.receiver = self;
  v6.super_class = CSSyncQueue;
  v2 = [(CSSyncQueue *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    syncQ = v2->_syncQ;
    v2->_syncQ = v3;

    v2->_checkpoint = 0;
    v2->_dynamicHoldout = 1;
  }

  return v2;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  [(NSMutableArray *)self->_syncQ addObject:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_checkpoint)
  {
    self->_checkpoint = [objectCopy timestamp] - 3000000;
  }
}

- (void)addObjectsFromArray:(id)array
{
  arrayCopy = array;
  for (i = 0; i < [arrayCopy count]; ++i)
  {
    v5 = [arrayCopy objectAtIndexedSubscript:i];
    [(CSSyncQueue *)self addObject:v5];
  }
}

- (id)getNextSortedArrayAndFlush:(BOOL)flush
{
  flushCopy = flush;
  v5 = +[CSTimeManager SPU_estimate_current_timestamp];
  if (![(NSMutableArray *)self->_syncQ count])
  {
    v7 = +[NSMutableArray array];
    goto LABEL_49;
  }

  v46 = +[CSSyncQueue timestampedComparator];
  v6 = [(NSMutableArray *)self->_syncQ sortedArrayUsingComparator:v46];
  v7 = [v6 mutableCopy];

  [(NSMutableArray *)self->_syncQ removeAllObjects];
  if (flushCopy)
  {
    if (qword_100456808 != -1)
    {
      sub_1002BF30C();
    }

    v8 = qword_100456810;
    if (os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "should not flush syncQ", buf, 2u);
    }

    goto LABEL_25;
  }

  v9 = [CSSyncQueue lastSlowSample:v7];
  if (v9)
  {
    if (qword_100456808 != -1)
    {
      sub_1002BF30C();
    }

    v10 = qword_100456810;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      timestamp = [v9 timestamp];
      v49 = 2112;
      v50 = COERCE_DOUBLE(objc_opt_class());
      v11 = *&v50;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "found slowest sample at %llu type=%@", buf, 0x16u);
    }

    self->_checkpoint = [CSSyncQueue nextCheckpoint:v9];
  }

  else
  {
    v12 = v5 - self->_checkpoint;
    if (v12 < 0x5B8D81)
    {
      if (qword_100456808 != -1)
      {
        sub_1002BF30C();
      }

      v19 = qword_100456810;
      if (!os_log_type_enabled(qword_100456810, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      checkpoint = self->_checkpoint;
      *buf = 134218240;
      timestamp = checkpoint;
      v49 = 2048;
      v50 = (v5 - checkpoint) / 1000000.0;
      v16 = "no slowest sample on this queue, default to %llu (%f sec ago)";
      v17 = v19;
      v18 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      lastObject = [v7 lastObject];
      self->_checkpoint = [lastObject timestamp] - 1000000;

      if (qword_100456808 != -1)
      {
        sub_1002BF30C();
      }

      v14 = qword_100456810;
      if (!os_log_type_enabled(qword_100456810, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      v15 = self->_checkpoint;
      *buf = 134218240;
      timestamp = v15;
      v49 = 2048;
      v50 = v12 / 1000000.0;
      v16 = "no slowest sample on this queue, but it has been too long, moving to %llu (%f sec ago)";
      v17 = v14;
      v18 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, 0x16u);
  }

LABEL_24:

LABEL_25:
  v21 = [[SentinelSample alloc] initWithTimestamp:self->_checkpoint];
  v22 = [v7 indexOfObject:v21 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 1536, v46}];
  v23 = [v7 count];
  v24 = v23 - v22;
  v45 = [v7 subarrayWithRange:{v22, v23 - v22}];
  [(NSMutableArray *)self->_syncQ addObjectsFromArray:?];
  [v7 removeObjectsInRange:{v22, v24}];
  if (qword_100456808 != -1)
  {
    sub_1002BF320();
  }

  firstObject = v45;
  v26 = qword_100456810;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v43 = v21;
    v44 = [v7 count];
    if (v44)
    {
      firstObject = [v7 firstObject];
      timestamp2 = [firstObject timestamp];
    }

    else
    {
      timestamp2 = 0;
    }

    v42 = firstObject;
    v28 = [v7 count];
    if (v28)
    {
      lastObject2 = [v7 lastObject];
      timestamp3 = [lastObject2 timestamp];
    }

    else
    {
      timestamp3 = 0;
    }

    v30 = [(NSMutableArray *)self->_syncQ count];
    v41 = v28;
    if (v30)
    {
      firstObject2 = [(NSMutableArray *)self->_syncQ firstObject];
      timestamp4 = [firstObject2 timestamp];
    }

    else
    {
      timestamp4 = 0;
    }

    v32 = [(NSMutableArray *)self->_syncQ count];
    if (v32)
    {
      lastObject3 = [(NSMutableArray *)self->_syncQ lastObject];
      timestamp5 = [lastObject3 timestamp];
    }

    else
    {
      timestamp5 = 0;
    }

    v34 = +[CSTimeManager SPU_estimate_current_timestamp];
    v35 = [(NSMutableArray *)self->_syncQ count];
    v36 = self->_checkpoint;
    *buf = 134219520;
    timestamp = timestamp2;
    v49 = 2048;
    v50 = *&timestamp3;
    v51 = 2048;
    v52 = timestamp4;
    v53 = 2048;
    v54 = timestamp5;
    v55 = 2048;
    v56 = v34;
    v57 = 2048;
    v58 = v35;
    v59 = 2048;
    v60 = v36;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "syncq sorted %llu, %llu remainder %llu, %llu, now %llu, n %lu checkpoint %llu", buf, 0x48u);
    v21 = v43;
    if (v32)
    {
    }

    firstObject = v45;
    if (v30)
    {
    }

    if (v41)
    {
    }

    if (v44)
    {
    }
  }

LABEL_49:

  return v7;
}

@end