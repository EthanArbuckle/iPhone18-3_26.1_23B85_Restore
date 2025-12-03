@interface RCMutableMovie
+ (id)movieWithURL:(id)l error:(id *)error;
- (BOOL)rc_writeMovieHeaderWithOptions:(unint64_t)options error:(id *)error;
- (void)dealloc;
@end

@implementation RCMutableMovie

+ (id)movieWithURL:(id)l error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v7 = [MEMORY[0x277CE6650] assetWithURL:lCopy];
    canContainFragments = [v7 canContainFragments];

    if (!canContainFragments)
    {
      pathExtension = [lCopy pathExtension];
      v15 = [pathExtension isEqualToString:@"qta"];

      if (v15)
      {
        v16 = [lCopy temporaryMovieLink:error];
        if (v16)
        {
          v13 = [self movieWithURL:v16 options:0 error:error];
          [v13 setLinkURL:v16];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = [self movieWithURL:lCopy options:0 error:error];
      }

      goto LABEL_19;
    }

    if (error)
    {
      v9 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20[0] = @"Attempted to write metadata before finalization";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *error = [v9 errorWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:2 userInfo:v10];
    }

    v11 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [RCMutableMovie movieWithURL:v11 error:?];
    }
  }

  else
  {
    v12 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [RCMutableMovie movieWithURL:v12 error:?];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:260 userInfo:0];
      *error = v13 = 0;
      goto LABEL_19;
    }
  }

  v13 = 0;
LABEL_19:

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)dealloc
{
  linkURL = self->_linkURL;
  if (linkURL)
  {
    v4 = MEMORY[0x277CCAA00];
    v5 = linkURL;
    defaultManager = [v4 defaultManager];
    [defaultManager removeItemAtURL:v5 error:0];
  }

  v7.receiver = self;
  v7.super_class = RCMutableMovie;
  [(AVMutableMovie *)&v7 dealloc];
}

- (BOOL)rc_writeMovieHeaderWithOptions:(unint64_t)options error:(id *)error
{
  v7 = [(AVMutableMovie *)self URL];
  isQuickTime = [v7 isQuickTime];
  v9 = MEMORY[0x277CE5DA8];
  if (!isQuickTime)
  {
    v9 = MEMORY[0x277CE5D68];
  }

  v10 = *v9;

  v11 = [(AVMutableMovie *)self URL];
  v12 = [(AVMovie *)self writeMovieHeaderToURL:v11 fileType:v10 options:options error:error];

  return v12;
}

+ (void)movieWithURL:(os_log_t)log error:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[RCMutableMovie movieWithURL:error:]";
  _os_log_fault_impl(&dword_272442000, log, OS_LOG_TYPE_FAULT, "%s -- Attempted to write metadata before finalization", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)movieWithURL:(os_log_t)log error:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[RCMutableMovie movieWithURL:error:]";
  _os_log_fault_impl(&dword_272442000, log, OS_LOG_TYPE_FAULT, "%s -- Attempted to call [RCMutableMovie movieWithURL:] with nil url", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end