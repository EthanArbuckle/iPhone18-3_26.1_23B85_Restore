@interface SFLateSectionsAppendedFeedback
- (SFLateSectionsAppendedFeedback)initWithCoder:(id)coder;
- (SFLateSectionsAppendedFeedback)initWithSections:(id)sections;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFLateSectionsAppendedFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFLateSectionsAppendedFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sections forKey:{@"_sections", v5.receiver, v5.super_class}];
}

- (SFLateSectionsAppendedFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SFLateSectionsAppendedFeedback;
  v5 = [(SFFeedback *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_sections"];
    sections = v5->_sections;
    v5->_sections = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SFLateSectionsAppendedFeedback;
  v4 = [(SFFeedback *)&v9 copyWithZone:zone];
  sections = [(SFLateSectionsAppendedFeedback *)self sections];
  v6 = [sections copy];
  v7 = v4[3];
  v4[3] = v6;

  return v4;
}

- (SFLateSectionsAppendedFeedback)initWithSections:(id)sections
{
  sectionsCopy = sections;
  v12.receiver = self;
  v12.super_class = SFLateSectionsAppendedFeedback;
  v5 = [(SFFeedback *)&v12 init];
  if (v5)
  {
    v6 = [sectionsCopy copy];
    sections = v5->_sections;
    v5->_sections = v6;

    firstObject = [(NSArray *)v5->_sections firstObject];
    results = [firstObject results];
    firstObject2 = [results firstObject];
    v5->super._queryId = [firstObject2 queryId];
  }

  return v5;
}

@end