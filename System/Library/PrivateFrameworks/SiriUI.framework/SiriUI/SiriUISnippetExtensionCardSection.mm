@interface SiriUISnippetExtensionCardSection
- (SiriUISnippetExtensionCardSection)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SiriUISnippetExtensionCardSection

- (SiriUISnippetExtensionCardSection)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SiriUISnippetExtensionCardSection;
  return [(SiriUILegacyCardSection *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end