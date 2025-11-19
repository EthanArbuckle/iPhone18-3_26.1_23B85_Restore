@interface SPUIResultsViewStateRestorationContext
- (SPUIResultsViewStateRestorationContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPUIResultsViewStateRestorationContext

- (SPUIResultsViewStateRestorationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SPUIResultsViewStateRestorationContext;
  v5 = [(SearchUICollectionResultsViewRestorationContext *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    searchString = v5->_searchString;
    v5->_searchString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchEntity"];
    searchEntity = v5->_searchEntity;
    v5->_searchEntity = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SPUIResultsViewStateRestorationContext;
  v4 = a3;
  [(SearchUICollectionResultsViewRestorationContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_searchString forKey:{@"searchString", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_searchEntity forKey:@"searchEntity"];
}

@end