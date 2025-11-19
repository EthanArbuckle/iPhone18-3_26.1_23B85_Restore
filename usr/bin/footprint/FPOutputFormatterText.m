@interface FPOutputFormatterText
- (void)endAtTime:(id)a3;
- (void)printGlobalAuxData:(id)a3;
- (void)printHeader;
- (void)printProcessAuxData:(id)a3 forProcess:(id)a4;
- (void)printProcessCategories:(id)a3 total:(id *)a4 forProcess:(id)a5;
- (void)printProcessHeader:(id)a3;
- (void)printProcessTotal:(id)a3 forProcess:(id)a4;
- (void)printProcessesWithWarnings:(id)a3 processesWithErrors:(id)a4 globalErrors:(id)a5;
- (void)printSharedCache:(id)a3 categories:(id)a4 sharedWith:(id)a5 total:(id *)a6;
- (void)printSharedCategories:(id)a3 sharedWith:(id)a4 forProcess:(id)a5 hasProcessView:(BOOL)a6 total:(id *)a7;
- (void)printSummaryCategories:(id)a3 total:(id *)a4 hadErrors:(BOOL)a5;
- (void)printVmmapLikeOutputForProcess:(id)a3 regions:(id)a4;
- (void)startAtTime:(id)a3;
@end

@implementation FPOutputFormatterText

- (void)startAtTime:(id)a3
{
  self->_processCount = 0;
  if (self->_multipleOutputs)
  {
    dateFormatter = self->_dateFormatter;
    v12 = sub_100017000(a3);
    v6 = [(NSISO8601DateFormatter *)dateFormatter stringFromDate:v12];
    v7 = [v6 UTF8String];
    sub_1000182F4(self, 0, 0, "Time: %s\n", v8, v9, v10, v11, v7);
  }
}

- (void)printVmmapLikeOutputForProcess:(id)a3 regions:(id)a4
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
  v8 = a4;
  v9 = a3;
  v10 = [v9 displayString];
  fprintf(output, "%s\n\n", [v10 UTF8String]);

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
  v21 = [v9 pageSize];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100018638;
  v22[3] = &unk_100029EB8;
  v22[4] = self;
  v22[5] = v6;
  v22[6] = v21;
  [v8 fp_enumerateObjectsWithBatchSize:128 usingBlock:v22];

  fputc(10, self->_output);
}

- (void)printHeader
{
  if (self && !sub_10000EDEC())
  {

    sub_100019D50(self, "VM Object Dirty Analysis: Enabled\n", v3, v4, v5, v6, v7, v8, v10);
  }
}

- (void)printProcessHeader:(id)a3
{
  v4 = a3;
  v5 = v4;
  processCount = self->_processCount;
  if (processCount != 2)
  {
    self->_processCount = processCount + 1;
  }

  orderedProcesses = self->_orderedProcesses;
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 pid]);
  [(NSMutableArray *)orderedProcesses addObject:v8];

  self->_pageSize = [v5 pageSize];
  options = self->_options;
  sub_1000182F4(self, v5, 1, "%s%s%s%*s%s%s%*s%s%s\n", v10, v11, v12, v13, "==========");
  v14 = [v5 displayString];
  LOBYTE(v8) = [v14 UTF8String];
  [v5 is64bit];
  [v5 isTranslated];
  sub_1000182F4(self, v5, 1, "%s: %s-bit%s", v15, v16, v17, v18, v8);

  v19 = [v5 warnings];
  v20 = [v5 errors];
  if ([v19 count])
  {
    sub_1000182F4(self, v5, 1, "\nWarnings were encountered while examining the process.\n", v21, v22, v23, v24, v47);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v25 = v19;
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

  if ([v20 count])
  {
    sub_1000182F4(self, v5, 1, "\nErrors were encountered while examining the process. Results may be incomplete or incorrect.\n", v34, v35, v36, v37, v47);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v38 = v20;
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

- (void)printProcessTotal:(id)a3 forProcess:(id)a4
{
  v6 = a4;
  v12 = sub_100018EC4(self, [a3 longLongValue]);
  v7 = v12;
  [v12 UTF8String];
  [v6 pageSize];
  sub_1000182F4(self, v6, 1, "%sFootprint: %s (%lu bytes per page)\n", v8, v9, v10, v11, "    ");
}

- (void)printProcessCategories:(id)a3 total:(id *)a4 forProcess:(id)a5
{
  summaryFormat = self->_summaryFormat;
  v28 = a5;
  v25 = a3;
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

  sub_1000182F4(self, v28, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v9, v10, v11, v12, v13);
  options = self->_options;
  if (self->_summaryFormat == 1)
  {
    v19 = 7;
  }

  else
  {
    v19 = 11;
  }

  sub_1000182F4(self, v28, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v14, v15, v16, v17, v19);
  sub_100019290(self, v25, v28);

  sub_1000194D4(self, a4, v28);
  sub_1000182F4(self, v28, 1, "\n", v20, v21, v22, v23, v24);
}

- (void)printSharedCategories:(id)a3 sharedWith:(id)a4 forProcess:(id)a5 hasProcessView:(BOOL)a6 total:(id *)a7
{
  v63 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 processes];
  v13 = [v12 count] - (v11 != 0);

  v14 = [v10 processes];
  v15 = [v14 count];

  v62 = v10;
  if (v15 < 0x15)
  {
    sub_1000182F4(self, v11, 1, "Shared with", v16, v17, v18, v19, v57);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v20 = [v10 processes];
    v21 = [v20 countByEnumeratingWithState:&v64 objects:v68 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v64 + 1) + 8 * i);
          if (v25 != v11)
          {
            v26 = [v25 displayString];
            v27 = [v26 UTF8String];
            sub_1000182F4(self, v11, 1, " %s", v28, v29, v30, v31, v27);

            if (--v13)
            {
              sub_1000182F4(self, v11, 1, ",", v32, v33, v34, v35, v58);
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v64 objects:v68 count:16];
      }

      while (v22);
    }

    sub_1000182F4(self, v11, 1, ":\n", v36, v37, v38, v39, v58);
  }

  else
  {
    sub_1000182F4(self, v11, 1, "Shared with %lu processes:\n", v16, v17, v18, v19, v13);
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

  sub_1000182F4(self, v11, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v42, v43, v44, v45, v46);
  options = self->_options;
  if (self->_summaryFormat == 1)
  {
    v52 = 7;
  }

  else
  {
    v52 = 11;
  }

  sub_1000182F4(self, v11, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v47, v48, v49, v50, v52);
  sub_100019290(self, v63, v11);
  sub_1000194D4(self, a7, v11);
  sub_1000182F4(self, v11, 1, "\n", v53, v54, v55, v56, v59);
}

- (void)printSharedCache:(id)a3 categories:(id)a4 sharedWith:(id)a5 total:(id *)a6
{
  options = self->_options;
  v10 = a5;
  v36 = a4;
  v11 = a3;
  sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n", v12, v13, v14, v15, v16, v17, "==========");
  if (v11)
  {
    v18 = v11[2];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [v19 UUIDString];
  v21 = [v20 UTF8String];
  sub_100019D50(self, "Shared Cache %s\n", v22, v23, v24, v25, v26, v27, v21);

  v28 = self->_options;
  sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n\n", v29, v30, v31, v32, v33, v34, "==========");
  [(FPOutputFormatterText *)self printSharedCategories:v36 sharedWith:v10 forProcess:0 hasProcessView:0 total:a6];
}

- (void)printProcessAuxData:(id)a3 forProcess:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v18 = v6;
    if (self)
    {
      v11 = v6;
      v12 = a3;
      sub_1000182F4(self, v11, 1, "Auxiliary data:\n", v13, v14, v15, v16, v17);
      sub_10001A8FC(self, v12, 1, v11);

      v6 = v18;
    }

    sub_1000182F4(self, v6, 1, "\n", v7, v8, v9, v10, v17);
  }
}

- (void)printProcessesWithWarnings:(id)a3 processesWithErrors:(id)a4 globalErrors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v69 = v10;
  v70 = v8;
  if ([v8 count])
  {
    sub_100019D50(self, "\nWarnings were encountered while examining the following processes:\n", v11, v12, v13, v14, v15, v16, v68);
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v17 = v8;
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
          v23 = [v22 name];
          [v23 UTF8String];
          sub_1000182F4(self, v22, 1, "%s%s\n", v24, v25, v26, v27, "    ");
        }

        v19 = [v17 countByEnumeratingWithState:&v79 objects:v85 count:16];
      }

      while (v19);
    }

    v10 = v69;
    v8 = v70;
  }

  if ([v9 count])
  {
    sub_100019D50(self, "\nErrors were encountered while examining the following processes:\n", v28, v29, v30, v31, v32, v33, v68);
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v34 = v9;
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
          v40 = [v39 name];
          [v40 UTF8String];
          sub_1000182F4(self, v39, 1, "%s%s\n", v41, v42, v43, v44, "    ");
        }

        v36 = [v34 countByEnumeratingWithState:&v75 objects:v84 count:16];
      }

      while (v36);
    }

    v10 = v69;
    v8 = v70;
  }

  if ([v10 count])
  {
    sub_100019D50(self, "\nErrors were encountered:\n", v45, v46, v47, v48, v49, v50, v68);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v51 = v10;
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

  if ([v9 count] || objc_msgSend(v10, "count"))
  {
    sub_100019D50(self, "\nDue to errors, summary results may be incomplete or incorrect\n", v62, v63, v64, v65, v66, v67, v68);
  }
}

- (void)printSummaryCategories:(id)a3 total:(id *)a4 hadErrors:(BOOL)a5
{
  v7 = a3;
  if (self->_processCount != 1)
  {
    options = self->_options;
    v46 = v7;
    sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n", v8, v9, v10, v11, v12, v13, "==========");
    v15 = sub_100018EC4(self, a4->var1 + a4->var0);
    v16 = [v15 UTF8String];
    sub_100019D50(self, "Summary Footprint: %s%s\n", v17, v18, v19, v20, v21, v22, v16);

    v23 = self->_options;
    sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n\n", v24, v25, v26, v27, v28, v29, "==========");
    v7 = v46;
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
      sub_1000194D4(self, a4, 0);
      v7 = v46;
    }
  }
}

- (void)printGlobalAuxData:(id)a3
{
  v4 = a3;
  if (self->_processCount != 1)
  {
    v50 = v4;
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
                v26 = [v23 UTF8String];
                sub_1000182F4(self, 0, 1, "%s:\n", v27, v28, v29, v30, v26);
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
                  v42 = [v31 value];
                  [v23 UTF8String];
                  v43 = sub_100018EC4(self, v42);
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
    v4 = v50;
  }
}

- (void)endAtTime:(id)a3
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