@interface OKJavaScriptConsole
+ (void)log:(id)a3;
+ (void)warn:(id)a3;
@end

@implementation OKJavaScriptConsole

+ (void)log:(id)a3
{
  if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Javascript/OKJavaScriptConsole.m" line:15 andFormat:@"JavaScript: %@", a3];
  }
}

+ (void)warn:(id)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Javascript/OKJavaScriptConsole.m" line:20 andFormat:@"JavaScript: %@", a3];
  }
}

@end