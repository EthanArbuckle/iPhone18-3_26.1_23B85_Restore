@interface RFC3339DateFormatterInUTCWithIntegralSeconds
@end

@implementation RFC3339DateFormatterInUTCWithIntegralSeconds

void ___RFC3339DateFormatterInUTCWithIntegralSeconds_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1628;
  qword_1ED6D1628 = v0;

  v2 = qword_1ED6D1628;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [qword_1ED6D1628 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  v4 = qword_1ED6D1628;
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];
}

@end