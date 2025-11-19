@interface RCPEventStream
+ (id)eventStreamWithData:(id)a3 error:(id *)a4;
+ (id)eventStreamWithFileURL:(id)a3 error:(id *)a4;
+ (id)eventStreamWithStudyLogFileURL:(id)a3 error:(id *)a4;
- (RCPEventStream)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (id)emptyCopy;
- (id)statistics;
- (id)streamByAddingEventsFromStream:(id)a3 withDistance:(double)a4;
- (id)timingStatistics;
- (id)trimmedFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)enumerateEventsUsingBlock:(id)a3;
- (void)filterEventsUsingBlock:(id)a3;
- (void)setEvents:(id)a3;
- (void)transformDigitizerEventLocationsWithTransform:(CGAffineTransform *)a3;
- (void)writeToURL:(id)a3;
@end

@implementation RCPEventStream

- (RCPEventStream)init
{
  v8.receiver = self;
  v8.super_class = RCPEventStream;
  v2 = [(RCPEventStream *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    rawEvents = v2->_rawEvents;
    v2->_rawEvents = v3;

    v5 = +[RCPEventEnvironment currentEnvironment];
    environment = v2->_environment;
    v2->_environment = v5;
  }

  return v2;
}

- (void)setEvents:(id)a3
{
  rawEvents = self->_rawEvents;
  v5 = a3;
  [(NSMutableArray *)rawEvents removeAllObjects];
  [(NSMutableArray *)self->_rawEvents addObjectsFromArray:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(RCPEventStream *)self dataRepresentation];
  v9 = 0;
  v6 = [v4 eventStreamWithData:v5 error:&v9];
  v7 = v9;

  if (!v6)
  {
    NSLog(&cfstr_Error.isa, v7);
  }

  return v6;
}

- (id)dataRepresentation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [v3 appendBytes:objc_msgSend(@"RECAP0" length:{"UTF8String"), 6}];
  v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:0];
  v10[0] = @"env";
  v5 = [(RCPEventStream *)self environment];
  v10[1] = @"events";
  v11[0] = v5;
  v6 = [(RCPEventStream *)self rawEvents];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 encodeObject:v7 forKey:*MEMORY[0x277CCA308]];

  [v4 finishEncoding];
  v8 = [v4 encodedData];
  [v3 appendData:v8];

  return v3;
}

- (void)writeToURL:(id)a3
{
  v4 = a3;
  v5 = [(RCPEventStream *)self dataRepresentation];
  [v5 writeToURL:v4 options:1 error:0];
}

- (id)trimmedFrom:(unint64_t)a3 to:(unint64_t)a4
{
  if (a4 < a3)
  {
    v5 = [(RCPEventStream *)self copy];
    goto LABEL_15;
  }

  v8 = [(NSMutableArray *)self->_rawEvents count]- 1;
  v9 = 0;
  if (![(NSMutableArray *)self->_rawEvents count])
  {
    goto LABEL_12;
  }

  v10 = 0;
  while (1)
  {
    v11 = [(NSMutableArray *)self->_rawEvents objectAtIndexedSubscript:v10];
    v12 = [v11 timestamp];

    if (v12 >= a3)
    {
      break;
    }

    v9 = ++v10;
LABEL_9:
    if (v10 >= [(NSMutableArray *)self->_rawEvents count])
    {
      goto LABEL_12;
    }
  }

  v13 = [(NSMutableArray *)self->_rawEvents objectAtIndexedSubscript:v10];
  v14 = [v13 timestamp];

  if (v14 <= a4)
  {
    ++v10;
    goto LABEL_9;
  }

  v8 = v10;
LABEL_12:
  v5 = objc_alloc_init(RCPEventStream);
  if (v8 > v9)
  {
    v15 = [(NSMutableArray *)self->_rawEvents subarrayWithRange:v9, v8 - v9];
    [(RCPEventStream *)v5 setEvents:v15];
  }

  v16 = [(RCPEventStream *)self environment];
  [(RCPEventStream *)v5 setEnvironment:v16];

LABEL_15:

  return v5;
}

- (id)streamByAddingEventsFromStream:(id)a3 withDistance:(double)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(RCPEventStream *)self environment];
  [v7 setEnvironment:v8];
  v9 = [(RCPEventStream *)self events];
  [v7 setEvents:v9];

  v10 = [(RCPEventStream *)self environment];
  v11 = [(NSMutableArray *)self->_rawEvents lastObject];
  [v10 timeIntervalForMachAbsoluteTime:{objc_msgSend(v11, "deliveryTimestamp")}];
  v13 = v12;
  v14 = [v6 environment];
  v15 = [v6 events];
  v16 = [v15 firstObject];
  [v14 timeIntervalForMachAbsoluteTime:{objc_msgSend(v16, "deliveryTimestamp")}];
  v18 = v13 - v17 + a4;

  v19 = v7[2];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__RCPEventStream_streamByAddingEventsFromStream_withDistance___block_invoke;
  v25[3] = &unk_279AF0F10;
  v28 = v18;
  v26 = v8;
  v27 = v19;
  v20 = v19;
  v21 = v8;
  [v6 enumerateEventsUsingBlock:v25];

  v22 = v27;
  v23 = v7;

  return v7;
}

void __62__RCPEventStream_streamByAddingEventsFromStream_withDistance___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 timeIntervalForMachAbsoluteTime:{objc_msgSend(v4, "deliveryTimestamp")}];
  v6 = *(a1 + 40);
  v7 = [v4 eventAdjustedForDeliveryTimeInterval:*(a1 + 32) eventEnvironment:v5 + *(a1 + 48)];

  [v6 addObject:v7];
}

- (id)emptyCopy
{
  v3 = objc_opt_new();
  v4 = [(RCPEventStream *)self environment];
  [v3 setEnvironment:v4];

  return v3;
}

+ (id)eventStreamWithData:(id)a3 error:(id *)a4
{
  v46[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [@"RECAP0" length];
  if ([v5 length] >= v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v5 length:"bytes") encoding:{v6, 4}];
    v8 = [v7 isEqual:@"RECAP0"];

    if (v8)
    {
      v9 = [v5 subdataWithRange:{v6, objc_msgSend(v5, "length") - v6}];
      v43 = 0;
      v10 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v9 error:&v43];
      v11 = v43;
      v12 = v11;
      if (!v10)
      {
        v20 = *MEMORY[0x277D85DF8];
        v21 = [v11 description];
        fprintf(v20, "error: decoder returned nil with error:%s.\n\n", [v21 UTF8String]);

        if (a4)
        {
          v22 = v12;
          v17 = 0;
          *a4 = v12;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_31;
      }

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __44__RCPEventStream_eventStreamWithData_error___block_invoke;
      v40[3] = &unk_279AF0F38;
      v13 = v11;
      v41 = v13;
      v42 = a4;
      v14 = MEMORY[0x266715C00](v40);
      [v10 setRequiresSecureCoding:0];
      v15 = [v10 decodeObjectForKey:*MEMORY[0x277CCA308]];
      if (!v15)
      {
        v12 = [v10 error];

        v23 = *MEMORY[0x277D85DF8];
        v24 = [v12 description];
        fprintf(v23, "error: this file contains no root object:%s\n\n", [v24 UTF8String]);

        if (a4)
        {
          v25 = v12;
          v17 = 0;
          *a4 = v12;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_30;
      }

      v16 = objc_opt_new();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        fputs("warning: this event stream appears to be from ≈2015 C.E. and may not work on current OS versions. Proceed with caution.\n\n", *MEMORY[0x277D85DF8]);
        objc_storeStrong(v16 + 2, v15);
        v12 = v13;
      }

      else
      {
        v26 = [v15 objectForKey:@"events"];
        v27 = v16[2];
        v16[2] = v26;

        v12 = [v10 error];

        if (!(v14)[2](v14, "decoding events"))
        {
          goto LABEL_28;
        }

        v35 = v14;
        if (![v16[2] count])
        {
          fputs("warning: this event stream contains no events\n\n", *MEMORY[0x277D85DF8]);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v28 = v16[2];
        v29 = [v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v37;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v37 != v31)
              {
                objc_enumerationMutation(v28);
              }

              [*(*(&v36 + 1) + 8 * i) hidEvent];
              IOHIDEventSetAttributeData();
            }

            v30 = [v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v30);
        }

        v33 = [v15 objectForKey:@"env"];
        [v16 setEnvironment:v33];

        v14 = v35;
        if (!(v35)[2](v35, "decoding environment"))
        {
LABEL_28:
          v17 = 0;
          goto LABEL_29;
        }

        v17 = [v16 environment];

        if (!v17)
        {
          fputs("error: this event stream contains no environment\n\n", *MEMORY[0x277D85DF8]);
          goto LABEL_29;
        }
      }

      v17 = v16;
LABEL_29:

LABEL_30:
LABEL_31:

      goto LABEL_32;
    }
  }

  if (!a4)
  {
    v17 = 0;
    goto LABEL_33;
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = kRPCEventStreamErrorDomainFile;
  v45 = *MEMORY[0x277CCA470];
  v46[0] = @"Wrong file format.";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  [v18 errorWithDomain:v19 code:1 userInfo:v9];
  *a4 = v17 = 0;
LABEL_32:

LABEL_33:

  return v17;
}

BOOL __44__RCPEventStream_eventStreamWithData_error___block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v5 = *MEMORY[0x277D85DF8];
    v6 = [*(a1 + 32) description];
    fprintf(v5, "error: %s:%s\n\n", a2, [v6 UTF8String]);

    if (*(a1 + 40))
    {
      **(a1 + 40) = *(a1 + 32);
    }
  }

  return v2 == 0;
}

+ (id)eventStreamWithFileURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3 options:1 error:a4];
  if (v6)
  {
    v7 = [a1 eventStreamWithData:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)eventStreamWithStudyLogFileURL:(id)a3 error:(id *)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithURL:v5];
  [v6 open];
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v6 options:4 error:a4];
  [v6 close];
  if (v7)
  {
    v38 = v6;
    v39 = v5;
    v46 = objc_alloc_init(RCPEventStream);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v37 = v7;
    obj = v7;
    v42 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v42)
    {
      v41 = *v53;
      v8 = @"data";
      v9 = 0x277CBE000uLL;
      do
      {
        v10 = 0;
        do
        {
          if (*v53 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v45 = v10;
          v11 = *(*(&v52 + 1) + 8 * v10);
          v12 = [v11 objectForKeyedSubscript:@"start"];
          v13 = [v12 objectForKeyedSubscript:@"date"];

          v14 = [v11 objectForKeyedSubscript:@"start"];
          v15 = [v14 objectForKeyedSubscript:@"timestamp"];

          v16 = [(RCPEventStream *)v46 environment];
          v17 = MEMORY[0x277CBEAA8];
          [v13 doubleValue];
          v18 = [v17 dateWithTimeIntervalSince1970:?];
          [v16 setStartDate:v18 machAbsoluteTime:{objc_msgSend(v15, "unsignedLongLongValue")}];

          v19 = MEMORY[0x277CBEAA8];
          [v13 doubleValue];
          v20 = [v19 dateWithTimeIntervalSince1970:?];
          v43 = v15;
          v44 = v13;
          NSLog(&cfstr_StartdateStart.isa, v13, v20, v15);

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = [v11 objectForKeyedSubscript:@"entries"];
          v21 = [v47 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v49;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v49 != v23)
                {
                  objc_enumerationMutation(v47);
                }

                v25 = *(*(&v48 + 1) + 8 * i);
                v26 = [v25 objectForKeyedSubscript:v8];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v27 = [v26 objectForKeyedSubscript:@"description"];
                  v28 = [v27 isEqualToString:@"FromHID"];

                  if (v28)
                  {
                    v29 = [v25 objectForKeyedSubscript:v8];
                    v30 = [v29 objectForKeyedSubscript:@"RawCollectionData"];

                    if (v30)
                    {
                      v31 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v30 options:0];
                      if (v31)
                      {
                        v32 = IOHIDEventCreateWithData();
                        v33 = v8;
                        v34 = v9;
                        v35 = [RCPEvent eventWithHIDEvent:v32 deliveryTimeStamp:IOHIDEventGetTimeStamp()];
                        [(NSMutableArray *)v46->_rawEvents addObject:v35];
                        CFRelease(v32);

                        v9 = v34;
                        v8 = v33;
                      }
                    }
                  }
                }
              }

              v22 = [v47 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v22);
          }

          v10 = v45 + 1;
        }

        while (v45 + 1 != v42);
        v42 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v42);
    }

    v6 = v38;
    v5 = v39;
    v7 = v37;
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (id)statistics
{
  v3 = objc_opt_new();
  v4 = [(RCPEventStream *)self rawEvents];
  v5 = [(RCPEventStream *)self environment];
  v6 = [(RCPEventStream *)self environment];
  [v5 speedFactorToAdjustRecordingEnvironment:v6];
  v8 = v7;

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld Events", objc_msgSend(v4, "count")];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [v4 lastObject];
  v12 = [v11 deliveryTimestamp];
  v13 = [v4 firstObject];
  v14 = [v10 stringWithFormat:@"%0.4fs total duration (%0.4fx original)", RCPTimeIntervalFromMachTimestamp(v12 - objc_msgSend(v13, "deliveryTimestamp")) / v8, 1.0 / v8];
  [v3 addObject:v14];

  v15 = [v3 componentsJoinedByString:{@", "}];

  return v15;
}

- (id)timingStatistics
{
  v3 = objc_opt_new();
  v4 = [(RCPEventStream *)self environment];
  v5 = [(RCPEventStream *)self environment];
  [v4 speedFactorToAdjustRecordingEnvironment:v5];
  v7 = v6;

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__0;
  v16[4] = __Block_byref_object_dispose__0;
  v17 = 0;
  v8 = [(RCPEventStream *)self rawEvents];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__RCPEventStream_timingStatistics__block_invoke;
  v12[3] = &unk_279AF0F60;
  v14 = v16;
  v9 = v3;
  v13 = v9;
  v15 = v7;
  [v8 enumerateObjectsUsingBlock:v12];

  v10 = [v9 componentsJoinedByString:{@", "}];

  _Block_object_dispose(v16, 8);

  return v10;
}

void __34__RCPEventStream_timingStatistics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 40))
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCACA8];
    v8 = RCPTimeIntervalFromMachTimestamp([v3 deliveryTimestamp]);
    v9 = (v8 - RCPTimeIntervalFromMachTimestamp([*(*(*(a1 + 40) + 8) + 40) deliveryTimestamp])) * *(a1 + 48);
    [v4 hidEvent];
    TimeStamp = IOHIDEventGetTimeStamp();
    v11 = RCPTimeIntervalFromMachTimestamp(TimeStamp);
    [*(*(*(a1 + 40) + 8) + 40) hidEvent];
    v12 = IOHIDEventGetTimeStamp();
    v13 = [v7 stringWithFormat:@"%0.9fs, (%0.9fs)", *&v9, v11 - RCPTimeIntervalFromMachTimestamp(v12)];
    [v6 addObject:v13];

    v5 = *(*(a1 + 40) + 8);
  }

  v14 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)enumerateEventsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(RCPEventStream *)self rawEvents];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RCPEventStream_enumerateEventsUsingBlock___block_invoke;
  v7[3] = &unk_279AF0F88;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)filterEventsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __41__RCPEventStream_filterEventsUsingBlock___block_invoke;
  v11 = &unk_279AF0FB0;
  v12 = v5;
  v13 = v4;
  v6 = v5;
  v7 = v4;
  [(RCPEventStream *)self enumerateEventsUsingBlock:&v8];
  [(RCPEventStream *)self setEvents:v6, v8, v9, v10, v11];
}

void __41__RCPEventStream_filterEventsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)transformDigitizerEventLocationsWithTransform:(CGAffineTransform *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(RCPEventStream *)self events];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) hidEvent];
        v10 = *&a3->c;
        v11[0] = *&a3->a;
        v11[1] = v10;
        v11[2] = *&a3->tx;
        RCPHIDEventTransformLocation(v9, v11);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

@end