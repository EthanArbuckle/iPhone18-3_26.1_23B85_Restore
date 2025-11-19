@interface SFSearchResult_Compatibility
- (NSString)compatibilityTitle;
- (id)debugDescription;
- (id)simpleTitle;
- (id)uniqueIdentifier;
- (void)setCompatibilityTitle:(id)a3;
- (void)setSimpleTitle:(id)a3;
@end

@implementation SFSearchResult_Compatibility

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = SFSearchResult_Compatibility;
  v4 = [(SFSearchResult_SpotlightExtras *)&v12 debugDescription];
  v5 = [(SFSearchResult_Compatibility *)self sectionBundleIdentifier];
  v6 = [(SFSearchResult_Compatibility *)self title];
  v7 = [v6 text];
  v8 = [(SFSearchResult_SpotlightExtras *)self score];
  [(SFSearchResult_SpotlightExtras *)self score];
  v10 = [v3 stringWithFormat:@"%@ %@ %@ (0x%llx, 0x%llx)", v4, v5, v7, v8, v9];

  return v10;
}

- (void)setCompatibilityTitle:(id)a3
{
  v4 = MEMORY[0x1E69CA4F0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [(SFSearchResult_Compatibility *)self setTitle:v6];

  v7 = [(SFSearchResult_Compatibility *)self title];
  [v7 setText:v5];
}

- (NSString)compatibilityTitle
{
  v2 = [(SFSearchResult_Compatibility *)self title];
  v3 = [v2 text];

  return v3;
}

- (void)setSimpleTitle:(id)a3
{
  v4 = a3;
  v5 = [(SFSearchResult_Compatibility *)self title];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CA4F0]);
    [(SFSearchResult_Compatibility *)self setTitle:v6];
  }

  v7 = [(SFSearchResult_Compatibility *)self title];
  [v7 setText:v4];
}

- (id)simpleTitle
{
  v5.receiver = self;
  v5.super_class = SFSearchResult_Compatibility;
  v2 = [(SFSearchResult_Compatibility *)&v5 title];
  v3 = [v2 text];

  return v3;
}

- (id)uniqueIdentifier
{
  v3 = [(SFSearchResult_Compatibility *)self identifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFSearchResult_Compatibility;
    v6 = [(SFSearchResult_Compatibility *)&v8 title];
    v5 = [v6 text];
  }

  return v5;
}

@end