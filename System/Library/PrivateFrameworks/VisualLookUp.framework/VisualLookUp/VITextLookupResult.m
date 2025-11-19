@interface VITextLookupResult
- (BOOL)isEqual:(id)a3;
- (VITextLookupResult)initWithSections:(id)a3;
@end

@implementation VITextLookupResult

- (VITextLookupResult)initWithSections:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VITextLookupResult;
  v5 = [(VITextLookupResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sections = v5->_sections;
    v5->_sections = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sections = self->_sections;
  v13 = [v11 sections];
  LOBYTE(sections) = VIObjectIsEqual(sections, v13);

  return sections;
}

@end