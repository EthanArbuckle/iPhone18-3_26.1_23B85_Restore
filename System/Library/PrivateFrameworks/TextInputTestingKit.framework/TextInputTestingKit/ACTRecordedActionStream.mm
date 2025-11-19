@interface ACTRecordedActionStream
+ (id)userActionStreamWithParameters:(id)a3 delegate:(id)a4;
- (ACTRecordedActionStream)initWithParameters:(id)a3 delegate:(id)a4;
- (BOOL)isFinished;
- (NSString)intendedText;
- (id)nextUserAction;
- (void)configureWithParameters:(id)a3;
- (void)stepCursor;
@end

@implementation ACTRecordedActionStream

- (BOOL)isFinished
{
  v3 = [(ACTRecordedActionStream *)self cursor];
  if ([v3 atEndOfText])
  {
    v4 = [(ACTRecordedActionStream *)self dataSynthesizer];
    v5 = [v4 isFinished];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)stepCursor
{
  v3 = [(ACTRecordedActionStream *)self touchEventsForInputSegments];
  v4 = [(ACTRecordedActionStream *)self cursor];
  v17 = [v3 objectAtIndex:{objc_msgSend(v4, "segmentCursor")}];

  [(ACTRecordedActionStream *)self setTouchEventCursor:[(ACTRecordedActionStream *)self touchEventCursor]+ 1];
  if (![v17 count] || (v5 = -[ACTRecordedActionStream touchEventCursor](self, "touchEventCursor"), v5 < objc_msgSend(v17, "count")))
  {
    v6 = [(ACTRecordedActionStream *)self dataSynthesizer];
    v7 = [v6 intendedText];
    if (![v7 length])
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = [(ACTRecordedActionStream *)self dataSynthesizer];
    v9 = [v8 isFinished];

    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = [(ACTRecordedActionStream *)self cursor];
  v11 = [v10 advanceSegmentCursor];

  if (!v11)
  {
    goto LABEL_11;
  }

  [(ACTRecordedActionStream *)self setTouchEventCursor:0];
  v12 = [(ACTRecordedActionStream *)self touchEventsForInputSegments];
  v13 = [(ACTRecordedActionStream *)self cursor];
  v14 = [v12 objectAtIndex:{objc_msgSend(v13, "segmentCursor")}];
  v15 = [v14 count];

  if (!v15)
  {
    v6 = [(ACTRecordedActionStream *)self cursor];
    v7 = [v6 currentInternalSegment];
    v16 = [(ACTRecordedActionStream *)self dataSynthesizer];
    [v16 setIntendedText:v7];

    goto LABEL_9;
  }

  v6 = [(ACTRecordedActionStream *)self dataSynthesizer];
  [v6 setIntendedText:&stru_287EC4808];
LABEL_10:

LABEL_11:
}

- (id)nextUserAction
{
  if ([(ACTRecordedActionStream *)self isFinished])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(ACTRecordedActionStream *)self touchEventsForInputSegments];
    v5 = [(ACTRecordedActionStream *)self cursor];
    v6 = [v4 objectAtIndex:{objc_msgSend(v5, "segmentCursor")}];

    if ([v6 count])
    {
      v7 = [v6 objectAtIndex:{-[ACTRecordedActionStream touchEventCursor](self, "touchEventCursor")}];
      v3 = [[ACTTouchEvent alloc] initWithTouchEvent:v7];
      v8 = [(ACTRecordedActionStream *)self cursor];
      -[ACTUserAction setInputSegment:](v3, "setInputSegment:", [v8 segmentCursor]);
    }

    else
    {
      v7 = [(ACTRecordedActionStream *)self dataSynthesizer];
      v3 = [v7 nextUserAction];
    }

    [(ACTRecordedActionStream *)self stepCursor];
  }

  return v3;
}

- (NSString)intendedText
{
  v2 = [(ACTRecordedActionStream *)self cursor];
  v3 = [v2 intendedText];

  return v3;
}

- (void)configureWithParameters:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKey:@"TTKTestCase"];
  v42 = [MEMORY[0x277CBEB18] array];
  v41 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v39 = v3;
  obj = [v3 records];
  v44 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v44)
  {
    v4 = 0;
    v43 = *v55;
    do
    {
      v5 = 0;
      do
      {
        if (*v55 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v5;
        v6 = *(*(&v54 + 1) + 8 * v5);
        v7 = [MEMORY[0x277CBEB18] array];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v45 = v6;
        v47 = [v6 touchDataCollection];
        v49 = [v47 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v49)
        {
          v48 = *v51;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v51 != v48)
              {
                objc_enumerationMutation(v47);
              }

              v9 = *(*(&v50 + 1) + 8 * i);
              v10 = [v9 samples];
              v11 = [v10 count];

              if (v11)
              {
                v12 = 0;
                do
                {
                  v13 = [v9 samples];
                  v14 = [v13 objectAtIndex:v12];

                  if ([v14 stage] == 7)
                  {
                    if (v12)
                    {
                      v15 = [v9 samples];
                      if (v12 + 1 == [v15 count])
                      {
                        v16 = 2;
                      }

                      else
                      {
                        v16 = 1;
                      }
                    }

                    else
                    {
                      v16 = 0;
                    }
                  }

                  else
                  {
                    v16 = [v14 stage];
                  }

                  if (([v14 pathIndex] & 0x8000000000000000) == 0)
                  {
                    v4 = [v14 pathIndex];
                  }

                  v17 = MEMORY[0x277D6F440];
                  [v14 point];
                  v19 = v18;
                  v21 = v20;
                  [v14 radius];
                  v23 = v22;
                  [v14 timeStamp];
                  v25 = [v17 touchEventWithStage:v16 location:v4 radius:-1 timestamp:v19 pathIndex:v21 forcedKeyCode:{v23, v24}];
                  [v7 addObject:v25];

                  ++v12;
                  v26 = [v9 samples];
                  v27 = [v26 count];
                }

                while (v12 < v27);
              }

              v4 = (v4 + 1) % 0xC;
            }

            v49 = [v47 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v49);
        }

        [v7 sortUsingComparator:&__block_literal_global_5315];
        if ([v7 count] < 2)
        {
LABEL_30:
          v31 = [v45 primaryIntendedText];
          [v42 addObject:v31];

          v32 = [v7 copy];
          [v41 addObject:v32];

          goto LABEL_32;
        }

        v28 = [v7 firstObject];
        if ([v28 stage])
        {
        }

        else
        {
          v29 = [v7 lastObject];
          v30 = [v29 stage];

          if (v30 == 2)
          {
            goto LABEL_30;
          }
        }

        NSLog(&cfstr_WarningAfterTi.isa);
LABEL_32:

        v5 = v46 + 1;
      }

      while (v46 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v44);
  }

  v33 = [ACTUserMentalCursor alloc];
  v34 = [v42 copy];
  v35 = [v42 copy];
  v36 = [(ACTUserMentalCursor *)v33 initWithInternalSegments:v34 externalSegments:v35];
  [(ACTRecordedActionStream *)self setCursor:v36];

  v37 = [v41 copy];
  [(ACTRecordedActionStream *)self setTouchEventsForInputSegments:v37];

  [(ACTRecordedActionStream *)self setTouchEventCursor:0];
}

uint64_t __51__ACTRecordedActionStream_configureWithParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timestamp];
  v7 = v6;
  [v5 timestamp];
  if (v7 >= v8)
  {
    [v4 timestamp];
    v11 = v10;
    [v5 timestamp];
    v9 = v11 != v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (ACTRecordedActionStream)initWithParameters:(id)a3 delegate:(id)a4
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = ACTRecordedActionStream;
  v8 = [(ACTRecordedActionStream *)&v27 init];
  if (v8)
  {
    v9 = objc_alloc_init(ACTUserMentalCursor);
    cursor = v8->_cursor;
    v8->_cursor = v9;

    touchEventsForInputSegments = v8->_touchEventsForInputSegments;
    v8->_touchEventsForInputSegments = MEMORY[0x277CBEBF8];

    v12 = MEMORY[0x277CBEC28];
    v8->_delegate = v7;
    v28[0] = @"BASE_KEY_FOR_VARIANTS";
    v28[1] = @"DECOMPOSE_INPUT_STRING";
    v29[0] = v12;
    v13 = [v6 objectForKeyedSubscript:?];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v12;
    }

    v29[1] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

    v17 = [ACTUserActionStreamFactory userActionStreamWithParameters:v16 delegate:v8->_delegate];
    dataSynthesizer = v8->_dataSynthesizer;
    v8->_dataSynthesizer = v17;
  }

  [(ACTRecordedActionStream *)v8 configureWithParameters:v6];
  v19 = [(ACTRecordedActionStream *)v8 touchEventsForInputSegments];
  v20 = [(ACTRecordedActionStream *)v8 cursor];
  v21 = [v19 objectAtIndex:{objc_msgSend(v20, "segmentCursor")}];
  v22 = [v21 count];

  if (!v22)
  {
    v23 = [(ACTRecordedActionStream *)v8 cursor];
    v24 = [v23 currentInternalSegment];
    v25 = [(ACTRecordedActionStream *)v8 dataSynthesizer];
    [v25 setIntendedText:v24];
  }

  return v8;
}

+ (id)userActionStreamWithParameters:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ACTRecordedActionStream alloc] initWithParameters:v6 delegate:v5];

  return v7;
}

@end