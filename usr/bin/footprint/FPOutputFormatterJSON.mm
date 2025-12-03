@interface FPOutputFormatterJSON
- (void)close;
- (void)configureForMultipleOutputs;
- (void)dealloc;
- (void)endAtTime:(id)time;
- (void)printGlobalAuxData:(id)data;
- (void)printProcessAuxData:(id)data forProcess:(id)process;
- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process;
- (void)printProcessHeader:(id)header;
- (void)printProcessTotal:(id)total forProcess:(id)process;
- (void)printProcessesWithWarnings:(id)warnings processesWithErrors:(id)errors globalErrors:(id)globalErrors;
- (void)printSharedCache:(id)cache categories:(id)categories sharedWith:(id)with total:(id *)total;
- (void)printSharedCategories:(id)categories sharedWith:(id)with forProcess:(id)process hasProcessView:(BOOL)view total:(id *)total;
- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors;
- (void)startAtTime:(id)time;
@end

@implementation FPOutputFormatterJSON

- (void)dealloc
{
  json = self->_json;
  if (json)
  {
    fclose(json->var0);
    free(self->_json);
  }

  v4.receiver = self;
  v4.super_class = FPOutputFormatterJSON;
  [(FPOutputFormatterJSON *)&v4 dealloc];
}

- (void)configureForMultipleOutputs
{
  self->_multipleOutputs = 1;
  json = self->_json;
  if (json)
  {
    if (json->var1)
    {
      fputc(44, json->var0);
      json = self->_json;
    }

    fwrite("samples:", 0xAuLL, 1uLL, json->var0);
    v4 = self->_json;
    v4->var1 = 0;
    fputc(91, v4->var0);
    self->_json->var1 = 0;
  }
}

- (void)startAtTime:(id)time
{
  timeCopy = time;
  v12 = timeCopy;
  if (self->_multipleOutputs)
  {
    json = self->_json;
    if (json)
    {
      if (json->var1)
      {
        fputc(44, json->var0);
        json = self->_json;
      }

      fputc(123, json->var0);
      self->_json->var1 = 0;
      timeCopy = v12;
    }
  }

  sub_100013528(self, timeCopy, "start_time");
  v6 = self->_json;
  if (v6)
  {
    if (v6->var1)
    {
      fputc(44, v6->var0);
      v6 = self->_json;
    }

    fwrite("processes:", 0xCuLL, 1uLL, v6->var0);
    v7 = self->_json;
    v7->var1 = 0;
    fputc(91, v7->var0);
    self->_json->var1 = 0;
  }

  v8 = objc_opt_new();
  shared = self->_shared;
  self->_shared = v8;

  v10 = objc_opt_new();
  addedProcessGroups = self->_addedProcessGroups;
  self->_addedProcessGroups = v10;
}

- (void)printProcessHeader:(id)header
{
  headerCopy = header;
  json = self->_json;
  if (json)
  {
    if (json->var1)
    {
      fputc(44, json->var0);
      json = self->_json;
    }

    fputc(123, json->var0);
    v6 = self->_json;
    v6->var1 = 0;
    fwrite("name:", 7uLL, 1uLL, v6->var0);
    v7 = self->_json;
    v7->var1 = 0;
    var0 = v7->var0;
    name = [headerCopy name];
    v10 = [name stringByReplacingOccurrencesOfString:@" withString:@"\];
    fprintf(var0, "%s", [v10 UTF8String]);

    v11 = self->_json;
    v11->var1 = 1;
    fputc(44, v11->var0);
    fwrite("pid:", 6uLL, 1uLL, self->_json->var0);
    v12 = self->_json;
    v12->var1 = 0;
    fprintf(v12->var0, "%d", [headerCopy pid]);
    v13 = self->_json;
    v13->var1 = 1;
    fputc(44, v13->var0);
    fwrite("translated:", 0xDuLL, 1uLL, self->_json->var0);
    v14 = self->_json;
    v14->var1 = 0;
    v15 = v14->var0;
    if ([headerCopy isTranslated])
    {
      v16 = "true";
    }

    else
    {
      v16 = "false";
    }

    fputs(v16, v15);
    v17 = self->_json;
    v17->var1 = 1;
    fputc(44, v17->var0);
    fwrite("page size:", 0xCuLL, 1uLL, self->_json->var0);
    v18 = self->_json;
    v18->var1 = 0;
    fprintf(v18->var0, "%lu", [headerCopy pageSize]);
    self->_json->var1 = 1;
  }

  errors = [headerCopy errors];
  v20 = [errors count];

  if (v20)
  {
    v21 = self->_json;
    if (v21)
    {
      if (v21->var1)
      {
        fputc(44, v21->var0);
        v21 = self->_json;
      }

      fwrite("errors:", 9uLL, 1uLL, v21->var0);
      v22 = self->_json;
      v22->var1 = 0;
      fputc(91, v22->var0);
      self->_json->var1 = 0;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    errors2 = [headerCopy errors];
    v24 = [errors2 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v53;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v53 != v26)
          {
            objc_enumerationMutation(errors2);
          }

          v28 = self->_json;
          if (v28)
          {
            v29 = *(*(&v52 + 1) + 8 * i);
            if (!v28->var1 || (fputc(44, v28->var0), (v28 = self->_json) != 0))
            {
              fprintf(v28->var0, "%s", [v29 UTF8String]);
              self->_json->var1 = 1;
            }
          }
        }

        v25 = [errors2 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v25);
    }

    v30 = self->_json;
    if (v30)
    {
      fputc(93, v30->var0);
      self->_json->var1 = 1;
    }
  }

  warnings = [headerCopy warnings];
  v32 = [warnings count];

  if (v32)
  {
    v33 = self->_json;
    if (v33)
    {
      if (v33->var1)
      {
        fputc(44, v33->var0);
        v33 = self->_json;
      }

      fwrite("warnings:", 0xBuLL, 1uLL, v33->var0);
      v34 = self->_json;
      v34->var1 = 0;
      fputc(91, v34->var0);
      self->_json->var1 = 0;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    warnings2 = [headerCopy warnings];
    v36 = [warnings2 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v49;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v49 != v38)
          {
            objc_enumerationMutation(warnings2);
          }

          v40 = self->_json;
          if (v40)
          {
            v41 = *(*(&v48 + 1) + 8 * j);
            if (!v40->var1 || (fputc(44, v40->var0), (v40 = self->_json) != 0))
            {
              fprintf(v40->var0, "%s", [v41 UTF8String]);
              self->_json->var1 = 1;
            }
          }
        }

        v37 = [warnings2 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v37);
    }

    v42 = self->_json;
    if (v42)
    {
      fputc(93, v42->var0);
      self->_json->var1 = 1;
    }
  }

  if (self->_verbose)
  {
    v43 = self->_json;
    if (v43)
    {
      if (v43->var1)
      {
        fputc(44, v43->var0);
        v43 = self->_json;
      }

      fwrite("regions:", 0xAuLL, 1uLL, v43->var0);
      v44 = self->_json;
      v44->var1 = 0;
      fputc(91, v44->var0);
      self->_json->var1 = 0;
    }

    memoryRegions = [headerCopy memoryRegions];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100013DD4;
    v47[3] = &unk_100029E68;
    v47[4] = self;
    [memoryRegions fp_enumerateObjectsWithBatchSize:128 usingBlock:v47];

    v46 = self->_json;
    if (v46)
    {
      fputc(93, v46->var0);
      self->_json->var1 = 1;
    }
  }

  if (!self->_pageSize)
  {
    self->_pageSize = [headerCopy pageSize];
  }
}

- (void)printProcessTotal:(id)total forProcess:(id)process
{
  totalCopy = total;
  processCopy = process;
  json = self->_json;
  if (json)
  {
    if (json->var1)
    {
      fputc(44, json->var0);
      json = self->_json;
    }

    fwrite("footprint:", 0xCuLL, 1uLL, json->var0);
    v8 = self->_json;
    v8->var1 = 0;
    fprintf(v8->var0, "%llu", [totalCopy unsignedLongLongValue]);
    self->_json->var1 = 1;
  }
}

- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process
{
  categoriesCopy = categories;
  processCopy = process;
  json = self->_json;
  if (json)
  {
    if (json->var1)
    {
      fputc(44, json->var0);
      json = self->_json;
    }

    fwrite("categories:", 0xDuLL, 1uLL, json->var0);
    v9 = self->_json;
    v9->var1 = 0;
    fputc(123, v9->var0);
    self->_json->var1 = 0;
  }

  sub_100014B24(self, categoriesCopy);
  v10 = self->_json;
  if (v10)
  {
    fputc(125, v10->var0);
    self->_json->var1 = 1;
  }
}

- (void)printSharedCategories:(id)categories sharedWith:(id)with forProcess:(id)process hasProcessView:(BOOL)view total:(id *)total
{
  viewCopy = view;
  categoriesCopy = categories;
  withCopy = with;
  processCopy = process;
  if (!viewCopy)
  {
    if (([(NSMutableSet *)self->_addedProcessGroups containsObject:withCopy]& 1) != 0)
    {
      goto LABEL_14;
    }

    [(NSMutableSet *)self->_addedProcessGroups addObject:withCopy];
  }

  v26 = processCopy;
  processes = [withCopy processes];
  v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [processes count]);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  processes2 = [withCopy processes];
  v17 = [processes2 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      v20 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(processes2);
        }

        asNumber = [*(*(&v27 + 1) + 8 * v20) asNumber];
        [v15 addObject:asNumber];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [processes2 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v18);
  }

  v22 = [NSMutableDictionary alloc];
  v31[0] = @"pids";
  v31[1] = @"categories";
  v32[0] = v15;
  v32[1] = categoriesCopy;
  v23 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
  v24 = [v22 initWithDictionary:v23];

  processCopy = v26;
  if (viewCopy)
  {
    asNumber2 = [v26 asNumber];
    [v24 setObject:asNumber2 forKeyedSubscript:@"specific_to_pid"];
  }

  [(NSMutableArray *)self->_shared addObject:v24];

LABEL_14:
}

- (void)printSharedCache:(id)cache categories:(id)categories sharedWith:(id)with total:(id *)total
{
  cacheCopy = cache;
  categoriesCopy = categories;
  withCopy = with;
  processes = [withCopy processes];
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [processes count]);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  processes2 = [withCopy processes];
  v15 = [processes2 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(processes2);
        }

        asNumber = [*(*(&v23 + 1) + 8 * v18) asNumber];
        [v13 addObject:asNumber];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [processes2 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v16);
  }

  v27[0] = @"pids";
  v27[1] = @"categories";
  v28[0] = v13;
  v28[1] = categoriesCopy;
  v27[2] = @"shared-cache";
  if (cacheCopy)
  {
    v20 = cacheCopy[2];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v28[2] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];

  [(NSMutableArray *)self->_shared addObject:v22];
}

- (void)printProcessAuxData:(id)data forProcess:(id)process
{
  dataCopy = data;
  processCopy = process;
  json = self->_json;
  if (json)
  {
    if (json->var1)
    {
      fputc(44, json->var0);
      json = self->_json;
    }

    fwrite("auxiliary:", 0xCuLL, 1uLL, json->var0);
    self->_json->var1 = 0;
  }

  sub_1000150B4(self, dataCopy);
  v8 = self->_json;
  if (v8)
  {
    fputc(125, v8->var0);
    self->_json->var1 = 1;
  }
}

- (void)printProcessesWithWarnings:(id)warnings processesWithErrors:(id)errors globalErrors:(id)globalErrors
{
  warningsCopy = warnings;
  errorsCopy = errors;
  globalErrorsCopy = globalErrors;
  json = self->_json;
  if (json)
  {
    fputc(93, json->var0);
    self->_json->var1 = 1;
  }

  v48 = globalErrorsCopy;
  v12 = [NSMutableArray arrayWithArray:globalErrorsCopy];
  v13 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v14 = warningsCopy;
  v15 = [v14 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v62;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(v14);
        }

        warnings = [*(*(&v61 + 1) + 8 * i) warnings];
        [v13 addObjectsFromArray:warnings];
      }

      v16 = [v14 countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v16);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v20 = errorsCopy;
  v21 = [v20 countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v58;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v58 != v23)
        {
          objc_enumerationMutation(v20);
        }

        errors = [*(*(&v57 + 1) + 8 * j) errors];
        [v12 addObjectsFromArray:errors];
      }

      v22 = [v20 countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v22);
  }

  v26 = self->_json;
  if (v26)
  {
    if (v26->var1)
    {
      fputc(44, v26->var0);
      v26 = self->_json;
    }

    fwrite("errors:", 9uLL, 1uLL, v26->var0);
    v27 = self->_json;
    v27->var1 = 0;
    fputc(91, v27->var0);
    self->_json->var1 = 0;
  }

  v46 = v20;
  v47 = v14;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v28 = v12;
  v29 = [v28 countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v54;
    do
    {
      for (k = 0; k != v30; k = k + 1)
      {
        if (*v54 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = self->_json;
        if (v33)
        {
          v34 = *(*(&v53 + 1) + 8 * k);
          if (!v33->var1 || (fputc(44, v33->var0), (v33 = self->_json) != 0))
          {
            fprintf(v33->var0, "%s", [v34 UTF8String]);
            self->_json->var1 = 1;
          }
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v30);
  }

  v35 = self->_json;
  if (v35)
  {
    fputc(93, v35->var0);
    v36 = self->_json;
    v36->var1 = 1;
    fputc(44, v36->var0);
    fwrite("warnings:", 0xBuLL, 1uLL, self->_json->var0);
    v37 = self->_json;
    v37->var1 = 0;
    fputc(91, v37->var0);
    self->_json->var1 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v38 = v13;
  v39 = [v38 countByEnumeratingWithState:&v49 objects:v65 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v50;
    do
    {
      for (m = 0; m != v40; m = m + 1)
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = self->_json;
        if (v43)
        {
          v44 = *(*(&v49 + 1) + 8 * m);
          if (!v43->var1 || (fputc(44, v43->var0), (v43 = self->_json) != 0))
          {
            fprintf(v43->var0, "%s", [v44 UTF8String]);
            self->_json->var1 = 1;
          }
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v49 objects:v65 count:16];
    }

    while (v40);
  }

  v45 = self->_json;
  if (v45)
  {
    fputc(93, v45->var0);
    self->_json->var1 = 1;
  }
}

- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors
{
  categoriesCopy = categories;
  json = self->_json;
  v27 = categoriesCopy;
  if (json)
  {
    if (json->var1)
    {
      fputc(44, json->var0);
      json = self->_json;
    }

    fwrite("summary:", 0xAuLL, 1uLL, json->var0);
    v9 = self->_json;
    v9->var1 = 0;
    fputc(123, v9->var0);
    json = self->_json;
    json->var1 = 0;
    categoriesCopy = v27;
  }

  if (categoriesCopy)
  {
    sub_100014B24(self, v27);
    categoriesCopy = v27;
    json = self->_json;
  }

  if (json)
  {
    if (json->var1)
    {
      fputc(44, json->var0);
      json = self->_json;
    }

    fwrite("total:", 8uLL, 1uLL, json->var0);
    v10 = self->_json;
    v10->var1 = 0;
    fputc(123, v10->var0);
    v11 = self->_json;
    v11->var1 = 0;
    fwrite("dirty:", 8uLL, 1uLL, v11->var0);
    v12 = self->_json;
    v12->var1 = 0;
    fprintf(v12->var0, "%llu", total->var1 + total->var0);
    v13 = self->_json;
    v13->var1 = 1;
    fputc(44, v13->var0);
    fwrite("swapped:", 0xAuLL, 1uLL, self->_json->var0);
    v14 = self->_json;
    v14->var1 = 0;
    fprintf(v14->var0, "%llu", total->var1);
    v15 = self->_json;
    v15->var1 = 1;
    fputc(44, v15->var0);
    fwrite("clean:", 8uLL, 1uLL, self->_json->var0);
    v16 = self->_json;
    v16->var1 = 0;
    fprintf(v16->var0, "%llu", total->var2);
    v17 = self->_json;
    v17->var1 = 1;
    fputc(44, v17->var0);
    fwrite("reclaimable:", 0xEuLL, 1uLL, self->_json->var0);
    v18 = self->_json;
    v18->var1 = 0;
    fprintf(v18->var0, "%llu", total->var3);
    v19 = self->_json;
    v19->var1 = 1;
    fputc(44, v19->var0);
    fwrite("wired:", 8uLL, 1uLL, self->_json->var0);
    v20 = self->_json;
    v20->var1 = 0;
    fprintf(v20->var0, "%llu", total->var4);
    v21 = self->_json;
    v21->var1 = 1;
    fputc(44, v21->var0);
    fwrite("regions:", 0xAuLL, 1uLL, self->_json->var0);
    v22 = self->_json;
    v22->var1 = 0;
    fprintf(v22->var0, "%u", total->var5);
    v23 = self->_json;
    v23->var1 = 1;
    fputc(125, v23->var0);
    v24 = self->_json;
    v24->var1 = 1;
    fputc(125, v24->var0);
    v25 = self->_json;
    v25->var1 = 1;
    fputc(44, v25->var0);
    fwrite("total footprint:", 0x12uLL, 1uLL, self->_json->var0);
    v26 = self->_json;
    v26->var1 = 0;
    fprintf(v26->var0, "%llu", total->var1 + total->var0);
    self->_json->var1 = 1;
    categoriesCopy = v27;
  }
}

- (void)printGlobalAuxData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    json = self->_json;
    v6 = dataCopy;
    if (json)
    {
      if (json->var1)
      {
        fputc(44, json->var0);
        json = self->_json;
      }

      fwrite("auxiliary:", 0xCuLL, 1uLL, json->var0);
      self->_json->var1 = 0;
    }

    sub_1000150B4(self, v6);
    dataCopy = v6;
  }
}

- (void)endAtTime:(id)time
{
  timeCopy = time;
  json = self->_json;
  if (json)
  {
    if (json->var1)
    {
      fputc(44, json->var0);
      json = self->_json;
    }

    fwrite("shared:", 9uLL, 1uLL, json->var0);
    v6 = self->_json;
    v6->var1 = 0;
    fputc(91, v6->var0);
    self->_json->var1 = 0;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = self->_shared;
  v36 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v36)
  {
    v35 = *v43;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        v9 = self->_json;
        if (v9)
        {
          if (v9->var1)
          {
            fputc(44, v9->var0);
            v9 = self->_json;
          }

          fputc(123, v9->var0);
          v10 = self->_json;
          v10->var1 = 0;
          fwrite("pids:", 7uLL, 1uLL, v10->var0);
          v11 = self->_json;
          v11->var1 = 0;
          fputc(91, v11->var0);
          self->_json->var1 = 0;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = v8;
        v12 = [v8 objectForKeyedSubscript:@"pids"];
        v13 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v39;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v39 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = self->_json;
              if (v17)
              {
                v18 = *(*(&v38 + 1) + 8 * j);
                if (!v17->var1 || (fputc(44, v17->var0), (v17 = self->_json) != 0))
                {
                  fprintf(v17->var0, "%d", [v18 intValue]);
                  self->_json->var1 = 1;
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v14);
        }

        v19 = self->_json;
        if (v19)
        {
          fputc(93, v19->var0);
          self->_json->var1 = 1;
        }

        v20 = [v37 objectForKeyedSubscript:@"specific_to_pid"];
        if (v20)
        {
          v21 = self->_json;
          if (v21)
          {
            if (v21->var1)
            {
              fputc(44, v21->var0);
              v21 = self->_json;
            }

            fwrite("specific_to_pid:", 0x12uLL, 1uLL, v21->var0);
            v22 = self->_json;
            v22->var1 = 0;
            fprintf(v22->var0, "%d", [v20 intValue]);
            self->_json->var1 = 1;
          }
        }

        v23 = [v37 objectForKeyedSubscript:@"shared-cache"];
        v24 = self->_json;
        if (v23)
        {
          if (!v24)
          {
            goto LABEL_41;
          }

          if (v24->var1)
          {
            fputc(44, v24->var0);
            v24 = self->_json;
          }

          fwrite("shared-cache:", 0xFuLL, 1uLL, v24->var0);
          v25 = self->_json;
          v25->var1 = 0;
          var0 = v25->var0;
          uUIDString = [v23 UUIDString];
          fprintf(var0, "%s", [uUIDString UTF8String]);

          v24 = self->_json;
          v24->var1 = 1;
LABEL_39:
          fputc(44, v24->var0);
          v24 = self->_json;
          goto LABEL_40;
        }

        if (!v24)
        {
          goto LABEL_41;
        }

        if (v24->var1)
        {
          goto LABEL_39;
        }

LABEL_40:
        fwrite("categories:", 0xDuLL, 1uLL, v24->var0);
        v28 = self->_json;
        v28->var1 = 0;
        fputc(123, v28->var0);
        self->_json->var1 = 0;
LABEL_41:
        v29 = [v37 objectForKeyedSubscript:@"categories"];
        sub_100014B24(self, v29);

        v30 = self->_json;
        if (v30)
        {
          fputc(125, v30->var0);
          v31 = self->_json;
          v31->var1 = 1;
          fputc(125, v31->var0);
          self->_json->var1 = 1;
        }
      }

      v36 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v36);
  }

  v32 = self->_json;
  if (v32)
  {
    fputc(93, v32->var0);
    self->_json->var1 = 1;
  }

  sub_100013528(self, timeCopy, "end_time");
  if (self->_multipleOutputs)
  {
    v33 = self->_json;
    if (v33)
    {
      fputc(125, v33->var0);
      self->_json->var1 = 1;
    }
  }
}

- (void)close
{
  if (self->_multipleOutputs)
  {
    json = self->_json;
    if (json)
    {
      fputc(93, json->var0);
      self->_json->var1 = 1;
    }
  }

  if (!self->_pageSize)
  {
    self->_pageSize = vm_kernel_page_size;
  }

  v4 = self->_json;
  if (v4)
  {
    if (v4->var1)
    {
      fputc(44, v4->var0);
      v4 = self->_json;
    }

    fwrite("page size:", 0xCuLL, 1uLL, v4->var0);
    pageSize = self->_pageSize;
    v5 = self->_json;
    v5->var1 = 0;
    fprintf(v5->var0, "%lu", pageSize);
    v7 = self->_json;
    v7->var1 = 1;
    fputc(125, v7->var0);
    v8 = self->_json;
    v8->var1 = 1;
    fclose(v8->var0);
    free(self->_json);
  }

  self->_json = 0;
}

@end