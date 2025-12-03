@interface VITextLookupResult
- (BOOL)isEqual:(id)equal;
- (VITextLookupResult)initWithSections:(id)sections;
@end

@implementation VITextLookupResult

- (VITextLookupResult)initWithSections:(id)sections
{
  sectionsCopy = sections;
  v9.receiver = self;
  v9.super_class = VITextLookupResult;
  v5 = [(VITextLookupResult *)&v9 init];
  if (v5)
  {
    v6 = [sectionsCopy copy];
    sections = v5->_sections;
    v5->_sections = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = equalCopy;
  }

  else
  {
    v11 = 0;
  }

  sections = self->_sections;
  sections = [v11 sections];
  LOBYTE(sections) = VIObjectIsEqual(sections, sections);

  return sections;
}

@end