@interface TIProgressTracker
- (BOOL)shouldStopAfterAddingStateString:(id)a3;
- (TIProgressTracker)initWithIntendedString:(id)a3 repeatLimit:(int64_t)a4 timeout:(double)a5 badSentencePath:(id)a6;
- (unint64_t)stoppageReason;
- (void)appendStringToFile:(id)a3 atFilePath:(id)a4;
- (void)saveBadSentenceAndTranscript:(unint64_t)a3;
@end

@implementation TIProgressTracker

- (void)appendStringToFile:(id)a3 atFilePath:(id)a4
{
  v12 = a4;
  if (v12)
  {
    v5 = MEMORY[0x277CCAA00];
    v6 = a3;
    v7 = [v5 defaultManager];
    if (([v7 fileExistsAtPath:v12] & 1) == 0 && (objc_msgSend(v7, "createFileAtPath:contents:attributes:", v12, 0, 0) & 1) == 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "Error: unable to write log file '%s'.\n", [v12 UTF8String]);
    }

    v8 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v12];
    [v8 seekToEndOfFile];
    v9 = [v6 dataUsingEncoding:4];

    [v8 writeData:v9];
    [v8 closeFile];
  }

  else
  {
    v10 = MEMORY[0x277CCA9F8];
    v11 = a3;
    v8 = [v10 fileHandleWithStandardOutput];
    v7 = [v11 dataUsingEncoding:4];

    [v8 writeData:v7];
  }
}

- (void)saveBadSentenceAndTranscript:(unint64_t)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = [(TIProgressTracker *)self badSentenceFilePath];

  if (v5)
  {
    v6 = [(TIProgressTracker *)self intended];
    v7 = [(TIProgressTracker *)self badSentenceFilePath];
    [(TIProgressTracker *)self appendStringToFile:v6 atFilePath:v7];
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = [(TIProgressTracker *)self intended];
  v10 = [v8 stringWithFormat:@"> %-10@ >> %@", @"Intended", v9];

  v11 = MEMORY[0x277CCACA8];
  if (a3 > 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_279DA0518[a3];
  }

  v13 = [(TIProgressTracker *)self stateTranscript];
  v14 = [v13 lastObject];
  v15 = [v11 stringWithFormat:@"> %-10@ << %@", v12, v14];

  v22[0] = v10;
  v22[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v17 = [(TIProgressTracker *)self stateTranscript];
  v18 = [v16 arrayByAddingObjectsFromArray:v17];

  v19 = [v18 componentsJoinedByString:@"\n"];
  v20 = [v19 stringByAppendingString:@"\n\n"];

  v21 = [(TIProgressTracker *)self badSentenceTranscriptFilePath];
  [(TIProgressTracker *)self appendStringToFile:v20 atFilePath:v21];
}

- (unint64_t)stoppageReason
{
  v3 = [(TIProgressTracker *)self stateTranscript];
  v4 = [v3 lastObject];

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [(TIProgressTracker *)self startTime];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [(TIProgressTracker *)self priorStates];
  v10 = [v9 countForObject:v4];

  v11 = [(TIProgressTracker *)self intended];
  v12 = [v11 isEqualToString:v4];

  if (v12)
  {
    v13 = 0;
  }

  else if (v10 <= [(TIProgressTracker *)self repeatLimit])
  {
    [(TIProgressTracker *)self timeout];
    if (v8 <= v14)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)shouldStopAfterAddingStateString:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithString:a3];
  v5 = [(TIProgressTracker *)self priorStates];
  [v5 addObject:v4];

  v6 = [(TIProgressTracker *)self stateTranscript];
  [v6 addObject:v4];

  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(TIProgressTracker *)self startTime];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = [(TIProgressTracker *)self priorStates];
  v12 = [v11 countForObject:v4];

  if (v12 <= [(TIProgressTracker *)self repeatLimit]&& ([(TIProgressTracker *)self timeout], v10 <= v13))
  {
    v14 = 0;
  }

  else
  {
    [(TIProgressTracker *)self saveBadSentenceAndTranscript:[(TIProgressTracker *)self stoppageReason]];
    v14 = 1;
  }

  return v14;
}

- (TIProgressTracker)initWithIntendedString:(id)a3 repeatLimit:(int64_t)a4 timeout:(double)a5 badSentencePath:(id)a6
{
  v11 = a3;
  v12 = a6;
  v24.receiver = self;
  v24.super_class = TIProgressTracker;
  v13 = [(TIProgressTracker *)&v24 init];
  v14 = v13;
  if (v13)
  {
    v13->_repeatLimit = a4;
    v13->_timeout = a5;
    objc_storeStrong(&v13->_intended, a3);
    v15 = [MEMORY[0x277CBEAA8] now];
    startTime = v14->_startTime;
    v14->_startTime = v15;

    v17 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:100];
    priorStates = v14->_priorStates;
    v14->_priorStates = v17;

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:200];
    stateTranscript = v14->_stateTranscript;
    v14->_stateTranscript = v19;

    v21 = [v12 copy];
    badSentenceFilePath = v14->_badSentenceFilePath;
    v14->_badSentenceFilePath = v21;
  }

  return v14;
}

@end