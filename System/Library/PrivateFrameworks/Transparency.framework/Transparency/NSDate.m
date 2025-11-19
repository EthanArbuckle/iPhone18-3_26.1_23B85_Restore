@interface NSDate
@end

@implementation NSDate

void __40__NSDate_TransparencyDate__kt_fuzzyDate__block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D868]];
  v1 = kt_fuzzyDate_zulu;
  kt_fuzzyDate_zulu = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [kt_fuzzyDate_zulu setTimeZone:v2];
}

@end