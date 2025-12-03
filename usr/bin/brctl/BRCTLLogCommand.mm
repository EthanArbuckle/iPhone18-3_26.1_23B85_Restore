@interface BRCTLLogCommand
+ (id)dateComponentsFromUTF8String:(const char *)string;
+ (id)dateFromUTF8String:(const char *)string;
- (BOOL)outputEvents:(id)events error:(id)error;
- (BRCTLLogCommand)init;
- (id)_parseMessage:(const char *)message;
- (int)dumpOrStreamLogArchiveToFd:(int)fd;
- (void)_dumpLevel:(int)level;
- (void)buildPredicateFromString;
- (void)buildPredicateString:(id)string;
- (void)computeRealOptionsForFd:(id)fd;
- (void)getDepth:(int *)depth current:(id *)current previous:(id *)previous forThread:(id)thread;
- (void)outputEvent:(id)event;
- (void)parseOption:(int)option arg:(const char *)arg;
- (void)pushSection:(id)section forThread:(id)thread;
@end

@implementation BRCTLLogCommand

- (BRCTLLogCommand)init
{
  v21.receiver = self;
  v21.super_class = BRCTLLogCommand;
  v2 = [(BRCTLLogCommand *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    uuidToSection = v2->_uuidToSection;
    v2->_uuidToSection = v3;

    page = v2->_page;
    v2->_page = &__kCFBooleanTrue;

    v6 = +[NSDate distantPast];
    startDate = v2->_startDate;
    v2->_startDate = v6;

    v8 = +[NSDate distantFuture];
    endDate = v2->_endDate;
    v2->_endDate = v8;

    predicateString = v2->_predicateString;
    v2->_predicateString = 0;

    predicate = v2->_predicate;
    v2->_predicate = 0;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("log-output", v13);

    outputQueue = v2->_outputQueue;
    v2->_outputQueue = v14;

    v16 = dispatch_semaphore_create(2000);
    outputSemaphore = v2->_outputSemaphore;
    v2->_outputSemaphore = v16;

    v2->_timezoneAware = 1;
    v18 = objc_alloc_init(NSDateFormatter);
    timestampFormatter = v2->_timestampFormatter;
    v2->_timestampFormatter = v18;

    [(NSDateFormatter *)v2->_timestampFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZ"];
  }

  return v2;
}

- (void)computeRealOptionsForFd:(id)fd
{
  fdCopy = fd;
  if (fdCopy && isatty([fdCopy intValue]))
  {
    if (!self->_use_color)
    {
      self->_use_color = &__kCFBooleanTrue;
    }

    if (!self->_use_multiline)
    {
      self->_use_multiline = &__kCFBooleanFalse;
    }
  }

  if (![(NSNumber *)self->_use_color BOOLValue])
  {
    use_color = self->_use_color;
    self->_use_color = 0;
  }

  if (![(NSNumber *)self->_use_multiline BOOLValue])
  {
    use_multiline = self->_use_multiline;
    self->_use_multiline = 0;
  }
}

- (void)_dumpLevel:(int)level
{
  if (level >= 8)
  {
    levelCopy = 8;
  }

  else
  {
    levelCopy = level;
  }

  [(BRCTermDumper *)self->_dumper startFgColor:dword_100019AC8[levelCopy] attr:dword_100019AEC[levelCopy]];
  dumper = self->_dumper;
  v6 = off_100024A68[levelCopy];

  [(BRCTermDumper *)dumper puts:v6];
}

- (id)_parseMessage:(const char *)message
{
  messageCopy = message;
  if (message)
  {
    if ([(BRCTermDumper *)self->_dumper useColor])
    {
      if (!self->_regularExpressionReplacementInfos)
      {
        v5 = objc_alloc_init(NSMutableArray);
        v6 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"([0-9A-F]{8})-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}", 0, 0);
        v7 = [(BRCTermDumper *)self->_dumper startStringForFgColor:3 bgColor:0xFFFFFFFFLL attr:0];
        stringForReset = [(BRCTermDumper *)self->_dumper stringForReset];
        v9 = [NSString stringWithFormat:@"%@<$1>%@", v7, stringForReset];
        v51[0] = @"template";
        v51[1] = @"regex";
        v52[0] = v9;
        v52[1] = v6;
        v10 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
        [(NSArray *)v5 addObject:v10];

        v11 = [NSRegularExpression regularExpressionWithPattern:@"([^]*)" options:0 error:0];

        v12 = [(BRCTermDumper *)self->_dumper startStringForFgColor:6 bgColor:0xFFFFFFFFLL attr:0];

        stringForReset2 = [(BRCTermDumper *)self->_dumper stringForReset];

        v14 = [NSString stringWithFormat:@"%@$1%@", v12, stringForReset2];

        v49[0] = @"template";
        v49[1] = @"regex";
        v50[0] = v14;
        v50[1] = v11;
        v15 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
        [(NSArray *)v5 addObject:v15];

        v16 = [NSRegularExpression regularExpressionWithPattern:@"'([^']*)'" options:0 error:0];

        v17 = [(BRCTermDumper *)self->_dumper startStringForFgColor:6 bgColor:0xFFFFFFFFLL attr:0];

        stringForReset3 = [(BRCTermDumper *)self->_dumper stringForReset];

        v19 = [NSString stringWithFormat:@"%@'$1'%@", v17, stringForReset3];

        v47[0] = @"template";
        v47[1] = @"regex";
        v48[0] = v19;
        v48[1] = v16;
        v20 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
        [(NSArray *)v5 addObject:v20];

        v21 = [&off_100027ED8 componentsJoinedByString:@"|"];
        v22 = [NSString stringWithFormat:@"\\b(%@)\\b", v21];

        v23 = [NSRegularExpression regularExpressionWithPattern:v22 options:0 error:0];

        v24 = [(BRCTermDumper *)self->_dumper startStringForFgColor:0xFFFFFFFFLL bgColor:0xFFFFFFFFLL attr:2];

        stringForReset4 = [(BRCTermDumper *)self->_dumper stringForReset];

        v26 = [NSString stringWithFormat:@"%@$1%@", v24, stringForReset4];

        v45[0] = @"template";
        v45[1] = @"regex";
        v46[0] = v26;
        v46[1] = v23;
        v27 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
        [(NSArray *)v5 addObject:v27];

        regularExpressionReplacementInfos = self->_regularExpressionReplacementInfos;
        self->_regularExpressionReplacementInfos = v5;
      }

      messageCopy = [NSString stringWithUTF8String:messageCopy];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = self->_regularExpressionReplacementInfos;
      v29 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v41;
        do
        {
          v32 = 0;
          v33 = messageCopy;
          do
          {
            if (*v41 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v40 + 1) + 8 * v32);
            v35 = [v34 objectForKeyedSubscript:@"regex"];
            v36 = [v33 length];
            v37 = [v34 objectForKeyedSubscript:@"template"];
            messageCopy = [v35 stringByReplacingMatchesInString:v33 options:0 range:0 withTemplate:{v36, v37}];

            v32 = v32 + 1;
            v33 = messageCopy;
          }

          while (v30 != v32);
          v30 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v30);
      }
    }

    else
    {
      messageCopy = 0;
    }
  }

  return messageCopy;
}

- (void)pushSection:(id)section forThread:(id)thread
{
  sectionCopy = section;
  threadCopy = thread;
  v7 = [(NSMutableDictionary *)self->_sectionsByThread objectForKeyedSubscript:threadCopy];
  if (!v7)
  {
    v7 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_sectionsByThread setObject:v7 forKeyedSubscript:threadCopy];
  }

  [v7 addObject:sectionCopy];
}

- (void)getDepth:(int *)depth current:(id *)current previous:(id *)previous forThread:(id)thread
{
  threadCopy = thread;
  [(NSMutableDictionary *)self->_sectionsByThread objectForKeyedSubscript:threadCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v34 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    depthCopy = depth;
    currentCopy = current;
    previousCopy = previous;
    v29 = threadCopy;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = *v32;
    do
    {
      v18 = 0;
      v30 = v16;
      v19 = v16 + 1;
      do
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v31 + 1) + 8 * v18);
        v21 = +[NSNull null];

        if (v20 == v21)
        {
          v14 = v19;
          v15 = 0;
        }

        else
        {
          ++v15;
        }

        ++v18;
        ++v19;
      }

      while (v13 != v18);
      v16 = &v13[v30];
      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);

    current = currentCopy;
    *depthCopy = v15;
    previous = previousCopy;
    threadCopy = v29;
    if (v15)
    {
      *currentCopy = [v11 objectAtIndex:&v14[v15 - 1]];
      if (v15 != 1)
      {
        *previousCopy = [v11 objectAtIndex:&v14[v15 - 2]];
      }
    }
  }

  else
  {

    *depth = 0;
  }

  v22 = *current;
  v23 = +[NSNull null];
  if (v22 == v23)
  {
    sub_100015100();
  }

  v24 = *previous;
  v25 = +[NSNull null];
  if (v24 == v25)
  {
    sub_1000150D4();
  }
}

- (void)outputEvent:(id)event
{
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  if ([eventCopy eventType] == 1024)
  {
    v6 = eventCopy;
    messageType = [v6 messageType];
    v8 = 0;
    if (messageType <= 1)
    {
      if (messageType)
      {
        if (messageType == 1)
        {
          v8 = 6;
        }
      }

      else
      {
        v8 = 5;
      }
    }

    else
    {
      switch(messageType)
      {
        case 2:
          v8 = 7;
          break;
        case 16:
          v8 = 3;
          break;
        case 17:
          v8 = 2;
          break;
      }
    }

    eventMessage = [v6 eventMessage];

    if (!eventMessage)
    {
      [v6 setEventMessage:@"<libtrace was unable to decode this message>"];
    }

    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 threadID]);
    eventMessage2 = [v6 eventMessage];
    uTF8String = [eventMessage2 UTF8String];

    if (self->_quickMode)
    {
      category = [v6 category];
      [v6 subsystem];
      v52 = v56 = v10;
      threadID = [v6 threadID];
      [v6 processImagePath];
      v13 = v48 = uTF8String;
      lastPathComponent = [v13 lastPathComponent];
      processID = [v6 processID];
      [v6 timestamp];
      v16 = v5;
      v18 = v17 = eventCopy;
      timezone = [v6 timezone];
      LOBYTE(v42) = [v6 br_isOversize];
      LODWORD(v41) = v8;
      [(BRCTLLogCommand *)self printLogWithFacility:category subsystem:v52 message:v48 threadID:threadID kind:0 sender:lastPathComponent sendPID:processID depth:v41 level:v18 timestamp:timezone timezone:0 sectionID:v42 isOversize:0 previousSectionID:?];

      eventCopy = v17;
      v5 = v16;

      v10 = v56;
LABEL_67:

      goto LABEL_68;
    }

    [(NSMutableArray *)self->_allEvents addObject:v6];
    category2 = [v6 category];

    if (!category2)
    {
      goto LABEL_67;
    }

    if (!strncmp(uTF8String, "[CRIT] ", 7uLL))
    {
      v22 = (uTF8String + 7);
      v23 = 2;
    }

    else if (!strncmp(uTF8String, "[ERROR] ", 8uLL))
    {
      v22 = (uTF8String + 8);
      v23 = 3;
    }

    else if (!strncmp(uTF8String, "[WARNING] ", 0xAuLL))
    {
      v22 = (uTF8String + 10);
      v23 = 4;
    }

    else if (!strncmp(uTF8String, "[NOTICE] ", 9uLL))
    {
      v22 = (uTF8String + 9);
      v23 = 5;
    }

    else if (!strncmp(uTF8String, "[INFO] ", 7uLL))
    {
      v22 = (uTF8String + 7);
      v23 = 6;
    }

    else if (!strncmp(uTF8String, "[DEBUG] ", 8uLL))
    {
      v22 = (uTF8String + 8);
      v23 = 7;
    }

    else
    {
      v21 = strncmp(uTF8String, "[NOTIF] ", 8uLL);
      v22 = &uTF8String[8 * (v21 == 0)];
      v23 = v21 ? v8 : 7;
    }

    if ([(NSNumber *)self->_level intValue]&& v23 > [(NSNumber *)self->_level intValue])
    {
      goto LABEL_67;
    }

    if (*v22 == 226)
    {
      if (v22[1] == 148 && v22[2] == 143)
      {
        v22 += 3;
        __endptr[0] = 0;
        v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llx.%@.%llx", [v6 processUniqueID], v10, strtoll(v22, __endptr, 16));
        v25 = 2;
        goto LABEL_49;
      }

      if (v22[1] == 148 && v22[2] == 151)
      {
        v25 = 3;
LABEL_48:
        v22 += 3;
        __endptr[0] = 0;
        v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llx.%llx", [v6 processUniqueID], strtoll(v22, __endptr, 16));
LABEL_49:
        if (__endptr[0] != v22)
        {
          if (*__endptr[0] == 32)
          {
            v22 = __endptr[0] + 1;
          }

          else
          {
            v22 = __endptr[0];
          }

          if (v25 == 5)
          {
            v40 = +[NSNull null];
            [(BRCTLLogCommand *)self pushSection:v40 forThread:v10];
          }

          else if (v25 != 4 && v25 != 2)
          {
LABEL_59:
            v49 = v24;
            v51 = v23;
            v53 = v22;
            v55 = v5;
            v57 = eventCopy;
            v58 = 0;
            LODWORD(__endptr[0]) = 0;
            v59 = 0;
            [(BRCTLLogCommand *)self getDepth:__endptr current:&v59 previous:&v58 forThread:v10];
            v45 = v59;
            v26 = v58;
            selfCopy = self;
            v46 = v25;
            if (v25 == 3)
            {
              v27 = [(NSMutableDictionary *)self->_sectionsByThread objectForKeyedSubscript:v10];
              [v27 removeLastObject];
              [v27 lastObject];
              v29 = v28 = v26;
              v30 = +[NSNull null];

              v31 = v29 == v30;
              v26 = v28;
              if (!v31)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if (v25 != 4)
              {
LABEL_66:
                category3 = [v6 category];
                subsystem = [v6 subsystem];
                threadID2 = [v6 threadID];
                processImagePath = [v6 processImagePath];
                lastPathComponent2 = [processImagePath lastPathComponent];
                processID2 = [v6 processID];
                v36 = __endptr[0];
                [v6 timestamp];
                v38 = v37 = v10;
                timezone2 = [v6 timezone];
                LOBYTE(v42) = [v6 br_isOversize];
                LODWORD(v41) = v51;
                [(BRCTLLogCommand *)selfCopy printLogWithFacility:category3 subsystem:subsystem message:v53 threadID:threadID2 kind:v46 sender:lastPathComponent2 sendPID:__PAIR64__(v36 depth:processID2) level:v41 timestamp:v38 timezone:timezone2 sectionID:v45 isOversize:v42 previousSectionID:v26];

                v10 = v37;
                eventCopy = v57;
                v5 = v55;
                goto LABEL_67;
              }

              v27 = [(NSMutableDictionary *)self->_sectionsByThread objectForKeyedSubscript:v10];
            }

            [v27 removeLastObject];
LABEL_65:

            goto LABEL_66;
          }

          [(BRCTLLogCommand *)self pushSection:v24 forThread:v10];
          goto LABEL_59;
        }

LABEL_58:
        v25 = 0;
        goto LABEL_59;
      }

      if (v22[1] == 148 && v22[2] == 163)
      {
        v25 = 4;
        goto LABEL_48;
      }

      if (v22[1] == 148 && v22[2] == 179)
      {
        v25 = 5;
        goto LABEL_48;
      }
    }

    v24 = 0;
    goto LABEL_58;
  }

LABEL_68:
  objc_autoreleasePoolPop(v5);
}

- (BOOL)outputEvents:(id)events error:(id)error
{
  eventsCopy = events;
  v7 = eventsCopy;
  if (error)
  {
    dumper = self->_dumper;
    v9 = [error description];
    -[BRCTermDumper write:](dumper, "write:", "error while reading logs: %s", [v9 UTF8String]);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [eventsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v7);
          }

          [(BRCTLLogCommand *)self outputEvent:*(*(&v15 + 1) + 8 * v13)];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  return error == 0;
}

- (int)dumpOrStreamLogArchiveToFd:(int)fd
{
  predicate = self->_predicate;
  v4 = [NSArray arrayWithObjects:&predicate count:1];
  v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

  v6 = dispatch_semaphore_create(0);
  dumpSema = self->_dumpSema;
  self->_dumpSema = v6;

  v8 = +[NSMutableDictionary dictionary];
  sectionsByThread = self->_sectionsByThread;
  self->_sectionsByThread = v8;

  log_path = self->_log_path;
  if (!log_path)
  {
    if (self->_waitForMoreMessages)
    {
LABEL_9:
      v11 = objc_alloc_init(OSActivityStream);
      [v11 setEventFilter:4];
      [v11 setPredicate:v5];
      [v11 setOptions:772];
      [v11 setDelegate:self];
      [v11 start];

LABEL_32:
      v16 = 0;
LABEL_47:
      dispatch_semaphore_wait(self->_dumpSema, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_48;
    }

LABEL_12:
    v17 = objc_alloc_init(OSLogPersistence);
    if (self->_log_path)
    {
      v18 = [NSURL fileURLWithPath:?];
      [v17 setLogArchive:v18];
    }

    [v17 setPredicate:v5];
    [v17 setOptions:2147483651];
    if ([(NSNumber *)self->_page BOOLValue])
    {
      [(BRCTermDumper *)self->_dumper startPager];
    }

    if (self->_lastDateComponent)
    {
      endDate = [v17 endDate];
      v20 = endDate;
      if (endDate)
      {
        v21 = endDate;
      }

      else
      {
        v21 = +[NSDate now];
      }

      startDate = self->_startDate;
      self->_startDate = v21;

      v31 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
      v32 = [v31 dateByAddingComponents:self->_lastDateComponent toDate:self->_startDate options:0];
      v33 = self->_startDate;
      self->_startDate = v32;
    }

    v34 = self->_startDate;
    endDate = self->_endDate;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100004254;
    v41[3] = &unk_100024AE0;
    v41[4] = self;
    [v17 enumerateFromStartDate:v34 toEndDate:endDate withBlock:v41];
    dispatch_semaphore_signal(self->_dumpSema);
    dispatch_sync(self->_outputQueue, &stru_100024B20);

    goto LABEL_32;
  }

  if ([(NSString *)log_path isEqualToString:@"-"])
  {
    if (!self->_waitForMoreMessages)
    {
LABEL_19:
      if ([(NSNumber *)self->_page BOOLValue])
      {
        [(BRCTermDumper *)self->_dumper startPager];
      }

      fileSystemRepresentation = [(NSString *)self->_log_path fileSystemRepresentation];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v38 = sub_100004350;
      v39 = &unk_100024B48;
      selfCopy = self;
      v23 = v37;
      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = sub_100005108;
      v49 = sub_100005118;
      v50 = 0;
      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x2020000000;
      v44 = 1;
      *&v42.st_dev = _NSConcreteStackBlock;
      v42.st_ino = 3221225472;
      *&v42.st_uid = sub_100005120;
      *&v42.st_rdev = &unk_100024DF8;
      v42.st_atimespec.tv_nsec = v43;
      v42.st_mtimespec.tv_sec = &v45;
      v24 = v23;
      v42.st_atimespec.tv_sec = v24;
      v25 = &v42;
      if (*fileSystemRepresentation == 45 && !fileSystemRepresentation[1])
      {
        v26 = __stdinp;
        if (__stdinp)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v26 = fopen(fileSystemRepresentation, "r");
        if (v26)
        {
LABEL_24:
          __linecapp = 0;
          __linep = 0;
          if (getline(&__linep, &__linecapp, v26) < 0)
          {
            v29 = 0;
          }

          else
          {
            while (1)
            {
              v27 = objc_autoreleasePoolPush();
              v28 = [NSString stringWithUTF8String:__linep];
              if (!v28)
              {
                break;
              }

              v29 = (*&v42.st_uid)(v25, v28);
              if (v29 < 0)
              {
                goto LABEL_37;
              }

              objc_autoreleasePoolPop(v27);
              if (getline(&__linep, &__linecapp, v26) < 0)
              {
                goto LABEL_38;
              }
            }

            v29 = -1;
LABEL_37:

            objc_autoreleasePoolPop(v27);
          }

LABEL_38:
          if (feof(v26))
          {
            v16 = v29;
          }

          else
          {
            v16 = -1;
          }

          free(__linep);
          if (v26 != __stdinp)
          {
            fclose(v26);
          }

          if ((v16 & 0x80000000) == 0)
          {
            v16 = v29;
            if (v46[5])
            {
              v16 = (v38)(v24);
            }
          }

          goto LABEL_46;
        }
      }

      v16 = -1;
LABEL_46:

      _Block_object_dispose(v43, 8);
      _Block_object_dispose(&v45, 8);

      dispatch_semaphore_signal(self->_dumpSema);
      dispatch_sync(self->_outputQueue, &stru_100024B68);
      goto LABEL_47;
    }

    goto LABEL_9;
  }

  memset(&v42, 0, sizeof(v42));
  if ((stat([(NSString *)self->_log_path fileSystemRepresentation], &v42) & 0x80000000) == 0)
  {
    if (self->_waitForMoreMessages)
    {
      goto LABEL_9;
    }

    if ((v42.st_mode & 0xF000) != 0x4000)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v12 = __stderrp;
  fileSystemRepresentation2 = [(NSString *)self->_log_path fileSystemRepresentation];
  v14 = __error();
  v15 = strerror(*v14);
  v16 = -1;
LABEL_48:

  return v16;
}

+ (id)dateFromUTF8String:(const char *)string
{
  v3 = [NSString stringWithUTF8String:string];
  v4 = objc_opt_new();
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ssZZZ"];
  v5 = [v4 dateFromString:v3];
  if (!v5)
  {
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v5 = [v4 dateFromString:v3];
    if (!v5)
    {
      [v4 setDateFormat:@"yyyy-MM-dd HH:mm"];
      v5 = [v4 dateFromString:v3];
      if (!v5)
      {
        [v4 setDateFormat:@"yyyy-MM-dd"];
        v5 = [v4 dateFromString:v3];
      }
    }
  }

  v6 = v5;

  return v6;
}

+ (id)dateComponentsFromUTF8String:(const char *)string
{
  v3 = [NSString stringWithUTF8String:string];
  v4 = [v3 length];
  v18 = 0;
  v5 = [NSRegularExpression regularExpressionWithPattern:@"^(\\d+)([mhd])$" options:0 error:&v18];
  v6 = [v5 firstMatchInString:v3 options:0 range:{0, v4}];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 rangeAtIndex:1];
    v10 = v9;
    v11 = [v7 rangeAtIndex:2];
    v13 = [v3 substringWithRange:{v11, v12}];
    v14 = [v3 substringWithRange:{v8, v10}];
    v15 = -[v14 integerValue];

    v16 = objc_opt_new();
    if ([v13 isEqualToString:@"m"])
    {
      [v16 setMinute:v15];
    }

    else if ([v13 isEqualToString:@"h"])
    {
      [v16 setHour:v15];
    }

    else if ([v13 isEqualToString:@"d"])
    {
      [v16 setDay:v15];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)buildPredicateString:(id)string
{
  predicateString = self->_predicateString;
  stringCopy = string;
  if (predicateString)
  {
    [(NSMutableString *)predicateString appendString:@" || "];
  }

  else
  {
    v6 = objc_opt_new();
    v7 = self->_predicateString;
    self->_predicateString = v6;
  }

  [(NSMutableString *)self->_predicateString appendString:string];
}

- (void)buildPredicateFromString
{
  predicateString = self->_predicateString;
  if (!predicateString || ![(NSMutableString *)predicateString length])
  {
    v4 = [NSMutableString stringWithString:@"subsystem == com.apple.FileProvider || subsystem == com.apple.clouddocs || subsystem == com.apple.revisiond"];
    v5 = self->_predicateString;
    self->_predicateString = v4;
  }

  v6 = [NSPredicate predicateWithFormat:self->_predicateString];
  predicate = self->_predicate;
  self->_predicate = v6;

  v8 = self->_predicateString;
  self->_predicateString = 0;
}

- (void)parseOption:(int)option arg:(const char *)arg
{
  switch(option)
  {
    case 'D':
      v5 = @"(subsystem == com.apple.FileProvider && subsystem == com.apple.LiveFS)";
      goto LABEL_38;
    case 'E':
      endDate = [objc_opt_class() dateFromUTF8String:arg];
      v24 = endDate;
      if (!endDate)
      {
        endDate = self->_endDate;
      }

      p_endDate = &self->_endDate;
      goto LABEL_26;
    case 'F':
      v5 = @"subsystem == com.apple.FileProvider || subsystem == com.apple.FruitBasket || subsystem == com.example.FruitBasket";
      goto LABEL_38;
    case 'H':
      v9 = [NSString stringWithUTF8String:arg];
      home_path = self->_home_path;
      self->_home_path = v9;
      goto LABEL_42;
    case 'N':
      v5 = CFSTR("(process == Provider && (subsystem == com.apple.network || sender == CFNetwork)");
      goto LABEL_38;
    case 'S':
      endDate = [objc_opt_class() dateFromUTF8String:arg];
      v24 = endDate;
      if (!endDate)
      {
        endDate = self->_startDate;
      }

      p_endDate = &self->_startDate;
      goto LABEL_26;
    case 'a':
      v12 = [NSPredicate predicateWithValue:1];
      predicate = self->_predicate;
      self->_predicate = v12;
      goto LABEL_42;
    case 'b':
      v5 = @"subsystem == com.apple.clouddocs";
      goto LABEL_38;
    case 'c':
      v20 = sub_1000083B4(99, arg, &off_100027F08);
      use_color = self->_use_color;
      self->_use_color = v20;
      goto LABEL_42;
    case 'd':
      v18 = [NSString stringWithUTF8String:arg];
      log_path = self->_log_path;
      self->_log_path = v18;
      goto LABEL_42;
    case 'f':
      v5 = @"subsystem == com.apple.FileProvider || (subsystem == com.apple.clouddocs && senderImagePath ENDSWITH com.apple.CloudDocs.MobileDocumentsFileProvider)";
      goto LABEL_38;
    case 'g':
      v5 = @"subsystem == com.apple.revisiond";
      goto LABEL_38;
    case 'i':
      v5 = @"subsystem == com.apple.prequelite || subsystem == com.apple.clouddocs";
      goto LABEL_38;
    case 'k':
      self->_darkMode = 1;
      return;
    case 'l':
      v14 = [NSNumber numberWithLongLong:strtoll(arg, 0, 10)];
      level = self->_level;
      self->_level = v14;
      goto LABEL_42;
    case 'm':
      v16 = sub_1000083B4(109, arg, &off_100027F08);
      use_multiline = self->_use_multiline;
      self->_use_multiline = v16;
      goto LABEL_42;
    case 'n':
      v22 = [NSNumber numberWithLongLong:strtoll(arg, 0, 10)];
      initial_count = self->_initial_count;
      self->_initial_count = v22;
LABEL_42:

      _objc_release_x1();
      return;
    case 'o':
      v5 = @"subsystem == com.apple.FileProvider && category == local-storage";
LABEL_38:

      [(BRCTLLogCommand *)self buildPredicateString:v5];
      return;
    case 'p':
      v24 = [NSString stringWithUTF8String:optarg];
      [(BRCTLLogCommand *)self buildPredicateString:v24];
      goto LABEL_28;
    case 'q':
      self->_quickMode = 1;
      return;
    case 's':
      self->_digest = 1;
      return;
    case 't':
      self->_shorten = 1;
      return;
    case 'u':
      endDate = [objc_opt_class() dateComponentsFromUTF8String:arg];
      v24 = endDate;
      if (!endDate)
      {
        endDate = self->_lastDateComponent;
      }

      p_endDate = &self->_lastDateComponent;
LABEL_26:
      objc_storeStrong(p_endDate, endDate);
      goto LABEL_28;
    case 'w':
      self->_waitForMoreMessages = 1;
      return;
    case 'x':
      v24 = [NSString stringWithUTF8String:optarg];
      v11 = [NSString stringWithFormat:@"senderImagePath CONTAINS %@", v24];
      [(BRCTLLogCommand *)self buildPredicateString:v11];

LABEL_28:

      break;
    case 'z':
      self->_timezoneAware = 0;
      timestampFormatter = self->_timestampFormatter;

      [(NSDateFormatter *)timestampFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
      break;
    default:
      return;
  }
}

@end