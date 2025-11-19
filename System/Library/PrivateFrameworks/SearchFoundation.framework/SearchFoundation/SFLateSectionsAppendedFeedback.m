@interface SFLateSectionsAppendedFeedback
- (SFLateSectionsAppendedFeedback)initWithCoder:(id)a3;
- (SFLateSectionsAppendedFeedback)initWithSections:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFLateSectionsAppendedFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFLateSectionsAppendedFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sections forKey:{@"_sections", v5.receiver, v5.super_class}];
}

- (SFLateSectionsAppendedFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFLateSectionsAppendedFeedback;
  v5 = [(SFFeedback *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_sections"];
    sections = v5->_sections;
    v5->_sections = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SFLateSectionsAppendedFeedback;
  v4 = [(SFFeedback *)&v9 copyWithZone:a3];
  v5 = [(SFLateSectionsAppendedFeedback *)self sections];
  v6 = [v5 copy];
  v7 = v4[3];
  v4[3] = v6;

  return v4;
}

- (SFLateSectionsAppendedFeedback)initWithSections:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFLateSectionsAppendedFeedback;
  v5 = [(SFFeedback *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    sections = v5->_sections;
    v5->_sections = v6;

    v8 = [(NSArray *)v5->_sections firstObject];
    v9 = [v8 results];
    v10 = [v9 firstObject];
    v5->super._queryId = [v10 queryId];
  }

  return v5;
}

@end