@interface ACTRecordedActionStream
+ (id)userActionStreamWithParameters:(id)parameters delegate:(id)delegate;
- (ACTRecordedActionStream)initWithParameters:(id)parameters delegate:(id)delegate;
- (BOOL)isFinished;
- (NSString)intendedText;
- (id)nextUserAction;
- (void)configureWithParameters:(id)parameters;
- (void)stepCursor;
@end

@implementation ACTRecordedActionStream

- (BOOL)isFinished
{
  cursor = [(ACTRecordedActionStream *)self cursor];
  if ([cursor atEndOfText])
  {
    dataSynthesizer = [(ACTRecordedActionStream *)self dataSynthesizer];
    isFinished = [dataSynthesizer isFinished];
  }

  else
  {
    isFinished = 0;
  }

  return isFinished;
}

- (void)stepCursor
{
  touchEventsForInputSegments = [(ACTRecordedActionStream *)self touchEventsForInputSegments];
  cursor = [(ACTRecordedActionStream *)self cursor];
  v17 = [touchEventsForInputSegments objectAtIndex:{objc_msgSend(cursor, "segmentCursor")}];

  [(ACTRecordedActionStream *)self setTouchEventCursor:[(ACTRecordedActionStream *)self touchEventCursor]+ 1];
  if (![v17 count] || (v5 = -[ACTRecordedActionStream touchEventCursor](self, "touchEventCursor"), v5 < objc_msgSend(v17, "count")))
  {
    dataSynthesizer = [(ACTRecordedActionStream *)self dataSynthesizer];
    intendedText = [dataSynthesizer intendedText];
    if (![intendedText length])
    {
LABEL_9:

      goto LABEL_10;
    }

    dataSynthesizer2 = [(ACTRecordedActionStream *)self dataSynthesizer];
    isFinished = [dataSynthesizer2 isFinished];

    if (!isFinished)
    {
      goto LABEL_11;
    }
  }

  cursor2 = [(ACTRecordedActionStream *)self cursor];
  advanceSegmentCursor = [cursor2 advanceSegmentCursor];

  if (!advanceSegmentCursor)
  {
    goto LABEL_11;
  }

  [(ACTRecordedActionStream *)self setTouchEventCursor:0];
  touchEventsForInputSegments2 = [(ACTRecordedActionStream *)self touchEventsForInputSegments];
  cursor3 = [(ACTRecordedActionStream *)self cursor];
  v14 = [touchEventsForInputSegments2 objectAtIndex:{objc_msgSend(cursor3, "segmentCursor")}];
  v15 = [v14 count];

  if (!v15)
  {
    dataSynthesizer = [(ACTRecordedActionStream *)self cursor];
    intendedText = [dataSynthesizer currentInternalSegment];
    dataSynthesizer3 = [(ACTRecordedActionStream *)self dataSynthesizer];
    [dataSynthesizer3 setIntendedText:intendedText];

    goto LABEL_9;
  }

  dataSynthesizer = [(ACTRecordedActionStream *)self dataSynthesizer];
  [dataSynthesizer setIntendedText:&stru_287EC4808];
LABEL_10:

LABEL_11:
}

- (id)nextUserAction
{
  if ([(ACTRecordedActionStream *)self isFinished])
  {
    nextUserAction = 0;
  }

  else
  {
    touchEventsForInputSegments = [(ACTRecordedActionStream *)self touchEventsForInputSegments];
    cursor = [(ACTRecordedActionStream *)self cursor];
    v6 = [touchEventsForInputSegments objectAtIndex:{objc_msgSend(cursor, "segmentCursor")}];

    if ([v6 count])
    {
      dataSynthesizer = [v6 objectAtIndex:{-[ACTRecordedActionStream touchEventCursor](self, "touchEventCursor")}];
      nextUserAction = [[ACTTouchEvent alloc] initWithTouchEvent:dataSynthesizer];
      cursor2 = [(ACTRecordedActionStream *)self cursor];
      -[ACTUserAction setInputSegment:](nextUserAction, "setInputSegment:", [cursor2 segmentCursor]);
    }

    else
    {
      dataSynthesizer = [(ACTRecordedActionStream *)self dataSynthesizer];
      nextUserAction = [dataSynthesizer nextUserAction];
    }

    [(ACTRecordedActionStream *)self stepCursor];
  }

  return nextUserAction;
}

- (NSString)intendedText
{
  cursor = [(ACTRecordedActionStream *)self cursor];
  intendedText = [cursor intendedText];

  return intendedText;
}

- (void)configureWithParameters:(id)parameters
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [parameters objectForKey:@"TTKTestCase"];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v39 = v3;
  obj = [v3 records];
  v44 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v44)
  {
    pathIndex = 0;
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
        array3 = [MEMORY[0x277CBEB18] array];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v45 = v6;
        touchDataCollection = [v6 touchDataCollection];
        v49 = [touchDataCollection countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v49)
        {
          v48 = *v51;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v51 != v48)
              {
                objc_enumerationMutation(touchDataCollection);
              }

              v9 = *(*(&v50 + 1) + 8 * i);
              samples = [v9 samples];
              v11 = [samples count];

              if (v11)
              {
                v12 = 0;
                do
                {
                  samples2 = [v9 samples];
                  v14 = [samples2 objectAtIndex:v12];

                  if ([v14 stage] == 7)
                  {
                    if (v12)
                    {
                      samples3 = [v9 samples];
                      if (v12 + 1 == [samples3 count])
                      {
                        stage = 2;
                      }

                      else
                      {
                        stage = 1;
                      }
                    }

                    else
                    {
                      stage = 0;
                    }
                  }

                  else
                  {
                    stage = [v14 stage];
                  }

                  if (([v14 pathIndex] & 0x8000000000000000) == 0)
                  {
                    pathIndex = [v14 pathIndex];
                  }

                  v17 = MEMORY[0x277D6F440];
                  [v14 point];
                  v19 = v18;
                  v21 = v20;
                  [v14 radius];
                  v23 = v22;
                  [v14 timeStamp];
                  v25 = [v17 touchEventWithStage:stage location:pathIndex radius:-1 timestamp:v19 pathIndex:v21 forcedKeyCode:{v23, v24}];
                  [array3 addObject:v25];

                  ++v12;
                  samples4 = [v9 samples];
                  v27 = [samples4 count];
                }

                while (v12 < v27);
              }

              pathIndex = (pathIndex + 1) % 0xC;
            }

            v49 = [touchDataCollection countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v49);
        }

        [array3 sortUsingComparator:&__block_literal_global_5315];
        if ([array3 count] < 2)
        {
LABEL_30:
          primaryIntendedText = [v45 primaryIntendedText];
          [array addObject:primaryIntendedText];

          v32 = [array3 copy];
          [array2 addObject:v32];

          goto LABEL_32;
        }

        firstObject = [array3 firstObject];
        if ([firstObject stage])
        {
        }

        else
        {
          lastObject = [array3 lastObject];
          stage2 = [lastObject stage];

          if (stage2 == 2)
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
  v34 = [array copy];
  v35 = [array copy];
  v36 = [(ACTUserMentalCursor *)v33 initWithInternalSegments:v34 externalSegments:v35];
  [(ACTRecordedActionStream *)self setCursor:v36];

  v37 = [array2 copy];
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

- (ACTRecordedActionStream)initWithParameters:(id)parameters delegate:(id)delegate
{
  v29[2] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  delegateCopy = delegate;
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
    v8->_delegate = delegateCopy;
    v28[0] = @"BASE_KEY_FOR_VARIANTS";
    v28[1] = @"DECOMPOSE_INPUT_STRING";
    v29[0] = v12;
    v13 = [parametersCopy objectForKeyedSubscript:?];
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

  [(ACTRecordedActionStream *)v8 configureWithParameters:parametersCopy];
  touchEventsForInputSegments = [(ACTRecordedActionStream *)v8 touchEventsForInputSegments];
  cursor = [(ACTRecordedActionStream *)v8 cursor];
  v21 = [touchEventsForInputSegments objectAtIndex:{objc_msgSend(cursor, "segmentCursor")}];
  v22 = [v21 count];

  if (!v22)
  {
    cursor2 = [(ACTRecordedActionStream *)v8 cursor];
    currentInternalSegment = [cursor2 currentInternalSegment];
    dataSynthesizer = [(ACTRecordedActionStream *)v8 dataSynthesizer];
    [dataSynthesizer setIntendedText:currentInternalSegment];
  }

  return v8;
}

+ (id)userActionStreamWithParameters:(id)parameters delegate:(id)delegate
{
  delegateCopy = delegate;
  parametersCopy = parameters;
  v7 = [[ACTRecordedActionStream alloc] initWithParameters:parametersCopy delegate:delegateCopy];

  return v7;
}

@end