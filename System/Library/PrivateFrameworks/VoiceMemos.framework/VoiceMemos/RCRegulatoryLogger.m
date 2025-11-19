@interface RCRegulatoryLogger
- (RCRegulatoryLogger)init;
- (void)dealloc;
- (void)readingAudioData;
- (void)transmittingAudioData;
@end

@implementation RCRegulatoryLogger

- (RCRegulatoryLogger)init
{
  v4.receiver = self;
  v4.super_class = RCRegulatoryLogger;
  v2 = [(RCRegulatoryLogger *)&v4 init];
  if (v2)
  {
    v2->_logger = ct_green_tea_logger_create();
  }

  return v2;
}

- (void)dealloc
{
  logger = self->_logger;
  ct_green_tea_logger_destroy();
  v4.receiver = self;
  v4.super_class = RCRegulatoryLogger;
  [(RCRegulatoryLogger *)&v4 dealloc];
}

- (void)readingAudioData
{
  [(RCRegulatoryLogger *)self logger];
  v2 = getCTGreenTeaOsLogHandle();
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_272442000, v3, OS_LOG_TYPE_INFO, "Reading some audio data", v4, 2u);
  }
}

- (void)transmittingAudioData
{
  [(RCRegulatoryLogger *)self logger];
  v2 = getCTGreenTeaOsLogHandle();
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_272442000, v3, OS_LOG_TYPE_INFO, "Transmitting some audio data", v4, 2u);
  }
}

@end