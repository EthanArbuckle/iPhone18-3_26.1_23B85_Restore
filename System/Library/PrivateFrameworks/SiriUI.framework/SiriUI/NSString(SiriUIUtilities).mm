@interface NSString(SiriUIUtilities)
- (id)siriUIAttributedStringWithSubscriptAtRange:()SiriUIUtilities font:;
@end

@implementation NSString(SiriUIUtilities)

- (id)siriUIAttributedStringWithSubscriptAtRange:()SiriUIUtilities font:
{
  v8 = MEMORY[0x277CCAB48];
  v9 = a5;
  v10 = [[v8 alloc] initWithString:self];
  v11 = [v9 _fontScaledByScaleFactor:0.5];

  [v10 addAttribute:*MEMORY[0x277D740A8] value:v11 range:{a3, a4}];
  [v10 addAttribute:*MEMORY[0x277D74078] value:&unk_287A0D578 range:{a3, a4}];

  return v10;
}

@end