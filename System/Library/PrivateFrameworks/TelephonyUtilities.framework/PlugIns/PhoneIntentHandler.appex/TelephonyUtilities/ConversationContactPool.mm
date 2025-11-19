@interface ConversationContactPool
- (BOOL)callerPoolContainsOneOf:(id)a3;
- (BOOL)participantsPoolContainsOneOf:(id)a3;
@end

@implementation ConversationContactPool

- (BOOL)callerPoolContainsOneOf:(id)a3
{
  v4 = a3;
  v5 = [(ConversationContactPool *)self callerPool];
  v6 = [v5 allContactIds];

  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ConversationContactPool: Searching for %@ in caller ContactPool: %@", &v11, 0x16u);
  }

  v8 = [(ConversationContactPool *)self callerPool];
  if (v8)
  {
    v9 = [v6 intersectsSet:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)participantsPoolContainsOneOf:(id)a3
{
  v4 = a3;
  v5 = [(ConversationContactPool *)self participantsPool];
  v6 = [v5 allContactIds];

  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ConversationContactPool: Searching for %@ in participants ContactPool: %@", &v11, 0x16u);
  }

  v8 = [(ConversationContactPool *)self participantsPool];
  if (v8)
  {
    v9 = [v6 intersectsSet:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end