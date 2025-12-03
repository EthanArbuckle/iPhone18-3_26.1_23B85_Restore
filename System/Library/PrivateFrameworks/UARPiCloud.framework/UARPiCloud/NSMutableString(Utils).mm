@interface NSMutableString(Utils)
- (void)appendWithTabDepth:()Utils format:;
@end

@implementation NSMutableString(Utils)

- (void)appendWithTabDepth:()Utils format:
{
  va_start(va, format);
  for (i = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, format, va); a3; --a3)
  {
    [self appendString:@"\t"];
  }

  [self appendString:i];
  CFRelease(i);
}

@end