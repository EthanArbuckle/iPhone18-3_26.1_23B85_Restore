@interface UIFont(Weather)
- (id)wa_bold;
@end

@implementation UIFont(Weather)

- (id)wa_bold
{
  fontDescriptor = [self fontDescriptor];
  v2 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

@end