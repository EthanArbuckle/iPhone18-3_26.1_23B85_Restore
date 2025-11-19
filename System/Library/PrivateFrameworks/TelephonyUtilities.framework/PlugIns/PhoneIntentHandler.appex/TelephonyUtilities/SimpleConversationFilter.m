@interface SimpleConversationFilter
+ (id)filterForCallGroup:(id)a3;
+ (id)filterForParticipantCount:(unint64_t)a3;
- (BOOL)matches:(id)a3;
- (SimpleConversationFilter)initWithPredicate:(id)a3;
@end

@implementation SimpleConversationFilter

- (SimpleConversationFilter)initWithPredicate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SimpleConversationFilter;
  v5 = [(SimpleConversationFilter *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    predicate = v5->_predicate;
    v5->_predicate = v6;
  }

  return v5;
}

- (BOOL)matches:(id)a3
{
  v4 = a3;
  v5 = [(SimpleConversationFilter *)self predicate];
  v6 = (v5)[2](v5, v4);

  return v6;
}

+ (id)filterForCallGroup:(id)a3
{
  v3 = a3;
  v4 = [SimpleConversationFilter alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004A6C;
  v8[3] = &unk_10004CC68;
  v9 = v3;
  v5 = v3;
  v6 = [(SimpleConversationFilter *)v4 initWithPredicate:v8];

  return v6;
}

+ (id)filterForParticipantCount:(unint64_t)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004C5C;
  v5[3] = &unk_10004CC88;
  v5[4] = a3;
  v3 = [[SimpleConversationFilter alloc] initWithPredicate:v5];

  return v3;
}

@end