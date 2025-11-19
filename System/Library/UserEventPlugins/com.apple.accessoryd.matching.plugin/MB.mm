@interface MB
@end

@implementation MB

void ___generateUART_MB_AIDB_AccessoryConnectionStatisticsEvent_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = @"com.apple.accessories.connection.statistics";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "CoreAnalytics event: %@\neventDict: %@", &v9, 0x16u);
  }

  v6 = *(a1 + 32);
  AnalyticsSendEvent();
  v7 = *(a1 + 32);
  AnalyticsSendEvent();
  if (systemInfo_isInternalBuild())
  {
    v8 = [ACCAnalytics loggerForUser:0];
    [v8 logACCAnalyticsForEventNamed:@"accessoryConnectionStatistics" withAttributes:*(a1 + 32)];
  }
}

@end