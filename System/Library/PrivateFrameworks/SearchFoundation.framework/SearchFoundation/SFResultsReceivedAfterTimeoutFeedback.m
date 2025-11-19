@interface SFResultsReceivedAfterTimeoutFeedback
- (SFResultsReceivedAfterTimeoutFeedback)initWithCoder:(id)a3;
- (SFResultsReceivedAfterTimeoutFeedback)initWithResults:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFResultsReceivedAfterTimeoutFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFResultsReceivedAfterTimeoutFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_results forKey:{@"_results", v5.receiver, v5.super_class}];
}

- (SFResultsReceivedAfterTimeoutFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFResultsReceivedAfterTimeoutFeedback;
  v5 = [(SFFeedback *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_results"];
    results = v5->_results;
    v5->_results = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SFResultsReceivedAfterTimeoutFeedback;
  v4 = [(SFFeedback *)&v9 copyWithZone:a3];
  v5 = [(SFResultsReceivedAfterTimeoutFeedback *)self results];
  v6 = [v5 copy];
  v7 = v4[3];
  v4[3] = v6;

  return v4;
}

- (SFResultsReceivedAfterTimeoutFeedback)initWithResults:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFResultsReceivedAfterTimeoutFeedback;
  v5 = [(SFFeedback *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    results = v5->_results;
    v5->_results = v6;
  }

  return v5;
}

@end