@interface _TUIKeyboardCandidateContainer
+ (id)forSourceType:(int64_t)type;
+ (id)forSourceType:(int64_t)type withAutocorrectionList:(id)list;
+ (id)forSourceType:(int64_t)type withKeyboardCandidateResultSet:(id)set;
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

+ (id)forSourceType:(int64_t)type withAutocorrectionList:(id)list
{
  listCopy = list;
  v6 = [_TUIKeyboardCandidateContainer forSourceType:type];
  [v6 setAutocorrectionList:listCopy];

  return v6;
}

+ (id)forSourceType:(int64_t)type withKeyboardCandidateResultSet:(id)set
{
  setCopy = set;
  v6 = [_TUIKeyboardCandidateContainer forSourceType:type];
  [v6 setCandidateResultSet:setCopy];

  return v6;
}

+ (id)forSourceType:(int64_t)type
{
  v4 = objc_alloc_init(_TUIKeyboardCandidateContainer);
  [(_TUIKeyboardCandidateContainer *)v4 setCandidateSourceType:type];

  return v4;
}

@end