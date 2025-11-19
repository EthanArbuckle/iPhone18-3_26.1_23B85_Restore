@interface _PSSiriHandleRankerPredictionContext
- (NSDate)suggestionDate;
- (_PSSiriHandleRankerPredictionContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSSiriHandleRankerPredictionContext

- (NSDate)suggestionDate
{
  suggestionDate = self->_suggestionDate;
  if (!suggestionDate)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = self->_suggestionDate;
    self->_suggestionDate = v4;

    suggestionDate = self->_suggestionDate;
  }

  return suggestionDate;
}

- (_PSSiriHandleRankerPredictionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _PSSiriHandleRankerPredictionContext;
  v5 = [(_PSSiriHandleRankerPredictionContext *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionDate"];
    suggestionDate = v5->_suggestionDate;
    v5->_suggestionDate = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"bundleIds"];
    bundleIds = v5->_bundleIds;
    v5->_bundleIds = v11;

    v5->_domain = [v4 decodeInt64ForKey:@"domain"];
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  suggestionDate = self->_suggestionDate;
  v5 = a3;
  [v5 encodeObject:suggestionDate forKey:@"suggestionDate"];
  [v5 encodeObject:self->_bundleIds forKey:@"bundleIds"];
  [v5 encodeInt64:self->_domain forKey:@"domain"];
}

@end