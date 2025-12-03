@interface SFCustomFeedback
- (SFCustomFeedback)initWithCoder:(id)coder;
- (SFCustomFeedback)initWithType:(unint64_t)type data:(id)data;
- (SFCustomFeedback)initWithType:(unint64_t)type jsonFeedback:(id)feedback;
- (void)encodeWithCoder:(id)coder;
- (void)setJsonFeedback:(id)feedback;
@end

@implementation SFCustomFeedback

- (void)setJsonFeedback:(id)feedback
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:feedback options:0 error:&v9];
  v5 = v9;
  data = self->_data;
  self->_data = v4;

  if (v5)
  {
    if (PARLogHandleForCategory_onceToken_34893 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_34893, &__block_literal_global_34894);
    }

    v7 = PARLogHandleForCategory_logHandles_1_34895;
    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_34895, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_1B116E000, v7, OS_LOG_TYPE_ERROR, "SFCustomFeedback: jsonFeedback did not serialize: %@.", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFCustomFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_feedbackType forKey:{@"feedback_type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_data forKey:@"_data"];
}

- (SFCustomFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFCustomFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_feedbackType = [coderCopy decodeIntegerForKey:@"feedback_type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (SFCustomFeedback)initWithType:(unint64_t)type data:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = SFCustomFeedback;
  v7 = [(SFFeedback *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_feedbackType = type;
    v9 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v9;
  }

  return v8;
}

- (SFCustomFeedback)initWithType:(unint64_t)type jsonFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v10.receiver = self;
  v10.super_class = SFCustomFeedback;
  v7 = [(SFFeedback *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_feedbackType = type;
    [(SFCustomFeedback *)v7 setJsonFeedback:feedbackCopy];
  }

  return v8;
}

@end