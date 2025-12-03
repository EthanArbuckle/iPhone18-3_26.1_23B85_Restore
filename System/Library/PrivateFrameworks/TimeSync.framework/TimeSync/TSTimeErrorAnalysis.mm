@interface TSTimeErrorAnalysis
+ (id)generatePythonScriptWithOutputPath:(id)path fileName:(id)name titleName:(id)titleName plotPath:(id)plotPath showPlot:(BOOL)plot;
- (BOOL)exportTimeErrorsToDirectoryURL:(id)l withFilename:(id)filename;
- (TSTimeErrorAnalysis)initWithTimeErrorValues:(id)values;
- (void)dealloc;
- (void)performAnalysisFromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize withThreadingOption:(int64_t)option;
- (void)performAnalysisWithThreadingOption:(int64_t)option;
@end

@implementation TSTimeErrorAnalysis

- (TSTimeErrorAnalysis)initWithTimeErrorValues:(id)values
{
  v25 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v23.receiver = self;
  v23.super_class = TSTimeErrorAnalysis;
  v5 = [(TSTimeErrorAnalysis *)&v23 init];
  if (v5)
  {
    v6 = [valuesCopy count];
    v5->_numberOfErrors = v6;
    if (v6 < 1)
    {

      v5 = 0;
    }

    else
    {
      v5->_timestamps = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
      v5->_timeErrors = malloc_type_calloc(v5->_numberOfErrors, 8uLL, 0x100004000313F17uLL);
      v7 = malloc_type_calloc(v5->_numberOfErrors, 8uLL, 0x100004000313F17uLL);
      if (v7 && v5->_timestamps && v5->_timeErrors)
      {
        v8 = [valuesCopy objectAtIndexedSubscript:0];
        timestamp = [v8 timestamp];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = valuesCopy;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v20;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              v5->_timestamps[v13] = ([v16 timestamp] - timestamp);
              v5->_timeErrors[v13++] = [v16 error];
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
          }

          while (v12);
        }

        vDSP_vsubD(v5->_timestamps, 1, v5->_timestamps + 1, 1, v7, 1, v5->_numberOfErrors - 1);
        vDSP_meanvD(v7, 1, &v5->_averagePeriod, v5->_numberOfErrors - 1);
      }

      else
      {

        v5 = 0;
      }

      free(v7);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)performAnalysisWithThreadingOption:(int64_t)option
{
  analysisLimit = [(TSTimeErrorAnalysis *)self analysisLimit];

  [(TSTimeErrorAnalysis *)self performAnalysisFromStartWindowSize:2 toEndWindowSize:analysisLimit stepSize:1 withThreadingOption:option];
}

- (void)performAnalysisFromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize withThreadingOption:(int64_t)option
{
  v11 = mach_absolute_time();
  if (size <= 2)
  {
    sizeCopy = 2;
  }

  else
  {
    sizeCopy = size;
  }

  if ([(TSTimeErrorAnalysis *)self analysisLimit]< windowSize)
  {
    windowSize = [(TSTimeErrorAnalysis *)self analysisLimit];
  }

  if (option != 1 && (option || (numberOfErrors = self->_numberOfErrors, numberOfErrors < -[TSTimeErrorAnalysis threadingLimit](self, "threadingLimit"))) || ([MEMORY[0x277CCAC38] processInfo], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "activeProcessorCount"), v14, v15 == 1))
  {
    [(TSTimeErrorAnalysis *)self _performAnalysisFromWindowSize:sizeCopy toWindowSize:windowSize stepSize:stepSize];
  }

  else
  {
    v38 = v11;
    v16 = MEMORY[0x277CCACA8];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 stringWithFormat:@"com.apple.timesync.%@.parallel", v18];
    uTF8String = [v19 UTF8String];
    v41 = dispatch_queue_create(uTF8String, MEMORY[0x277D85CD8]);

    v21 = MEMORY[0x277CCACA8];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v21 stringWithFormat:@"com.apple.timesync.%@.sequence", v23];
    v25 = dispatch_queue_create([v24 UTF8String], 0);

    v26 = dispatch_semaphore_create(v15);
    v27 = dispatch_group_create();
    threadingSegment = (windowSize - sizeCopy + 1) / v15;
    if ([(TSTimeErrorAnalysis *)self threadingSegment]< threadingSegment)
    {
      threadingSegment = [(TSTimeErrorAnalysis *)self threadingSegment];
    }

    if (stepSize >= 2)
    {
      threadingSegment = threadingSegment / stepSize * stepSize - threadingSegment + 2 * threadingSegment;
    }

    selfCopy = self;
    stepSizeCopy = stepSize;
    v39 = sizeCopy;
    v29 = v25;
    v30 = v26;
    if (sizeCopy < windowSize - 1)
    {
      v40 = MEMORY[0x277D85DD0];
      windowSizeCopy = threadingSegment;
      do
      {
        block[0] = v40;
        block[1] = 3221225472;
        block[2] = __103__TSTimeErrorAnalysis_performAnalysisFromStartWindowSize_toEndWindowSize_stepSize_withThreadingOption___block_invoke;
        block[3] = &unk_279DBD5F0;
        v45 = v30;
        v32 = threadingSegment;
        v33 = v30;
        v34 = v29;
        v35 = v27;
        v46 = v35;
        v47 = v41;
        v48 = selfCopy;
        v49 = sizeCopy;
        v50 = windowSizeCopy;
        v51 = stepSizeCopy;
        v36 = v35;
        v29 = v34;
        v30 = v33;
        threadingSegment = v32;
        dispatch_group_async(v36, v29, block);
        sizeCopy = windowSizeCopy + 1;
        if (windowSizeCopy + v32 >= windowSize)
        {
          windowSizeCopy = windowSize;
        }

        else
        {
          windowSizeCopy += v32;
        }
      }

      while (sizeCopy < windowSize - 1);
    }

    dispatch_group_wait(v27, 0xFFFFFFFFFFFFFFFFLL);

    v11 = v38;
    sizeCopy = v39;
    self = selfCopy;
    stepSize = stepSizeCopy;
  }

  v37 = mach_absolute_time();
  self->_calculated = 1;
  self->_lowestWindowSize = sizeCopy;
  self->_highestWindowSize = windowSize;
  self->_calculatedStepSize = stepSize;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [TSAudioTimeErrorCalculator calculateTimeErrorFromStartOffset:v37 toEndOffset:v11 withThreadingOption:?];
  }
}

intptr_t __103__TSTimeErrorAnalysis_performAnalysisFromStartWindowSize_toEndWindowSize_stepSize_withThreadingOption___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __103__TSTimeErrorAnalysis_performAnalysisFromStartWindowSize_toEndWindowSize_stepSize_withThreadingOption___block_invoke_2;
  v5[3] = &unk_279DBD5C8;
  v5[4] = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  dispatch_group_async(v2, v3, v5);
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)exportTimeErrorsToDirectoryURL:(id)l withFilename:(id)filename
{
  lCopy = l;
  filenameCopy = filename;
  if ([lCopy isFileURL])
  {
    path = [lCopy path];
    v9 = [path stringByAppendingPathComponent:filenameCopy];

    v10 = fopen([v9 UTF8String], "w");
    v11 = v10 != 0;
    if (v10)
    {
      v12 = v10;
      fwrite("index,time,error\n", 0x11uLL, 1uLL, v10);
      if (self->_numberOfErrors >= 1)
      {
        v13 = 0;
        do
        {
          fprintf(v12, "%ld,%.9f,%.12f\n", v13, self->_timestamps[v13], self->_timeErrors[v13]);
          ++v13;
        }

        while (v13 < self->_numberOfErrors);
      }

      fclose(v12);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  free(self->_timestamps);
  free(self->_timeErrors);
  v3.receiver = self;
  v3.super_class = TSTimeErrorAnalysis;
  [(TSTimeErrorAnalysis *)&v3 dealloc];
}

+ (id)generatePythonScriptWithOutputPath:(id)path fileName:(id)name titleName:(id)titleName plotPath:(id)plotPath showPlot:(BOOL)plot
{
  plotCopy = plot;
  pathCopy = path;
  plotPathCopy = plotPath;
  v13 = MEMORY[0x277CCAB68];
  titleNameCopy = titleName;
  nameCopy = name;
  string = [v13 string];
  variableName = [self variableName];
  additionalScriptInitialization = [self additionalScriptInitialization];
  [string appendFormat:@"#!/usr/bin/env python3\n\nimport numpy as np\nimport matplotlib.pyplot as plt\nimport os\nimport sys\n\n%@\n", additionalScriptInitialization];

  v30 = plotPathCopy;
  v31 = pathCopy;
  if (pathCopy)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"'%@/%@'", pathCopy, nameCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"os.path.split(sys.argv[0])[0]+'/%@'", nameCopy, v28];
  }
  v19 = ;

  additionalScriptRecords = [self additionalScriptRecords];
  [string appendFormat:@"%@Records = np.rec.array(np.genfromtxt(%@, dtype=None, delimiter=', ', names=True, encoding='utf-8'))\n\ntau = %@Records.observation_interval\n%@ = %@Records.%@\n\n%@\n", variableName, v19, variableName, variableName, variableName, variableName, additionalScriptRecords];

  uppercaseString = [variableName uppercaseString];
  v22 = [self additionalScriptPlots:@"ax1"];
  plotYLabel = [self plotYLabel];
  plotTitle = [self plotTitle];
  v25 = [self plotYLimits:@"ax1"];
  [string appendFormat:@"f1, ax1 = plt.subplots()\nl1, = ax1.plot(tau, %@, 'r-', label='%@')\n%@\nax1.set_ylabel('%@')\nax1.set_xlabel('Observation Interval (s)')\nax1.set_title('%@ - %@')\nax1.set_xscale('log')\nax1.set_yscale('log')\n%@\nax1.set_aspect(1)\nax1.grid(True)\n\nplt.subplots_adjust(left=0.05, right=0.97, bottom=0.05, top=0.97)\n", variableName, uppercaseString, v22, plotYLabel, plotTitle, titleNameCopy, v25];

  if (v30)
  {
    plotSize = [self plotSize];
    [string appendFormat:@"\n%@\n\nf1.savefig('%@')\n", plotSize, v30];
  }

  if (plotCopy)
  {
    [string appendString:@"\nplt.show()\n"];
  }

  return string;
}

@end