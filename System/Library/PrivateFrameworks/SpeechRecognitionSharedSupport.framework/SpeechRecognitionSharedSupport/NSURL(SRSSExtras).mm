@interface NSURL(SRSSExtras)
+ (id)URLWithStringAndDataDetection:()SRSSExtras;
@end

@implementation NSURL(SRSSExtras)

+ (id)URLWithStringAndDataDetection:()SRSSExtras
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  scheme = [v4 scheme];

  if (scheme)
  {
    v6 = v4;
  }

  else
  {
    v7 = [MEMORY[0x277CCA948] dataDetectorWithTypes:32 error:0];
    v8 = [v7 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
    v6 = 0;
    if ([v8 resultType] == 32)
    {
      v6 = [v8 URL];
    }
  }

  return v6;
}

@end