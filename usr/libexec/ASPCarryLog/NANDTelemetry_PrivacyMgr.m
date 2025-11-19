@interface NANDTelemetry_PrivacyMgr
- (BOOL)allowTelemetry;
@end

@implementation NANDTelemetry_PrivacyMgr

- (BOOL)allowTelemetry
{
  if (os_variant_has_factory_content())
  {
    return 0;
  }

  if (os_variant_is_darwinos())
  {
    return 1;
  }

  return _DiagnosticLogSubmissionEnabled();
}

@end