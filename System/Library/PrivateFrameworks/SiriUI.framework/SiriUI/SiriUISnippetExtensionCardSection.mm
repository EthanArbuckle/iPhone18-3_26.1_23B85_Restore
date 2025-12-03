@interface SiriUISnippetExtensionCardSection
- (SiriUISnippetExtensionCardSection)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SiriUISnippetExtensionCardSection

- (SiriUISnippetExtensionCardSection)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SiriUISnippetExtensionCardSection;
  return [(SiriUILegacyCardSection *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end