@interface BRCDumpContext
+ (id)highlightedString:(id)string type:(int64_t)type context:(id)context;
+ (id)nowDateFromContext:(id)context;
+ (id)stringFromCount:(int64_t)count showActualCount:(BOOL)actualCount suffix:(id)suffix isByteCount:(BOOL)byteCount context:(id)context;
+ (id)stringFromDueStamp:(int64_t)stamp allowsPast:(BOOL)past context:(id)context;
+ (id)stringFromError:(id)error context:(id)context;
+ (id)stringFromErrorString:(id)string context:(id)context;
+ (id)stringFromInterval:(double)interval context:(id)context;
+ (id)stringFromItemAsString:(id)string context:(id)context;
+ (id)stringFromItemID:(id)d context:(id)context;
+ (id)stringFromOperationUUID:(unsigned __int8)d[16] context:(id)context;
+ (id)stringFromThrottleState:(int)state context:(id)context;
+ (int64_t)nowFromContext:(id)context;
- (BOOL)isCancelled;
- (BOOL)shouldKeepDumpingWithItemCount:(unsigned int)count includeAllItems:(BOOL)items;
- (BRCDumpContext)initWithDumper:(id)dumper;
- (BRCDumpContext)initWithFile:(__sFILE *)file db:(id)db;
- (id)highlightedString:(id)string type:(int64_t)type;
- (void)popIndentation;
- (void)writeLineWithFormat:(id)format;
@end

@implementation BRCDumpContext

+ (id)stringFromThrottleState:(int)state context:(id)context
{
  contextCopy = context;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:BRCPrettyPrintEnum()];
  v7 = v6;
  if (contextCopy && state)
  {
    if (state == 1)
    {
      v8 = 7;
    }

    else
    {
      v8 = 3;
    }

    v9 = [contextCopy highlightedString:v6 type:v8];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

+ (id)stringFromItemAsString:(id)string context:(id)context
{
  stringCopy = string;
  v6 = stringCopy;
  if (context)
  {
    v7 = MEMORY[0x277CCACA8];
    contextCopy = context;
    v9 = [v7 stringWithFormat:@"<%@>", v6];

    v10 = [contextCopy highlightedString:v9 type:5];
  }

  else
  {
    v9 = stringCopy;
    v10 = v9;
  }

  return v10;
}

+ (id)nowDateFromContext:(id)context
{
  if (context)
  {
    date = *(context + 3);
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  return date;
}

+ (int64_t)nowFromContext:(id)context
{
  v3 = [self nowDateFromContext:context];
  [v3 timeIntervalSince1970];
  v4 = brc_interval_to_nsec();

  return v4;
}

+ (id)highlightedString:(id)string type:(int64_t)type context:(id)context
{
  stringCopy = string;
  v8 = stringCopy;
  if (context)
  {
    v9 = [context highlightedString:stringCopy type:type];
  }

  else
  {
    v9 = stringCopy;
  }

  v10 = v9;

  return v10;
}

+ (id)stringFromItemID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  v7 = [dCopy debugItemIDStringWithVerbose:{objc_msgSend(contextCopy, "verbose")}];

  if (contextCopy)
  {
    v8 = [BRCDumpContext stringFromItemAsString:v7 context:contextCopy];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

+ (id)stringFromOperationUUID:(unsigned __int8)d[16] context:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  memset(out, 0, 37);
  uuid_unparse(d, out);
  if (contextCopy)
  {
    out[8] = 0;
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%s)", out];
    v7 = [BRCDumpContext highlightedString:v6 type:5 context:contextCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)stringFromErrorString:(id)string context:(id)context
{
  stringCopy = string;
  v6 = stringCopy;
  if (context)
  {
    v7 = [context highlightedString:stringCopy type:3];
  }

  else
  {
    v7 = stringCopy;
  }

  v8 = v7;

  return v8;
}

+ (id)stringFromError:(id)error context:(id)context
{
  contextCopy = context;
  v6 = [error description];
  if (contextCopy)
  {
    v7 = [contextCopy highlightedString:v6 type:3];

    v6 = v7;
  }

  return v6;
}

+ (id)stringFromDueStamp:(int64_t)stamp allowsPast:(BOOL)past context:(id)context
{
  pastCopy = past;
  contextCopy = context;
  v8 = [BRCDumpContext nowFromContext:contextCopy];
  if (stamp != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 < stamp)
    {
      brc_interval_from_nsec();
      v9 = [BRCDumpContext stringFromInterval:contextCopy context:?];
      if (!contextCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (pastCopy)
    {
      if (!stamp)
      {
        goto LABEL_2;
      }

      v10 = MEMORY[0x277CCACA8];
      brc_interval_from_nsec();
      v11 = [BRCDumpContext stringFromInterval:contextCopy context:?];
      v9 = [v10 stringWithFormat:@"%@ ago", v11];

      if (contextCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = @"ready";
      if (contextCopy)
      {
        goto LABEL_12;
      }
    }

LABEL_10:
    v12 = v9;
    goto LABEL_13;
  }

LABEL_2:
  v9 = @"never";
  if (!contextCopy)
  {
    goto LABEL_10;
  }

LABEL_12:
  v12 = [contextCopy highlightedString:v9 type:6];
LABEL_13:
  v13 = v12;

  return v13;
}

+ (id)stringFromInterval:(double)interval context:(id)context
{
  v4 = fabs(interval);
  v5 = v4;
  if (v4 < 0xE10)
  {
    if (v5 < 0x3C)
    {
      v9 = v4 - v4;
      v10 = (v9 * 1000.0);
      v8 = @"s";
      v11 = @"us";
      if (v10 <= 0xA)
      {
        v12 = (v9 * 1000000.0) % 0x3E8;
      }

      else
      {
        v11 = @"ms";
        v12 = (v9 * 1000.0);
      }

      if (v10 <= 0xA)
      {
        v13 = 0;
      }

      else
      {
        v13 = (v9 * 1000000.0) % 0x3E8;
      }

      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v8 = v11;
        v6 = v12;
      }

      if (v5)
      {
        v7 = (v9 * 1000.0);
      }

      else
      {
        v7 = v13;
      }
    }

    else
    {
      v6 = v5 / 0x3C;
      v7 = (1000 * (v5 % 0x3Cu)) / 0x3Cu;
      v8 = @"m";
    }
  }

  else
  {
    v6 = v5 / 0xE10;
    v7 = 1000 * (v5 % 0xE10) / 0xE10;
    v8 = @"h";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%llu.%llu%@", v6, (v7 + 5) / 0xA, v8];
}

+ (id)stringFromCount:(int64_t)count showActualCount:(BOOL)actualCount suffix:(id)suffix isByteCount:(BOOL)byteCount context:(id)context
{
  byteCountCopy = byteCount;
  actualCountCopy = actualCount;
  suffixCopy = suffix;
  contextCopy = context;
  if (count >= 0)
  {
    countCopy = count;
  }

  else
  {
    countCopy = -count;
  }

  if (countCopy <= 0x3E7)
  {
    if (count >= 0)
    {
      v14 = @"%lld %@";
    }

    else
    {
      v14 = @"-%lld %@";
    }

    v15 = &stru_2837504F0;
    if (byteCountCopy)
    {
      v15 = @"bytes";
    }

    v16 = [MEMORY[0x277CCAB68] stringWithFormat:v14, countCopy, v15];
    goto LABEL_34;
  }

  if (countCopy > 0xF423F)
  {
    if (countCopy > 0x3B9AC9FF)
    {
      v17 = MEMORY[0x277CCAB68];
      if (countCopy > 0x2540BE3FFLL)
      {
        if (count >= 0)
        {
          v18 = @"%lld %@";
        }

        else
        {
          v18 = @"-%lld %@";
        }

        v19 = countCopy / 0x3B9ACA00;
        v20 = @"billions";
        v21 = @"GB";
        goto LABEL_16;
      }

      if (count >= 0)
      {
        v22 = @"%.2f %@";
      }

      else
      {
        v22 = @"-%.2f %@";
      }

      v23 = countCopy * 0.000000001;
      v24 = @"billion";
      v25 = @"GB";
    }

    else
    {
      v17 = MEMORY[0x277CCAB68];
      if (count >= 0)
      {
        v22 = @"%.1f %@";
      }

      else
      {
        v22 = @"-%.1f %@";
      }

      v23 = (countCopy * 0.000001);
      v24 = @"million";
      v25 = @"MB";
    }

    if (byteCountCopy)
    {
      v24 = v25;
    }

    [v17 stringWithFormat:v22, *&v23, v24];
    goto LABEL_32;
  }

  v17 = MEMORY[0x277CCAB68];
  if (count >= 0)
  {
    v18 = @"%lld %@";
  }

  else
  {
    v18 = @"-%lld %@";
  }

  v19 = countCopy / 0x3E8uLL;
  v20 = @"thousand";
  v21 = @"KB";
LABEL_16:
  if (byteCountCopy)
  {
    v20 = v21;
  }

  [v17 stringWithFormat:v18, v19, v20];
  v26 = LABEL_32:;
  v16 = v26;
  if (actualCountCopy)
  {
    [v26 appendFormat:@" (%lld)", count];
  }

LABEL_34:
  if (suffixCopy)
  {
    [v16 appendString:suffixCopy];
  }

  if (contextCopy)
  {
    v27 = [contextCopy highlightedString:v16 type:2];
  }

  else
  {
    v27 = v16;
  }

  v28 = v27;

  return v28;
}

- (BRCDumpContext)initWithFile:(__sFILE *)file db:(id)db
{
  dbCopy = db;
  v16.receiver = self;
  v16.super_class = BRCDumpContext;
  v8 = [(BRCDumpContext *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_fp = file;
    objc_storeStrong(&v8->_db, db);
    indentationBaseString = v9->_indentationBaseString;
    v9->_indentationBaseString = @"    ";

    date = [MEMORY[0x277CBEAA8] date];
    nowDate = v9->_nowDate;
    v9->_nowDate = date;

    v13 = [objc_alloc(MEMORY[0x277CFAE08]) initWithFile:file forceColor:0];
    dumper = v9->_dumper;
    v9->_dumper = v13;

    v9->_newLineAfterWrite = 1;
  }

  return v9;
}

- (BRCDumpContext)initWithDumper:(id)dumper
{
  dumperCopy = dumper;
  v12.receiver = self;
  v12.super_class = BRCDumpContext;
  v6 = [(BRCDumpContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    indentationBaseString = v6->_indentationBaseString;
    v6->_indentationBaseString = @"    ";

    objc_storeStrong(&v7->_dumper, dumper);
    date = [MEMORY[0x277CBEAA8] date];
    nowDate = v7->_nowDate;
    v7->_nowDate = date;

    v7->_newLineAfterWrite = 1;
  }

  return v7;
}

- (BOOL)isCancelled
{
  taskTracker = self->_taskTracker;
  if (taskTracker)
  {
    LOBYTE(taskTracker) = brc_task_tracker_is_cancelled(taskTracker);
  }

  return taskTracker;
}

- (void)writeLineWithFormat:(id)format
{
  v21 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v19 = 0;
  uTF8String = [(NSString *)self->_indentationBaseString UTF8String];
  v19 = &v22;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:formatCopy arguments:&v22];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 componentsSeparatedByString:{@"\n", 0}];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (self->_indentation >= 1)
        {
          v13 = 0;
          do
          {
            fputs(uTF8String, self->_fp);
            ++v13;
          }

          while (v13 < self->_indentation);
        }

        fputs([v12 UTF8String], self->_fp);
        if (self->_newLineAfterWrite)
        {
          fputc(10, self->_fp);
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldKeepDumpingWithItemCount:(unsigned int)count includeAllItems:(BOOL)items
{
  if (count >= 0x3E9 && !items)
  {
    v5 = @"\n- too many items, stopping -\n";
LABEL_7:
    [(BRCDumpContext *)self writeLineWithFormat:v5];
    return 0;
  }

  if (self && [(BRCDumpContext *)self isCancelled])
  {
    v5 = @"- cancelled -";
    goto LABEL_7;
  }

  return 1;
}

- (id)highlightedString:(id)string type:(int64_t)type
{
  stringCopy = string;
  string = [MEMORY[0x277CCAB68] string];
  v8 = type - 1;
  if ((type - 1) > 6)
  {
    v9 = 0;
    v10 = 9;
  }

  else
  {
    v9 = dword_2241ABECC[v8];
    v10 = dword_2241ABEE8[v8];
  }

  v11 = [(BRCDumper *)self->_dumper startStringForFgColor:v10 bgColor:9 attr:v9];
  stringForReset = [(BRCDumper *)self->_dumper stringForReset];
  if (v11)
  {
    [string appendString:v11];
  }

  [string appendString:stringCopy];
  if (stringForReset)
  {
    [string appendString:stringForReset];
  }

  return string;
}

- (void)popIndentation
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _indentation > 0%@", &v7, 0xCu);
  }

  *a2 = *self;
  v6 = *MEMORY[0x277D85DE8];
}

@end