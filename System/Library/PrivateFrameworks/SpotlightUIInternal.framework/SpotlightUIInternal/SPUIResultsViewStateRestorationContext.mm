@interface SPUIResultsViewStateRestorationContext
- (SPUIResultsViewStateRestorationContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPUIResultsViewStateRestorationContext

- (SPUIResultsViewStateRestorationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SPUIResultsViewStateRestorationContext;
  v5 = [(SearchUICollectionResultsViewRestorationContext *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    searchString = v5->_searchString;
    v5->_searchString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchEntity"];
    searchEntity = v5->_searchEntity;
    v5->_searchEntity = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SPUIResultsViewStateRestorationContext;
  coderCopy = coder;
  [(SearchUICollectionResultsViewRestorationContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_searchString forKey:{@"searchString", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_searchEntity forKey:@"searchEntity"];
}

@end