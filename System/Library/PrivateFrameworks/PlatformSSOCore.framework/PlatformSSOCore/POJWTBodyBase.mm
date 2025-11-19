@interface POJWTBodyBase
@end

@implementation POJWTBodyBase

id __34___POJWTBodyBase_initWithJWTData___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error with JWT body data."];
  if (PO_LOG_POJWTBody_once != -1)
  {
    __34___POJWTBodyBase_initWithJWTData___block_invoke_cold_1();
  }

  v2 = PO_LOG_POJWTBody_log;
  if (os_log_type_enabled(PO_LOG_POJWTBody_log, OS_LOG_TYPE_ERROR))
  {
    __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(v1, v2);
  }

  return v1;
}

@end