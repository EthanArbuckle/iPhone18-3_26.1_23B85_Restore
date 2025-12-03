@interface SFResultGradingFeedback
- (SFResultGradingFeedback)initWithCoder:(id)coder;
- (SFResultGradingFeedback)initWithResult:(id)result grade:(unint64_t)grade textFeedback:(id)feedback;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFResultGradingFeedback

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SFResultGradingFeedback allocWithZone:zone];
  result = [(SFResultFeedback *)self result];
  v6 = [(SFResultGradingFeedback *)v4 initWithResult:result grade:self->_grade textFeedback:self->_textFeedback];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFResultGradingFeedback;
  coderCopy = coder;
  [(SFResultFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_grade forKey:{@"_grade", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_textFeedback forKey:@"_textFeedback"];
}

- (SFResultGradingFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFResultGradingFeedback;
  v5 = [(SFResultFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_grade = [coderCopy decodeIntegerForKey:@"_grade"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_textFeedback"];
    textFeedback = v5->_textFeedback;
    v5->_textFeedback = v6;
  }

  return v5;
}

- (SFResultGradingFeedback)initWithResult:(id)result grade:(unint64_t)grade textFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v14.receiver = self;
  v14.super_class = SFResultGradingFeedback;
  v9 = [(SFResultFeedback *)&v14 initWithResult:result];
  v10 = v9;
  if (v9)
  {
    v9->_grade = grade;
    v11 = [feedbackCopy copy];
    textFeedback = v10->_textFeedback;
    v10->_textFeedback = v11;
  }

  return v10;
}

@end