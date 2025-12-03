@interface FPOutputFormatterText
- (void)endAtTime:(id)time;
- (void)printGlobalAuxData:(id)data;
- (void)printHeader;
- (void)printProcessAuxData:(id)data forProcess:(id)process;
- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process;
- (void)printProcessHeader:(id)header;
- (void)printProcessTotal:(id)total forProcess:(id)process;
- (void)printProcessesWithWarnings:(id)warnings processesWithErrors:(id)errors globalErrors:(id)globalErrors;
- (void)printSharedCache:(id)cache categories:(id)categories sharedWith:(id)with total:(id *)total;
- (void)printSharedCategories:(id)categories sharedWith:(id)with forProcess:(id)process hasProcessView:(BOOL)view total:(id *)total;
- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors;
- (void)printVmmapLikeOutputForProcess:(id)process regions:(id)regions;
- (void)startAtTime:(id)time;
@end

@implementation FPOutputFormatterText

- (void)startAtTime:(id)time
{
  self->_processCount = 0;
  if (self->_multipleOutputs)
  {
    dateFormatter = self->_dateFormatter;
    v12 = sub_100017000(time);
    v6 = [(NSISO8601DateFormatter *)dateFormatter stringFromDate:v12];
    uTF8String = [v6 UTF8String];
    sub_1000182F4(self, 0, 0, "Time: %s\n", v8, v9, v10, v11, uTF8String);
  }
}

- (void)printVmmapLikeOutputForProcess:(id)process regions:(id)regions
{
  self->_verbose = 1;
  if ((~LODWORD(self->_options) & 7) != 0)
  {
    v6 = 0xFFFFFFFFFFLL;
  }

  else
  {
    v6 = -1;
  }

  output = self->_output;
  regionsCopy = regions;
  processCopy = process;
  displayString = [processCopy displayString];
  fprintf(output, "%s\n\n", [displayString UTF8String]);

  options = self->_options;
  v12 = 4 * (options & 2);
  v13 = "     SWP";
  if ((options & 2) == 0)
  {
    v13 = "";
  }

  v14 = "    WIRE";
  if ((self->_options & 1) == 0)
  {
    v14 = "";
  }

  if ((~LODWORD(self->_options) & 7) != 0)
  {
    v15 = 12;
  }

  else
  {
    v15 = 18;
  }

  fprintf(self->_output, "           start                end %*s     VRT     DRT%*s     CLN     RCL%*s   tag (detail)\n", v15, "[object-id]", v12, v13, 8 * (self->_options & 1), v14);
  v16 = self->_options;
  v17 = 4 * (v16 & 2);
  v18 = "   -----";
  if ((v16 & 2) != 0)
  {
    v19 = "   -----";
  }

  else
  {
    v19 = "";
  }

  if ((self->_options & 1) == 0)
  {
    v18 = "";
  }

  if ((~LODWORD(self->_options) & 7) != 0)
  {
    v20 = 12;
  }

  else
  {
    v20 = 18;
  }

  fprintf(self->_output, "      ----------         ---------- %*s   -----   -----%*s   -----   -----%*s   ------------\n", v20, "------------", v17, v19, 8 * (self->_options & 1), v18);
  pageSize = [processCopy pageSize];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100018638;
  v22[3] = &unk_100029EB8;
  v22[4] = self;
  v22[5] = v6;
  v22[6] = pageSize;
  [regionsCopy fp_enumerateObjectsWithBatchSize:128 usingBlock:v22];

  fputc(10, self->_output);
}

- (void)printHeader
{
  if (self && !sub_10000EDEC())
  {

    sub_100019D50(self, "VM Object Dirty Analysis: Enabled\n", v3, v4, v5, v6, v7, v8, v10);
  }
}

- (void)printProcessHeader:(id)header
{
  headerCopy = header;
  v5 = headerCopy;
  processCount = self->_processCount;
  if (processCount != 2)
  {
    self->_processCount = processCount + 1;
  }

  orderedProcesses = self->_orderedProcesses;
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [headerCopy pid]);
  [(NSMutableArray *)orderedProcesses addObject:v8];

  self->_pageSize = [v5 pageSize];
  options = self->_options;
  sub_1000182F4(self, v5, 1, "%s%s%s%*s%s%s%*s%s%s\n", v10, v11, v12, v13, "==========");
  displayString = [v5 displayString];
  LOBYTE(v8) = [displayString UTF8String];
  [v5 is64bit];
  [v5 isTranslated];
  sub_1000182F4(self, v5, 1, "%s: %s-bit%s", v15, v16, v17, v18, v8);

  warnings = [v5 warnings];
  errors = [v5 errors];
  if ([warnings count])
  {
    sub_1000182F4(self, v5, 1, "\nWarnings were encountered while examining the process.\n", v21, v22, v23, v24, v47);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v25 = warnings;
    v26 = [v25 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v53;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v53 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v52 + 1) + 8 * i) UTF8String];
          sub_1000182F4(self, v5, 1, "%s%s\n", v30, v31, v32, v33, "    ");
        }

        v27 = [v25 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v27);
    }
  }

  if ([errors count])
  {
    sub_1000182F4(self, v5, 1, "\nErrors were encountered while examining the process. Results may be incomplete or incorrect.\n", v34, v35, v36, v37, v47);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v38 = errors;
    v39 = [v38 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v49;
      do
      {
        for (j = 0; j != v40; j = j + 1)
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(v38);
          }

          [*(*(&v48 + 1) + 8 * j) UTF8String];
          sub_1000182F4(self, v5, 1, "%s%s\n", v43, v44, v45, v46, "    ");
        }

        v40 = [v38 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v40);
    }
  }
}

- (void)printProcessTotal:(id)total forProcess:(id)process
{
  processCopy = process;
  v12 = sub_100018EC4(self, [total longLongValue]);
  v7 = v12;
  [v12 UTF8String];
  [processCopy pageSize];
  sub_1000182F4(self, processCopy, 1, "%sFootprint: %s (%lu bytes per page)\n", v8, v9, v10, v11, "    ");
}

- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process
{
  summaryFormat = self->_summaryFormat;
  processCopy = process;
  categoriesCopy = categories;
  [@"Dirty" UTF8String];
  if ((self->_options & 2) != 0)
  {
    self->_summaryFormat;
    [(NSString *)self->_swappedColumnName UTF8String];
  }

  v7 = self->_summaryFormat;
  [@"Clean" UTF8String];
  v8 = self->_summaryFormat;
  [@"Reclaimable" UTF8String];
  if (self->_options)
  {
    self->_summaryFormat;
    [(NSString *)self->_wiredColumnName UTF8String];
  }

  [@"Regions" UTF8String];
  [@"Category" UTF8String];
  if (summaryFormat == 1)
  {
    v13 = 7;
  }

  else
  {
    v13 = 11;
  }

  sub_1000182F4(self, processCopy, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v9, v10, v11, v12, v13);
  options = self->_options;
  if (self->_summaryFormat == 1)
  {
    v19 = 7;
  }

  else
  {
    v19 = 11;
  }

  sub_1000182F4(self, processCopy, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v14, v15, v16, v17, v19);
  sub_100019290(self, categoriesCopy, processCopy);

  sub_1000194D4(self, total, processCopy);
  sub_1000182F4(self, processCopy, 1, "\n", v20, v21, v22, v23, v24);
}

- (void)printSharedCategories:(id)categories sharedWith:(id)with forProcess:(id)process hasProcessView:(BOOL)view total:(id *)total
{
  categoriesCopy = categories;
  withCopy = with;
  processCopy = process;
  processes = [withCopy processes];
  v13 = [processes count] - (processCopy != 0);

  processes2 = [withCopy processes];
  v15 = [processes2 count];

  v62 = withCopy;
  if (v15 < 0x15)
  {
    sub_1000182F4(self, processCopy, 1, "Shared with", v16, v17, v18, v19, v57);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    processes3 = [withCopy processes];
    v21 = [processes3 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v65;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v65 != v23)
          {
            objc_enumerationMutation(processes3);
          }

          v25 = *(*(&v64 + 1) + 8 * i);
          if (v25 != processCopy)
          {
            displayString = [v25 displayString];
            uTF8String = [displayString UTF8String];
            sub_1000182F4(self, processCopy, 1, " %s", v28, v29, v30, v31, uTF8String);

            if (--v13)
            {
              sub_1000182F4(self, processCopy, 1, ",", v32, v33, v34, v35, v58);
            }
          }
        }

        v22 = [processes3 countByEnumeratingWithState:&v64 objects:v68 count:16];
      }

      while (v22);
    }

    sub_1000182F4(self, processCopy, 1, ":\n", v36, v37, v38, v39, v58);
  }

  else
  {
    sub_1000182F4(self, processCopy, 1, "Shared with %lu processes:\n", v16, v17, v18, v19, v13);
  }

  summaryFormat = self->_summaryFormat;
  [@"Dirty" UTF8String];
  if ((self->_options & 2) != 0)
  {
    self->_summaryFormat;
    [(NSString *)self->_swappedColumnName UTF8String];
  }

  v40 = self->_summaryFormat;
  [@"Clean" UTF8String];
  v41 = self->_summaryFormat;
  [@"Reclaimable" UTF8String];
  if (self->_options)
  {
    self->_summaryFormat;
    [(NSString *)self->_wiredColumnName UTF8String];
  }

  [@"Regions" UTF8String];
  [@"Category" UTF8String];
  if (summaryFormat == 1)
  {
    v46 = 7;
  }

  else
  {
    v46 = 11;
  }

  sub_1000182F4(self, processCopy, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v42, v43, v44, v45, v46);
  options = self->_options;
  if (self->_summaryFormat == 1)
  {
    v52 = 7;
  }

  else
  {
    v52 = 11;
  }

  sub_1000182F4(self, processCopy, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v47, v48, v49, v50, v52);
  sub_100019290(self, categoriesCopy, processCopy);
  sub_1000194D4(self, total, processCopy);
  sub_1000182F4(self, processCopy, 1, "\n", v53, v54, v55, v56, v59);
}

- (void)printSharedCache:(id)cache categories:(id)categories sharedWith:(id)with total:(id *)total
{
  options = self->_options;
  withCopy = with;
  categoriesCopy = categories;
  cacheCopy = cache;
  sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n", v12, v13, v14, v15, v16, v17, "==========");
  if (cacheCopy)
  {
    v18 = cacheCopy[2];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  uUIDString = [v19 UUIDString];
  uTF8String = [uUIDString UTF8String];
  sub_100019D50(self, "Shared Cache %s\n", v22, v23, v24, v25, v26, v27, uTF8String);

  v28 = self->_options;
  sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n\n", v29, v30, v31, v32, v33, v34, "==========");
  [(FPOutputFormatterText *)self printSharedCategories:categoriesCopy sharedWith:withCopy forProcess:0 hasProcessView:0 total:total];
}

- (void)printProcessAuxData:(id)data forProcess:(id)process
{
  if (data)
  {
    processCopy = process;
    v18 = processCopy;
    if (self)
    {
      v11 = processCopy;
      dataCopy = data;
      sub_1000182F4(self, v11, 1, "Auxiliary data:\n", v13, v14, v15, v16, v17);
      sub_10001A8FC(self, dataCopy, 1, v11);

      processCopy = v18;
    }

    sub_1000182F4(self, processCopy, 1, "\n", v7, v8, v9, v10, v17);
  }
}

- (void)printProcessesWithWarnings:(id)warnings processesWithErrors:(id)errors globalErrors:(id)globalErrors
{
  warningsCopy = warnings;
  errorsCopy = errors;
  globalErrorsCopy = globalErrors;
  v69 = globalErrorsCopy;
  v70 = warningsCopy;
  if ([warningsCopy count])
  {
    sub_100019D50(self, "\nWarnings were encountered while examining the following processes:\n", v11, v12, v13, v14, v15, v16, v68);
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v17 = warningsCopy;
    v18 = [v17 countByEnumeratingWithState:&v79 objects:v85 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v80;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v80 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v79 + 1) + 8 * i);
          name = [v22 name];
          [name UTF8String];
          sub_1000182F4(self, v22, 1, "%s%s\n", v24, v25, v26, v27, "    ");
        }

        v19 = [v17 countByEnumeratingWithState:&v79 objects:v85 count:16];
      }

      while (v19);
    }

    globalErrorsCopy = v69;
    warningsCopy = v70;
  }

  if ([errorsCopy count])
  {
    sub_100019D50(self, "\nErrors were encountered while examining the following processes:\n", v28, v29, v30, v31, v32, v33, v68);
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v34 = errorsCopy;
    v35 = [v34 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v76;
      do
      {
        for (j = 0; j != v36; j = j + 1)
        {
          if (*v76 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v75 + 1) + 8 * j);
          name2 = [v39 name];
          [name2 UTF8String];
          sub_1000182F4(self, v39, 1, "%s%s\n", v41, v42, v43, v44, "    ");
        }

        v36 = [v34 countByEnumeratingWithState:&v75 objects:v84 count:16];
      }

      while (v36);
    }

    globalErrorsCopy = v69;
    warningsCopy = v70;
  }

  if ([globalErrorsCopy count])
  {
    sub_100019D50(self, "\nErrors were encountered:\n", v45, v46, v47, v48, v49, v50, v68);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v51 = globalErrorsCopy;
    v52 = [v51 countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v72;
      do
      {
        for (k = 0; k != v53; k = k + 1)
        {
          if (*v72 != v54)
          {
            objc_enumerationMutation(v51);
          }

          [*(*(&v71 + 1) + 8 * k) UTF8String];
          sub_100019D50(self, "%s%s\n", v56, v57, v58, v59, v60, v61, "    ");
        }

        v53 = [v51 countByEnumeratingWithState:&v71 objects:v83 count:16];
      }

      while (v53);
    }
  }

  if ([errorsCopy count] || objc_msgSend(globalErrorsCopy, "count"))
  {
    sub_100019D50(self, "\nDue to errors, summary results may be incomplete or incorrect\n", v62, v63, v64, v65, v66, v67, v68);
  }
}

- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors
{
  categoriesCopy = categories;
  if (self->_processCount != 1)
  {
    options = self->_options;
    v46 = categoriesCopy;
    sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n", v8, v9, v10, v11, v12, v13, "==========");
    v15 = sub_100018EC4(self, total->var1 + total->var0);
    uTF8String = [v15 UTF8String];
    sub_100019D50(self, "Summary Footprint: %s%s\n", v17, v18, v19, v20, v21, v22, uTF8String);

    v23 = self->_options;
    sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n\n", v24, v25, v26, v27, v28, v29, "==========");
    categoriesCopy = v46;
    if (v46)
    {
      if (self->_summaryFormat == 1)
      {
        v30 = 7;
      }

      else
      {
        v30 = 11;
      }

      v45 = v30;
      [@"Dirty" UTF8String];
      if ((self->_options & 2) != 0)
      {
        self->_summaryFormat;
        [(NSString *)self->_swappedColumnName UTF8String];
      }

      self->_summaryFormat;
      [@"Clean" UTF8String];
      self->_summaryFormat;
      [@"Reclaimable" UTF8String];
      if (self->_options)
      {
        self->_summaryFormat;
        [(NSString *)self->_wiredColumnName UTF8String];
      }

      [@"Regions" UTF8String];
      [@"Category" UTF8String];
      sub_100019D50(self, "%*s%*s%*s%*s%*s %10s    %s\n", v31, v32, v33, v34, v35, v36, v45);
      v43 = self->_options;
      self->_summaryFormat;
      v44 = 7;
      if (self->_summaryFormat != 1)
      {
        v44 = 11;
      }

      self->_summaryFormat;
      sub_100019D50(self, "%*s%*s%*s%*s%*s %10s    %s\n", v37, v38, v39, v40, v41, v42, v44);
      sub_100019290(self, v46, 0);
      sub_1000194D4(self, total, 0);
      categoriesCopy = v46;
    }
  }
}

- (void)printGlobalAuxData:(id)data
{
  dataCopy = data;
  if (self->_processCount != 1)
  {
    v50 = dataCopy;
    sub_100019D50(self, "\n", v5, v6, v7, v8, v9, v10, v48);
    if (v50)
    {
      sub_1000182F4(self, 0, 1, "System auxiliary data:\n", v13, v14, v15, v16, v49);
      v17 = v50;
      v18 = &off_10002C428;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v19 = [&off_10002C428 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v52;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v52 != v21)
            {
              objc_enumerationMutation(&off_10002C428);
            }

            v23 = *(*(&v51 + 1) + 8 * i);
            v24 = [v17 objectForKeyedSubscript:v23];
            strlen([v23 UTF8String]);
            v25 = [v17 objectForKeyedSubscript:v23];

            if (v25)
            {
              if ([v24 fp_isContainer])
              {
                uTF8String = [v23 UTF8String];
                sub_1000182F4(self, 0, 1, "%s:\n", v27, v28, v29, v30, uTF8String);
              }

              else
              {
                v31 = v24;
                if ([v23 isEqualToString:@"sys_footprint"])
                {
                  sub_100019D50(self, "%s%s\n", v32, v33, v34, v35, v36, v37, "    ");
                }

                if ([v31 supportsFormattedValue])
                {
                  [v23 UTF8String];
                  [v31 formattedValue];
                  sub_1000182F4(self, 0, 1, "%s%s:%*s\n", v38, v39, v40, v41, "    ");
                }

                else
                {
                  value = [v31 value];
                  [v23 UTF8String];
                  v43 = sub_100018EC4(self, value);
                  [v43 UTF8String];
                  sub_1000182F4(self, 0, 1, "%s%s:%*s\n", v44, v45, v46, v47, "    ");
                }
              }
            }
          }

          v20 = [&off_10002C428 countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v20);
      }
    }

    sub_100019D50(self, "\n", v11, v12, v13, v14, v15, v16, v49);
    dataCopy = v50;
  }
}

- (void)endAtTime:(id)time
{
  if (self->_layoutStyle == 1)
  {
    v4 = objc_autoreleasePoolPush();
    if ([(NSMutableString *)self->_prefix length])
    {
      fprintf(self->_output, "%s\n", [(NSMutableString *)self->_prefix UTF8String]);
    }

    v46 = [(NSMutableArray *)self->_orderedProcesses count];
    if ([(NSMutableArray *)self->_orderedProcesses count])
    {
      v39 = v4;
      v5 = 0;
LABEL_6:
      v40 = objc_autoreleasePoolPush();
      v44 = objc_alloc_init(NSMutableString);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = self->_orderedProcesses;
      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v52;
        v41 = *v52;
        do
        {
          v9 = 0;
          v42 = v7;
          do
          {
            if (*v52 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v51 + 1) + 8 * v9);
            context = objc_autoreleasePoolPush();
            v11 = [(NSMutableDictionary *)self->_outputLinesByPID objectForKeyedSubscript:v10];
            if (v5 < [v11 count])
            {
              v12 = [(NSMutableArray *)self->_orderedProcesses indexOfObject:v10];
              v13 = 0;
              v14 = v12 - 1;
              if ((v12 - 1) >= 0)
              {
                do
                {
                  v15 = [(NSMutableArray *)self->_orderedProcesses objectAtIndexedSubscript:v14];
                  v16 = [(NSMutableDictionary *)self->_maxTextLengthByPID objectForKeyedSubscript:v15];
                  v13 = &v13[[v16 integerValue]];

                  --v14;
                }

                while (v14 != -1);
              }

              v17 = [v11 objectAtIndexedSubscript:v5];
              v18 = [v44 length];
              v19 = v13 - v18;
              if (v13 == v18)
              {
                v20 = v17;
              }

              else
              {
                v20 = objc_alloc_init(NSMutableString);
                do
                {
                  [v20 appendString:@" "];
                  --v19;
                }

                while (v19);
                [v20 appendString:v17];
              }

              if (v12 != [(NSMutableArray *)self->_orderedProcesses count]- 1)
              {
                v21 = v12 + 1;
                while (v21 < v46)
                {
                  v22 = [(NSMutableArray *)self->_orderedProcesses objectAtIndexedSubscript:v21];
                  v23 = [(NSMutableDictionary *)self->_outputLinesByPID objectForKeyedSubscript:v22];
                  v24 = [v23 count];

                  ++v21;
                  if (v24 > v5)
                  {
                    v25 = +[NSCharacterSet newlineCharacterSet];
                    v26 = [v20 stringByTrimmingCharactersInSet:v25];

                    [v44 appendString:v26];
                    goto LABEL_25;
                  }
                }
              }

              [v44 appendString:v20];
LABEL_25:

              v8 = v41;
              v7 = v42;
            }

            objc_autoreleasePoolPop(context);
            v9 = v9 + 1;
          }

          while (v9 != v7);
          v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v7);
      }

      fputs([v44 UTF8String], self->_output);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v27 = self->_orderedProcesses;
      v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v48;
        while (2)
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v48 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [(NSMutableDictionary *)self->_outputLinesByPID objectForKeyedSubscript:*(*(&v47 + 1) + 8 * i)];
            v33 = [v32 count];

            if (v33 > v5)
            {

              objc_autoreleasePoolPop(v40);
              ++v5;
              goto LABEL_6;
            }
          }

          v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      objc_autoreleasePoolPop(v40);
      v4 = v39;
      if (![(NSMutableString *)self->_suffix length])
      {
        goto LABEL_42;
      }

      fputc(10, self->_output);
    }

    else if (![(NSMutableString *)self->_suffix length])
    {
LABEL_42:
      [(NSMutableDictionary *)self->_maxTextLengthByPID removeAllObjects];
      [(NSMutableArray *)self->_orderedProcesses removeAllObjects];
      [(NSMutableDictionary *)self->_outputLinesByPID removeAllObjects];
      v34 = objc_alloc_init(NSMutableString);
      prefix = self->_prefix;
      self->_prefix = v34;

      v36 = objc_alloc_init(NSMutableString);
      suffix = self->_suffix;
      self->_suffix = v36;

      objc_autoreleasePoolPop(v4);
      goto LABEL_43;
    }

    fputs([(NSMutableString *)self->_suffix UTF8String], self->_output);
    goto LABEL_42;
  }

LABEL_43:
  output = self->_output;

  fflush(output);
}

@end