@interface MOContextHistoryWriter
- (MOContextHistoryWriter)init;
- (void)saveContextResults:(id)results usingOptions:(id)options clientBundleId:(id)id clientAlternateId:(id)alternateId;
@end

@implementation MOContextHistoryWriter

- (MOContextHistoryWriter)init
{
  v3.receiver = self;
  v3.super_class = MOContextHistoryWriter;
  return [(MOContextHistoryWriter *)&v3 init];
}

- (void)saveContextResults:(id)results usingOptions:(id)options clientBundleId:(id)id clientAlternateId:(id)alternateId
{
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityContextCrossPlatform);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Context cross platform persistency sync unavailable", v7, 2u);
  }
}

@end