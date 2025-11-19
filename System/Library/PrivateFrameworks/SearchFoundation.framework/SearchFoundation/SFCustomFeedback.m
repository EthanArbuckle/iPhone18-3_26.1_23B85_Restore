@interface SFCustomFeedback
- (SFCustomFeedback)initWithCoder:(id)a3;
- (SFCustomFeedback)initWithType:(unint64_t)a3 data:(id)a4;
- (SFCustomFeedback)initWithType:(unint64_t)a3 jsonFeedback:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setJsonFeedback:(id)a3;
@end

@implementation SFCustomFeedback

- (void)setJsonFeedback:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:0 error:&v9];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFCustomFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_feedbackType forKey:{@"feedback_type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_data forKey:@"_data"];
}

- (SFCustomFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCustomFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_feedbackType = [v4 decodeIntegerForKey:@"feedback_type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (SFCustomFeedback)initWithType:(unint64_t)a3 data:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SFCustomFeedback;
  v7 = [(SFFeedback *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_feedbackType = a3;
    v9 = [v6 copy];
    data = v8->_data;
    v8->_data = v9;
  }

  return v8;
}

- (SFCustomFeedback)initWithType:(unint64_t)a3 jsonFeedback:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SFCustomFeedback;
  v7 = [(SFFeedback *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_feedbackType = a3;
    [(SFCustomFeedback *)v7 setJsonFeedback:v6];
  }

  return v8;
}

@end