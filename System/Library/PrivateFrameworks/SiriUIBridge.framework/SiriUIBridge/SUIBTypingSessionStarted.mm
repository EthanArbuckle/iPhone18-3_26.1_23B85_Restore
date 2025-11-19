@interface SUIBTypingSessionStarted
- (SUIBTypingSessionStarted)initWithBuilder:(id)a3;
- (SUIBTypingSessionStarted)initWithCoder:(id)a3;
@end

@implementation SUIBTypingSessionStarted

- (SUIBTypingSessionStarted)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUIBTypingSessionStarted;
  v5 = [(SUIBTypingSessionStarted *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(SUIBTypingSessionStartedMutation);
    v4[2](v4, v7);
    v8 = [(SUIBTypingSessionStartedMutation *)v7 typingSessionId];
    v9 = [v8 copy];
    typingSessionId = v6->_typingSessionId;
    v6->_typingSessionId = v9;
  }

  return v6;
}

- (SUIBTypingSessionStarted)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBTypingSessionStarted::typingSessionId"];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__SUIBTypingSessionStarted_initWithCoder___block_invoke;
  v9[3] = &unk_2784BFF28;
  v10 = v5;
  v6 = v5;
  v7 = [(SUIBTypingSessionStarted *)self initWithBuilder:v9];

  return v7;
}

@end