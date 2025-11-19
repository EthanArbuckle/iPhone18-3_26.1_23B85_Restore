@interface ConversationFilterFactory
+ (id)makeFilterForINCallGroupConversationFilter:(id)a3 contactsDataSource:(id)a4;
@end

@implementation ConversationFilterFactory

+ (id)makeFilterForINCallGroupConversationFilter:(id)a3 contactsDataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v5 callGroup];

  if (v8)
  {
    v9 = [v5 callGroup];
    v10 = [SimpleConversationFilter filterForCallGroup:v9];

    [v7 addObject:v10];
  }

  v11 = [v5 caller];
  if (v11)
  {
  }

  else
  {
    v12 = [v5 participants];
    v13 = [v12 count];

    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v14 = [ConversationPersonFilter alloc];
  v15 = [v5 caller];
  v16 = [v5 participants];
  v17 = [(ConversationPersonFilter *)v14 initWithCaller:v15 participants:v16 dataSource:v6];

  [v7 addObject:v17];
LABEL_7:
  v18 = [v5 matchCallerAndParticipantsExactly];
  v19 = [v18 BOOLValue];

  if (v19)
  {
    v20 = [v5 participants];
    v21 = [v20 count];
    v22 = [v5 caller];
    if (v22)
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