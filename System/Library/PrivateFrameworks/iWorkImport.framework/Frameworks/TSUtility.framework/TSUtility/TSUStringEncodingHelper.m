@interface TSUStringEncodingHelper
+ (NSArray)localizedEncodingNames;
+ (id)localizedNameOfStringEncoding:(unint64_t)a3;
+ (id)p_fallbackNameForEncoding:(unint64_t)a3;
+ (unint64_t)encodingForLocalizedName:(id)a3;
+ (void)p_initializeEncodings;
@end

@implementation TSUStringEncodingHelper

+ (id)p_fallbackNameForEncoding:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] localizedNameOfStringEncoding:?];
  v5 = v4;
  if (!v4 || [v4 isEqualToString:&stru_28862C2A0])
  {
    v6 = qword_280A63D18;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v8 = [v6 objectForKeyedSubscript:v7];
    v9 = [v8 unsignedIntValue];

    v10 = CFStringGetNameOfEncoding(v9);

    if (v10 && ![v10 isEqualToString:&stru_28862C2A0])
    {
      v5 = v10;
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(Encoding %tu)", a3];
    }
  }

  return v5;
}

+ (void)p_initializeEncodings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770AE740;
  block[3] = &unk_27A701A20;
  block[4] = a1;
  if (qword_280A63D30 != -1)
  {
    dispatch_once(&qword_280A63D30, block);
  }
}

+ (NSArray)localizedEncodingNames
{
  [a1 p_initializeEncodings];
  v2 = qword_280A63D28;

  return v2;
}

+ (id)localizedNameOfStringEncoding:(unint64_t)a3
{
  [a1 p_initializeEncodings];
  v5 = qword_280A63D18;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 unsignedIntValue];
  if (v7)
  {
    v9 = v8 == -1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUStringEncodingHelper localizedNameOfStringEncoding:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTextEncodingTools.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:407 isFatal:0 description:"Can't translate encoding %tu!", a3];
  }

  else
  {
    v12 = qword_280A63D10;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (v14 && ![v14 isEqualToString:&stru_28862C2A0])
    {
      goto LABEL_12;
    }

    v15 = [a1 p_fallbackNameForEncoding:a3];

    v14 = v15;
    if (v15)
    {
      goto LABEL_12;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUStringEncodingHelper localizedNameOfStringEncoding:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTextEncodingTools.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:416 isFatal:0 description:"Can't find localized name for encoding %tu!", a3];
  }

  +[TSUAssertionHandler logBacktraceThrottled];
  v14 = 0;
LABEL_12:

  return v14;
}

+ (unint64_t)encodingForLocalizedName:(id)a3
{
  v4 = a3;
  [a1 p_initializeEncodings];
  v5 = [qword_280A63D20 objectForKeyedSubscript:v4];
  v6 = [v5 integerValue];

  if (!v6)
  {
    sub_2771140D4(v4, v7, v8, v9, v10, v11, v12, v13);
  }

  return v6;
}

@end