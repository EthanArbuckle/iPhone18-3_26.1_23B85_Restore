@interface PLCPLDownloadContext
- (void)updateFromDownloadStatusUserInfo:(id)a3;
@end

@implementation PLCPLDownloadContext

- (void)updateFromDownloadStatusUserInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"progress"];
  v11 = v5;
  if (v5)
  {
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = NAN;
  }

  v8 = [v4 objectForKeyedSubscript:@"completed"];
  v9 = [v8 BOOLValue];

  v10 = [v4 objectForKeyedSubscript:@"error"];

  if (v7 >= 0.0)
  {
    [(PLCPLDownloadContext *)self setProgress:v7];
  }

  [(PLCPLDownloadContext *)self setCompleted:v9];
  if (v10)
  {
    [(PLCPLDownloadContext *)self setError:v10];
  }
}

@end