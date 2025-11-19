@interface SSArchiveViewCardSection
- (SSArchiveViewCardSection)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSArchiveViewCardSection

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SSArchiveViewCardSection;
  v4 = a3;
  [(SFArchiveViewCardSection *)&v8 encodeWithCoder:v4];
  v5 = [(SSArchiveViewCardSection *)self attributeSet:v8.receiver];
  [v4 encodeObject:v5 forKey:@"attributeSet"];

  [v4 encodeBool:-[SSArchiveViewCardSection isTopHit](self forKey:{"isTopHit"), @"isTopHit"}];
  v6 = [(SSArchiveViewCardSection *)self searchString];
  [v4 encodeObject:v6 forKey:@"searchString"];

  v7 = [(SSArchiveViewCardSection *)self fallbackCardSection];
  [v4 encodeObject:v7 forKey:@"fallbackCardSection"];
}

- (SSArchiveViewCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SSArchiveViewCardSection;
  v5 = [(SFArchiveViewCardSection *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributeSet"];
    [(SSArchiveViewCardSection *)v5 setAttributeSet:v6];

    -[SSArchiveViewCardSection setIsTopHit:](v5, "setIsTopHit:", [v4 decodeBoolForKey:@"isTopHit"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    [(SSArchiveViewCardSection *)v5 setSearchString:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fallbackCardSection"];
    [(SSArchiveViewCardSection *)v5 setFallbackCardSection:v8];
  }

  return v5;
}

@end