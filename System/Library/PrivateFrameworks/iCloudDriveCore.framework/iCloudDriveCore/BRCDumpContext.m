@interface BRCDumpContext
+ (id)highlightedString:(id)a3 type:(int64_t)a4 context:(id)a5;
+ (id)nowDateFromContext:(id)a3;
+ (id)stringFromCount:(int64_t)a3 showActualCount:(BOOL)a4 suffix:(id)a5 isByteCount:(BOOL)a6 context:(id)a7;
+ (id)stringFromDueStamp:(int64_t)a3 allowsPast:(BOOL)a4 context:(id)a5;
+ (id)stringFromError:(id)a3 context:(id)a4;
+ (id)stringFromErrorString:(id)a3 context:(id)a4;
+ (id)stringFromInterval:(double)a3 context:(id)a4;
+ (id)stringFromItemAsString:(id)a3 context:(id)a4;
+ (id)stringFromItemID:(id)a3 context:(id)a4;
+ (id)stringFromOperationUUID:(unsigned __int8)a3[16] context:(id)a4;
+ (id)stringFromThrottleState:(int)a3 context:(id)a4;
+ (int64_t)nowFromContext:(id)a3;
- (BOOL)isCancelled;
- (BOOL)shouldKeepDumpingWithItemCount:(unsigned int)a3 includeAllItems:(BOOL)a4;
- (BRCDumpContext)initWithDumper:(id)a3;
- (BRCDumpContext)initWithFile:(__sFILE *)a3 db:(id)a4;
- (id)highlightedString:(id)a3 type:(int64_t)a4;
- (void)popIndentation;
- (void)writeLineWithFormat:(id)a3;
@end

@implementation BRCDumpContext

+ (id)stringFromThrottleState:(int)a3 context:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:BRCPrettyPrintEnum()];
  v7 = v6;
  if (v5 && a3)
  {
    if (a3 == 1)
    {
      v8 = 7;
    }

    else
    {
      v8 = 3;
    }

    v9 = [v5 highlightedString:v6 type:v8];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

+ (id)stringFromItemAsString:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = a4;
    v9 = [v7 stringWithFormat:@"<%@>", v6];

    v10 = [v8 highlightedString:v9 type:5];
  }

  else
  {
    v9 = v5;
    v10 = v9;
  }

  return v10;
}

+ (id)nowDateFromContext:(id)a3
{
  if (a3)
  {
    v3 = *(a3 + 3);
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] date];
  }

  return v3;
}

+ (int64_t)nowFromContext:(id)a3
{
  v3 = [a1 nowDateFromContext:a3];
  [v3 timeIntervalSince1970];
  v4 = brc_interval_to_nsec();

  return v4;
}

+ (id)highlightedString:(id)a3 type:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = v7;
  if (a5)
  {
    v9 = [a5 highlightedString:v7 type:a4];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

+ (id)stringFromItemID:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 debugItemIDStringWithVerbose:{objc_msgSend(v5, "verbose")}];

  if (v5)
  {
    v8 = [BRCDumpContext stringFromItemAsString:v7 context:v5];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

+ (id)stringFromOperationUUID:(unsigned __int8)a3[16] context:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  memset(out, 0, 37);
  uuid_unparse(a3, out);
  if (v5)
  {
    out[8] = 0;
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%s)", out];
    v7 = [BRCDumpContext highlightedString:v6 type:5 context:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)stringFromErrorString:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [a4 highlightedString:v5 type:3];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

+ (id)stringFromError:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = [a3 description];
  if (v5)
  {
    v7 = [v5 highlightedString:v6 type:3];

    v6 = v7;
  }

  return v6;
}

+ (id)stringFromDueStamp:(int64_t)a3 allowsPast:(BOOL)a4 context:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [BRCDumpContext nowFromContext:v7];
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 < a3)
    {
      brc_interval_from_nsec();
      v9 = [BRCDumpContext stringFromInterval:v7 context:?];
      if (!v7)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (v5)
    {
      if (!a3)
      {
        goto LABEL_2;
      }

      v10 = MEMORY[0x277CCACA8];
      brc_interval_from_nsec();
      v11 = [BRCDumpContext stringFromInterval:v7 context:?];
      v9 = [v10 stringWithFormat:@"%@ ago", v11];

      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = @"ready";
      if (v7)
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
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_12:
  v12 = [v7 highlightedString:v9 type:6];
LABEL_13:
  v13 = v12;

  return v13;
}

+ (id)stringFromInterval:(double)a3 context:(id)a4
{
  v4 = fabs(a3);
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

+ (id)stringFromCount:(int64_t)a3 showActualCount:(BOOL)a4 suffix:(id)a5 isByteCount:(BOOL)a6 context:(id)a7
{
  v8 = a6;
  v9 = a4;
  v11 = a5;
  v12 = a7;
  if (a3 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = -a3;
  }

  if (v13 <= 0x3E7)
  {
    if (a3 >= 0)
    {
      v14 = @"%lld %@";
    }

    else
    {
      v14 = @"-%lld %@";
    }

    v15 = &stru_2837504F0;
    if (v8)
    {
      v15 = @"bytes";
    }

    v16 = [MEMORY[0x277CCAB68] stringWithFormat:v14, v13, v15];
    goto LABEL_34;
  }

  if (v13 > 0xF423F)
  {
    if (v13 > 0x3B9AC9FF)
    {
      v17 = MEMORY[0x277CCAB68];
      if (v13 > 0x2540BE3FFLL)
      {
        if (a3 >= 0)
        {
          v18 = @"%lld %@";
        }

        else
        {
          v18 = @"-%lld %@";
        }

        v19 = v13 / 0x3B9ACA00;
        v20 = @"billions";
        v21 = @"GB";
        goto LABEL_16;
      }

      if (a3 >= 0)
      {
        v22 = @"%.2f %@";
      }

      else
      {
        v22 = @"-%.2f %@";
      }

      v23 = v13 * 0.000000001;
      v24 = @"billion";
      v25 = @"GB";
    }

    else
    {
      v17 = MEMORY[0x277CCAB68];
      if (a3 >= 0)
      {
        v22 = @"%.1f %@";
      }

      else
      {
        v22 = @"-%.1f %@";
      }

      v23 = (v13 * 0.000001);
      v24 = @"million";
      v25 = @"MB";
    }

    if (v8)
    {
      v24 = v25;
    }

    [v17 stringWithFormat:v22, *&v23, v24];
    goto LABEL_32;
  }

  v17 = MEMORY[0x277CCAB68];
  if (a3 >= 0)
  {
    v18 = @"%lld %@";
  }

  else
  {
    v18 = @"-%lld %@";
  }

  v19 = v13 / 0x3E8uLL;
  v20 = @"thousand";
  v21 = @"KB";
LABEL_16:
  if (v8)
  {
    v20 = v21;
  }

  [v17 stringWithFormat:v18, v19, v20];
  v26 = LABEL_32:;
  v16 = v26;
  if (v9)
  {
    [v26 appendFormat:@" (%lld)", a3];
  }

LABEL_34:
  if (v11)
  {
    [v16 appendString:v11];
  }

  if (v12)
  {
    v27 = [v12 highlightedString:v16 type:2];
  }

  else
  {
    v27 = v16;
  }

  v28 = v27;

  return v28;
}

- (BRCDumpContext)initWithFile:(__sFILE *)a3 db:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = BRCDumpContext;
  v8 = [(BRCDumpContext *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_fp = a3;
    objc_storeStrong(&v8->_db, a4);
    indentationBaseString = v9->_indentationBaseString;
    v9->_indentationBaseString = @"    ";

    v11 = [MEMORY[0x277CBEAA8] date];
    nowDate = v9->_nowDate;
    v9->_nowDate = v11;

    v13 = [objc_alloc(MEMORY[0x277CFAE08]) initWithFile:a3 forceColor:0];
    dumper = v9->_dumper;
    v9->_dumper = v13;

    v9->_newLineAfterWrite = 1;
  }

  return v9;
}

- (BRCDumpContext)initWithDumper:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = BRCDumpContext;
  v6 = [(BRCDumpContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    indentationBaseString = v6->_indentationBaseString;
    v6->_indentationBaseString = @"    ";

    objc_storeStrong(&v7->_dumper, a3);
    v9 = [MEMORY[0x277CBEAA8] date];
    nowDate = v7->_nowDate;
    v7->_nowDate = v9;

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

- (void)writeLineWithFormat:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v5 = [(NSString *)self->_indentationBaseString UTF8String];
  v19 = &v22;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v22];
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
            fputs(v5, self->_fp);
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

- (BOOL)shouldKeepDumpingWithItemCount:(unsigned int)a3 includeAllItems:(BOOL)a4
{
  if (a3 >= 0x3E9 && !a4)
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

- (id)highlightedString:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAB68] string];
  v8 = a4 - 1;
  if ((a4 - 1) > 6)
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
  v12 = [(BRCDumper *)self->_dumper stringForReset];
  if (v11)
  {
    [v7 appendString:v11];
  }

  [v7 appendString:v6];
  if (v12)
  {
    [v7 appendString:v12];
  }

  return v7;
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

  *a2 = *a1;
  v6 = *MEMORY[0x277D85DE8];
}

@end