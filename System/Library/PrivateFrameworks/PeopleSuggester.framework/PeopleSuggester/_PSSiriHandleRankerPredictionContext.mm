@interface _PSSiriHandleRankerPredictionContext
- (NSDate)suggestionDate;
- (_PSSiriHandleRankerPredictionContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSSiriHandleRankerPredictionContext

- (NSDate)suggestionDate
{
  suggestionDate = self->_suggestionDate;
  if (!suggestionDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    v5 = self->_suggestionDate;
    self->_suggestionDate = date;

    suggestionDate = self->_suggestionDate;
  }

  return suggestionDate;
}

- (_PSSiriHandleRankerPredictionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _PSSiriHandleRankerPredictionContext;
  v5 = [(_PSSiriHandleRankerPredictionContext *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionDate"];
    suggestionDate = v5->_suggestionDate;
    v5->_suggestionDate = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"bundleIds"];
    bundleIds = v5->_bundleIds;
    v5->_bundleIds = v11;

    v5->_domain = [coderCopy decodeInt64ForKey:@"domain"];
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  suggestionDate = self->_suggestionDate;
  coderCopy = coder;
  [coderCopy encodeObject:suggestionDate forKey:@"suggestionDate"];
  [coderCopy encodeObject:self->_bundleIds forKey:@"bundleIds"];
  [coderCopy encodeInt64:self->_domain forKey:@"domain"];
}

@end