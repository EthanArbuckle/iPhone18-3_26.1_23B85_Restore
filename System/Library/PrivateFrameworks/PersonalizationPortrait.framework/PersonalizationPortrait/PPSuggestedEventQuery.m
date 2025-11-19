@interface PPSuggestedEventQuery
- (PPSuggestedEventQuery)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSuggestedEventQuery

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PPEventQuery *)self fromDate];
  v5 = [(PPEventQuery *)self toDate];
  v6 = [v3 initWithFormat:@"<PPSuggestedEventQuery f:%@ t:%@ m:%@>", v4, v5, self->_matchingCategories];

  return v6;
}

- (PPSuggestedEventQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PPSuggestedEventQuery;
  v5 = [(PPEventQuery *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"mtcat"];
    matchingCategories = v5->_matchingCategories;
    v5->_matchingCategories = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PPSuggestedEventQuery;
  v4 = a3;
  [(PPEventQuery *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_matchingCategories forKey:{@"mtcat", v5.receiver, v5.super_class}];
}

@end