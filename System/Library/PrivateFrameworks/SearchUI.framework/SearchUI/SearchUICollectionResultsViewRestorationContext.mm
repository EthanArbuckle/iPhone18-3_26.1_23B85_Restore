@interface SearchUICollectionResultsViewRestorationContext
- (SearchUICollectionResultsViewRestorationContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SearchUICollectionResultsViewRestorationContext

- (SearchUICollectionResultsViewRestorationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SearchUICollectionResultsViewRestorationContext;
  v5 = [(SearchUICollectionViewRestorationContext *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SearchUICollectionResultsViewRestorationContext;
  v4 = a3;
  [(SearchUICollectionViewRestorationContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sections forKey:{@"sections", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SearchUICollectionResultsViewRestorationContext;
  v4 = [(SearchUICollectionViewRestorationContext *)&v7 copyWithZone:a3];
  v5 = [(SearchUICollectionResultsViewRestorationContext *)self sections];
  [v4 setSections:v5];

  return v4;
}

@end