@interface MCDeleteInput
- (MCDeleteInput)initWithDeletedText:(id)a3 deleteBySyllable:(BOOL)a4 shouldDeleteAcceptCandidateInput:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MCDeleteInput

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = MCDeleteInput;
  v5 = [(MCKeyboardInput *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_deletedText copyWithZone:a3];
    v7 = v5[5];
    v5[5] = v6;

    *(v5 + 32) = self->_deleteBySyllable;
    *(v5 + 33) = self->_shouldDeleteAcceptCandidateInput;
  }

  return v5;
}

- (MCDeleteInput)initWithDeletedText:(id)a3 deleteBySyllable:(BOOL)a4 shouldDeleteAcceptCandidateInput:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = MCDeleteInput;
  v10 = [(MCKeyboardInput *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_deletedText, a3);
    v11->_deleteBySyllable = a4;
    v11->_shouldDeleteAcceptCandidateInput = a5;
  }

  return v11;
}

@end