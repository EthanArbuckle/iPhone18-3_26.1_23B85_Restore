@interface TIProgressTracker
- (BOOL)shouldStopAfterAddingStateString:(id)string;
- (TIProgressTracker)initWithIntendedString:(id)string repeatLimit:(int64_t)limit timeout:(double)timeout badSentencePath:(id)path;
- (unint64_t)stoppageReason;
- (void)appendStringToFile:(id)file atFilePath:(id)path;
- (void)saveBadSentenceAndTranscript:(unint64_t)transcript;
@end

@implementation TIProgressTracker

- (void)appendStringToFile:(id)file atFilePath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v5 = MEMORY[0x277CCAA00];
    fileCopy = file;
    defaultManager = [v5 defaultManager];
    if (([defaultManager fileExistsAtPath:pathCopy] & 1) == 0 && (objc_msgSend(defaultManager, "createFileAtPath:contents:attributes:", pathCopy, 0, 0) & 1) == 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "Error: unable to write log file '%s'.\n", [pathCopy UTF8String]);
    }

    fileHandleWithStandardOutput = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:pathCopy];
    [fileHandleWithStandardOutput seekToEndOfFile];
    v9 = [fileCopy dataUsingEncoding:4];

    [fileHandleWithStandardOutput writeData:v9];
    [fileHandleWithStandardOutput closeFile];
  }

  else
  {
    v10 = MEMORY[0x277CCA9F8];
    fileCopy2 = file;
    fileHandleWithStandardOutput = [v10 fileHandleWithStandardOutput];
    defaultManager = [fileCopy2 dataUsingEncoding:4];

    [fileHandleWithStandardOutput writeData:defaultManager];
  }
}

- (void)saveBadSentenceAndTranscript:(unint64_t)transcript
{
  v22[2] = *MEMORY[0x277D85DE8];
  badSentenceFilePath = [(TIProgressTracker *)self badSentenceFilePath];

  if (badSentenceFilePath)
  {
    intended = [(TIProgressTracker *)self intended];
    badSentenceFilePath2 = [(TIProgressTracker *)self badSentenceFilePath];
    [(TIProgressTracker *)self appendStringToFile:intended atFilePath:badSentenceFilePath2];
  }

  v8 = MEMORY[0x277CCACA8];
  intended2 = [(TIProgressTracker *)self intended];
  v10 = [v8 stringWithFormat:@"> %-10@ >> %@", @"Intended", intended2];

  v11 = MEMORY[0x277CCACA8];
  if (transcript > 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_279DA0518[transcript];
  }

  stateTranscript = [(TIProgressTracker *)self stateTranscript];
  lastObject = [stateTranscript lastObject];
  v15 = [v11 stringWithFormat:@"> %-10@ << %@", v12, lastObject];

  v22[0] = v10;
  v22[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  stateTranscript2 = [(TIProgressTracker *)self stateTranscript];
  v18 = [v16 arrayByAddingObjectsFromArray:stateTranscript2];

  v19 = [v18 componentsJoinedByString:@"\n"];
  v20 = [v19 stringByAppendingString:@"\n\n"];

  badSentenceTranscriptFilePath = [(TIProgressTracker *)self badSentenceTranscriptFilePath];
  [(TIProgressTracker *)self appendStringToFile:v20 atFilePath:badSentenceTranscriptFilePath];
}

- (unint64_t)stoppageReason
{
  stateTranscript = [(TIProgressTracker *)self stateTranscript];
  lastObject = [stateTranscript lastObject];

  v5 = [MEMORY[0x277CBEAA8] now];
  startTime = [(TIProgressTracker *)self startTime];
  [v5 timeIntervalSinceDate:startTime];
  v8 = v7;

  priorStates = [(TIProgressTracker *)self priorStates];
  v10 = [priorStates countForObject:lastObject];

  intended = [(TIProgressTracker *)self intended];
  v12 = [intended isEqualToString:lastObject];

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

- (BOOL)shouldStopAfterAddingStateString:(id)string
{
  v4 = [MEMORY[0x277CCACA8] stringWithString:string];
  priorStates = [(TIProgressTracker *)self priorStates];
  [priorStates addObject:v4];

  stateTranscript = [(TIProgressTracker *)self stateTranscript];
  [stateTranscript addObject:v4];

  v7 = [MEMORY[0x277CBEAA8] now];
  startTime = [(TIProgressTracker *)self startTime];
  [v7 timeIntervalSinceDate:startTime];
  v10 = v9;

  priorStates2 = [(TIProgressTracker *)self priorStates];
  v12 = [priorStates2 countForObject:v4];

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

- (TIProgressTracker)initWithIntendedString:(id)string repeatLimit:(int64_t)limit timeout:(double)timeout badSentencePath:(id)path
{
  stringCopy = string;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = TIProgressTracker;
  v13 = [(TIProgressTracker *)&v24 init];
  v14 = v13;
  if (v13)
  {
    v13->_repeatLimit = limit;
    v13->_timeout = timeout;
    objc_storeStrong(&v13->_intended, string);
    v15 = [MEMORY[0x277CBEAA8] now];
    startTime = v14->_startTime;
    v14->_startTime = v15;

    v17 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:100];
    priorStates = v14->_priorStates;
    v14->_priorStates = v17;

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:200];
    stateTranscript = v14->_stateTranscript;
    v14->_stateTranscript = v19;

    v21 = [pathCopy copy];
    badSentenceFilePath = v14->_badSentenceFilePath;
    v14->_badSentenceFilePath = v21;
  }

  return v14;
}

@end