@interface SiriUICardLogger
+ (id)_sharedInstance;
+ (id)logCard:(id)a3 format:(unint64_t)a4;
+ (id)logCardData:(id)a3 format:(unint64_t)a4;
- (SiriUICardLogger)init;
- (id)_currentFilenameForFormat:(unint64_t)a3;
- (id)_dateFormatter;
- (id)_nowString;
@end

@implementation SiriUICardLogger

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken != -1)
  {
    +[SiriUICardLogger _sharedInstance];
  }

  v3 = _sharedInstance_sCardLogger;

  return v3;
}

uint64_t __35__SiriUICardLogger__sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SiriUICardLogger);
  v1 = _sharedInstance_sCardLogger;
  _sharedInstance_sCardLogger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)logCardData:(id)a3 format:(unint64_t)a4
{
  v6 = MEMORY[0x277D4C230];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [objc_alloc(MEMORY[0x277D4C728]) initWithData:v7];

  v10 = [v8 initWithProtobuf:v9];
  v11 = [a1 logCard:v10 format:a4];

  return v11;
}

+ (id)logCard:(id)a3 format:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 backingCard];
  if (!v6)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v7 = +[SiriUICardLogger _sharedInstance];
  v8 = [v7 _currentFilenameForFormat:a4];

  v9 = [objc_alloc(MEMORY[0x277D4C728]) initWithFacade:v6];
  v10 = [v9 data];
  v11 = v10;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v15 = [v9 jsonData];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_11;
      }

      v15 = [v9 dictionaryRepresentation];
    }

    v12 = v15;
    v13 = [v15 writeToFile:v8 atomically:0];
    goto LABEL_16;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    v12 = [v10 base64EncodedStringWithOptions:32];
    v13 = [v12 writeToFile:v8 atomically:0 encoding:4 error:0];
LABEL_16:
    v16 = v13;

    if (v16)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      +[SiriUICardLogger logCard:format:];
    }

    v14 = 0;
    goto LABEL_20;
  }

  if (![v10 writeToFile:v8 atomically:0])
  {
    goto LABEL_11;
  }

LABEL_17:
  v17 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "+[SiriUICardLogger logCard:format:]";
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_26948D000, v17, OS_LOG_TYPE_DEFAULT, "%s #cards Logged card to file\n    Filename: %@\n    Card: %@", &v19, 0x20u);
  }

  v14 = v8;
LABEL_20:

LABEL_21:

  return v14;
}

- (SiriUICardLogger)init
{
  v6.receiver = self;
  v6.super_class = SiriUICardLogger;
  v2 = [(SiriUICardLogger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = 0;
  }

  return v3;
}

- (id)_currentFilenameForFormat:(unint64_t)a3
{
  if (a3 > 3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = off_279C59E30[a3];
    v5 = off_279C59E50[a3];
  }

  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = AFLogDirectory();
  v8 = [v7 stringByAppendingPathComponent:@"CardLogs"];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v10 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v15];
  v11 = v15;

  if ((v10 & 1) == 0 && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SiriUICardLogger _currentFilenameForFormat:];
  }

  v12 = [(SiriUICardLogger *)self _nowString];
  v13 = [v6 initWithFormat:@"%@/siri-card-%@-%@.%@", v8, v12, v5, v4];

  return v13;
}

- (id)_dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    v6 = self->_dateFormatter;
    v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];
    [(NSDateFormatter *)v6 setLocale:v7];

    [(NSDateFormatter *)self->_dateFormatter setDateFormat:@"yyyy_MM_dd-HHmmss"];
    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (id)_nowString
{
  v2 = [(SiriUICardLogger *)self _dateFormatter];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

+ (void)logCard:format:.cold.1()
{
  LODWORD(v2) = 136315650;
  *(&v2 + 4) = "+[SiriUICardLogger logCard:format:]";
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_26948D000, v0, v1, "%s #cards Failed to log card \n    Filename: %@\n    Card: %@", v2, DWORD2(v2));
}

- (void)_currentFilenameForFormat:.cold.1()
{
  LODWORD(v2) = 136315650;
  *(&v2 + 4) = "_SiriUICardLoggerCardDataDirectory";
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_26948D000, v0, v1, "%s #cards Couldn't create card log directory at path %{public}@ %{public}@", v2, DWORD2(v2));
}

@end