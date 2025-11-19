@interface TSTimeErrorAnalysis
+ (id)generatePythonScriptWithOutputPath:(id)a3 fileName:(id)a4 titleName:(id)a5 plotPath:(id)a6 showPlot:(BOOL)a7;
- (BOOL)exportTimeErrorsToDirectoryURL:(id)a3 withFilename:(id)a4;
- (TSTimeErrorAnalysis)initWithTimeErrorValues:(id)a3;
- (void)dealloc;
- (void)performAnalysisFromStartWindowSize:(int64_t)a3 toEndWindowSize:(int64_t)a4 stepSize:(int64_t)a5 withThreadingOption:(int64_t)a6;
- (void)performAnalysisWithThreadingOption:(int64_t)a3;
@end

@implementation TSTimeErrorAnalysis

- (TSTimeErrorAnalysis)initWithTimeErrorValues:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TSTimeErrorAnalysis;
  v5 = [(TSTimeErrorAnalysis *)&v23 init];
  if (v5)
  {
    v6 = [v4 count];
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
        v8 = [v4 objectAtIndexedSubscript:0];
        v9 = [v8 timestamp];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = v4;
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
              v5->_timestamps[v13] = ([v16 timestamp] - v9);
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

- (void)performAnalysisWithThreadingOption:(int64_t)a3
{
  v5 = [(TSTimeErrorAnalysis *)self analysisLimit];

  [(TSTimeErrorAnalysis *)self performAnalysisFromStartWindowSize:2 toEndWindowSize:v5 stepSize:1 withThreadingOption:a3];
}

- (void)performAnalysisFromStartWindowSize:(int64_t)a3 toEndWindowSize:(int64_t)a4 stepSize:(int64_t)a5 withThreadingOption:(int64_t)a6
{
  v11 = mach_absolute_time();
  if (a3 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = a3;
  }

  if ([(TSTimeErrorAnalysis *)self analysisLimit]< a4)
  {
    a4 = [(TSTimeErrorAnalysis *)self analysisLimit];
  }

  if (a6 != 1 && (a6 || (numberOfErrors = self->_numberOfErrors, numberOfErrors < -[TSTimeErrorAnalysis threadingLimit](self, "threadingLimit"))) || ([MEMORY[0x277CCAC38] processInfo], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "activeProcessorCount"), v14, v15 == 1))
  {
    [(TSTimeErrorAnalysis *)self _performAnalysisFromWindowSize:v12 toWindowSize:a4 stepSize:a5];
  }

  else
  {
    v38 = v11;
    v16 = MEMORY[0x277CCACA8];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 stringWithFormat:@"com.apple.timesync.%@.parallel", v18];
    v20 = [v19 UTF8String];
    v41 = dispatch_queue_create(v20, MEMORY[0x277D85CD8]);

    v21 = MEMORY[0x277CCACA8];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v21 stringWithFormat:@"com.apple.timesync.%@.sequence", v23];
    v25 = dispatch_queue_create([v24 UTF8String], 0);

    v26 = dispatch_semaphore_create(v15);
    v27 = dispatch_group_create();
    v28 = (a4 - v12 + 1) / v15;
    if ([(TSTimeErrorAnalysis *)self threadingSegment]< v28)
    {
      v28 = [(TSTimeErrorAnalysis *)self threadingSegment];
    }

    if (a5 >= 2)
    {
      v28 = v28 / a5 * a5 - v28 + 2 * v28;
    }

    v42 = self;
    v43 = a5;
    v39 = v12;
    v29 = v25;
    v30 = v26;
    if (v12 < a4 - 1)
    {
      v40 = MEMORY[0x277D85DD0];
      v31 = v28;
      do
      {
        block[0] = v40;
        block[1] = 3221225472;
        block[2] = __103__TSTimeErrorAnalysis_performAnalysisFromStartWindowSize_toEndWindowSize_stepSize_withThreadingOption___block_invoke;
        block[3] = &unk_279DBD5F0;
        v45 = v30;
        v32 = v28;
        v33 = v30;
        v34 = v29;
        v35 = v27;
        v46 = v35;
        v47 = v41;
        v48 = v42;
        v49 = v12;
        v50 = v31;
        v51 = v43;
        v36 = v35;
        v29 = v34;
        v30 = v33;
        v28 = v32;
        dispatch_group_async(v36, v29, block);
        v12 = v31 + 1;
        if (v31 + v32 >= a4)
        {
          v31 = a4;
        }

        else
        {
          v31 += v32;
        }
      }

      while (v12 < a4 - 1);
    }

    dispatch_group_wait(v27, 0xFFFFFFFFFFFFFFFFLL);

    v11 = v38;
    v12 = v39;
    self = v42;
    a5 = v43;
  }

  v37 = mach_absolute_time();
  self->_calculated = 1;
  self->_lowestWindowSize = v12;
  self->_highestWindowSize = a4;
  self->_calculatedStepSize = a5;
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

- (BOOL)exportTimeErrorsToDirectoryURL:(id)a3 withFilename:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFileURL])
  {
    v8 = [v6 path];
    v9 = [v8 stringByAppendingPathComponent:v7];

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

+ (id)generatePythonScriptWithOutputPath:(id)a3 fileName:(id)a4 titleName:(id)a5 plotPath:(id)a6 showPlot:(BOOL)a7
{
  v29 = a7;
  v11 = a3;
  v12 = a6;
  v13 = MEMORY[0x277CCAB68];
  v14 = a5;
  v15 = a4;
  v16 = [v13 string];
  v17 = [a1 variableName];
  v18 = [a1 additionalScriptInitialization];
  [v16 appendFormat:@"#!/usr/bin/env python3\n\nimport numpy as np\nimport matplotlib.pyplot as plt\nimport os\nimport sys\n\n%@\n", v18];

  v30 = v12;
  v31 = v11;
  if (v11)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"'%@/%@'", v11, v15];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"os.path.split(sys.argv[0])[0]+'/%@'", v15, v28];
  }
  v19 = ;

  v20 = [a1 additionalScriptRecords];
  [v16 appendFormat:@"%@Records = np.rec.array(np.genfromtxt(%@, dtype=None, delimiter=', ', names=True, encoding='utf-8'))\n\ntau = %@Records.observation_interval\n%@ = %@Records.%@\n\n%@\n", v17, v19, v17, v17, v17, v17, v20];

  v21 = [v17 uppercaseString];
  v22 = [a1 additionalScriptPlots:@"ax1"];
  v23 = [a1 plotYLabel];
  v24 = [a1 plotTitle];
  v25 = [a1 plotYLimits:@"ax1"];
  [v16 appendFormat:@"f1, ax1 = plt.subplots()\nl1, = ax1.plot(tau, %@, 'r-', label='%@')\n%@\nax1.set_ylabel('%@')\nax1.set_xlabel('Observation Interval (s)')\nax1.set_title('%@ - %@')\nax1.set_xscale('log')\nax1.set_yscale('log')\n%@\nax1.set_aspect(1)\nax1.grid(True)\n\nplt.subplots_adjust(left=0.05, right=0.97, bottom=0.05, top=0.97)\n", v17, v21, v22, v23, v24, v14, v25];

  if (v30)
  {
    v26 = [a1 plotSize];
    [v16 appendFormat:@"\n%@\n\nf1.savefig('%@')\n", v26, v30];
  }

  if (v29)
  {
    [v16 appendString:@"\nplt.show()\n"];
  }

  return v16;
}

@end