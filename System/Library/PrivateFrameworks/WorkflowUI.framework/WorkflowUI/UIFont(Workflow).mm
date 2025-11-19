@interface UIFont(Workflow)
+ (id)chicletDescriptionFont;
+ (id)chicletTitleFont;
+ (id)galleryCollectionSubtitleFont;
+ (id)galleryCollectionTitleFont;
+ (id)gallerySearchCollectionSubtitleFont;
+ (id)gallerySearchCollectionTitleFont;
+ (id)gallerySuggestionTextFont;
@end

@implementation UIFont(Workflow)

+ (id)chicletDescriptionFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits:0x8000];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)chicletTitleFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits:32770];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)gallerySuggestionTextFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits:0x8000];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)gallerySearchCollectionSubtitleFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits:0x8000];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)gallerySearchCollectionTitleFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits:2];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)galleryCollectionSubtitleFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits:0x8000];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)galleryCollectionTitleFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits:2];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

@end