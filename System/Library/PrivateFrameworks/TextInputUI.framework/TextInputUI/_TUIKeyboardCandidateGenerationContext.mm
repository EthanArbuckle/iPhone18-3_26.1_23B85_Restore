@interface _TUIKeyboardCandidateGenerationContext
- (_TUIKeyboardCandidateGenerationContext)initWith:(id)with requestToken:(id)token usesCandidateSelection:(BOOL)selection keyboardSuggestionOptions:(unint64_t)options;
@end

@implementation _TUIKeyboardCandidateGenerationContext

- (_TUIKeyboardCandidateGenerationContext)initWith:(id)with requestToken:(id)token usesCandidateSelection:(BOOL)selection keyboardSuggestionOptions:(unint64_t)options
{
  withCopy = with;
  tokenCopy = token;
  v16.receiver = self;
  v16.super_class = _TUIKeyboardCandidateGenerationContext;
  v12 = [(_TUIKeyboardCandidateGenerationContext *)&v16 init];
  if (v12)
  {
    v13 = [withCopy copy];
    keyboardState = v12->_keyboardState;
    v12->_keyboardState = v13;

    objc_storeStrong(&v12->_requestToken, token);
    v12->_usesCandidateSelection = selection;
    v12->_keyboardSuggestionOptions = options;
  }

  return v12;
}

@end