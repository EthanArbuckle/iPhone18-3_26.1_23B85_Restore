@interface SSArchiveViewCardSection
- (SSArchiveViewCardSection)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSArchiveViewCardSection

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SSArchiveViewCardSection;
  coderCopy = coder;
  [(SFArchiveViewCardSection *)&v8 encodeWithCoder:coderCopy];
  v5 = [(SSArchiveViewCardSection *)self attributeSet:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"attributeSet"];

  [coderCopy encodeBool:-[SSArchiveViewCardSection isTopHit](self forKey:{"isTopHit"), @"isTopHit"}];
  searchString = [(SSArchiveViewCardSection *)self searchString];
  [coderCopy encodeObject:searchString forKey:@"searchString"];

  fallbackCardSection = [(SSArchiveViewCardSection *)self fallbackCardSection];
  [coderCopy encodeObject:fallbackCardSection forKey:@"fallbackCardSection"];
}

- (SSArchiveViewCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SSArchiveViewCardSection;
  v5 = [(SFArchiveViewCardSection *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributeSet"];
    [(SSArchiveViewCardSection *)v5 setAttributeSet:v6];

    -[SSArchiveViewCardSection setIsTopHit:](v5, "setIsTopHit:", [coderCopy decodeBoolForKey:@"isTopHit"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    [(SSArchiveViewCardSection *)v5 setSearchString:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fallbackCardSection"];
    [(SSArchiveViewCardSection *)v5 setFallbackCardSection:v8];
  }

  return v5;
}

@end