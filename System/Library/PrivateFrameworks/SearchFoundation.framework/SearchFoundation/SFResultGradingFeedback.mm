@interface SFResultGradingFeedback
- (SFResultGradingFeedback)initWithCoder:(id)a3;
- (SFResultGradingFeedback)initWithResult:(id)a3 grade:(unint64_t)a4 textFeedback:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFResultGradingFeedback

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SFResultGradingFeedback allocWithZone:a3];
  v5 = [(SFResultFeedback *)self result];
  v6 = [(SFResultGradingFeedback *)v4 initWithResult:v5 grade:self->_grade textFeedback:self->_textFeedback];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFResultGradingFeedback;
  v4 = a3;
  [(SFResultFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_grade forKey:{@"_grade", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_textFeedback forKey:@"_textFeedback"];
}

- (SFResultGradingFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFResultGradingFeedback;
  v5 = [(SFResultFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_grade = [v4 decodeIntegerForKey:@"_grade"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_textFeedback"];
    textFeedback = v5->_textFeedback;
    v5->_textFeedback = v6;
  }

  return v5;
}

- (SFResultGradingFeedback)initWithResult:(id)a3 grade:(unint64_t)a4 textFeedback:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = SFResultGradingFeedback;
  v9 = [(SFResultFeedback *)&v14 initWithResult:a3];
  v10 = v9;
  if (v9)
  {
    v9->_grade = a4;
    v11 = [v8 copy];
    textFeedback = v10->_textFeedback;
    v10->_textFeedback = v11;
  }

  return v10;
}

@end