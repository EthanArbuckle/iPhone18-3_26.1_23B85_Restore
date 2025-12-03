@interface PPSuggestedEventQuery
- (PPSuggestedEventQuery)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSuggestedEventQuery

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  fromDate = [(PPEventQuery *)self fromDate];
  toDate = [(PPEventQuery *)self toDate];
  v6 = [v3 initWithFormat:@"<PPSuggestedEventQuery f:%@ t:%@ m:%@>", fromDate, toDate, self->_matchingCategories];

  return v6;
}

- (PPSuggestedEventQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PPSuggestedEventQuery;
  v5 = [(PPEventQuery *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"mtcat"];
    matchingCategories = v5->_matchingCategories;
    v5->_matchingCategories = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PPSuggestedEventQuery;
  coderCopy = coder;
  [(PPEventQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_matchingCategories forKey:{@"mtcat", v5.receiver, v5.super_class}];
}

@end