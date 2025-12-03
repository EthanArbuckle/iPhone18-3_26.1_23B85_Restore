@interface TSTimeErrorSequence
+ (id)timeErrorSequenceWithTimestamps:(unint64_t *)timestamps timeError:(int64_t *)error count:(int64_t)count;
- (BOOL)exportTimeErrorsToDirectoryURL:(id)l withFilename:(id)filename;
- (TSTimeErrorSequence)initWithTimeErrors:(id)errors;
- (id)generatePythonScriptWithOutputPath:(id)path fileName:(id)name titleName:(id)titleName plotPath:(id)plotPath showPlot:(BOOL)plot;
@end

@implementation TSTimeErrorSequence

+ (id)timeErrorSequenceWithTimestamps:(unint64_t *)timestamps timeError:(int64_t *)error count:(int64_t)count
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (timestamps && error && count >= 1)
  {
    do
    {
      v9 = [TSTimeErrorValue alloc];
      v11 = *timestamps++;
      v10 = v11;
      v12 = *error++;
      v13 = [(TSTimeErrorValue *)v9 initWithTimestamp:v10 andError:v12];
      [v8 addObject:v13];

      --count;
    }

    while (count);
  }

  v14 = [objc_alloc(objc_opt_class()) initWithTimeErrors:v8];

  return v14;
}

- (TSTimeErrorSequence)initWithTimeErrors:(id)errors
{
  errorsCopy = errors;
  v9.receiver = self;
  v9.super_class = TSTimeErrorSequence;
  v5 = [(TSTimeErrorSequence *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:errorsCopy];
    timeErrors = v5->_timeErrors;
    v5->_timeErrors = v6;
  }

  return v5;
}

- (id)generatePythonScriptWithOutputPath:(id)path fileName:(id)name titleName:(id)titleName plotPath:(id)plotPath showPlot:(BOOL)plot
{
  plotCopy = plot;
  pathCopy = path;
  plotPathCopy = plotPath;
  v13 = MEMORY[0x277CCAB68];
  titleNameCopy = titleName;
  nameCopy = name;
  string = [v13 string];
  [string appendFormat:@"#!/usr/bin/env python3\n\nimport numpy as np\nimport matplotlib.pyplot as plt\nimport os\nimport sys\n"];
  if (pathCopy)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"'%@/%@'", pathCopy, nameCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"os.path.split(sys.argv[0])[0]+'/%@'", nameCopy, v19];
  }
  v17 = ;

  [string appendFormat:@"timeErrorRecords = np.rec.array(np.genfromtxt(%@, dtype=None, delimiter=', ', names=True, encoding='utf-8'))\n\ntime = timeErrorRecords.time\ntimeError = timeErrorRecords.time_error\n\n", v17];
  [string appendFormat:@"f1, ax1 = plt.subplots()\nax1.plot(time, timeError, 'r-')\nax1.set_ylabel('Time Error (ns)')\nax1.set_xlabel('Time (ns)')\nax1.set_title('Time Errors - %@')\nax1.grid(True)\n\nplt.subplots_adjust(left=0.05, right=0.97, bottom=0.05, top=0.97)\n", titleNameCopy];

  if (plotPathCopy)
  {
    [string appendFormat:@"\nf1.set_size_inches(32, 16.98753)\n\nf1.savefig('%@')\n", plotPathCopy];
  }

  if (plotCopy)
  {
    [string appendString:@"\nplt.show()\n"];
  }

  return string;
}

- (BOOL)exportTimeErrorsToDirectoryURL:(id)l withFilename:(id)filename
{
  v27 = *MEMORY[0x277D85DE8];
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
      v20 = v10 != 0;
      v21 = v9;
      fwrite("time,time error\n", 0x10uLL, 1uLL, v10);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      timeErrors = [(TSTimeErrorSequence *)self timeErrors];
      v14 = [timeErrors countByEnumeratingWithState:&v22 objects:v26 count:16];
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
              objc_enumerationMutation(timeErrors);
            }

            fprintf(v12, "%llu,%lld\n", [*(*(&v22 + 1) + 8 * i) timestamp], objc_msgSend(*(*(&v22 + 1) + 8 * i), "error"));
          }

          v15 = [timeErrors countByEnumeratingWithState:&v22 objects:v26 count:16];
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