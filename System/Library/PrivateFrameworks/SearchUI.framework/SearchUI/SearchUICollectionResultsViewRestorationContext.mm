@interface SearchUICollectionResultsViewRestorationContext
- (SearchUICollectionResultsViewRestorationContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SearchUICollectionResultsViewRestorationContext

- (SearchUICollectionResultsViewRestorationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SearchUICollectionResultsViewRestorationContext;
  v5 = [(SearchUICollectionViewRestorationContext *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SearchUICollectionResultsViewRestorationContext;
  coderCopy = coder;
  [(SearchUICollectionViewRestorationContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sections forKey:{@"sections", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SearchUICollectionResultsViewRestorationContext;
  v4 = [(SearchUICollectionViewRestorationContext *)&v7 copyWithZone:zone];
  sections = [(SearchUICollectionResultsViewRestorationContext *)self sections];
  [v4 setSections:sections];

  return v4;
}

@end