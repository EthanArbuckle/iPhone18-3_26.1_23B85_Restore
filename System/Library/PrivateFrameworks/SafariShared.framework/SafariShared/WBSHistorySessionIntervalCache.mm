@interface WBSHistorySessionIntervalCache
- (WBSHistorySessionIntervalCache)init;
- (WBSHistorySessionIntervalCache)initWithCalendar:(id)calendar;
- (double)_beginningOfSessionContainingTime:(double)time;
- (double)beginningOfSessionContainingTime:(double)time;
- (id).cxx_construct;
- (void)_getSessionIntervalForTime:(double)time beginningOfDay:(double *)day beginningOfNextDay:(double *)nextDay;
@end

@implementation WBSHistorySessionIntervalCache

- (WBSHistorySessionIntervalCache)init
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [(WBSHistorySessionIntervalCache *)self initWithCalendar:currentCalendar];

  return v4;
}

- (WBSHistorySessionIntervalCache)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v11.receiver = self;
  v11.super_class = WBSHistorySessionIntervalCache;
  v6 = [(WBSHistorySessionIntervalCache *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.SafariShared.WBSHistorySessionIntervalCache", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_calendar, calendar);
    v9 = v6;
  }

  return v6;
}

- (double)beginningOfSessionContainingTime:(double)time
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSHistorySessionIntervalCache_beginningOfSessionContainingTime___block_invoke;
  block[3] = &unk_1E7FC70F8;
  block[4] = self;
  block[5] = &v7;
  *&block[6] = time;
  dispatch_sync(queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __67__WBSHistorySessionIntervalCache_beginningOfSessionContainingTime___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _beginningOfSessionContainingTime:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)_beginningOfSessionContainingTime:(double)time
{
  timeCopy = time;
  p_intervalCache = &self->_intervalCache;
  v5 = std::__equal_range[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,double *,double *,double,std::__identity>(self->_intervalCache.m_buffer, &self->_intervalCache.m_buffer[self->_intervalCache.m_size], &timeCopy);
  if (v6 - v5 == 16)
  {
    return timeCopy;
  }

  v8 = v5;
  v9 = v5 - p_intervalCache->m_buffer;
  if (v6 - v5 == 8)
  {
    if ((v9 & 8) == 0)
    {
      return timeCopy;
    }

    v8 = v5 + 1;
  }

  else if ((v9 & 8) != 0)
  {
    return *(v5 - 1);
  }

  v27 = 0;
  v28 = 0.0;
  v10 = &v28;
  [(WBSHistorySessionIntervalCache *)self _getSessionIntervalForTime:&v28 beginningOfDay:&v27 beginningOfNextDay:timeCopy];
  v11 = v8 - self->_intervalCache.m_buffer;
  v12 = v11 >> 3;
  m_size = self->_intervalCache.m_size;
  if (m_size == self->_intervalCache.m_capacity)
  {
    v10 = WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(p_intervalCache, m_size + 1, &v28);
    LODWORD(m_size) = self->_intervalCache.m_size;
  }

  if (v12 > m_size)
  {
    goto LABEL_22;
  }

  m_buffer = p_intervalCache->m_buffer;
  if (v12 != m_size)
  {
    v15 = &m_buffer[m_size];
    v16 = v11 - 8 * m_size;
    v17 = v15;
    do
    {
      v18 = *(v17-- - 1);
      *v15 = v18;
      v15 = v17;
      v16 += 8;
    }

    while (v16);
  }

  v19 = (m_size + 1);
  result = *v10;
  *(m_buffer + v11) = *v10;
  self->_intervalCache.m_size = v19;
  v20 = v12 + 1;
  if (v19 == self->_intervalCache.m_capacity)
  {
    v21 = WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(p_intervalCache, v19 + 1, &v27);
    LODWORD(v19) = self->_intervalCache.m_size;
  }

  else
  {
    v21 = &v27;
  }

  if (v20 > v19)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    v22 = p_intervalCache->m_buffer;
    if (v20 != v19)
    {
      v23 = &v22[v19];
      v24 = 8 * v12 - 8 * v19 + 8;
      v25 = v23;
      do
      {
        v26 = *(v25-- - 1);
        *v23 = v26;
        v23 = v25;
        v24 += 8;
      }

      while (v24);
    }

    v22[v20] = *v21;
    self->_intervalCache.m_size = v19 + 1;
    return v28;
  }

  return result;
}

- (void)_getSessionIntervalForTime:(double)time beginningOfDay:(double *)day beginningOfNextDay:(double *)nextDay
{
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  v11 = 0;
  v12 = 0.0;
  [(NSCalendar *)self->_calendar rangeOfUnit:16 startDate:&v11 interval:&v12 forDate:v8];
  v9 = v11;
  [v9 timeIntervalSinceReferenceDate];
  *day = v10;
  *nextDay = v10 + v12;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end