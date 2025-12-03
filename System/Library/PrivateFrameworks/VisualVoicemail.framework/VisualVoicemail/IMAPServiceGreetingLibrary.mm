@interface IMAPServiceGreetingLibrary
- (id)addMessages:(id)messages withMailbox:(id)mailbox fetchBodies:(BOOL)bodies newMessagesByOldMessage:(id)message remoteIDs:(id)ds setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)self0 copyFiles:(BOOL)self1 addPOPUIDs:(BOOL)self2 dataSectionsByMessage:(id)self3;
- (id)messages;
- (void)dealloc;
- (void)resetMessages;
- (void)updateSelectedMessages:(id)messages withMailbox:(id)mailbox;
@end

@implementation IMAPServiceGreetingLibrary

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMAPServiceGreetingLibrary;
  [(IMAPServiceGreetingLibrary *)&v2 dealloc];
}

- (id)addMessages:(id)messages withMailbox:(id)mailbox fetchBodies:(BOOL)bodies newMessagesByOldMessage:(id)message remoteIDs:(id)ds setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)self0 copyFiles:(BOOL)self1 addPOPUIDs:(BOOL)self2 dataSectionsByMessage:(id)self3
{
  messagesCopy = messages;
  [(IMAPServiceGreetingLibrary *)self mf_lock];
  messages = self->_messages;
  if (messages)
  {
    [(NSMutableArray *)messages addObjectsFromArray:messagesCopy];
  }

  else
  {
    v16 = [messagesCopy mutableCopy];
    v17 = self->_messages;
    self->_messages = v16;
  }

  [(IMAPServiceGreetingLibrary *)self mf_unlock];

  return messagesCopy;
}

- (void)updateSelectedMessages:(id)messages withMailbox:(id)mailbox
{
  messagesCopy = messages;
  mailboxCopy = mailbox;
  name = [mailboxCopy name];
  v8 = [name caseInsensitiveCompare:@"INBOX"];
  v9 = sub_1000027C8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [mailboxCopy mambaID];
    v12 = 136316162;
    if (v8)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    v13 = mambaID;
    v14 = 2080;
    v15 = " ";
    v16 = 2112;
    v17 = messagesCopy;
    v18 = 2112;
    v19 = name;
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