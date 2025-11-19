@interface _TUIKeyboardCandidateContainer
+ (id)forSourceType:(int64_t)a3;
+ (id)forSourceType:(int64_t)a3 withAutocorrectionList:(id)a4;
+ (id)forSourceType:(int64_t)a3 withKeyboardCandidateResultSet:(id)a4;
- (_TUIKeyboardCandidateContainer)init;
@end

@implementation _TUIKeyboardCandidateContainer

- (_TUIKeyboardCandidateContainer)init
{
  v7.receiver = self;
  v7.super_class = _TUIKeyboardCandidateContainer;
  v2 = [(_TUIKeyboardCandidateContainer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    autocorrectionList = v2->_autocorrectionList;
    v2->_autocorrectionList = 0;

    candidateResultSet = v3->_candidateResultSet;
    v3->_candidateResultSet = 0;
  }

  return v3;
}

+ (id)forSourceType:(int64_t)a3 withAutocorrectionList:(id)a4
{
  v5 = a4;
  v6 = [_TUIKeyboardCandidateContainer forSourceType:a3];
  [v6 setAutocorrectionList:v5];

  return v6;
}

+ (id)forSourceType:(int64_t)a3 withKeyboardCandidateResultSet:(id)a4
{
  v5 = a4;
  v6 = [_TUIKeyboardCandidateContainer forSourceType:a3];
  [v6 setCandidateResultSet:v5];

  return v6;
}

+ (id)forSourceType:(int64_t)a3
{
  v4 = objc_alloc_init(_TUIKeyboardCandidateContainer);
  [(_TUIKeyboardCandidateContainer *)v4 setCandidateSourceType:a3];

  return v4;
}

@end