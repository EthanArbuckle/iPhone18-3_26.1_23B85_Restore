@interface PFLDiagnosticReporting
+ (id)reportingStringForIdentifier:(id)a3;
@end

@implementation PFLDiagnosticReporting

+ (id)reportingStringForIdentifier:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[PFLDiagnosticReporting reportingStringForIdentifier:];
  }

  return 0;
}

@end