@interface TSTimeErrorSequence
+ (id)timeErrorSequenceWithTimestamps:(unint64_t *)a3 timeError:(int64_t *)a4 count:(int64_t)a5;
- (BOOL)exportTimeErrorsToDirectoryURL:(id)a3 withFilename:(id)a4;
- (TSTimeErrorSequence)initWithTimeErrors:(id)a3;
- (id)generatePythonScriptWithOutputPath:(id)a3 fileName:(id)a4 titleName:(id)a5 plotPath:(id)a6 showPlot:(BOOL)a7;
@end

@implementation TSTimeErrorSequence

+ (id)timeErrorSequenceWithTimestamps:(unint64_t *)a3 timeError:(int64_t *)a4 count:(int64_t)a5
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a3 && a4 && a5 >= 1)
  {
    do
    {
      v9 = [TSTimeErrorValue alloc];
      v11 = *a3++;
      v10 = v11;
      v12 = *a4++;
      v13 = [(TSTimeErrorValue *)v9 initWithTimestamp:v10 andError:v12];
      [v8 addObject:v13];

      --a5;
    }

    while (a5);
  }

  v14 = [objc_alloc(objc_opt_class()) initWithTimeErrors:v8];

  return v14;
}

- (TSTimeErrorSequence)initWithTimeErrors:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSTimeErrorSequence;
  v5 = [(TSTimeErrorSequence *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4];
    timeErrors = v5->_timeErrors;
    v5->_timeErrors = v6;
  }

  return v5;
}

- (id)generatePythonScriptWithOutputPath:(id)a3 fileName:(id)a4 titleName:(id)a5 plotPath:(id)a6 showPlot:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a6;
  v13 = MEMORY[0x277CCAB68];
  v14 = a5;
  v15 = a4;
  v16 = [v13 string];
  [v16 appendFormat:@"#!/usr/bin/env python3\n\nimport numpy as np\nimport matplotlib.pyplot as plt\nimport os\nimport sys\n"];
  if (v11)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"'%@/%@'", v11, v15];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"os.path.split(sys.argv[0])[0]+'/%@'", v15, v19];
  }
  v17 = ;

  [v16 appendFormat:@"timeErrorRecords = np.rec.array(np.genfromtxt(%@, dtype=None, delimiter=', ', names=True, encoding='utf-8'))\n\ntime = timeErrorRecords.time\ntimeError = timeErrorRecords.time_error\n\n", v17];
  [v16 appendFormat:@"f1, ax1 = plt.subplots()\nax1.plot(time, timeError, 'r-')\nax1.set_ylabel('Time Error (ns)')\nax1.set_xlabel('Time (ns)')\nax1.set_title('Time Errors - %@')\nax1.grid(True)\n\nplt.subplots_adjust(left=0.05, right=0.97, bottom=0.05, top=0.97)\n", v14];

  if (v12)
  {
    [v16 appendFormat:@"\nf1.set_size_inches(32, 16.98753)\n\nf1.savefig('%@')\n", v12];
  }

  if (v7)
  {
    [v16 appendString:@"\nplt.show()\n"];
  }

  return v16;
}

- (BOOL)exportTimeErrorsToDirectoryURL:(id)a3 withFilename:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
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
      v20 = v10 != 0;
      v21 = v9;
      fwrite("time,time error\n", 0x10uLL, 1uLL, v10);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = [(TSTimeErrorSequence *)self timeErrors];
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            fprintf(v12, "%llu,%lld\n", [*(*(&v22 + 1) + 8 * i) timestamp], objc_msgSend(*(*(&v22 + 1) + 8 * i), "error"));
          }

          v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v15);
      }

      fclose(v12);
      v9 = v21;
      v11 = v20;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

@end