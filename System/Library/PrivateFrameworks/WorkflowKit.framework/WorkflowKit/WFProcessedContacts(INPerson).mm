@interface WFProcessedContacts(INPerson)
- (void)getRecipientsWithPermissionRequestor:()INPerson completionHandler:;
@end

@implementation WFProcessedContacts(INPerson)

- (void)getRecipientsWithPermissionRequestor:()INPerson completionHandler:
{
  v6 = a3;
  v7 = a4;
  entries = [self entries];
  v9 = [entries if_firstObjectWithIntValue:4 forKey:@"type"];

  if (v9)
  {
    messageGroup = [v9 messageGroup];
    (*(v7 + 2))(v7, 0, messageGroup, 0);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__WFProcessedContacts_INPerson__getRecipientsWithPermissionRequestor_completionHandler___block_invoke;
    aBlock[3] = &unk_1E8377A50;
    v19 = v6;
    v11 = _Block_copy(aBlock);
    entries2 = [self entries];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__WFProcessedContacts_INPerson__getRecipientsWithPermissionRequestor_completionHandler___block_invoke_2;
    v16[3] = &unk_1E8377AA0;
    v17 = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__WFProcessedContacts_INPerson__getRecipientsWithPermissionRequestor_completionHandler___block_invoke_5;
    v14[3] = &unk_1E837F588;
    v15 = v7;
    v13 = v11;
    [entries2 if_mapAsynchronously:v16 completionHandler:v14];
  }
}

@end