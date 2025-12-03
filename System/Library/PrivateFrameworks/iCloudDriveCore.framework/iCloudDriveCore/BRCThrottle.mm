@interface BRCThrottle
+ (int64_t)throttleHashBytes:(void *)bytes length:(unint64_t)length;
+ (int64_t)throttleHashFormat:(id)format;
- (BRCThrottle)initWithName:(id)name andParameters:(id)parameters;
- (int64_t)nsecsToNextRetry:(int64_t)retry now:(int64_t)now increment:(BOOL)increment;
- (void)_cleanupStaleCounters:(int64_t)counters;
- (void)incrementRetryCount:(int64_t)count;
- (void)reset;
@end

@implementation BRCThrottle

- (BRCThrottle)initWithName:(id)name andParameters:(id)parameters
{
  v10.receiver = self;
  v10.super_class = BRCThrottle;
  v4 = [(BRCThrottleBase *)&v10 initWithName:name andParameters:parameters];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:32];
    retryCounters = v4->_retryCounters;
    v4->_retryCounters = v5;

    v7 = [[BRCMinHeap alloc] initWithComparator:&__block_literal_global_22];
    retryHeap = v4->_retryHeap;
    v4->_retryHeap = v7;
  }

  return v4;
}

uint64_t __42__BRCThrottle_initWithName_andParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestRetry];
  v6 = [v4 latestRetry];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (void)_cleanupStaleCounters:(int64_t)counters
{
  nsecsBeforeForgettingCounter = self->super._nsecsBeforeForgettingCounter;
  firstObject = [(BRCMinHeap *)self->_retryHeap firstObject];
  if (firstObject)
  {
    v7 = counters - nsecsBeforeForgettingCounter;
    while (1)
    {
      v11 = firstObject;
      if ([firstObject latestRetry] >= v7 && -[BRCMinHeap count](self->_retryHeap, "count") <= self->super._maximumElementCount)
      {
        break;
      }

      [(BRCMinHeap *)self->_retryHeap removeFirstObject];
      retryCounters = self->_retryCounters;
      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "throttleHash")}];
      [(NSMutableDictionary *)retryCounters removeObjectForKey:v9];

      firstObject2 = [(BRCMinHeap *)self->_retryHeap firstObject];

      firstObject = firstObject2;
      if (!firstObject2)
      {
        goto LABEL_9;
      }
    }

    firstObject = v11;
LABEL_9:
  }
}

- (void)incrementRetryCount:(int64_t)count
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:count];
  v5 = [(NSMutableDictionary *)obj->_retryCounters objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    [(BRCRetryCounter *)v5 incrementRetry];
    [(BRCMinHeap *)obj->_retryHeap objectWeightChanged:v6];
  }

  else
  {
    v6 = [[BRCRetryCounter alloc] initWithThrottleHash:count];
    [(NSMutableDictionary *)obj->_retryCounters setObject:v6 forKeyedSubscript:v4];
    [(BRCMinHeap *)obj->_retryHeap addObject:v6];
  }

  objc_sync_exit(obj);
}

- (int64_t)nsecsToNextRetry:(int64_t)retry now:(int64_t)now increment:(BOOL)increment
{
  incrementCopy = increment;
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BRCThrottle *)selfCopy _cleanupStaleCounters:now];
  retryCounters = selfCopy->_retryCounters;
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:retry];
  v11 = [(NSMutableDictionary *)retryCounters objectForKeyedSubscript:v10];

  [v11 schedule];
  retryCount = [v11 retryCount];
  objc_sync_exit(selfCopy);

  v12 = -[BRCThrottleBase nsecsToNextRetry:retryCount:now:](selfCopy, "nsecsToNextRetry:retryCount:now:", [v11 latestRetry], &retryCount, now);
  LODWORD(v10) = retryCount;
  if (v10 > [v11 retryCount] && incrementCopy)
  {
    [(BRCThrottle *)selfCopy incrementRetryCount:retry];
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      name = selfCopy->super._name;
      *buf = 138413058;
      v25 = name;
      v26 = 2048;
      retryCopy2 = retry;
      v28 = 1024;
      *v29 = retryCount;
      *&v29[4] = 2112;
      *&v29[6] = v14;
      v17 = "[DEBUG] gave up on %@/%llx (retry-count:%u)%@";
      v18 = v15;
      v19 = 38;
LABEL_14:
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v12 >= 100000000)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v22 = selfCopy->super._name;
      *buf = 138413314;
      v25 = v22;
      v26 = 2048;
      retryCopy2 = retry;
      v28 = 2048;
      *v29 = v12 / 0xF4240uLL;
      *&v29[8] = 1024;
      *&v29[10] = retryCount;
      v30 = 2112;
      v31 = v14;
      v17 = "[DEBUG] backing off %@/%llx for %llu milliseconds (retry-count:%u)%@";
      v18 = v15;
      v19 = 48;
      goto LABEL_14;
    }

LABEL_11:
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)reset
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BRCMinHeap *)selfCopy->_retryHeap removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_retryCounters allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = -[BRCRetryCounter initWithThrottleHash:]([BRCRetryCounter alloc], "initWithThrottleHash:", [v7 unsignedLongLongValue]);
        [(NSMutableDictionary *)selfCopy->_retryCounters setObject:v8 forKeyedSubscript:v7];
        [(BRCMinHeap *)selfCopy->_retryHeap addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
  v9 = *MEMORY[0x277D85DE8];
}

+ (int64_t)throttleHashFormat:(id)format
{
  v36 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  uTF8String = [formatCopy UTF8String];
  v34 = &v37;
  v5 = *uTF8String;
  if (*uTF8String)
  {
    j = uTF8String;
    while (1)
    {
      v7 = 0;
      for (i = j + 2; v5; ++i)
      {
        if (v5 == 37)
        {
          break;
        }

        v5 = j[++v7];
      }

      if (v7)
      {
        CC_SHA1_Update(&c, j, v7);
        v5 = j[v7];
      }

      if (!v5)
      {
        goto LABEL_40;
      }

      v9 = 0;
      for (j = i; ; ++j)
      {
        v10 = *(j - 1);
        if (v10 != 108)
        {
          break;
        }

        ++v9;
      }

      if ((v10 - 100) > 0x14)
      {
        goto LABEL_20;
      }

      if (((1 << (v10 - 100)) & 0x120021) == 0)
      {
        if (v10 != 112)
        {
          if (v10 == 115)
          {
            v14 = v34++;
            uTF8String2 = *v14;
          }

          else
          {
LABEL_20:
            if (v10 != 64)
            {
              v20 = brc_bread_crumbs();
              v21 = brc_default_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_fault_impl(&dword_223E7A000, v21, OS_LOG_TYPE_FAULT, "[CRIT] API MISUSE: unhandled format specifier%@", buf, 0xCu);
              }

              v22 = brc_bread_crumbs();
              v23 = brc_default_log();
              if (os_log_type_enabled(v23, 0x90u))
              {
                v25 = *j;
                *buf = 67109378;
                *&buf[4] = v25;
                *&buf[8] = 2112;
                *&buf[10] = v22;
                _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] unhandled format specifier %%%c\n%@", buf, 0x12u);
              }

              goto LABEL_39;
            }

            v16 = v34++;
            uTF8String2 = [*v16 UTF8String];
          }

          if (uTF8String2)
          {
            v17 = uTF8String2;
          }

          else
          {
            v17 = "NULL";
          }

          if (uTF8String2)
          {
            v13 = strlen(uTF8String2);
          }

          else
          {
            v13 = 4;
          }

          v12 = v17;
          goto LABEL_38;
        }

        v24 = v34++;
        v30 = *v24;
        v12 = &v30;
        goto LABEL_35;
      }

      if (v9 == 1)
      {
        break;
      }

      if (v9)
      {
        v19 = v34++;
        v31 = *v19;
        v12 = &v31;
        goto LABEL_35;
      }

      v11 = v34++;
      v33 = *v11;
      v12 = &v33;
      v13 = 4;
LABEL_38:
      CC_SHA1_Update(&c, v12, v13);
LABEL_39:
      v5 = *j;
      if (!*j)
      {
        goto LABEL_40;
      }
    }

    v18 = v34++;
    v32 = *v18;
    v12 = &v32;
LABEL_35:
    v13 = 8;
    goto LABEL_38;
  }

LABEL_40:
  CC_SHA1_Final(buf, &c);
  v26 = *buf;

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (int64_t)throttleHashBytes:(void *)bytes length:(unint64_t)length
{
  lengthCopy = length;
  v10 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  CC_SHA1_Init(&v8);
  CC_SHA1_Update(&v8, bytes, lengthCopy);
  CC_SHA1_Final(md, &v8);
  result = *md;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end