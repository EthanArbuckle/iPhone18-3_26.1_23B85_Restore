@interface NSError(TSUIO)
+ (id)tsu_IOErrorWithCode:()TSUIO;
+ (id)tsu_IOReadErrorWithErrno:()TSUIO;
+ (id)tsu_IOWriteErrorWithErrno:()TSUIO;
@end

@implementation NSError(TSUIO)

+ (id)tsu_IOErrorWithCode:()TSUIO
{
  if (!a3)
  {
    v5 = @"An error occurred while reading";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v5 = @"An error occurred while writing";
LABEL_5:
    v6 = SFUBundle();
    v7 = [v6 localizedStringForKey:v5 value:&stru_287DDF830 table:@"TSUtility"];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  v8 = [self tsu_errorWithDomain:@"com.apple.iwork.TSUIO" code:a3 alertTitle:v7 alertMessage:0];

  return v8;
}

+ (id)tsu_IOReadErrorWithErrno:()TSUIO
{
  v5 = MEMORY[0x277CCACA8];
  v6 = SFUBundle();
  v7 = [v6 localizedStringForKey:@"An error occurred while reading: %s" value:&stru_287DDF830 table:@"TSUtility"];
  v8 = [v5 stringWithFormat:v7, strerror(a3)];

  v9 = [self tsu_errorWithDomain:@"com.apple.iwork.TSUIO" code:0 alertTitle:v8 alertMessage:0];

  return v9;
}

+ (id)tsu_IOWriteErrorWithErrno:()TSUIO
{
  v5 = MEMORY[0x277CCACA8];
  v6 = SFUBundle();
  v7 = [v6 localizedStringForKey:@"An error occurred while writing: %s" value:&stru_287DDF830 table:@"TSUtility"];
  v8 = [v5 stringWithFormat:v7, strerror(a3)];

  v9 = [self tsu_errorWithDomain:@"com.apple.iwork.TSUIO" code:1 alertTitle:v8 alertMessage:0];

  return v9;
}

@end