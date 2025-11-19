@interface NSString(MimeEnrichedReader)
+ (id)mf_stringFromMimeEnrichedString:()MimeEnrichedReader asHTML:;
+ (id)mf_stringFromMimeRichTextString:()MimeEnrichedReader asHTML:;
@end

@implementation NSString(MimeEnrichedReader)

+ (id)mf_stringFromMimeRichTextString:()MimeEnrichedReader asHTML:
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (v5)
  {
    v7 = objc_alloc_init(MFMimeEnrichedReader);
    [(MFMimeEnrichedReader *)v7 setWantsHTML:a4];
    [(MFMimeEnrichedReader *)v7 convertRichTextString:v5 intoOutputString:v6];
  }

  return v6;
}

+ (id)mf_stringFromMimeEnrichedString:()MimeEnrichedReader asHTML:
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (v5)
  {
    v7 = objc_alloc_init(MFMimeEnrichedReader);
    [(MFMimeEnrichedReader *)v7 setWantsHTML:a4];
    [(MFMimeEnrichedReader *)v7 convertEnrichedString:v5 intoOutputString:v6];
  }

  return v6;
}

@end