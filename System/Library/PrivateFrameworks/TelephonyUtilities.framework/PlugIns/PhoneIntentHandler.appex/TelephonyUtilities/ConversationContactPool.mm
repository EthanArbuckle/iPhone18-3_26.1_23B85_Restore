@interface ConversationContactPool
- (BOOL)callerPoolContainsOneOf:(id)of;
- (BOOL)participantsPoolContainsOneOf:(id)of;
@end

@implementation ConversationContactPool

- (BOOL)callerPoolContainsOneOf:(id)of
{
  ofCopy = of;
  callerPool = [(ConversationContactPool *)self callerPool];
  allContactIds = [callerPool allContactIds];

  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = ofCopy;
    v13 = 2112;
    v14 = allContactIds;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ConversationContactPool: Searching for %@ in caller ContactPool: %@", &v11, 0x16u);
  }

  callerPool2 = [(ConversationContactPool *)self callerPool];
  if (callerPool2)
  {
    v9 = [allContactIds intersectsSet:ofCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)participantsPoolContainsOneOf:(id)of
{
  ofCopy = of;
  participantsPool = [(ConversationContactPool *)self participantsPool];
  allContactIds = [participantsPool allContactIds];

  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = ofCopy;
    v13 = 2112;
    v14 = allContactIds;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ConversationContactPool: Searching for %@ in participants ContactPool: %@", &v11, 0x16u);
  }

  participantsPool2 = [(ConversationContactPool *)self participantsPool];
  if (participantsPool2)
  {
    v9 = [allContactIds intersectsSet:ofCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end