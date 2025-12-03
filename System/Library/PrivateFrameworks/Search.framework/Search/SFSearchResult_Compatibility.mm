@interface SFSearchResult_Compatibility
- (NSString)compatibilityTitle;
- (id)debugDescription;
- (id)simpleTitle;
- (id)uniqueIdentifier;
- (void)setCompatibilityTitle:(id)title;
- (void)setSimpleTitle:(id)title;
@end

@implementation SFSearchResult_Compatibility

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = SFSearchResult_Compatibility;
  v4 = [(SFSearchResult_SpotlightExtras *)&v12 debugDescription];
  sectionBundleIdentifier = [(SFSearchResult_Compatibility *)self sectionBundleIdentifier];
  title = [(SFSearchResult_Compatibility *)self title];
  text = [title text];
  score = [(SFSearchResult_SpotlightExtras *)self score];
  [(SFSearchResult_SpotlightExtras *)self score];
  v10 = [v3 stringWithFormat:@"%@ %@ %@ (0x%llx, 0x%llx)", v4, sectionBundleIdentifier, text, score, v9];

  return v10;
}

- (void)setCompatibilityTitle:(id)title
{
  v4 = MEMORY[0x1E69CA4F0];
  titleCopy = title;
  v6 = objc_alloc_init(v4);
  [(SFSearchResult_Compatibility *)self setTitle:v6];

  title = [(SFSearchResult_Compatibility *)self title];
  [title setText:titleCopy];
}

- (NSString)compatibilityTitle
{
  title = [(SFSearchResult_Compatibility *)self title];
  text = [title text];

  return text;
}

- (void)setSimpleTitle:(id)title
{
  titleCopy = title;
  title = [(SFSearchResult_Compatibility *)self title];

  if (!title)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CA4F0]);
    [(SFSearchResult_Compatibility *)self setTitle:v6];
  }

  title2 = [(SFSearchResult_Compatibility *)self title];
  [title2 setText:titleCopy];
}

- (id)simpleTitle
{
  v5.receiver = self;
  v5.super_class = SFSearchResult_Compatibility;
  title = [(SFSearchResult_Compatibility *)&v5 title];
  text = [title text];

  return text;
}

- (id)uniqueIdentifier
{
  identifier = [(SFSearchResult_Compatibility *)self identifier];
  v4 = identifier;
  if (identifier)
  {
    text = identifier;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFSearchResult_Compatibility;
    title = [(SFSearchResult_Compatibility *)&v8 title];
    text = [title text];
  }

  return text;
}

@end