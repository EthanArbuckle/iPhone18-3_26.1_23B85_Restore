@interface CSAPEventsBuffer
- (CSAPEventsBuffer)init;
- (id)readSamples;
- (void)addObject:(id)object;
- (void)limitPending;
- (void)reset;
@end

@implementation CSAPEventsBuffer

- (CSAPEventsBuffer)init
{
  v8.receiver = self;
  v8.super_class = CSAPEventsBuffer;
  v2 = [(CSAPEventsBuffer *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    pending = v2->_pending;
    v2->_pending = v3;

    v5 = +[NSMutableArray array];
    processed = v2->_processed;
    v2->_processed = v5;
  }

  return v2;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  [(CSTimestampedSample *)self->_pending addObject:?];
  [(CSAPEventsBuffer *)self limitPending];
}

- (id)readSamples
{
  v3 = +[CSTimeManager SPU_estimate_current_timestamp];
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableIndexSet indexSet];
  for (i = 0; ; ++i)
  {
    v7 = [(CSTimestampedSample *)self->_pending count];
    pending = self->_pending;
    if (i >= v7)
    {
      break;
    }

    v9 = [(CSTimestampedSample *)pending objectAtIndex:i];
    [v5 addIndex:i];
    if (v3 - [v9 timestamp] <= 0x1C9C380)
    {
      [v4 addObject:v9];
      [(CSTimestampedSample *)self->_processed addObject:v9];
    }
  }

  [(CSTimestampedSample *)pending removeObjectsAtIndexes:v5];
  v10 = +[NSMutableIndexSet indexSet];
  for (j = 0; ; ++j)
  {
    v12 = [(CSTimestampedSample *)self->_processed count];
    processed = self->_processed;
    if (j >= v12)
    {
      break;
    }

    v14 = [(CSTimestampedSample *)processed objectAtIndex:j];
    if (v3 - [v14 timestamp] > 0x1C9C380)
    {
      [v10 addIndex:j];
    }
  }

  [(CSTimestampedSample *)processed removeObjectsAtIndexes:v10];
  if (qword_100456808 != -1)
  {
    sub_100059454();
  }

  v15 = qword_100456810;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v4 count];
    v17 = [(CSTimestampedSample *)self->_pending count];
    v18 = [(CSTimestampedSample *)self->_processed count];
    v21[0] = 67110144;
    v21[1] = v16;
    v22 = 1024;
    v23 = v17;
    v24 = 1024;
    v25 = v18;
    v26 = 1024;
    v27 = [v5 count];
    v28 = 1024;
    v29 = [v10 count];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Read %d AP samples = [%d %d] - [%d %d]", v21, 0x20u);
  }

  v19 = [v4 copy];

  return v19;
}

- (void)reset
{
  [(CSTimestampedSample *)self->_pending addObjectsFromArray:self->_processed];
  [(CSTimestampedSample *)self->_processed removeAllObjects];
  [(CSAPEventsBuffer *)self limitPending];
  if (qword_100456808 != -1)
  {
    sub_100059454();
  }

  v3 = qword_100456810;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(CSTimestampedSample *)self->_pending count];
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AP events reset - pending: %d", v5, 8u);
  }
}

- (void)limitPending
{
  if ([(CSTimestampedSample *)self->_pending count]>= 0x65)
  {
    pending = self->_pending;
    v4 = [(CSTimestampedSample *)pending count]- 100;

    [(CSTimestampedSample *)pending removeObjectsInRange:0, v4];
  }
}

@end