@interface VSRecognitionAction
- (id)perform;
- (id)spokenFeedbackAttributedString;
- (id)spokenFeedbackString;
- (void)dealloc;
- (void)setResultDisplayString:(id)a3;
- (void)setSpokenFeedbackAttributedString:(id)a3;
- (void)setSpokenFeedbackString:(id)a3;
- (void)setStatusDisplayString:(id)a3;
@end

@implementation VSRecognitionAction

- (id)perform
{
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  v3 = *MEMORY[0x277CBEE30];
  userInfoValues = @"recognition action not implemented";
  userInfoKeys[0] = v3;
  v4 = CFErrorCreateWithUserInfoKeysAndValues(v2, @"VSErrorDomain", -4009, userInfoKeys, &userInfoValues, 1);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setSpokenFeedbackAttributedString:(id)a3
{
  stringValue = self->_spokenString.stringValue;
  if ((*(self + 40) & 1) == 0 || stringValue != a3)
  {

    self->_spokenString.stringValue = a3;
    *(self + 40) |= 1u;
  }
}

- (id)spokenFeedbackAttributedString
{
  if (*(self + 40))
  {
    return self->_spokenString.stringValue;
  }

  else
  {
    return 0;
  }
}

- (void)setSpokenFeedbackString:(id)a3
{
  stringValue = self->_spokenString.stringValue;
  if ((*(self + 40) & 1) != 0 || stringValue != a3)
  {

    self->_spokenString.stringValue = a3;
    *(self + 40) &= ~1u;
  }
}

- (id)spokenFeedbackString
{
  v2 = *(self + 40);
  result = self->_spokenString.stringValue;
  if (v2)
  {
    return [result string];
  }

  return result;
}

- (void)setStatusDisplayString:(id)a3
{
  statusString = self->_statusString;
  if (statusString != a3)
  {

    self->_statusString = a3;
  }
}

- (void)setResultDisplayString:(id)a3
{
  resultString = self->_resultString;
  if (resultString != a3)
  {

    self->_resultString = a3;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VSRecognitionAction;
  [(VSRecognitionAction *)&v3 dealloc];
}

@end