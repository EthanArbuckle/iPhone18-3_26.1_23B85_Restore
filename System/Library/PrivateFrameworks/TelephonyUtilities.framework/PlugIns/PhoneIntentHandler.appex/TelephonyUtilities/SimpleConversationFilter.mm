@interface SimpleConversationFilter
+ (id)filterForCallGroup:(id)group;
+ (id)filterForParticipantCount:(unint64_t)count;
- (BOOL)matches:(id)matches;
- (SimpleConversationFilter)initWithPredicate:(id)predicate;
@end

@implementation SimpleConversationFilter

- (SimpleConversationFilter)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = SimpleConversationFilter;
  v5 = [(SimpleConversationFilter *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(predicateCopy);
    predicate = v5->_predicate;
    v5->_predicate = v6;
  }

  return v5;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  predicate = [(SimpleConversationFilter *)self predicate];
  v6 = (predicate)[2](predicate, matchesCopy);

  return v6;
}

+ (id)filterForCallGroup:(id)group
{
  groupCopy = group;
  v4 = [SimpleConversationFilter alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004A6C;
  v8[3] = &unk_10004CC68;
  v9 = groupCopy;
  v5 = groupCopy;
  v6 = [(SimpleConversationFilter *)v4 initWithPredicate:v8];

  return v6;
}

+ (id)filterForParticipantCount:(unint64_t)count
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004C5C;
  v5[3] = &unk_10004CC88;
  v5[4] = count;
  v3 = [[SimpleConversationFilter alloc] initWithPredicate:v5];

  return v3;
}

@end