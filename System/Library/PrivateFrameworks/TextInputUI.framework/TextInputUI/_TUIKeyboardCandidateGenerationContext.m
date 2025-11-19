@interface _TUIKeyboardCandidateGenerationContext
- (_TUIKeyboardCandidateGenerationContext)initWith:(id)a3 requestToken:(id)a4 usesCandidateSelection:(BOOL)a5 keyboardSuggestionOptions:(unint64_t)a6;
@end

@implementation _TUIKeyboardCandidateGenerationContext

- (_TUIKeyboardCandidateGenerationContext)initWith:(id)a3 requestToken:(id)a4 usesCandidateSelection:(BOOL)a5 keyboardSuggestionOptions:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v16.receiver = self;
  v16.super_class = _TUIKeyboardCandidateGenerationContext;
  v12 = [(_TUIKeyboardCandidateGenerationContext *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    keyboardState = v12->_keyboardState;
    v12->_keyboardState = v13;

    objc_storeStrong(&v12->_requestToken, a4);
    v12->_usesCandidateSelection = a5;
    v12->_keyboardSuggestionOptions = a6;
  }

  return v12;
}

@end