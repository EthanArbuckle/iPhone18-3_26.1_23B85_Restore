@interface SPMLLogging
+ (id)candidateLogsURL;
+ (id)dateFormatter;
+ (id)logURLForCurrentTime;
+ (id)submittedLogsURL;
+ (id)submitttedSpotlightReportsError:(id *)a3;
@end

@implementation SPMLLogging

+ (id)submitttedSpotlightReportsError:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[SPMLLogging submittedLogsURL];
  v13[0] = *MEMORY[0x1E695EBE8];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = 0;
  v7 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:0 error:&v12];
  v8 = v12;

  if (a3 && v8)
  {
    v9 = v8;
    *a3 = v8;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)logURLForCurrentTime
{
  v2 = +[SPMLLogging candidateLogsURL];
  v3 = MEMORY[0x1E696AEC0];
  v4 = +[SPMLLogging dateFormatter];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v4 stringFromDate:v5];
  v7 = [v3 stringWithFormat:@"searchd-%@", v6];

  v8 = [v2 URLByAppendingPathComponent:v7];
  v9 = [v8 URLByAppendingPathExtension:@"json"];

  return v9;
}

+ (id)submittedLogsURL
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/Spotlight/Diagnostics/SubmittedReports"];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SPMLLogging_submittedLogsURL__block_invoke;
  block[3] = &unk_1E82F8F28;
  v9 = v3;
  v4 = submittedLogsURL_onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&submittedLogsURL_onceToken, block);
  }

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1 relativeToURL:0];

  return v6;
}

void __31__SPMLLogging_submittedLogsURL__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v2 fileExistsAtPath:*(a1 + 32)] & 1) == 0)
  {
    [v2 createDirectoryAtPath:*(a1 + 32) withIntermediateDirectories:1 attributes:0 error:0];
  }
}

+ (id)candidateLogsURL
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/Spotlight/Diagnostics/CandidateReports"];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SPMLLogging_candidateLogsURL__block_invoke;
  block[3] = &unk_1E82F8F28;
  v9 = v3;
  v4 = candidateLogsURL_onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&candidateLogsURL_onceToken, block);
  }

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1 relativeToURL:0];

  return v6;
}

void __31__SPMLLogging_candidateLogsURL__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v2 fileExistsAtPath:*(a1 + 32)] & 1) == 0)
  {
    [v2 createDirectoryAtPath:*(a1 + 32) withIntermediateDirectories:1 attributes:0 error:0];
  }
}

+ (id)dateFormatter
{
  v2 = objc_opt_new();
  [v2 setDateFormat:@"yyyy-MM-dd"];
  v3 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v2 setTimeZone:v3];

  return v2;
}

@end