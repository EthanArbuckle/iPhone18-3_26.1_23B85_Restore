@interface MCDeleteInput
- (MCDeleteInput)initWithDeletedText:(id)text deleteBySyllable:(BOOL)syllable shouldDeleteAcceptCandidateInput:(BOOL)input;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MCDeleteInput

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = MCDeleteInput;
  v5 = [(MCKeyboardInput *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_deletedText copyWithZone:zone];
    v7 = v5[5];
    v5[5] = v6;

    *(v5 + 32) = self->_deleteBySyllable;
    *(v5 + 33) = self->_shouldDeleteAcceptCandidateInput;
  }

  return v5;
}

- (MCDeleteInput)initWithDeletedText:(id)text deleteBySyllable:(BOOL)syllable shouldDeleteAcceptCandidateInput:(BOOL)input
{
  textCopy = text;
  v13.receiver = self;
  v13.super_class = MCDeleteInput;
  v10 = [(MCKeyboardInput *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_deletedText, text);
    v11->_deleteBySyllable = syllable;
    v11->_shouldDeleteAcceptCandidateInput = input;
  }

  return v11;
}

@end