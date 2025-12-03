@interface ConversationFilterFactory
+ (id)makeFilterForINCallGroupConversationFilter:(id)filter contactsDataSource:(id)source;
@end

@implementation ConversationFilterFactory

+ (id)makeFilterForINCallGroupConversationFilter:(id)filter contactsDataSource:(id)source
{
  filterCopy = filter;
  sourceCopy = source;
  v7 = objc_alloc_init(NSMutableArray);
  callGroup = [filterCopy callGroup];

  if (callGroup)
  {
    callGroup2 = [filterCopy callGroup];
    v10 = [SimpleConversationFilter filterForCallGroup:callGroup2];

    [v7 addObject:v10];
  }

  caller = [filterCopy caller];
  if (caller)
  {
  }

  else
  {
    participants = [filterCopy participants];
    v13 = [participants count];

    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v14 = [ConversationPersonFilter alloc];
  caller2 = [filterCopy caller];
  participants2 = [filterCopy participants];
  v17 = [(ConversationPersonFilter *)v14 initWithCaller:caller2 participants:participants2 dataSource:sourceCopy];

  [v7 addObject:v17];
LABEL_7:
  matchCallerAndParticipantsExactly = [filterCopy matchCallerAndParticipantsExactly];
  bOOLValue = [matchCallerAndParticipantsExactly BOOLValue];

  if (bOOLValue)
  {
    participants3 = [filterCopy participants];
    v21 = [participants3 count];
    caller3 = [filterCopy caller];
    if (caller3)
    {
      ++v21;
    }

    v23 = [SimpleConversationFilter filterForParticipantCount:v21];
    [v7 addObject:v23];
  }

  v24 = [[AndConversationFilter alloc] initWithFilters:v7];

  return v24;
}

@end