@interface SFResultsReceivedAfterTimeoutFeedback
- (SFResultsReceivedAfterTimeoutFeedback)initWithCoder:(id)coder;
- (SFResultsReceivedAfterTimeoutFeedback)initWithResults:(id)results;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFResultsReceivedAfterTimeoutFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFResultsReceivedAfterTimeoutFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_results forKey:{@"_results", v5.receiver, v5.super_class}];
}

- (SFResultsReceivedAfterTimeoutFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SFResultsReceivedAfterTimeoutFeedback;
  v5 = [(SFFeedback *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_results"];
    results = v5->_results;
    v5->_results = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SFResultsReceivedAfterTimeoutFeedback;
  v4 = [(SFFeedback *)&v9 copyWithZone:zone];
  results = [(SFResultsReceivedAfterTimeoutFeedback *)self results];
  v6 = [results copy];
  v7 = v4[3];
  v4[3] = v6;

  return v4;
}

- (SFResultsReceivedAfterTimeoutFeedback)initWithResults:(id)results
{
  resultsCopy = results;
  v9.receiver = self;
  v9.super_class = SFResultsReceivedAfterTimeoutFeedback;
  v5 = [(SFFeedback *)&v9 init];
  if (v5)
  {
    v6 = [resultsCopy copy];
    results = v5->_results;
    v5->_results = v6;
  }

  return v5;
}

@end