@interface UTType(SUISPasteboardUtilities)
- (uint64_t)SUIS_conformsToImageOrPDF;
@end

@implementation UTType(SUISPasteboardUtilities)

- (uint64_t)SUIS_conformsToImageOrPDF
{
  if ([self conformsToType:*MEMORY[0x277CE1DB0]])
  {
    return 1;
  }

  v3 = *MEMORY[0x277CE1E08];

  return [self conformsToType:v3];
}

@end