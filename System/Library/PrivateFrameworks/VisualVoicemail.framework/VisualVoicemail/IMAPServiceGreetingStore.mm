@interface IMAPServiceGreetingStore
- (id)candidateGreetingMessage;
- (unsigned)appendActiveGreeting:(id)greeting;
- (void)makeGreetingActive:(id)active;
- (void)removeActiveGreetingFlagFromAllUids;
- (void)setLibrary:(id)library;
@end

@implementation IMAPServiceGreetingStore

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  v5 = sub_1000027C8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mailboxUid = [(IMAPServiceGreetingStore *)self mailboxUid];
    *buf = 136315394;
    mambaID = [mailboxUid mambaID];
    v10 = 2080;
    v11 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sIMAPServiceGreetingStore::setLibrary", buf, 0x16u);
  }

  if (!libraryCopy || !*&self->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFLibraryStore__library])
  {
    v7.receiver = self;
    v7.super_class = IMAPServiceGreetingStore;
    [(IMAPServiceGreetingStore *)&v7 setLibrary:libraryCopy];
  }
}

- (void)removeActiveGreetingFlagFromAllUids
{
  v3 = [[NSArray alloc] initWithObjects:{@"$AppleVM-ActiveGreeting", 0}];
  [(IMAPServiceGreetingStore *)self _applyFlags:v3 state:0 toUidRange:0xFFFFFFFF00000001 except:0 closeWhenFinished:1 usingConnection:0];
}

- (unsigned)appendActiveGreeting:(id)greeting
{
  greetingCopy = greeting;
  v5 = [[NSArray alloc] initWithObjects:{greetingCopy, 0}];

  v6 = [[NSMutableArray alloc] initWithCapacity:1];
  v7 = [[NSArray alloc] initWithObjects:{@"$AppleVM-ActiveGreeting", 0}];
  v8 = [[NSArray alloc] initWithObjects:{v7, 0}];
  v9 = [NSArray alloc];
  v10 = [NSNumber numberWithUnsignedInt:1];
  v11 = [v9 initWithObjects:{v10, 0}];

  if ([(IMAPServiceGreetingStore *)self appendMessages:v5 unsuccessfulOnes:0 newMessageIDs:v6 newMessages:0 flagsToSet:v11 customIMAPFlagsToSet:v8]!= 1)
  {
    v12 = +[MFActivityMonitor currentTracebleMonitor];
    error = [v12 error];

    if (!error)
    {
      account = [(IMAPServiceGreetingStore *)self account];
      isOffline = [account isOffline];

      v16 = sub_1000027C8();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (isOffline)
      {
        if (v17)
        {
          mailboxUid = [(IMAPServiceGreetingStore *)self mailboxUid];
          *buf = 136315650;
          mambaID = [mailboxUid mambaID];
          v29 = 2080;
          v30 = " ";
          v31 = 2112;
          selfCopy2 = self;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not append greeting for offline service %@", buf, 0x20u);
        }

        v19 = 1023;
        v20 = 1;
      }

      else
      {
        if (v17)
        {
          mailboxUid2 = [(IMAPServiceGreetingStore *)self mailboxUid];
          *buf = 136315650;
          mambaID = [mailboxUid2 mambaID];
          v29 = 2080;
          v30 = " ";
          v31 = 2112;
          selfCopy2 = self;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not append greeting for service %@", buf, 0x20u);
        }

        v20 = 0;
        v19 = 1036;
      }

      v22 = +[VMAWDReporter sharedInstance];
      [v22 reportCustomGreetingFailedWithReason:v20];

      v23 = [NSError errorWithDomain:kVVErrorDomain code:v19 localizedDescription:@"Error appending greeting."];
      [v12 setError:v23];
    }
  }

  lastObject = [v6 lastObject];
  intValue = [lastObject intValue];

  return intValue;
}

- (id)candidateGreetingMessage
{
  selfCopy = self;
  [(IMAPServiceGreetingStore *)self mf_lock];
  v3 = *&selfCopy->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFLibraryStore__library];
  [v3 resetMessages];
  [(IMAPServiceGreetingStore *)selfCopy fetchMobileSynchronously:0x7FFFFFFFFFFFFFFFLL];
  messages = [v3 messages];
  v5 = [messages count];
  if (v5)
  {
    v20 = selfCopy;
    v21 = v3;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 2.22507386e-308;
    do
    {
      v10 = [messages objectAtIndex:{v7, v20, v21}];
      if (([v10 messageFlags] & 2) == 0)
      {
        [v10 dateSentAsTimeIntervalSince1970];
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          customFlags = [v10 customFlags];
          v14 = [customFlags containsObject:@"$AppleVM-ActiveGreeting"];
        }

        else
        {
          v14 = 0;
        }

        if (v12 < v9) | (v8 ^ v14) & 1 && ((v14 ^ 1 | v8))
        {
          v8 = v14;
        }

        else
        {
          v15 = v10;

          v8 = v14;
          v9 = v12;
          v6 = v15;
        }
      }

      ++v7;
    }

    while (v5 != v7);
    if (v8)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    selfCopy = v20;
    v3 = v21;
  }

  else
  {
    v6 = 0;
  }

  account = [(IMAPServiceGreetingStore *)selfCopy account];
  service = [account service];
  [service _setActiveGreetingType:v5];

  [v3 resetMessages];
  [(IMAPServiceGreetingStore *)selfCopy mf_unlock];
  v18 = v6;

  return v6;
}

- (void)makeGreetingActive:(id)active
{
  activeCopy = active;
  v5 = +[MFActivityMonitor currentTracebleMonitor];
  remoteID = [activeCopy remoteID];

  intValue = [remoteID intValue];
  if (!intValue)
  {
    v15 = [NSError errorWithDomain:kVVErrorDomain code:1008 localizedDescription:@"Candidate greeting doesn't have a valid remote UID"];
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = OBJC_IVAR___MFMailMessageStore__account;
  v9 = [*&self->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFMailMessageStore__account] connectionForStore:self delegate:self options:1];
  if (v9)
  {
    v10 = sub_1000027C8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      mailboxUid = [(IMAPServiceGreetingStore *)self mailboxUid];
      *buf = 136315906;
      mambaID = [mailboxUid mambaID];
      v20 = 2080;
      v21 = " ";
      v22 = 2112;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = v9;
      v12 = v23;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ make greeting active for connection %@", buf, 0x2Au);
    }

    v13 = [[NSArray alloc] initWithObjects:{@"$AppleVM-ActiveGreeting", 0}];
    [(IMAPServiceGreetingStore *)self _applyFlags:v13 state:1 toUidRange:intValue | (intValue << 32) except:0 closeWhenFinished:0 usingConnection:v9];
    if (([v5 shouldCancel] & 1) == 0)
    {
      error = [v5 error];

      if (!error)
      {
        [(IMAPServiceGreetingStore *)self _removeActiveGreetingFlagFromAllUidsExcept:intValue isLast:0 usingConnection:v9];
      }
    }

    [*&self->super.MFLibraryIMAPStore_opaque[v8] checkInConnection:v9];
    v15 = 0;
  }

  else
  {
    v15 = [NSError errorWithDomain:kVVErrorDomain code:1023 localizedDescription:@"Could not establish IMAP connection."];
    v13 = sub_1000027C8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      mailboxUid2 = [(IMAPServiceGreetingStore *)self mailboxUid];
      *buf = 136315906;
      mambaID = [mailboxUid2 mambaID];
      v20 = 2080;
      v21 = " ";
      v22 = 2112;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = 0;
      v17 = v23;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#W %s%s%@ could not make greeting active for connection %@", buf, 0x2Au);
    }
  }

  if (v15)
  {
LABEL_14:
    [v5 setError:v15];
  }

LABEL_15:
}

@end