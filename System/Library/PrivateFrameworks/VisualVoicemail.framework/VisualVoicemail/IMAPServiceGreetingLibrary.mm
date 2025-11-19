@interface IMAPServiceGreetingLibrary
- (id)addMessages:(id)a3 withMailbox:(id)a4 fetchBodies:(BOOL)a5 newMessagesByOldMessage:(id)a6 remoteIDs:(id)a7 setFlags:(unint64_t)a8 clearFlags:(unint64_t)a9 messageFlagsForMessages:(id)a10 copyFiles:(BOOL)a11 addPOPUIDs:(BOOL)a12 dataSectionsByMessage:(id)a13;
- (id)messages;
- (void)dealloc;
- (void)resetMessages;
- (void)updateSelectedMessages:(id)a3 withMailbox:(id)a4;
@end

@implementation IMAPServiceGreetingLibrary

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMAPServiceGreetingLibrary;
  [(IMAPServiceGreetingLibrary *)&v2 dealloc];
}

- (id)addMessages:(id)a3 withMailbox:(id)a4 fetchBodies:(BOOL)a5 newMessagesByOldMessage:(id)a6 remoteIDs:(id)a7 setFlags:(unint64_t)a8 clearFlags:(unint64_t)a9 messageFlagsForMessages:(id)a10 copyFiles:(BOOL)a11 addPOPUIDs:(BOOL)a12 dataSectionsByMessage:(id)a13
{
  v14 = a3;
  [(IMAPServiceGreetingLibrary *)self mf_lock];
  messages = self->_messages;
  if (messages)
  {
    [(NSMutableArray *)messages addObjectsFromArray:v14];
  }

  else
  {
    v16 = [v14 mutableCopy];
    v17 = self->_messages;
    self->_messages = v16;
  }

  [(IMAPServiceGreetingLibrary *)self mf_unlock];

  return v14;
}

- (void)updateSelectedMessages:(id)a3 withMailbox:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 name];
  v8 = [v7 caseInsensitiveCompare:@"INBOX"];
  v9 = sub_1000027C8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 mambaID];
    v12 = 136316162;
    if (v8)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    v13 = v10;
    v14 = 2080;
    v15 = " ";
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    v20 = 1024;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdate selected messages %@ for mailbox %@, mailbox type is %d", &v12, 0x30u);
  }
}

- (void)resetMessages
{
  [(IMAPServiceGreetingLibrary *)self mf_lock];
  messages = self->_messages;
  self->_messages = 0;

  [(IMAPServiceGreetingLibrary *)self mf_unlock];
}

- (id)messages
{
  [(IMAPServiceGreetingLibrary *)self mf_lock];
  v3 = [(NSMutableArray *)self->_messages copy];
  [(IMAPServiceGreetingLibrary *)self mf_unlock];

  return v3;
}

@end