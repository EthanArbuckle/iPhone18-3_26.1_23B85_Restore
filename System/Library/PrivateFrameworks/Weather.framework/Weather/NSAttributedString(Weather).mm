@interface NSAttributedString(Weather)
- (id)wa_font;
@end

@implementation NSAttributedString(Weather)

- (id)wa_font
{
  v1 = [a1 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
  if (!v1)
  {
    v2 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] systemFontSize];
    v1 = [v2 systemFontOfSize:?];
  }

  return v1;
}

@end