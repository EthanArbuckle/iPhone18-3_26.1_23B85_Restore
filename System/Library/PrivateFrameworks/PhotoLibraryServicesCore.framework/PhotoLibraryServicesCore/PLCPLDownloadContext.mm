@interface PLCPLDownloadContext
- (void)updateFromDownloadStatusUserInfo:(id)info;
@end

@implementation PLCPLDownloadContext

- (void)updateFromDownloadStatusUserInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"progress"];
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

  v8 = [infoCopy objectForKeyedSubscript:@"completed"];
  bOOLValue = [v8 BOOLValue];

  v10 = [infoCopy objectForKeyedSubscript:@"error"];

  if (v7 >= 0.0)
  {
    [(PLCPLDownloadContext *)self setProgress:v7];
  }

  [(PLCPLDownloadContext *)self setCompleted:bOOLValue];
  if (v10)
  {
    [(PLCPLDownloadContext *)self setError:v10];
  }
}

@end