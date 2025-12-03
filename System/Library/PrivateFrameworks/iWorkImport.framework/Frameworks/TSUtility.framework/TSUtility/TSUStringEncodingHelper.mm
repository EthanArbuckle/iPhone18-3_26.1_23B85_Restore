@interface TSUStringEncodingHelper
+ (NSArray)localizedEncodingNames;
+ (id)localizedNameOfStringEncoding:(unint64_t)encoding;
+ (id)p_fallbackNameForEncoding:(unint64_t)encoding;
+ (unint64_t)encodingForLocalizedName:(id)name;
+ (void)p_initializeEncodings;
@end

@implementation TSUStringEncodingHelper

+ (id)p_fallbackNameForEncoding:(unint64_t)encoding
{
  v4 = [MEMORY[0x277CCACA8] localizedNameOfStringEncoding:?];
  encoding = v4;
  if (!v4 || [v4 isEqualToString:&stru_28862C2A0])
  {
    v6 = qword_280A63D18;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:encoding];
    v8 = [v6 objectForKeyedSubscript:v7];
    unsignedIntValue = [v8 unsignedIntValue];

    v10 = CFStringGetNameOfEncoding(unsignedIntValue);

    if (v10 && ![v10 isEqualToString:&stru_28862C2A0])
    {
      encoding = v10;
    }

    else
    {
      encoding = [MEMORY[0x277CCACA8] stringWithFormat:@"(Encoding %tu)", encoding];
    }
  }

  return encoding;
}

+ (void)p_initializeEncodings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770AE740;
  block[3] = &unk_27A701A20;
  block[4] = self;
  if (qword_280A63D30 != -1)
  {
    dispatch_once(&qword_280A63D30, block);
  }
}

+ (NSArray)localizedEncodingNames
{
  [self p_initializeEncodings];
  v2 = qword_280A63D28;

  return v2;
}

+ (id)localizedNameOfStringEncoding:(unint64_t)encoding
{
  [self p_initializeEncodings];
  v5 = qword_280A63D18;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:encoding];
  v7 = [v5 objectForKeyedSubscript:v6];

  unsignedIntValue = [v7 unsignedIntValue];
  if (v7)
  {
    v9 = unsignedIntValue == -1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUStringEncodingHelper localizedNameOfStringEncoding:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTextEncodingTools.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:407 isFatal:0 description:"Can't translate encoding %tu!", encoding];
  }

  else
  {
    v12 = qword_280A63D10;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:unsignedIntValue];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (v14 && ![v14 isEqualToString:&stru_28862C2A0])
    {
      goto LABEL_12;
    }

    v15 = [self p_fallbackNameForEncoding:encoding];

    v14 = v15;
    if (v15)
    {
      goto LABEL_12;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUStringEncodingHelper localizedNameOfStringEncoding:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTextEncodingTools.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:416 isFatal:0 description:"Can't find localized name for encoding %tu!", encoding];
  }

  +[TSUAssertionHandler logBacktraceThrottled];
  v14 = 0;
LABEL_12:

  return v14;
}

+ (unint64_t)encodingForLocalizedName:(id)name
{
  nameCopy = name;
  [self p_initializeEncodings];
  v5 = [qword_280A63D20 objectForKeyedSubscript:nameCopy];
  integerValue = [v5 integerValue];

  if (!integerValue)
  {
    sub_2771140D4(nameCopy, v7, v8, v9, v10, v11, v12, v13);
  }

  return integerValue;
}

@end