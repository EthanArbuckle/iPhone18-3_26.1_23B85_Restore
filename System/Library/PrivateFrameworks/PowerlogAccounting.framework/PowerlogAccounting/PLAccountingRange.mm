@interface PLAccountingRange
+ (PLAccountingRange)rangeWithStartDate:(id)date withEndDate:(id)endDate;
+ (id)emptyRange;
- (BOOL)containsDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)overlaps:(id)overlaps;
- (PLAccountingRange)initWithStartDate:(id)date withEndDate:(id)endDate;
- (double)length;
- (id)description;
- (id)intersect:(id)intersect;
@end

@implementation PLAccountingRange

- (double)length
{
  startDate = [(PLAccountingRange *)self startDate];
  if (startDate)
  {
    endDate = [(PLAccountingRange *)self endDate];
    if (endDate)
    {
      endDate2 = [(PLAccountingRange *)self endDate];
      startDate2 = [(PLAccountingRange *)self startDate];
      [endDate2 timeIntervalSinceDate:startDate2];
      v8 = v7;
    }

    else
    {
      v8 = 1.79769313e308;
    }
  }

  else
  {
    v8 = 1.79769313e308;
  }

  return v8;
}

+ (id)emptyRange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLAccountingRange_emptyRange__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (emptyRange_onceToken != -1)
  {
    dispatch_once(&emptyRange_onceToken, block);
  }

  v2 = emptyRange_emptyRange;

  return v2;
}

- (PLAccountingRange)initWithStartDate:(id)date withEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (dateCopy | endDateCopy)
  {
    v15.receiver = self;
    v15.super_class = PLAccountingRange;
    v9 = [(PLAccountingRange *)&v15 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_startDate, date);
      if (dateCopy)
      {
        v11 = [endDateCopy laterDate:dateCopy];
      }

      else
      {
        v11 = endDateCopy;
      }

      endDate = v10->_endDate;
      v10->_endDate = v11;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (PLAccountingRange)rangeWithStartDate:(id)date withEndDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = [[PLAccountingRange alloc] initWithStartDate:dateCopy withEndDate:endDateCopy];

  return v7;
}

- (id)intersect:(id)intersect
{
  intersectCopy = intersect;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__PLAccountingRange_intersect___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (intersect__defaultOnce != -1)
    {
      dispatch_once(&intersect__defaultOnce, block);
    }

    if (intersect__classDebugEnabled == 1)
    {
      intersectCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"self=%@, otherRange=%@", self, intersectCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingRange.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRange intersect:]"];
      [v7 logMessage:intersectCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:42];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  endDate = [(PLAccountingRange *)self endDate];
  startDate = [intersectCopy startDate];
  [endDate timeIntervalSinceDate:startDate];
  v15 = v14;

  if (v15 < 0.0)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_23;
    }

    v16 = objc_opt_class();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __31__PLAccountingRange_intersect___block_invoke_17;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v16;
    if (intersect__defaultOnce_15 != -1)
    {
      dispatch_once(&intersect__defaultOnce_15, v49);
    }

    if (intersect__classDebugEnabled_16 != 1)
    {
      goto LABEL_23;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"self ends before otherRange"];
    v18 = MEMORY[0x277D3F178];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingRange.m"];
    lastPathComponent2 = [v19 lastPathComponent];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRange intersect:]"];
    [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:46];

    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PLAccountingDependency activate];
    }

LABEL_22:

LABEL_23:
    emptyRange = [objc_opt_class() emptyRange];
    goto LABEL_24;
  }

  endDate2 = [intersectCopy endDate];
  startDate2 = [(PLAccountingRange *)self startDate];
  [endDate2 timeIntervalSinceDate:startDate2];
  v26 = v25;

  if (v26 < 0.0)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_23;
    }

    v27 = objc_opt_class();
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __31__PLAccountingRange_intersect___block_invoke_23;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v27;
    if (intersect__defaultOnce_21 != -1)
    {
      dispatch_once(&intersect__defaultOnce_21, v48);
    }

    if (intersect__classDebugEnabled_22 != 1)
    {
      goto LABEL_23;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"otherRange ends before self"];
    v28 = MEMORY[0x277D3F178];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingRange.m"];
    lastPathComponent3 = [v29 lastPathComponent];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRange intersect:]"];
    [v28 logMessage:v17 fromFile:lastPathComponent3 fromFunction:v31 fromLineNumber:52];

    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PLAccountingDependency activate];
    }

    goto LABEL_22;
  }

  startDate3 = [(PLAccountingRange *)self startDate];
  startDate4 = [intersectCopy startDate];
  v36 = [startDate3 laterDate:startDate4];
  endDate3 = [(PLAccountingRange *)self endDate];
  endDate4 = [intersectCopy endDate];
  v39 = [endDate3 earlierDate:endDate4];
  emptyRange = [PLAccountingRange rangeWithStartDate:v36 withEndDate:v39];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v40 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __31__PLAccountingRange_intersect___block_invoke_29;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v40;
    if (intersect__defaultOnce_27 != -1)
    {
      dispatch_once(&intersect__defaultOnce_27, v47);
    }

    if (intersect__classDebugEnabled_28 == 1)
    {
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"intersectionRange=%@", emptyRange];
      v42 = MEMORY[0x277D3F178];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingRange.m"];
      lastPathComponent4 = [v43 lastPathComponent];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRange intersect:]"];
      [v42 logMessage:v41 fromFile:lastPathComponent4 fromFunction:v45 fromLineNumber:59];

      v46 = PLLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

LABEL_24:

  return emptyRange;
}

uint64_t __31__PLAccountingRange_intersect___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  intersect__classDebugEnabled = result;
  return result;
}

uint64_t __31__PLAccountingRange_intersect___block_invoke_17(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  intersect__classDebugEnabled_16 = result;
  return result;
}

uint64_t __31__PLAccountingRange_intersect___block_invoke_23(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  intersect__classDebugEnabled_22 = result;
  return result;
}

uint64_t __31__PLAccountingRange_intersect___block_invoke_29(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  intersect__classDebugEnabled_28 = result;
  return result;
}

- (BOOL)overlaps:(id)overlaps
{
  overlapsCopy = overlaps;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__PLAccountingRange_overlaps___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (overlaps__defaultOnce != -1)
    {
      dispatch_once(&overlaps__defaultOnce, block);
    }

    if (overlaps__classDebugEnabled == 1)
    {
      overlapsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"self=%@, otherRange=%@", self, overlapsCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingRange.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRange overlaps:]"];
      [v7 logMessage:overlapsCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:64];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  [(PLAccountingRange *)self length];
  if (v12 == 0.0)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v13 = objc_opt_class();
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __30__PLAccountingRange_overlaps___block_invoke_35;
      v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v44[4] = v13;
      if (overlaps__defaultOnce_33 != -1)
      {
        dispatch_once(&overlaps__defaultOnce_33, v44);
      }

      if (overlaps__classDebugEnabled_34 == 1)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"self is an EventPoint"];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingRange.m"];
        lastPathComponent2 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRange overlaps:]"];
        [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:67];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    startDate = [(PLAccountingRange *)self startDate];
    selfCopy = overlapsCopy;
LABEL_26:
    v32 = [(PLAccountingRange *)selfCopy containsDate:startDate];
    goto LABEL_27;
  }

  [(PLAccountingRange *)overlapsCopy length];
  v23 = v22;
  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (v23 == 0.0)
  {
    if (debugEnabled)
    {
      v25 = objc_opt_class();
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __30__PLAccountingRange_overlaps___block_invoke_41;
      v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v43[4] = v25;
      if (overlaps__defaultOnce_39 != -1)
      {
        dispatch_once(&overlaps__defaultOnce_39, v43);
      }

      if (overlaps__classDebugEnabled_40 == 1)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"otherRange is an EventPoint"];
        v27 = MEMORY[0x277D3F178];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingRange.m"];
        lastPathComponent3 = [v28 lastPathComponent];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRange overlaps:]"];
        [v27 logMessage:v26 fromFile:lastPathComponent3 fromFunction:v30 fromLineNumber:71];

        v31 = PLLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    startDate = [(PLAccountingRange *)overlapsCopy startDate];
    selfCopy = self;
    goto LABEL_26;
  }

  if (debugEnabled)
  {
    v34 = objc_opt_class();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __30__PLAccountingRange_overlaps___block_invoke_47;
    v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v42[4] = v34;
    if (overlaps__defaultOnce_45 != -1)
    {
      dispatch_once(&overlaps__defaultOnce_45, v42);
    }

    if (overlaps__classDebugEnabled_46 == 1)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"both are EventIntervals"];
      v36 = MEMORY[0x277D3F178];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingRange.m"];
      lastPathComponent4 = [v37 lastPathComponent];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRange overlaps:]"];
      [v36 logMessage:v35 fromFile:lastPathComponent4 fromFunction:v39 fromLineNumber:75];

      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  startDate = [(PLAccountingRange *)self intersect:overlapsCopy];
  [startDate length];
  v32 = v41 >= 1.0;
LABEL_27:

  return v32;
}

uint64_t __30__PLAccountingRange_overlaps___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  overlaps__classDebugEnabled = result;
  return result;
}

uint64_t __30__PLAccountingRange_overlaps___block_invoke_35(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  overlaps__classDebugEnabled_34 = result;
  return result;
}

uint64_t __30__PLAccountingRange_overlaps___block_invoke_41(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  overlaps__classDebugEnabled_40 = result;
  return result;
}

uint64_t __30__PLAccountingRange_overlaps___block_invoke_47(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  overlaps__classDebugEnabled_46 = result;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  startDate = [(PLAccountingRange *)self startDate];
  if (!startDate)
  {
    startDate2 = [equalCopy startDate];
    if (!startDate2)
    {
      v9 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  startDate3 = [equalCopy startDate];
  startDate4 = [(PLAccountingRange *)self startDate];
  v9 = [startDate3 isEqualToDate:startDate4];

  if (!startDate)
  {
    goto LABEL_6;
  }

LABEL_7:

  endDate = [(PLAccountingRange *)self endDate];
  if (!endDate)
  {
    startDate2 = [equalCopy endDate];
    if (!startDate2)
    {
      v13 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  endDate2 = [equalCopy endDate];
  endDate3 = [(PLAccountingRange *)self endDate];
  v13 = [endDate2 isEqualToDate:endDate3];

  if (!endDate)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v9 & v13;
}

void __31__PLAccountingRange_emptyRange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v6 = [MEMORY[0x277CBEAA8] distantPast];
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [v2 rangeWithStartDate:v6 withEndDate:v3];
  v5 = emptyRange_emptyRange;
  emptyRange_emptyRange = v4;
}

- (BOOL)containsDate:(id)date
{
  dateCopy = date;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__PLAccountingRange_containsDate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (containsDate__defaultOnce != -1)
    {
      dispatch_once(&containsDate__defaultOnce, block);
    }

    if (containsDate__classDebugEnabled == 1)
    {
      dateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"self=%@, date=%@", self, dateCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingRange.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRange containsDate:]"];
      [v7 logMessage:dateCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:99];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  startDate = [(PLAccountingRange *)self startDate];
  [dateCopy timeIntervalSinceDate:startDate];
  if (v13 >= -1.0)
  {
    endDate = [(PLAccountingRange *)self endDate];
    [dateCopy timeIntervalSinceDate:endDate];
    v14 = v16 <= 1.0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __34__PLAccountingRange_containsDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  containsDate__classDebugEnabled = result;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  startDate = [(PLAccountingRange *)self startDate];
  [startDate timeIntervalSince1970];
  v6 = v5;
  endDate = [(PLAccountingRange *)self endDate];
  [endDate timeIntervalSince1970];
  v9 = [v3 stringWithFormat:@"(%f->%f)", v6, v8];

  return v9;
}

@end