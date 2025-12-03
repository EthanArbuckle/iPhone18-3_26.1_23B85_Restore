@interface MFIMAPConnection
+ (id)_UIDPlusInfoFromIMAPResponses:(id)responses;
+ (void)initialize;
+ (void)setReadSizeParameters;
- (BOOL)_doBasicConnectionUsingAccount:(id)account;
- (BOOL)_doUidFetchWithRange:(id)range arguments:(id)arguments validateMessage:(BOOL)message responses:(id)responses;
- (BOOL)_sendMailboxCommand:(int)command withArguments:(id)arguments;
- (BOOL)_tryConnectionUsingAccount:(id)account;
- (BOOL)appendData:(id)data toMailboxNamed:(id)named flags:(id)flags dateReceived:(id)received newMessageInfo:(id *)info;
- (BOOL)authenticateUsingAccount:(id)account;
- (BOOL)authenticateUsingAccount:(id)account authenticator:(id)authenticator;
- (BOOL)closeAndLogout;
- (BOOL)connectUsingAccount:(id)account;
- (BOOL)copyUids:(id)uids toMailboxNamed:(id)named newMessageInfo:(id *)info;
- (BOOL)createMailbox:(id)mailbox;
- (BOOL)deleteMailbox:(id)mailbox;
- (BOOL)deleteMessagesOlderThanNumberOfDays:(int)days;
- (BOOL)expunge;
- (BOOL)expungeUids:(id)uids;
- (BOOL)getQuotaForRootName:(id)name;
- (BOOL)loginWithAccount:(id)account password:(id)password;
- (BOOL)logout;
- (BOOL)performCustomCommand:(id)command withArguments:(id)arguments;
- (BOOL)renameMailbox:(id)mailbox toMailbox:(id)toMailbox;
- (BOOL)selectMailbox:(id)mailbox withAccount:(id)account;
- (BOOL)sendResponsesForCommand:(id *)command toQueue:(id)queue;
- (BOOL)sendResponsesForCondStoreFlagFetchForUIDs:(id)ds withSequenceIdentifier:(id *)identifier toQueue:(id)queue;
- (BOOL)sendResponsesForUIDFetchForUIDs:(id)ds fields:(id)fields toQueue:(id)queue;
- (BOOL)sendResponsesForUIDs:(id)ds fields:(id)fields flagSearchResults:(id)results toQueue:(id)queue;
- (BOOL)sendUidAndFlagResponsesForUIDs:(id)ds sequenceIdentifierProvider:(id)provider flagSearchResults:(id)results toQueue:(id)queue;
- (BOOL)sendUidResponsesForSearchArguments:(id)arguments toQueue:(id)queue;
- (BOOL)startTLSForAccount:(id)account;
- (BOOL)subscribeMailbox:(id)mailbox;
- (BOOL)supportsCapability:(int)capability;
- (BOOL)unsubscribeMailbox:(id)mailbox;
- (MFIMAPConnection)initWithMambaID:(const char *)d;
- (NSArray)additionalHeadersForFetch;
- (id).cxx_construct;
- (id)_copyNextServerResponseForCommand:(id *)command;
- (id)_copyNextTaggedOrContinuationResponseForCommand:(id *)command;
- (id)_doListCommand:(int)command withReference:(id)reference mailboxName:(id)name options:(int)options getSpecialUse:(BOOL)use statusDataItems:(id)items statusEntriesByMailbox:(id *)mailbox;
- (id)_doNamespaceCommand;
- (id)_errorForResponse:(id)response commandParams:(id *)params;
- (id)_fetchArgumentForMessageSkeletonsWithHeaders:(id)headers;
- (id)_getFirstLevelMessageIDsForReference:(id)reference;
- (id)_getReferencesForMessageSet:(id)set;
- (id)_messageIDsFromFetchResultData:(id)data;
- (id)_readDataOfLength:(int64_t)length;
- (id)_responseFromSendingCommand:(id *)command andPossiblyCreateMailbox:(id)mailbox;
- (id)_responseFromSendingCommands:(id *)commands count:(unint64_t)count;
- (id)_searchUidsForMessageIDs:(id)ds excludeDeleted:(BOOL)deleted;
- (id)_serverErrorForAccount:(id)account response:(id)response command:(id *)command;
- (id)capabilities;
- (id)copyArgumentForSearchTerm:(id)term;
- (id)copyDiagnosticInformation;
- (id)description;
- (id)eSearchIDSet:(id)set areMessageSequenceNumbers:(BOOL)numbers arguments:(id)arguments success:(BOOL *)success returning:(int)returning;
- (id)fetchMessageIdsForUids:(id)uids;
- (id)fetchUniqueRemoteIDsForUids:(id)uids;
- (id)messageSetForNumbers:(id)numbers;
- (id)messageSetForNumbers:(id)numbers range:(_NSRange)range;
- (id)messageSetForNumbers:(id)numbers range:(_NSRange)range maxTokens:(unint64_t)tokens indexOfLastNumber:(unint64_t *)number;
- (id)messageSetForRange:(id)range;
- (id)messageSetForRange:(id)range butNotNumbers:(id)numbers;
- (id)parenthesizedStringWithObjects:(id)objects;
- (id)parseIndexSetFromSequenceSet:(id)set;
- (id)quotaPercentagesForMailbox:(id)mailbox;
- (id)searchIDSet:(id)set forTerms:(id)terms success:(BOOL *)success;
- (id)searchUIDs:(id)ds withFlagRequests:(id)requests;
- (id)searchUidSet:(id)set forNewMessageIDs:(id)ds;
- (id)searchUidSet:(id)set forTerms:(id)terms success:(BOOL *)success;
- (id)separatorChar;
- (id)serverPathPrefix;
- (id)uidsReferencedBy:(id)by;
- (int)_doIMAPLoginForAccount:(id)account quotedUsername:(id)username password:(id)password;
- (int)connectionState;
- (int)fillLiteralBuffer:(char *)buffer count:(unint64_t)count dataLength:(unint64_t)length nonSynchronizingLiteral:(BOOL *)literal;
- (int64_t)_moveMessageSet:(id)set toMailboxName:(id)name command:(int)command newMessageInfo:(id *)info;
- (unint64_t)_sendCommands:(id *)commands count:(unint64_t)count response:(id *)response;
- (unint64_t)countForSearchOfIDSet:(id)set forTerms:(id)terms success:(BOOL *)success;
- (unint64_t)countForSearchOfUidSet:(id)set forTerms:(id)terms success:(BOOL *)success;
- (unsigned)literalChunkSize;
- (unsigned)readBufferSize;
- (void)_addCapabilities:(id)capabilities;
- (void)_clearCapabilities;
- (void)_enableCompressionIfSupported;
- (void)_fetchCapabilities;
- (void)_sendClientInfoIfSupported;
- (void)_updateCapabilitiesForAccount:(id)account withAuthenticationResponse:(id)response;
- (void)_updateSearchCapabilityWithAccount:(id)account;
- (void)close;
- (void)dealloc;
- (void)didFinishCommands:(id *)commands count:(unint64_t)count;
- (void)disconnectAndNotifyDelegate:(BOOL)delegate reason:(const char *)reason;
- (void)fetchStatusForMailboxes:(id)mailboxes args:(id)args;
- (void)fetchTotalSize:(unint64_t *)size andMessageCount:(unsigned int *)count;
- (void)finishIdle;
- (void)handleBytesAvailable;
- (void)handleStreamEvent:(unint64_t)event;
- (void)locked_finishIdle;
- (void)locked_scheduleIdle;
- (void)locked_scheduleIdleResetAfterDelay:(double)delay;
- (void)locked_startIdle;
- (void)noop;
- (void)notifyDelegateOfBodyLoadAppendage:(id)appendage section:(id)section;
- (void)notifyDelegateOfBodyLoadCompletion:(id)completion section:(id)section;
- (void)notifyDelegateOfBodyLoadStart:(id)start section:(id)section;
- (void)parseESearchResponseWithContext:(id)context;
- (void)parseSearchReturn:(id)return;
- (void)scheduleIdleReset;
- (void)setAdditionalHeadersForFetch:(id)fetch;
- (void)setDelegate:(id)delegate;
- (void)setReadBufferSizeFromElapsedTime:(double)time bytesRead:(unint64_t)read;
- (void)socketClosedUnderneath;
- (void)unselect;
@end

@implementation MFIMAPConnection

- (id)eSearchIDSet:(id)set areMessageSequenceNumbers:(BOOL)numbers arguments:(id)arguments success:(BOOL *)success returning:(int)returning
{
  setCopy = set;
  argumentsCopy = arguments;
  v36 = 24;
  v14 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(argumentsCopy, "count") + 2 * (setCopy != 0)}];
  v37 = v14;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (!returning)
  {
    __assert_rtn("[MFIMAPConnection(ESearch) eSearchIDSet:areMessageSequenceNumbers:arguments:success:returning:]", "IMAP_ESearch.m", 35, "returning && Should have at least one return request on an esearch command.");
  }

  v15 = v14;
  [v14 addObject:@"RETURN"];
  v16 = objc_msgSend(@"("), "mutableCopy";
  v17 = v16;
  if (returning)
  {
    [v16 appendString:@"MIN"];
    if ((returning & 2) == 0)
    {
LABEL_10:
      if ((returning & 4) == 0)
      {
LABEL_13:
        if ((returning & 8) == 0)
        {
          goto LABEL_16;
        }

        [v17 appendString:@" "];
        goto LABEL_15;
      }

      [v17 appendString:@" "];
LABEL_12:
      [v17 appendString:@"ALL"];
      goto LABEL_13;
    }

    [v17 appendString:@" "];
LABEL_9:
    [v17 appendString:@"MAX"];
    goto LABEL_10;
  }

  if ((returning & 2) != 0)
  {
    goto LABEL_9;
  }

  if ((returning & 4) != 0)
  {
    goto LABEL_12;
  }

  if ((returning & 8) != 0)
  {
LABEL_15:
    [v17 appendString:@"COUNT"];
  }

LABEL_16:
  [v17 appendString:@""]);
  [v15 addObject:v17];
  if (setCopy)
  {
    if (!numbers)
    {
      [v15 addObject:@"UID"];
    }

    [v15 addObject:setCopy];
  }

  [v15 addObjectsFromArray:argumentsCopy];
  v18 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v36 count:1];
  responseType = [v18 responseType];
  selfCopy = self;
  if (success)
  {
    *success = responseType == 2;
  }

  v34 = setCopy;
  v31 = v18;
  if (responseType == 2 && (v20 = [v38 count]) != 0)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = [v38 objectAtIndex:{v22, v31}];
      if ([v23 responseType] == 20)
      {
        keyValuePairs = [v23 keyValuePairs];

        v25 = [keyValuePairs objectForKey:@"IMAPESearchTagKey"];
        intValue = [v25 intValue];
        v27 = v39;

        if (v27 == intValue)
        {
          v21 = keyValuePairs;
        }

        else
        {
          v28 = vm_imap_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2720B1000, v28, OS_LOG_TYPE_DEFAULT, "Got a response, but it was not for our tag.  Throwing out the results.", buf, 2u);
          }

          v21 = 0;
        }

        [v38 removeObjectAtIndex:v22];
        --v20;
      }

      else
      {
        ++v22;
      }
    }

    while (v22 < v20);
  }

  else
  {
    v21 = 0;
  }

  [(MFIMAPConnection *)selfCopy didFinishCommands:&v36 count:1, v31];
  v29 = v21;

  return v29;
}

- (id)parseIndexSetFromSequenceSet:(id)set
{
  setCopy = set;
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v5 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:setCopy];
  v12 = 0;
  if (([v5 isAtEnd] & 1) == 0)
  {
    do
    {
      if (![v5 scanInteger:&v12])
      {
        break;
      }

      if ([v5 isAtEnd])
      {
        [v4 addIndex:v12];
      }

      else
      {
        scanLocation = [v5 scanLocation];
        v7 = [setCopy characterAtIndex:scanLocation];
        if (v7 == 44)
        {
          [v4 addIndex:v12];
          v8 = scanLocation + 1;
          goto LABEL_10;
        }

        if (v7 != 58)
        {
          v9 = vm_imap_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v11) = 0;
            _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "Got invalid value in sequence set", &v11, 2u);
          }

          continue;
        }

        [v5 setScanLocation:scanLocation + 1];
        v11 = 0;
        [v5 scanInteger:&v11];
        [v4 addIndexesInRange:?];
        if (([v5 isAtEnd] & 1) == 0)
        {
          v8 = [v5 scanLocation] + 1;
LABEL_10:
          [v5 setScanLocation:v8];
        }
      }
    }

    while (![v5 isAtEnd]);
  }

  return v4;
}

- (void)parseSearchReturn:(id)return
{
  returnCopy = return;
  v4 = [returnCopy end];
  if (v4 > [returnCopy start])
  {
    while (![returnCopy match:"MIN"])
    {
      if ([returnCopy match:"MAX"])
      {
        if (([returnCopy parseSpace] & 1) == 0)
        {
          [returnCopy emitWarning:@"Expected space"];
        }

        copyNumber = [returnCopy copyNumber];
        if (!copyNumber)
        {
          [returnCopy emitError:@"Expected number for maximum result"];
        }

        response = [returnCopy response];
        v7 = response;
        v8 = copyNumber;
        v9 = @"IMAPESearchMaxKey";
        goto LABEL_14;
      }

      if ([returnCopy match:"ALL"])
      {
        if (([returnCopy parseSpace] & 1) == 0)
        {
          [returnCopy emitWarning:@"Expected space"];
        }

        copyMessageSet = [returnCopy copyMessageSet];
        v12 = [(MFIMAPConnection *)self parseIndexSetFromSequenceSet:copyMessageSet];
        response2 = [returnCopy response];
        [response2 setValue:v12 forKey:@"IMAPESearchAllKey"];

        goto LABEL_16;
      }

      if (![returnCopy match:"COUNT"])
      {
        [returnCopy emitError:@"Did not find a valid search return."];
        goto LABEL_16;
      }

      if (([returnCopy parseSpace] & 1) == 0)
      {
        [returnCopy emitWarning:@"Expected space"];
      }

      copyNumber = [returnCopy copyNumber];
      if (!copyNumber)
      {
        [returnCopy emitError:@"Expected number for count result"];
      }

      response3 = [returnCopy response];
      [response3 setValue:copyNumber forKey:@"IMAPESearchCountKey"];

LABEL_15:
LABEL_16:
      [returnCopy parseSpace];
      v10 = [returnCopy end];
      if (v10 <= [returnCopy start])
      {
        goto LABEL_29;
      }
    }

    if (([returnCopy parseSpace] & 1) == 0)
    {
      [returnCopy emitWarning:@"Expected space"];
    }

    copyNumber = [returnCopy copyNumber];
    if (!copyNumber)
    {
      [returnCopy emitError:@"Expected number for minimum result"];
    }

    response = [returnCopy response];
    v7 = response;
    v8 = copyNumber;
    v9 = @"IMAPESearchMinKey";
LABEL_14:
    [response setValue:v8 forKey:v9];

    goto LABEL_15;
  }

LABEL_29:
}

- (void)parseESearchResponseWithContext:(id)context
{
  contextCopy = context;
  if (([contextCopy parseSpace] & 1) == 0)
  {
    [contextCopy emitWarning:@"Expected space"];
  }

  if ([contextCopy match:"(")]
  {
    if ([contextCopy match:"TAG"])
    {
      if (([contextCopy parseSpace] & 1) == 0)
      {
        [contextCopy emitWarning:@"Expected space"];
      }

      copyQuotedString = [contextCopy copyQuotedString];
      response = [contextCopy response];
      [response setValue:copyQuotedString forKey:@"IMAPESearchTagKey"];
    }

    if (([contextCopy match:"]") & 1) == 0)
    {
      [contextCopy emitError:@"Expected right paren"];
    }
  }

  if ([contextCopy parseSpace])
  {
    if ([contextCopy match:"UID"])
    {
      if (([contextCopy parseSpace] & 1) == 0)
      {
        v6 = [contextCopy end];
        if (v6 != [contextCopy start])
        {
          [contextCopy emitWarning:@"Expected space"];
        }
      }
    }

    [(MFIMAPConnection *)self parseSearchReturn:contextCopy];
  }
}

+ (void)initialize
{
  if (!_IMAPNeedsQuoteCharacterSet)
  {
    v3 = *MEMORY[0x277CBECE8];
    Mutable = CFCharacterSetCreateMutable(*MEMORY[0x277CBECE8]);
    v8.location = 32;
    v8.length = 94;
    CFCharacterSetAddCharactersInRange(Mutable, v8);
    CFCharacterSetInvert(Mutable);
    CFCharacterSetAddCharactersInString(Mutable, @"(){ %*\\"");
    _IMAPNeedsQuoteCharacterSet = CFCharacterSetCreateCopy(v3, Mutable);
    CFRelease(Mutable);
  }

  if (!_IMAPNeedsLiteralCharacterSet)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = CFCharacterSetCreateMutable(*MEMORY[0x277CBECE8]);
    v9.location = 1;
    v9.length = 126;
    CFCharacterSetAddCharactersInRange(v6, v9);
    CFCharacterSetInvert(v6);
    CFCharacterSetAddCharactersInString(v6, @"\r\n");
    _IMAPNeedsLiteralCharacterSet = CFCharacterSetCreateCopy(v5, v6);
    CFRelease(v6);
  }

  [self setReadSizeParameters];
}

- (MFIMAPConnection)initWithMambaID:(const char *)d
{
  v4.receiver = self;
  v4.super_class = MFIMAPConnection;
  if ([(MFConnection *)&v4 initWithMambaID:d])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  [(EFCancelable *)self->_idleSubscriptionCancelable cancel];
  v3.receiver = self;
  v3.super_class = MFIMAPConnection;
  [(MFConnection *)&v3 dealloc];
}

- (id)copyDiagnosticInformation
{
  [(MFIMAPConnection *)self mf_lock];
  v12.receiver = self;
  v12.super_class = MFIMAPConnection;
  copyDiagnosticInformation = [(MFConnection *)&v12 copyDiagnosticInformation];
  v4 = [copyDiagnosticInformation mutableCopy];
  v5 = v4;
  v6 = *(self + 76) | (*(self + 154) << 16);
  if ((*(self + 76) & 0x20) != 0)
  {
    v7 = @"yes";
  }

  else
  {
    v7 = @"no";
  }

  [v4 appendFormat:@"    supports IDLE: %@\n", v7];
  isIdle = [(MFIMAPConnection *)self isIdle];
  idleCommandSequenceNumber = [(MFIMAPConnection *)self idleCommandSequenceNumber];
  if (isIdle)
  {
    v10 = @"yes";
  }

  else
  {
    v10 = @"no";
  }

  [v5 appendFormat:@"    using IDLE: %@ (seq=%lu)\n", v10, idleCommandSequenceNumber];
  [(MFIMAPConnection *)self mf_unlock];

  return v5;
}

- (void)setDelegate:(id)delegate
{
  v33 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(MFConnection *)self mambaID];
    rumbaID = [(MFConnection *)self rumbaID];
    v23 = 136316162;
    v24 = mambaID;
    v25 = 2080;
    v26 = " ";
    v27 = 2114;
    v28 = rumbaID;
    v29 = 2080;
    v30 = " ";
    v31 = 2112;
    v32 = delegateCopy;
    _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%ssetDelegate: %@", &v23, 0x34u);
  }

  v8 = [VFWeakReferenceHolder weakReferenceWithObject:delegateCopy];
  holder = self->_delegateState.holder;
  if (holder != v8)
  {
    retainedReference = [(VFWeakReferenceHolder *)holder retainedReference];
    v11 = retainedReference;
    if (retainedReference && (*(&self->_delegateState + 8) & 0x400) != 0)
    {
      [retainedReference willRemoveDelegation:self];
    }

    objc_storeStrong(&self->_delegateState.holder, v8);
    self->_delegateState.__weak_void_delegate = delegateCopy;
    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFFD | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFF7 | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 16;
    }

    else
    {
      v14 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFEF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 32;
    }

    else
    {
      v15 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFDF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 64;
    }

    else
    {
      v16 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFBF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 128;
    }

    else
    {
      v17 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFF7F | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFEFF | v18;
    if (objc_opt_respondsToSelector())
    {
      v19 = 512;
    }

    else
    {
      v19 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFDFF | v19;
    if (objc_opt_respondsToSelector())
    {
      v20 = 1024;
    }

    else
    {
      v20 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFBFF | v20;
    if (objc_opt_respondsToSelector())
    {
      v21 = 2048;
    }

    else
    {
      v21 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xF7FF | v21;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_clearCapabilities
{
  capabilities = self->_capabilities;
  self->_capabilities = 0;

  v4 = *(self + 154);
  *(self + 76) = 0;
  *(self + 154) = v4 & 0x80;
}

- (void)_addCapabilities:(id)capabilities
{
  v25 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  if (capabilitiesCopy)
  {
    capabilities = self->_capabilities;
    if (!capabilities)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(capabilitiesCopy, "count")}];
      v7 = self->_capabilities;
      self->_capabilities = v6;

      capabilities = self->_capabilities;
    }

    [(NSMutableSet *)capabilities addObjectsFromArray:capabilitiesCopy];
    v8 = 0;
    v21 = xmmword_279E34838;
    v22 = *&off_279E34848;
    v23 = xmmword_279E34858;
    v24 = @"LIST-EXTENDED";
    v17 = xmmword_279E347F8;
    v18 = *&off_279E34808;
    v19 = xmmword_279E34818;
    v20 = *&off_279E34828;
    v13 = xmmword_279E347B8;
    v14 = *&off_279E347C8;
    v15 = xmmword_279E347D8;
    v16 = *&off_279E347E8;
    do
    {
      if ([(NSMutableSet *)self->_capabilities containsObject:*(&v13 + v8), v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25])
      {
        v9 = *(self + 76);
        v10 = v9 | (*(self + 154) << 16);
        *(self + 76) = v9 | (1 << v8);
        *(self + 154) = (v10 | (1 << v8) & 0x7FFFFFu) >> 16;
      }

      ++v8;
    }

    while (v8 != 23);
    for (i = 176; i != -8; i -= 8)
    {
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCapabilities
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v3 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v9 count:1];
  responseType = [v3 responseType];

  if (responseType == 2)
  {
    v5 = [v10 count];
    if (v5)
    {
      v6 = v5 - 1;
      do
      {
        v7 = [v10 objectAtIndex:v6];
        if ([v7 responseType] == 7)
        {
          capabilities = [v7 capabilities];
          [(MFIMAPConnection *)self _addCapabilities:capabilities];

          [v10 removeObjectAtIndex:v6];
        }

        --v6;
      }

      while (v6 != -1);
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&v9 count:1];
}

- (void)_sendClientInfoIfSupported
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_1_2(v1, 4.8153e-34, v2, v3);
  OUTLINED_FUNCTION_0_3(v4, v5, v6);
  OUTLINED_FUNCTION_3_0(&dword_2720B1000, "#D %s%s%{public}@%sserver does not support ID extension", v7, v8);
}

- (void)_enableCompressionIfSupported
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_1_2(v1, 4.8153e-34, v2, v3);
  OUTLINED_FUNCTION_0_3(v4, v5, v6);
  OUTLINED_FUNCTION_3_0(&dword_2720B1000, "#D %s%s%{public}@%sserver supports deflate compression, sending COMPRESS request", v7, v8);
}

- (BOOL)_doBasicConnectionUsingAccount:(id)account
{
  v43 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  getSocket = [(MFConnection *)self getSocket];

  if (getSocket)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0 reason:"flush any previous connection activity"];
  }

  *(self + 176) &= 0xF8u;
  self->_expirationTime = 0.0;
  v30.receiver = self;
  v30.super_class = MFIMAPConnection;
  v6 = [(MFConnection *)&v30 connectUsingAccount:accountCopy];
  v7 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(MFConnection *)self mambaID];
    rumbaID = [(MFConnection *)self rumbaID];
    v10 = rumbaID;
    v11 = @"failed";
    *buf = 136316418;
    v32 = mambaID;
    v33 = 2080;
    v34 = " ";
    if (v6)
    {
      v11 = @"succeeded";
    }

    v35 = 2114;
    v36 = rumbaID;
    v37 = 2080;
    v38 = " ";
    v39 = 2112;
    v40 = accountCopy;
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sconnectUsingAccount %@ %@", buf, 0x3Eu);
  }

  if (v6)
  {
    self->_connectTime = CFAbsoluteTimeGetCurrent();
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v12 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:&v27];
    v13 = v12;
    if (v12)
    {
      if ([v12 isUntagged])
      {
        responseType = [v13 responseType];
        if (responseType == 5)
        {
          *(self + 176) = *(self + 176) & 0xF8 | 2;
        }

        else if (responseType == 2)
        {
          *(self + 176) = *(self + 176) & 0xF8 | 1;
          if ([v13 responseCode] == 14)
          {
            [(MFIMAPConnection *)self _clearCapabilities];
            responseInfo = [v13 responseInfo];
            [(MFIMAPConnection *)self _addCapabilities:responseInfo];
          }
        }

        goto LABEL_22;
      }

      v17 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        mambaID2 = [(MFConnection *)self mambaID];
        rumbaID2 = [(MFConnection *)self rumbaID];
        hostname = [(MFConnection *)self hostname];
        *buf = 136316162;
        v32 = mambaID2;
        v33 = 2080;
        v34 = " ";
        v35 = 2114;
        v36 = rumbaID2;
        v37 = 2080;
        v38 = " ";
        v39 = 2112;
        v40 = hostname;
        _os_log_impl(&dword_2720B1000, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s*** Expected untagged initial response from %@", buf, 0x34u);
      }

      v21 = "Expected untagged initial response from host";
    }

    else
    {
      v17 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        mambaID3 = [(MFConnection *)self mambaID];
        rumbaID3 = [(MFConnection *)self rumbaID];
        hostname2 = [(MFConnection *)self hostname];
        *buf = 136316162;
        v32 = mambaID3;
        v33 = 2080;
        v34 = " ";
        v35 = 2114;
        v36 = rumbaID3;
        v37 = 2080;
        v38 = " ";
        v39 = 2112;
        v40 = hostname2;
        _os_log_impl(&dword_2720B1000, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s*** Failed to read initial response from %@", buf, 0x34u);
      }

      v21 = "Failed to read initial response from host";
    }

    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0 reason:v21];
LABEL_22:
    [(MFIMAPConnection *)self didFinishCommands:&v27 count:1];
    v16 = (*(self + 176) & 7) != 0;

    goto LABEL_23;
  }

  v16 = 0;
LABEL_23:

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_tryConnectionUsingAccount:(id)account
{
  accountCopy = account;
  v5 = [(MFIMAPConnection *)self _doBasicConnectionUsingAccount:accountCopy];
  getSocket = [(MFConnection *)self getSocket];
  if (!v5)
  {
    goto LABEL_8;
  }

  if (![accountCopy usesSSL] || (objc_msgSend(getSocket, "securityProtocol"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(*MEMORY[0x277CBF0A0], "isEqualToString:", v7), v7, !v8))
  {
    v10 = 1;
    goto LABEL_10;
  }

  if ([(MFIMAPConnection *)self startTLSForAccount:accountCopy])
  {
    clientCertificates = [accountCopy clientCertificates];
    if (clientCertificates)
    {
      [getSocket setCertificates:clientCertificates];
    }

    v10 = [getSocket setSecurityProtocol:*MEMORY[0x277CBF098]];
    [(MFIMAPConnection *)self _updateCapabilitiesForAccount:accountCopy withAuthenticationResponse:0];
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (BOOL)connectUsingAccount:(id)account
{
  accountCopy = account;
  hostname = [accountCopy hostname];
  credentialAccessibility = [accountCopy credentialAccessibility];
  if (credentialAccessibility)
  {
    if (credentialAccessibility == 1)
    {
      v7 = [accountCopy missingPasswordErrorWithTitle:@"Cannot Get Mail"];
      if (v7)
      {
        v8 = +[MFActivityMonitor currentMonitor];
        [v8 setError:v7];
      }
    }

    goto LABEL_8;
  }

  if (!hostname || ![hostname length])
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  [(MFIMAPConnection *)self mf_lock];
  v9 = [(MFIMAPConnection *)self _tryConnectionUsingAccount:accountCopy];
  [(MFIMAPConnection *)self mf_unlock];
LABEL_9:

  return v9;
}

- (void)disconnectAndNotifyDelegate:(BOOL)delegate reason:(const char *)reason
{
  delegateCopy = delegate;
  v30 = *MEMORY[0x277D85DE8];
  [(MFIMAPConnection *)self mf_lock];
  getSocket = [(MFConnection *)self getSocket];
  ptr = self->logger.__ptr_;
  if (getSocket)
  {
    v9 = ctu::OsLogLogger::getOsLogHandle(ptr);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      rumbaID = [getSocket rumbaID];
      v20 = 138412802;
      v21 = rumbaID;
      v22 = 2048;
      v23 = getSocket;
      v24 = 2080;
      reasonCopy = reason;
      _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "#I %@ socket (%p) disconnectAndNotifyDelegate [%s]", &v20, 0x20u);
    }

    [getSocket setEventHandler:0];
    [getSocket setClosingEventHandler:0];
    [(MFConnection *)self abortSocket:getSocket];
    self->_expirationTime = 0.0;
  }

  else
  {
    v11 = ctu::OsLogLogger::getOsLogHandle(ptr);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = [(MFConnection *)self mambaID];
      rumbaID2 = [(MFConnection *)self rumbaID];
      v20 = 136316162;
      v21 = mambaID;
      v22 = 2080;
      v23 = " ";
      v24 = 2114;
      reasonCopy = rumbaID2;
      v26 = 2080;
      v27 = " ";
      v28 = 2080;
      reasonCopy2 = reason;
      _os_log_impl(&dword_2720B1000, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sdisconnectAndNotifyDelegate, repeated [%s] (socket already closed)", &v20, 0x34u);
    }
  }

  [(MFConnection *)self endCompression];
  [(MFIMAPConnection *)self _clearCapabilities];
  separatorChar = self->_separatorChar;
  self->_separatorChar = 0;

  serverNamespace = self->_serverNamespace;
  self->_serverNamespace = 0;

  selectedMailbox = self->_selectedMailbox;
  self->_selectedMailbox = 0;

  [(NSMutableData *)self->_data setLength:0];
  *(self + 176) &= 0xF8u;
  self->_commandNumber = 0;
  self->_idleCommandSequenceNumber = 0;
  [(MFIMAPConnection *)self mf_unlock];
  if (delegateCopy)
  {
    retainedReference = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
    v18 = retainedReference;
    if (retainedReference && (*(&self->_delegateState + 8) & 8) != 0)
    {
      [retainedReference connectionDidDisconnect:self];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int)connectionState
{
  getSocket = [(MFConnection *)self getSocket];
  if (getSocket)
  {
    [(MFIMAPConnection *)self mf_lock];
    if (self->_expirationTime != 0.0 && CFAbsoluteTimeGetCurrent() > self->_expirationTime)
    {
      [(MFIMAPConnection *)self noop];
    }

    isValid = [getSocket isValid];
    v5 = *(self + 176);
    if ((isValid & 1) == 0)
    {
      v5 &= 0xF8u;
      *(self + 176) = v5;
    }

    v6 = isValid ^ 1;
    if ((v5 & 7) != 0)
    {
      while (!(v6 & 1 | (([getSocket isReadable] & 1) == 0)))
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        v7 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:&v10];
        v6 = [v7 responseType] == 3 || objc_msgSend(v7, "responseType") == 6;
        [(MFIMAPConnection *)self didFinishCommands:&v10 count:1];
      }

      v5 = *(self + 176);
    }

    [(MFIMAPConnection *)self mf_unlock];
    if ((v6 & 1) == 0)
    {
      v8 = v5 & 7;
      goto LABEL_19;
    }

    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1 reason:"connectionState -> pendingDisconnect"];
  }

  v8 = 0;
LABEL_19:

  return v8;
}

- (int)fillLiteralBuffer:(char *)buffer count:(unint64_t)count dataLength:(unint64_t)length nonSynchronizingLiteral:(BOOL *)literal
{
  *(self + 154);
  v6 = *(self + 76);
  if ((v6 & 2) != 0)
  {
    *literal = 1;
  }

  else
  {
    if (length > 0x1000)
    {
      *literal = 0;
LABEL_8:
      v7 = "";
      return snprintf(buffer, count, "{%lu%s}\r\n", length, v7);
    }

    *literal = (v6 & 4) != 0;
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  v7 = "+";
  return snprintf(buffer, count, "{%lu%s}\r\n", length, v7);
}

- (unint64_t)_sendCommands:(id *)commands count:(unint64_t)count response:(id *)response
{
  v87 = *MEMORY[0x277D85DE8];
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 1;
  [(MFIMAPConnection *)self locked_finishIdle];
  [(NSMutableData *)self->_data setLength:0];
  if (!count)
  {
    v8 = 0;
    v63 = 0;
    countCopy = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_123;
  }

  countCopy = 0;
  v66 = 0;
  v63 = 0;
  v8 = 0;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    var0 = commands->var0;
    if (commands->var0 == 29)
    {
      var3 = 0;
      goto LABEL_10;
    }

    if (var0 != 32)
    {
      break;
    }

    var3 = commands->var3;
LABEL_9:
    v11 = self->_commandNumber + 1;
    self->_commandNumber = v11;
    commands->var3 = v11;
    snprintf(__str, 0x20uLL, "%lu ", v11);
    [(NSMutableData *)self->_data mf_appendCString:__str];
LABEL_10:
    v68 = [commands->var1 count];
    v12 = commands->var0;
    commandsCopy = commands;
    if (v12 == 37)
    {
      if (!v68)
      {
        goto LABEL_117;
      }

      v13 = [commands->var1 objectAtIndex:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        goto LABEL_117;
      }

      data = self->_data;
      v15 = v13;
      -[NSMutableData mf_appendCString:](data, "mf_appendCString:", [v13 UTF8String]);

      v16 = 1;
    }

    else
    {
      [(NSMutableData *)self->_data mf_appendCString:_IMAPCommandTable[v12]];
      v16 = 0;
    }

    if (v16 < v68)
    {
      v17 = countCopy;
      while (1)
      {
        v18 = [commands->var1 objectAtIndex:v16];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0 || ([v18 hasPrefix:@""]) & 1) == 0)
        {
          [(NSMutableData *)self->_data appendBytes:" " length:1];
          if ((isKindOfClass & 1) == 0)
          {
            break;
          }
        }

        v20 = MFCreateDataWithString();
        if (commands->var0 == 5)
        {
          if (v16 != 1)
          {
            goto LABEL_29;
          }
        }

        else if (v16 != 1 || commands->var0 != 4)
        {
          goto LABEL_29;
        }

        v9 = [(NSMutableData *)self->_data length];
        v8 = [v20 length];
LABEL_29:
        [(NSMutableData *)self->_data appendData:v20];

        ++v16;
        countCopy = v17;
LABEL_110:

        v17 = countCopy;
        commands = commandsCopy;
        if (v16 == v68)
        {
          goto LABEL_115;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = ++v16 == v68 && commands->var0 == 19;
        v23 = v18;
        v24 = [v23 length];
        if (v21)
        {
          v24 += [v23 numberOfNewlinesNeedingConversion:0];
        }

        __str[0] = 0;
        [(NSMutableData *)self->_data appendBytes:buf length:[(MFIMAPConnection *)self fillLiteralBuffer:buf count:32 dataLength:v24 - var3 nonSynchronizingLiteral:__str]];
        v25 = [(MFConnection *)self writeData:self->_data dontLogBytesInRange:v9, v8];
        *(v73 + 24) = v25;
        if (!v25)
        {
          goto LABEL_41;
        }

        if (__str[0])
        {
          v26 = 0;
LABEL_39:
          if ((__str[0] & 1) == 0 && !v26)
          {
LABEL_41:
            v27 = 0;
            goto LABEL_104;
          }

          if (v21)
          {
            [(NSMutableData *)self->_data setLength:0];
            *(v73 + 24) = 1;
            v69[0] = MEMORY[0x277D85DD0];
            v69[1] = 3221225472;
            v69[2] = __49__MFIMAPConnection__sendCommands_count_response___block_invoke_3;
            v69[3] = &unk_279E349D0;
            v69[4] = self;
            v69[5] = &v72;
            [v23 enumerateConvertingNewlinesUsingBlock:v69];
          }

          else if (commands->var0 == 5)
          {
            v71[0] = MEMORY[0x277D85DD0];
            v71[1] = 3221225472;
            v71[2] = __49__MFIMAPConnection__sendCommands_count_response___block_invoke;
            v71[3] = &unk_279E349A8;
            v71[4] = self;
            v71[5] = &v72;
            [v23 enumerateByteRangesUsingBlock:v71];
          }

          else
          {
            v70[0] = MEMORY[0x277D85DD0];
            v70[1] = 3221225472;
            v70[2] = __49__MFIMAPConnection__sendCommands_count_response___block_invoke_2;
            v70[3] = &unk_279E349A8;
            v70[4] = self;
            v70[5] = &v72;
            [v23 enumerateByteRangesUsingBlock:v70];
          }

LABEL_103:
          v27 = v26;
        }

        else
        {
          v26 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:commands];
          if ([v26 responseType] == 1)
          {
            if (v73[3])
            {
              goto LABEL_39;
            }

            goto LABEL_103;
          }

          v27 = 0;
          *(v73 + 24) = 0;
          v63 = v26;
        }

LABEL_104:
        [(NSMutableData *)self->_data setLength:0];
        v52 = *(v73 + 24);

LABEL_109:
        v8 = 0;
        v53 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        countCopy = v66;
        if ((v52 & 1) == 0)
        {
          goto LABEL_114;
        }

        goto LABEL_110;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = ++v16 == v68 && commands->var0 == 19;
        v64 = v18;
        v28 = [v64 length];
        if (v22 && (v29 = v64, v30 = [v64 bytes], v28 >= 1))
        {
          v31 = v30;
          v32 = 0;
          v33 = (v30 + v28);
          do
          {
            v34 = memchr(v31, 10, v33 - v31);
            if (v34 && (v34 == v31 || *(v34 - 1) != 13))
            {
              ++v28;
              v32 = 1;
            }

            if (v34)
            {
              v31 = v34 + 1;
            }

            else
            {
              v31 = v33;
            }
          }

          while (v31 < v33);
        }

        else
        {
          v32 = 0;
        }

        __str[0] = 0;
        [(NSMutableData *)self->_data appendBytes:buf length:[(MFIMAPConnection *)self fillLiteralBuffer:buf count:32 dataLength:v28 - var3 nonSynchronizingLiteral:__str]];
        v35 = [(MFConnection *)self writeData:self->_data dontLogBytesInRange:v9, v8];
        *(v73 + 24) = v35;
        if (!v35)
        {
          goto LABEL_61;
        }

        if (__str[0])
        {
          v36 = 0;
LABEL_59:
          if ((__str[0] & 1) == 0 && !v36)
          {
LABEL_61:
            v37 = 0;
LABEL_108:
            [(NSMutableData *)self->_data setLength:0];
            v52 = *(v73 + 24);

            goto LABEL_109;
          }

          if (v32)
          {
            v38 = v64;
            bytes = [v64 bytes];
            v40 = [v64 length];
            [(NSMutableData *)self->_data setLength:0];
            *(v73 + 24) = 1;
            if (v40 >= 1)
            {
              v41 = &bytes[v40];
              do
              {
                v42 = v41 - bytes;
                v43 = memchr(bytes, 10, v41 - bytes);
                v44 = v43;
                if (v43)
                {
                  v45 = v43 - bytes;
                  if (v43 == bytes)
                  {
                    goto LABEL_80;
                  }

                  v46 = *(v43 - 1);
                  v47 = self->_data;
                  if (v46 != 13)
                  {
                    [(NSMutableData *)v47 appendBytes:bytes length:v45];
LABEL_80:
                    [(NSMutableData *)self->_data appendBytes:&_IMAPLineEnding length:2];
                    goto LABEL_81;
                  }

                  v42 = v45 + 1;
                }

                else
                {
                  v47 = self->_data;
                }

                [(NSMutableData *)v47 appendBytes:bytes length:v42];
LABEL_81:
                if (v44)
                {
                  bytes = v44 + 1;
                }

                else
                {
                  bytes = v41;
                }

                if ([(NSMutableData *)self->_data length]> 0xFFF || bytes >= v41)
                {
                  v49 = [(MFConnection *)self writeData:self->_data];
                  *(v73 + 24) = v49;
                  [(NSMutableData *)self->_data setLength:0];
                }
              }

              while (*(v73 + 24) == 1 && bytes < v41);
            }
          }

          else
          {
            if (commandsCopy->var0 == 5)
            {
              v51 = -[MFConnection writeData:dontLogBytesInRange:](self, "writeData:dontLogBytesInRange:", v64, 0, [v64 length]);
            }

            else
            {
              v51 = [(MFConnection *)self writeData:v64];
            }

            *(v73 + 24) = v51;
          }
        }

        else
        {
          v36 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:commandsCopy];
          if ([v36 responseType] != 1)
          {

            v37 = 0;
            *(v73 + 24) = 0;
            v63 = v36;
            goto LABEL_108;
          }

          if (v73[3])
          {
            goto LABEL_59;
          }
        }

        v37 = v36;
        goto LABEL_108;
      }

      v53 = v8;
LABEL_114:

      countCopy = v17;
      v8 = v53;
      commands = commandsCopy;
    }

LABEL_115:
    if (!v63)
    {
      v63 = 0;
      [(NSMutableData *)self->_data appendBytes:&_IMAPLineEnding length:2];
    }

LABEL_117:
    ++commands;
    if (++v66 == count)
    {
      goto LABEL_123;
    }
  }

  if (var0 < 0x26)
  {
    var3 = 0;
    goto LABEL_9;
  }

  v54 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(MFConnection *)self mambaID];
    rumbaID = [(MFConnection *)self rumbaID];
    v57 = commands->var0;
    *buf = 136316162;
    v77 = mambaID;
    v78 = 2080;
    v79 = " ";
    v80 = 2114;
    v81 = rumbaID;
    v82 = 2080;
    v83 = " ";
    v84 = 1024;
    v85 = v57;
    _os_log_impl(&dword_2720B1000, v54, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s*** Invalid IMAP command %d", buf, 0x30u);
  }

LABEL_123:
  if (*(v73 + 24) == 1 && [(NSMutableData *)self->_data length]&& [(MFConnection *)self writeData:self->_data dontLogBytesInRange:v9, v8])
  {
    countCopy = count;
  }

  [(NSMutableData *)self->_data setLength:0];
  if (response)
  {
    v58 = v63;
    *response = v63;
  }

  self->_expirationTime = CFAbsoluteTimeGetCurrent() + 1500.0;
  if (countCopy < count)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1 reason:"sendCommand -> numSent < commandCount"];
  }

  _Block_object_dispose(&v72, 8);
  v59 = *MEMORY[0x277D85DE8];
  return countCopy;
}

uint64_t __49__MFIMAPConnection__sendCommands_count_response___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) writeBytes:a2 length:a4 dontLogBytesInRange:{0, a4}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

uint64_t __49__MFIMAPConnection__sendCommands_count_response___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) writeBytes:a2 length:a4 dontLogBytesInRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

uint64_t __49__MFIMAPConnection__sendCommands_count_response___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  [*(*(a1 + 32) + 240) appendBytes:a2 length:a3];
  if ([*(*(a1 + 32) + 240) length] > 0xFFF || a5 != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) writeData:*(*(a1 + 32) + 240)];
    [*(*(a1 + 32) + 240) setLength:0];
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

- (id)_copyNextServerResponseForCommand:(id *)command
{
  v4 = [[MFIMAPResponse alloc] initWithConnection:self responseConsumer:command->var4];
  v5 = v4;
  if (!v4 || [(MFIMAPResponse *)v4 responseType]== 6)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1 reason:"_copyNextServerResponseForCommand -> not response or BYE"];

    return 0;
  }

  return v5;
}

- (id)_copyNextTaggedOrContinuationResponseForCommand:(id *)command
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", command->var3];
  v6 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:command];
  if (!v6)
  {
    goto LABEL_20;
  }

  while ([v6 responseType] != 1)
  {
    if (([v6 isUntagged] & 1) == 0)
    {
      v7 = [v6 tag];
      v8 = [v5 isEqualToString:v7];

      if (v8)
      {
        break;
      }
    }

    if ([v6 isUntagged])
    {
      retainedReference = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
      v10 = retainedReference;
      if (!retainedReference || (*(&self->_delegateState + 8) & 1) == 0)
      {

LABEL_9:
        var2 = command->var2;
        if (!var2)
        {
          v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v13 = command->var2;
          command->var2 = v12;

          var2 = command->var2;
        }

        [var2 addObject:v6];
        goto LABEL_12;
      }

      v15 = [retainedReference connection:self shouldHandleUntaggedResponse:v6 forCommand:command];

      if (v15)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v14 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:command];

    v6 = v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  retainedReference2 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v17 = retainedReference2;
  if (retainedReference2 && (*(&self->_delegateState + 8) & 2) != 0)
  {
    [retainedReference2 connection:self didReceiveResponse:v6 forCommand:command];
  }

LABEL_20:
  return v6;
}

- (id)_errorForResponse:(id)response commandParams:(id *)params
{
  v31 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v7 = +[MFActivityMonitor currentMonitor];
  var0 = params->var0;
  if (params->var0 == 13)
  {
    hostname = [(MFConnection *)self hostname];
    if (hostname)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Mail was unable to open this mailbox on the server “%@”.", hostname];
      v12 = v10 = hostname;
      goto LABEL_6;
    }

    var0 = params->var0;
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCACA8] stringWithCString:_IMAPCommandTable[var0] encoding:1];
  v12 = [v13 stringWithFormat:@"IMAP command “%@” failed.", v14];

  v10 = 0;
LABEL_6:
  v15 = _messageFromResponse(responseCopy, v11);
  if (!v15)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = params->var2;
    v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = *v27;
LABEL_9:
      v20 = 0;
      while (1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v15 = _messageFromResponse(*(*(&v26 + 1) + 8 * v20), v17);
        if (v15)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v18)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v15 = 0;
    }
  }

  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v12 techDetails:v15];
  error = [v7 error];
  v23 = error == 0;

  if (v23)
  {
    [v7 setError:v21];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)capabilities
{
  [(MFIMAPConnection *)self mf_lock];
  capabilities = self->_capabilities;
  if (!capabilities)
  {
    [(MFIMAPConnection *)self _fetchCapabilities];
    capabilities = self->_capabilities;
  }

  allObjects = [(NSMutableSet *)capabilities allObjects];
  [(MFIMAPConnection *)self mf_unlock];

  return allObjects;
}

- (BOOL)supportsCapability:(int)capability
{
  [(MFIMAPConnection *)self mf_lock];
  if (!self->_capabilities)
  {
    [(MFIMAPConnection *)self _fetchCapabilities];
  }

  v5 = (*(self + 76) | (*(self + 154) << 16)) & (1 << capability) & 0x7FFFFF;
  if (capability != 15 || !v5)
  {
    [(MFIMAPConnection *)self mf_unlock];
    if (!v5)
    {
      goto LABEL_13;
    }

    switch(capability)
    {
      case 13:
        standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v11 = [standardUserDefaults BOOLForKey:@"DisableCOMPRESS"];
        break;
      case 14:
        standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v11 = [standardUserDefaults BOOLForKey:@"DisableESEARCH"];
        break;
      case 15:
        goto LABEL_6;
      default:
        goto LABEL_15;
    }

    v12 = v11;

    if (v12)
    {
      goto LABEL_13;
    }

LABEL_15:
    v9 = 1;
    return v9 & 1;
  }

  v6 = *(self + 280);
  [(MFIMAPConnection *)self mf_unlock];
  if (v6)
  {
LABEL_13:
    v9 = 0;
    return v9 & 1;
  }

LABEL_6:
  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [standardUserDefaults2 BOOLForKey:@"DisableCONDSTORE"];

  v9 = v8 ^ 1;
  return v9 & 1;
}

- (void)noop
{
  [(MFIMAPConnection *)self mf_lock];
  getSocket = [(MFConnection *)self getSocket];
  timeout = [getSocket timeout];
  if (timeout >= 11)
  {
    [getSocket setTimeout:10];
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  LODWORD(v6) = 1;
  v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v6 count:1];
  if (timeout >= 11)
  {
    [getSocket setTimeout:timeout];
  }

  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:&v6 count:1];
}

- (BOOL)authenticateUsingAccount:(id)account
{
  accountCopy = account;
  password = [accountCopy password];
  [(MFIMAPConnection *)self mf_lock];
  if ((*(self + 176) & 6) != 0)
  {
    goto LABEL_3;
  }

  v12.receiver = self;
  v12.super_class = MFIMAPConnection;
  if ([(MFConnection *)&v12 authenticateUsingAccount:accountCopy])
  {
    goto LABEL_3;
  }

  if (!-[MFIMAPConnection isValid](self, "isValid") || (+[MFActivityMonitor currentMonitor](MFActivityMonitor, "currentMonitor"), v8 = objc_claimAutoreleasedReturnValue(), [v8 error], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
LABEL_14:
    v6 = 0;
    goto LABEL_4;
  }

  if ([(MFIMAPConnection *)self loginDisabled])
  {
    v10 = [accountCopy loginDisabledErrorWithTitle:@"Cannot Get Mail"];
    v11 = +[MFActivityMonitor currentMonitor];
    [v11 setError:v10];
LABEL_13:

    goto LABEL_14;
  }

  if (!password)
  {
    v10 = [accountCopy missingPasswordErrorWithTitle:@"Cannot Get Mail"];
    v11 = +[MFActivityMonitor currentMonitor];
    [v11 setError:v10];
    goto LABEL_13;
  }

  if (![(MFIMAPConnection *)self loginWithAccount:accountCopy password:password])
  {
    goto LABEL_14;
  }

LABEL_3:
  [(MFIMAPConnection *)self _sendClientInfoIfSupported];
  [(MFIMAPConnection *)self _enableCompressionIfSupported];
  v6 = 1;
LABEL_4:
  [(MFIMAPConnection *)self mf_unlock];

  return v6;
}

- (id)_serverErrorForAccount:(id)account response:(id)response command:(id *)command
{
  accountCopy = account;
  v8 = [accountCopy errorForResponse:response];
  v9 = [command->var2 count];
  if (!v8)
  {
    v10 = v9;
    if (v9)
    {
      v11 = 1;
      do
      {
        v12 = [command->var2 objectAtIndex:v11 - 1];
        v8 = [accountCopy errorForResponse:v12];

        if (v8)
        {
          v13 = 1;
        }

        else
        {
          v13 = v11 >= v10;
        }

        ++v11;
      }

      while (!v13);
    }
  }

  return v8;
}

- (void)_updateCapabilitiesForAccount:(id)account withAuthenticationResponse:(id)response
{
  accountCopy = account;
  responseCopy = response;
  [(MFIMAPConnection *)self _clearCapabilities];
  if (responseCopy && [responseCopy responseCode] == 14)
  {
    responseInfo = [responseCopy responseInfo];
    [(MFIMAPConnection *)self _addCapabilities:responseInfo];
  }

  else
  {
    responseInfo = [(MFIMAPConnection *)self capabilities];
  }

  [accountCopy _setCapabilities:responseInfo];
}

- (int)_doIMAPLoginForAccount:(id)account quotedUsername:(id)username password:(id)password
{
  v41[2] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  usernameCopy = username;
  passwordCopy = password;
  v26 = 5;
  v41[0] = usernameCopy;
  v41[1] = passwordCopy;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v11 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v26 count:1];
  responseType = [v11 responseType];
  if (responseType == 2)
  {
    *(self + 176) = *(self + 176) & 0xF8 | 2;
    error = 0;
    [(MFIMAPConnection *)self _updateCapabilitiesForAccount:accountCopy withAuthenticationResponse:v11];
  }

  else
  {
    v14 = +[MFActivityMonitor currentMonitor];
    error = [v14 error];

    if (error)
    {
      goto LABEL_6;
    }

    error = [(MFIMAPConnection *)self _serverErrorForAccount:accountCopy response:v11 command:&v26];
    if (error)
    {
      goto LABEL_6;
    }

    v15 = MEMORY[0x277CCACA8];
    hostname = [accountCopy hostname];
    v17 = [v15 stringWithFormat:@"The user name or password for “%@” is incorrect.", hostname];

    error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:v17 title:@"Cannot Get Mail" userInfo:0];

    if (error)
    {
LABEL_6:
      if ((*(self + 176) & 6) != 0)
      {
        *(self + 176) = *(self + 176) & 0xF8 | 1;
      }

      v18 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        mambaID = [(MFConnection *)self mambaID];
        rumbaID = [(MFConnection *)self rumbaID];
        userString = [v11 userString];
        *buf = 136316162;
        v32 = mambaID;
        v33 = 2080;
        v34 = " ";
        v35 = 2114;
        v36 = rumbaID;
        v37 = 2080;
        v38 = " ";
        v39 = 2112;
        v40 = userString;
        v24 = userString;
        _os_log_error_impl(&dword_2720B1000, v18, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%smore error info: %@", buf, 0x34u);
      }

      v19 = +[MFActivityMonitor currentMonitor];
      [v19 setError:error];
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&v26 count:1];

  v20 = *MEMORY[0x277D85DE8];
  return responseType;
}

- (BOOL)loginWithAccount:(id)account password:(id)password
{
  accountCopy = account;
  passwordCopy = password;
  [(MFIMAPConnection *)self mf_lock];
  if ((*(self + 176) & 6) != 0)
  {
    v8 = 1;
  }

  else
  {
    username = [accountCopy username];
    v10 = _IMAPCreateQuotedString(username);
    if (passwordCopy && (v11 = _IMAPNeedsLiteralCharacterSet, v19.length = [(__CFString *)passwordCopy length], v19.location = 0, CFStringFindCharacterFromSet(passwordCopy, v11, v19, 0, 0)))
    {
      v12 = [(__CFString *)passwordCopy dataUsingEncoding:4 allowLossyConversion:0];
      v13 = 1;
    }

    else
    {
      v12 = _IMAPCreateQuotedString(&passwordCopy->isa);
      v13 = 0;
    }

    v14 = *(self + 176) & 6;
    if ((*(self + 176) & 6) == 0)
    {
      v15 = [(MFIMAPConnection *)self _doIMAPLoginForAccount:accountCopy quotedUsername:v10 password:v12];
      v14 = *(self + 176) & 6;
      v16 = (*(self + 176) & 6) != 0;
      if (v15 != 3)
      {
        v16 = 1;
      }

      if (((v13 | v16) & 1) == 0)
      {
        v17 = [(__CFString *)passwordCopy dataUsingEncoding:4 allowLossyConversion:0];

        [(MFIMAPConnection *)self _doIMAPLoginForAccount:accountCopy quotedUsername:v10 password:v17];
        v14 = *(self + 176) & 6;
        v12 = v17;
      }
    }

    v8 = v14 != 0;
  }

  [(MFIMAPConnection *)self mf_unlock];

  return v8;
}

- (BOOL)logout
{
  if ((*(self + 176) & 7) == 0)
  {
    return 1;
  }

  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  LODWORD(v5) = 2;
  [(MFIMAPConnection *)self mf_lock];
  v3 = [(MFIMAPConnection *)self _sendCommands:&v5 count:1 response:0]!= 0;
  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1 reason:"MFIMAPConnection logout"];
  [(MFIMAPConnection *)self didFinishCommands:&v5 count:1];

  return v3;
}

- (id)separatorChar
{
  [(MFIMAPConnection *)self mf_lock];
  v3 = self->_separatorChar;
  [(MFIMAPConnection *)self mf_unlock];
  if (!v3)
  {
    v4 = [(MFIMAPConnection *)self _doListCommand:6 withReference:&stru_288159858 mailboxName:&stru_288159858 options:0 getSpecialUse:0 statusDataItems:0 statusEntriesByMailbox:0];

    if (v4)
    {
      [(MFIMAPConnection *)self mf_lock];
      separatorChar = self->_separatorChar;
      if (!separatorChar)
      {
        v6 = [@"/" copyWithZone:0];
        v7 = self->_separatorChar;
        self->_separatorChar = v6;

        separatorChar = self->_separatorChar;
      }

      v3 = separatorChar;
      [(MFIMAPConnection *)self mf_unlock];
    }

    else
    {
      v3 = 0;
    }
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = &stru_288159858;
  }

  v9 = v8;

  return v8;
}

- (id)serverPathPrefix
{
  if (!self->_serverNamespace && [(MFIMAPConnection *)self supportsCapability:7])
  {
    _doNamespaceCommand = [(MFIMAPConnection *)self _doNamespaceCommand];
  }

  serverNamespace = self->_serverNamespace;

  return serverNamespace;
}

- (id)_doNamespaceCommand
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(MFIMAPConnection *)self supportsCapability:7])
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    LODWORD(v18) = 30;
    v3 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v18 count:1];
    if ([v3 responseType] == 2)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = v19;
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v21 count:16];
      if (v5)
      {
        v6 = *v15;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v15 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v14 + 1) + 8 * i);
            if ([v8 responseType] == 22)
            {
              privateNamespaces = [v8 privateNamespaces];
              firstObject = [privateNamespaces firstObject];

              if (firstObject)
              {
                v11 = [firstObject objectForKeyedSubscript:@"_IMAPNamespacePrefixKey"];
                if ([v11 length])
                {
                  objc_storeStrong(&self->_serverNamespace, v11);

                  goto LABEL_19;
                }
              }
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v14 objects:v21 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      v11 = 0;
LABEL_19:
    }

    else
    {
      v11 = 0;
    }

    [(MFIMAPConnection *)self didFinishCommands:&v18 count:1, v14];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_doListCommand:(int)command withReference:(id)reference mailboxName:(id)name options:(int)options getSpecialUse:(BOOL)use statusDataItems:(id)items statusEntriesByMailbox:(id *)mailbox
{
  useCopy = use;
  v87[1] = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  nameCopy = name;
  itemsCopy = items;
  theString = nameCopy;
  if (!nameCopy)
  {
    v77 = 0;
    array = 0;
    goto LABEL_76;
  }

  [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v72 = v82 = command;
  v83 = v72;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v15 = MFIMAPStringFromMailboxName(referenceCopy);
  [v72 addObject:v15];

  if (options == 1)
  {
    v16 = @"%";
LABEL_7:
    if ([(__CFString *)nameCopy length])
    {
      separatorChar = [(MFIMAPConnection *)self separatorChar];
      MutableCopy = CFStringCreateMutableCopy(0, [(__CFString *)separatorChar length]+ [(__CFString *)nameCopy length]+ [(__CFString *)v16 length], nameCopy);
      v19 = MutableCopy;
      if (separatorChar)
      {
        CFStringAppend(MutableCopy, separatorChar);
      }

      CFStringAppend(v19, v16);
      v20 = MFIMAPStringFromMailboxName(v19);
      [v72 addObject:v20];

      if (v19)
      {
        CFRelease(v19);
      }
    }

    else
    {
      separatorChar = MFIMAPStringFromMailboxName(v16);
      [v72 addObject:separatorChar];
    }

    goto LABEL_14;
  }

  if (options == 2)
  {
    v16 = @"*";
    goto LABEL_7;
  }

  separatorChar = MFIMAPStringFromMailboxName(nameCopy);
  [v72 addObject:separatorChar];
LABEL_14:

  v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (useCopy)
  {
    [v70 addObject:@"SPECIAL-USE"];
  }

  if ([itemsCopy count] && -[MFIMAPConnection supportsCapability:](self, "supportsCapability:", 21))
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:itemsCopy];
    v24 = [v22 initWithFormat:@"STATUS %@", v23];

    [v70 addObject:v24];
    v77 = v21;
  }

  else
  {
    v77 = 0;
  }

  if ([v70 count])
  {
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    v26 = [v70 componentsJoinedByString:@" "];
    v27 = [v25 initWithFormat:@"RETURN (%@)", v26];

    [v72 addObject:v27];
  }

  v28 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v82 count:1];
  selfCopy = self;
  v29 = [v28 responseType] == 2;

  if (v29)
  {
    v80 = [v84 count];
    array = [MEMORY[0x277CBEB18] array];
    if (v80)
    {
      v30 = 0;
      while (1)
      {
        v31 = v30;
        v81 = [v84 objectAtIndex:?];
        responseType = [v81 responseType];
        v33 = responseType;
        if ((responseType - 15) <= 1)
        {
          break;
        }

        if (v77 && responseType == 13)
        {
          statusEntries = [v81 statusEntries];
          mailboxName = [v81 mailboxName];
          [v77 setObject:statusEntries forKeyedSubscript:mailboxName];

          [v84 removeObjectAtIndex:v31];
LABEL_71:
          --v80;
          goto LABEL_72;
        }

        ++v31;
LABEL_72:

        v30 = v31;
        if (v31 >= v80)
        {
          goto LABEL_75;
        }
      }

      mailboxAttributes = [v81 mailboxAttributes];
      mailboxName2 = [v81 mailboxName];
      separator = [v81 separator];
      if (separator)
      {
        [(MFIMAPConnection *)selfCopy mf_lock];
        v34 = selfCopy;
        if (!selfCopy->_separatorChar)
        {
          v35 = [separator copyWithZone:0];
          separatorChar = selfCopy->_separatorChar;
          selfCopy->_separatorChar = v35;

          v34 = selfCopy;
        }

        [(MFIMAPConnection *)v34 mf_unlock];
      }

      if (mailboxName2)
      {
        if ([mailboxName2 length] && (!-[__CFString length](theString, "length") || objc_msgSend(mailboxName2, "hasPrefix:", theString)))
        {
          array2 = array;
          v38 = [(__CFString *)theString length];
          if ([(NSString *)selfCopy->_serverNamespace length])
          {
            v67 = [mailboxName2 hasPrefix:selfCopy->_serverNamespace] ^ 1;
          }

          else
          {
            v67 = 0;
          }

          if (separator)
          {
            [mailboxName2 rangeOfString:separator options:8 range:{v38, objc_msgSend(mailboxName2, "length") - v38}];
            if (v41)
            {
              v38 += [separator length];
            }
          }

          if (v38)
          {
            v42 = [mailboxName2 substringFromIndex:v38];

            mailboxName2 = v42;
          }

          if (!separator)
          {
            v87[0] = mailboxName2;
            v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];
            v47 = 1;
LABEL_52:
            dictionary = 0;
            v49 = 0;
            while (2)
            {
              v50 = [v43 objectAtIndex:v49];
              v51 = [array2 mf_indexOfMailboxDictionaryWithName:v50];
              if (v51 == 0x7FFFFFFFFFFFFFFFLL)
              {

                goto LABEL_56;
              }

              v52 = [array2 objectAtIndex:v51];

              dictionary = v52;
              if (!v52)
              {
LABEL_56:
                dictionary = [MEMORY[0x277CBEB38] dictionary];
                [dictionary setObject:v50 forKey:@"MailboxName"];
                if (v49 + 1 < v47)
                {
                  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
                  [dictionary setObject:v53 forKey:@"IMAPMailboxAttributes"];

                  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
                  [dictionary setObject:v54 forKey:@"MailboxAttributes"];
                }

                [array2 vf_insertObject:dictionary usingSortFunction:_MFCompareMailboxDictionariesByName context:0 allowDuplicates:1];
              }

              v55 = [dictionary objectForKey:@"MailboxChildren"];

              array2 = v55;
              if (!((v55 != 0) | (options != 2) | mailboxAttributes & 1))
              {
                array2 = [MEMORY[0x277CBEB18] array];
                [dictionary setObject:array2 forKey:@"MailboxChildren"];
              }

              if (v47 == ++v49)
              {
                goto LABEL_62;
              }

              continue;
            }
          }

          v43 = [mailboxName2 componentsSeparatedByString:?];
          v44 = [v43 count];
          if (v44)
          {
            lastObject = [v43 lastObject];
            v46 = [lastObject isEqualToString:&stru_288159858];

            v47 = v44 - (v46 & 1);
            if (v44 != (v46 & 1))
            {
              goto LABEL_52;
            }
          }

          dictionary = 0;
LABEL_62:
          v56 = v43;
          v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mailboxAttributes];
          [dictionary setObject:v57 forKey:@"IMAPMailboxAttributes"];

          v58 = [dictionary objectForKey:@"MailboxAttributes"];
          v59 = [v58 unsignedIntValue] & 0xFFFFFFFD | (2 * ((mailboxAttributes >> 1) & 1));
          if (v67)
          {
            v60 = v59 | 0x80;
          }

          else
          {
            v60 = v59;
          }

          v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v60];
          [dictionary setObject:v61 forKey:@"MailboxAttributes"];

          if (v33 == 15)
          {
            extraAttributes = [v81 extraAttributes];
            if ([extraAttributes count])
            {
              [dictionary setObject:extraAttributes forKey:@"MailboxExtraAttributes"];
            }
          }
        }
      }

      else
      {
        mailboxName2 = 0;
      }

      [v84 removeObjectAtIndex:v31];

      goto LABEL_71;
    }
  }

  else
  {
    array = 0;
  }

LABEL_75:
  [(MFIMAPConnection *)selfCopy didFinishCommands:&v82 count:1];

LABEL_76:
  v63 = v77;
  if (mailbox)
  {
    v64 = v77;
    v63 = v77;
    *mailbox = v77;
  }

  v65 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)close
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  LODWORD(v6) = 18;
  [(MFIMAPConnection *)self mf_lock];
  v3 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v6 count:1];
  responseType = [v3 responseType];

  if (responseType == 2)
  {
    *(self + 176) = *(self + 176) & 0xF8 | 2;
    selectedMailbox = self->_selectedMailbox;
    self->_selectedMailbox = 0;
  }

  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:&v6 count:1];
}

- (BOOL)closeAndLogout
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  DWORD2(v8) = 2;
  [(MFIMAPConnection *)self mf_lock:18];
  v3 = [(MFIMAPConnection *)self _sendCommands:&v7 count:2 response:0];
  [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1 reason:"MFIMAPConnection closeAndLogout"];
  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:&v7 count:2];
  for (i = 0; i != -80; i -= 40)
  {
  }

  result = v3 != 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)unselect
{
  if ([(MFIMAPConnection *)self supportsCapability:9])
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    LODWORD(v6) = 25;
    [(MFIMAPConnection *)self mf_lock];
    v3 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v6 count:1];
    responseType = [v3 responseType];

    if (responseType == 2)
    {
      *(self + 176) = *(self + 176) & 0xF8 | 2;
      selectedMailbox = self->_selectedMailbox;
      self->_selectedMailbox = 0;
    }

    [(MFIMAPConnection *)self mf_unlock];
    [(MFIMAPConnection *)self didFinishCommands:&v6 count:1];
  }

  else
  {

    [(MFIMAPConnection *)self close];
  }
}

- (void)socketClosedUnderneath
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(MFConnection *)self mambaID];
    rumbaID = [(MFConnection *)self rumbaID];
    v7 = 136315906;
    v8 = mambaID;
    v9 = 2080;
    v10 = " ";
    v11 = 2114;
    v12 = rumbaID;
    v13 = 2080;
    v14 = " ";
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%ssocket is closed, terminating connection", &v7, 0x2Au);
  }

  [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1 reason:"MFIMAPConnection socketClosedUnderneath"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleStreamEvent:(unint64_t)event
{
  eventCopy = event;
  v27 = *MEMORY[0x277D85DE8];
  v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    mambaID = [(MFConnection *)self mambaID];
    rumbaID = [(MFConnection *)self rumbaID];
    *buf = 136316162;
    v18 = mambaID;
    v19 = 2080;
    v20 = " ";
    v21 = 2114;
    v22 = rumbaID;
    v23 = 2080;
    v24 = " ";
    v25 = 1024;
    v26 = eventCopy;
    _os_log_debug_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEBUG, "#D %s%s%{public}@%shandleStreamEvent %d", buf, 0x30u);
  }

  if (!self->_streamEventQueue)
  {
    v6 = [[MFInvocationQueue alloc] initWithMambaID:"invc.con" mambaID:[(MFConnection *)self mambaID]];
    streamEventQueue = self->_streamEventQueue;
    self->_streamEventQueue = v6;
  }

  if ((eventCopy & 2) != 0)
  {
    v8 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(MFConnection *)self mambaID];
      [(MFConnection *)self rumbaID];
      objc_claimAutoreleasedReturnValue();
      [MFIMAPConnection handleStreamEvent:];
    }

    v9 = self->_streamEventQueue;
    v10 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleBytesAvailable target:self];
    [(MFInvocationQueue *)v9 addInvocation:v10];
  }

  if ((eventCopy & 0x10) != 0)
  {
    v11 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(MFConnection *)self mambaID];
      [(MFConnection *)self rumbaID];
      objc_claimAutoreleasedReturnValue();
      [MFIMAPConnection handleStreamEvent:];
    }

    v12 = self->_streamEventQueue;
    v13 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_socketClosedUnderneath target:self];
    [(MFInvocationQueue *)v12 addInvocation:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleBytesAvailable
{
  v16 = *MEMORY[0x277D85DE8];
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFConnection *)self hasBytesAvailable])
  {
    *&v3 = 136316162;
    v11 = v3;
    do
    {
      v4 = [[MFIMAPResponse alloc] initWithConnection:self responseConsumer:0];
      if ([(MFIMAPResponse *)v4 isUntagged]&& (*(&self->_delegateState + 8) & 2) != 0)
      {
        if ([(MFIMAPConnection *)self isIdle])
        {
          v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            mambaID = [(MFConnection *)self mambaID];
            rumbaID = [(MFConnection *)self rumbaID];
            *buf = v11;
            *&buf[4] = mambaID;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2114;
            *&buf[24] = rumbaID;
            *v13 = 2080;
            *&v13[2] = " ";
            v14 = 2112;
            v15 = v4;
            _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sreceived response while idling: %@", buf, 0x34u);
          }
        }

        *v13 = 0;
        memset(buf, 0, sizeof(buf));
        *buf = 28;
        v8 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference:v11];
        v9 = v8;
        if (v8 && (*(&self->_delegateState + 8) & 2) != 0)
        {
          [v8 connection:self didReceiveResponse:v4 forCommand:buf];
        }
      }
    }

    while ([(MFConnection *)self hasBytesAvailable]);
  }

  [(MFIMAPConnection *)self mf_unlock];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)locked_startIdle
{
  v38 = *MEMORY[0x277D85DE8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __36__MFIMAPConnection_locked_startIdle__block_invoke;
  v27[3] = &unk_279E34528;
  v27[4] = self;
  v3 = MEMORY[0x2743C3100](v27, a2);
  if ([(MFIMAPConnection *)self isIdle]|| ![(MFIMAPConnection *)self supportsCapability:5])
  {
    goto LABEL_9;
  }

  retainedReference = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v5 = retainedReference;
  if (!retainedReference || (*(&self->_delegateState + 8) & 0x800) == 0)
  {

LABEL_6:
    v6 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = [(MFConnection *)self mambaID];
      rumbaID = [(MFConnection *)self rumbaID];
      delegate = [(MFIMAPConnection *)self delegate];
      *buf = 136316162;
      v29 = mambaID;
      v30 = 2080;
      v31 = " ";
      v32 = 2114;
      v33 = rumbaID;
      v34 = 2080;
      v35 = " ";
      v36 = 2112;
      v37 = delegate;
      _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sdelegate rejected starting IDLE state: %@", buf, 0x34u);
    }

    goto LABEL_9;
  }

  v11 = [retainedReference shouldStartIdleForConnection:self];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    mambaID2 = [(MFConnection *)self mambaID];
    rumbaID2 = [(MFConnection *)self rumbaID];
    delegate2 = [(MFIMAPConnection *)self delegate];
    *buf = 136316162;
    v29 = mambaID2;
    v30 = 2080;
    v31 = " ";
    v32 = 2114;
    v33 = rumbaID2;
    v34 = 2080;
    v35 = " ";
    v36 = 2112;
    v37 = delegate2;
    _os_log_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sstarting IDLE state for delegate %@", buf, 0x34u);
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  LODWORD(v24) = 28;
  v23 = 0;
  v16 = [(MFIMAPConnection *)self _sendCommands:&v24 count:1 response:&v23];
  v17 = v23;
  if (v16)
  {
    v18 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:&v24];

    if ([v18 responseType] == 1)
    {
      self->_idleCommandSequenceNumber = *(&v25 + 1);
      v17 = v18;
      v3[2](v3);
    }

    else
    {
      v17 = v18;
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&v24 count:1];
  if ([(MFIMAPConnection *)self isIdle])
  {
    [(MFIMAPConnection *)self locked_scheduleIdleResetAfterDelay:1740.0];
  }

  else
  {
    v19 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      mambaID3 = [(MFConnection *)self mambaID];
      rumbaID3 = [(MFConnection *)self rumbaID];
      delegate3 = [(MFIMAPConnection *)self delegate];
      *buf = 136316162;
      v29 = mambaID3;
      v30 = 2080;
      v31 = " ";
      v32 = 2114;
      v33 = rumbaID3;
      v34 = 2080;
      v35 = " ";
      v36 = 2112;
      v37 = delegate3;
      _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sfailed to enter IDLE state: %@", buf, 0x34u);
    }
  }

LABEL_9:
  v3[2](v3);

  v10 = *MEMORY[0x277D85DE8];
}

void __36__MFIMAPConnection_locked_startIdle__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) getSocket];
  v2 = MEMORY[0x277CBEAE8];
  v3 = [VMWeakConnectionDelegate forConnection:*(a1 + 32)];
  v4 = [v2 mf_invocationWithSelector:sel_handleStreamEvent_ target:v3];
  [v5 setEventHandler:v4];
}

- (void)locked_finishIdle
{
  v16 = *MEMORY[0x277D85DE8];
  getSocket = [(MFConnection *)self getSocket];
  [getSocket setEventHandler:0];

  idleSubscriptionCancelable = [(MFIMAPConnection *)self idleSubscriptionCancelable];
  [idleSubscriptionCancelable cancel];

  if ([(MFIMAPConnection *)self isIdle])
  {
    v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = [(MFConnection *)self mambaID];
      rumbaID = [(MFConnection *)self rumbaID];
      delegate = [(MFIMAPConnection *)self delegate];
      v10 = 136316162;
      *v11 = mambaID;
      *&v11[8] = 2080;
      *&v11[10] = " ";
      *&v11[18] = 2114;
      idleCommandSequenceNumber = rumbaID;
      *v13 = 2080;
      *&v13[2] = " ";
      v14 = 2112;
      v15 = delegate;
      _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sleaving IDLE state for delegate: %@", &v10, 0x34u);
    }

    v10 = 29;
    *&v11[4] = 0uLL;
    idleCommandSequenceNumber = self->_idleCommandSequenceNumber;
    *v13 = 0;
    self->_idleCommandSequenceNumber = 0;
    [(MFIMAPConnection *)self _sendCommands:&v10 count:1 response:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)finishIdle
{
  [(MFIMAPConnection *)self mf_lock];
  [(MFIMAPConnection *)self locked_finishIdle];

  [(MFIMAPConnection *)self mf_unlock];
}

- (void)locked_scheduleIdle
{
  if ([(MFIMAPConnection *)self isValid])
  {
    getSocket = [(MFConnection *)self getSocket];
    v4 = MEMORY[0x277CBEAE8];
    v5 = [VMWeakConnectionDelegate forConnection:self];
    v6 = [v4 mf_invocationWithSelector:sel_handleStreamEvent_ target:v5];
    [getSocket setEventHandler:v6];

    v7 = *(self + 76) | (*(self + 154) << 16);
    if ((*(self + 76) & 0x20) != 0)
    {
      if (self->_selectedMailbox)
      {

        [(MFIMAPConnection *)self locked_scheduleIdleResetAfterDelay:2.0];
      }
    }
  }
}

- (void)scheduleIdleReset
{
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFIMAPConnection *)self isValid])
  {
    v3 = *(self + 76) | (*(self + 154) << 16);
    if ((*(self + 76) & 0x20) != 0)
    {
      if (self->_selectedMailbox)
      {
        [(MFIMAPConnection *)self locked_scheduleIdleResetAfterDelay:2.0];
      }
    }
  }

  [(MFIMAPConnection *)self mf_unlock];
}

- (void)locked_scheduleIdleResetAfterDelay:(double)delay
{
  objc_initWeak(&location, self);
  idleSubscriptionCancelable = [(MFIMAPConnection *)self idleSubscriptionCancelable];
  [idleSubscriptionCancelable cancel];

  v6 = [MEMORY[0x277D071B8] globalAsyncSchedulerWithQualityOfService:17];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__MFIMAPConnection_locked_scheduleIdleResetAfterDelay___block_invoke;
  v8[3] = &unk_279E349F8;
  objc_copyWeak(v9, &location);
  v9[1] = *&delay;
  v7 = [v6 afterDelay:v8 performBlock:delay];
  [(MFIMAPConnection *)self setIdleSubscriptionCancelable:v7];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __55__MFIMAPConnection_locked_scheduleIdleResetAfterDelay___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = ctu::OsLogLogger::getOsLogHandle(WeakRetained[36]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 mambaID];
      v6 = [v3 rumbaID];
      v7 = *(a1 + 40);
      v8 = [v3 delegate];
      v15 = 136316418;
      v16 = v5;
      v17 = 2080;
      v18 = " ";
      v19 = 2114;
      v20 = v6;
      v21 = 2080;
      v22 = " ";
      v23 = 2048;
      v24 = v7;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%stimer fired for delayed IDLE reset after %0.2fs delay: %@", &v15, 0x3Eu);
    }

    [v3 mf_lock];
    v9 = *(v3 + 76) | (*(v3 + 154) << 16);
    if ((v3[19] & 0x20) != 0)
    {
      v10 = ctu::OsLogLogger::getOsLogHandle(v3[36]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v3 mambaID];
        v12 = [v3 rumbaID];
        v13 = [v3 delegate];
        v15 = 136316162;
        v16 = v11;
        v17 = 2080;
        v18 = " ";
        v19 = 2114;
        v20 = v12;
        v21 = 2080;
        v22 = " ";
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_2720B1000, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sresetting IDLE state: %@", &v15, 0x34u);
      }

      [v3 locked_finishIdle];
      [v3 locked_startIdle];
    }

    [v3 mf_unlock];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)expunge
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  LODWORD(v7) = 16;
  v3 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v7 count:1];
  if ([v3 responseType] == 4)
  {
    v4 = [(MFIMAPConnection *)self _errorForResponse:v3 commandParams:&v7];
  }

  else
  {
    v4 = 0;
  }

  [(MFIMAPConnection *)self didFinishCommands:&v7 count:1];
  if (v4)
  {
    v5 = +[MFActivityMonitor currentMonitor];
    [v5 setError:v4];
  }

  return 0;
}

- (BOOL)expungeUids:(id)uids
{
  v22[1] = *MEMORY[0x277D85DE8];
  uidsCopy = uids;
  if (![(MFIMAPConnection *)self supportsCapability:3])
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:@"*** Server doesn't support UIDPLUS"];
    v13 = v9 = 0;
    if (!v13)
    {
      goto LABEL_11;
    }

LABEL_9:
    v14 = +[MFActivityMonitor currentMonitor];
    [v14 setError:v13];

    goto LABEL_11;
  }

  if (![uidsCopy count])
  {
    v9 = 1;
    goto LABEL_11;
  }

  v5 = [(MFIMAPConnection *)self messageSetForNumbers:uidsCopy];
  v22[0] = v5;
  [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v6 = v17 = 17;
  v18 = v6;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v7 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v17 count:1];
  responseType = [v7 responseType];
  v9 = responseType == 2;
  [(MFIMAPConnection *)self didFinishCommands:&v17 count:1];
  if (responseType != 2 && (+[MFActivityMonitor currentMonitor](MFActivityMonitor, "currentMonitor"), v10 = objc_claimAutoreleasedReturnValue(), [v10 error], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v10, v12))
  {
    v13 = [(MFIMAPConnection *)self _errorForResponse:v7 commandParams:&v17];
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    goto LABEL_9;
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)fetchStatusForMailboxes:(id)mailboxes args:(id)args
{
  mailboxesCopy = mailboxes;
  mailboxesCopy = [(MFIMAPConnection *)self parenthesizedStringWithObjects:args, mailboxesCopy];
  selfCopy = self;
  v9 = mailboxesCopy;
  v26 = mailboxesCopy;
  v27 = v9;
  std::vector<IMAPCommandParameters>::vector[abi:ne200100](&v30, 0x1EuLL);
  v10 = v9;
  v11 = [v9 count];
  Mutable = CFArrayCreateMutable(0, 2, MEMORY[0x277CBF128]);
  [(__CFArray *)Mutable addObject:&stru_288159858];
  if (v26)
  {
    [(__CFArray *)Mutable addObject:v26];
  }

  if (v11)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = [v10 objectAtIndex:v13];
      separatorChar = [(MFIMAPConnection *)selfCopy separatorChar];
      if ([v15 hasPrefix:separatorChar])
      {
        v17 = [v15 substringFromIndex:{objc_msgSend(separatorChar, "length")}];

        v15 = v17;
      }

      v18 = MFIMAPStringFromMailboxName(v15);
      [(__CFArray *)Mutable replaceObjectAtIndex:0 withObject:v18];

      *(v30 + 40 * v14) = 8;
      v19 = [(__CFArray *)Mutable copy];
      v20 = v30 + 40 * v14;
      v21 = *(v20 + 8);
      *(v20 + 8) = v19;

      if (++v14 == 30 || v11 - 1 == v13)
      {
        v22 = [(MFIMAPConnection *)selfCopy _responseFromSendingCommands:v30 count:v14];
        responseType = [v22 responseType];

        [(MFIMAPConnection *)selfCopy didFinishCommands:v30 count:v14];
        if (responseType != 2)
        {

          v10 = v27;
          break;
        }

        std::vector<IMAPCommandParameters>::vector[abi:ne200100](&v28, 0x1EuLL);
        v24 = v30;
        v30 = v28;
        v28 = v24;
        v25 = v29;
        v29 = v31;
        v31 = v25;
        v32 = &v28;
        std::vector<IMAPCommandParameters>::__destroy_vector::operator()[abi:ne200100](&v32);
        v14 = 0;
        v10 = v27;
      }

      ++v13;
    }

    while (v11 != v13);
  }

  *&v28 = &v30;
  std::vector<IMAPCommandParameters>::__destroy_vector::operator()[abi:ne200100](&v28);
}

- (BOOL)selectMailbox:(id)mailbox withAccount:(id)account
{
  mailboxCopy = mailbox;
  accountCopy = account;
  v8 = _processSelectCommand(self, 13, mailboxCopy);
  if (v8)
  {
    [(MFIMAPConnection *)self _updateSearchCapabilityWithAccount:accountCopy];
  }

  return v8;
}

- (BOOL)createMailbox:(id)mailbox
{
  v10[1] = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v5 = MFIMAPStringFromMailboxName(mailboxCopy);
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = [(MFIMAPConnection *)self _sendMailboxCommand:10 withArguments:v6];
  if (v7)
  {
    [(MFIMAPConnection *)self _sendMailboxCommand:14 withArguments:v6];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)deleteMailbox:(id)mailbox
{
  v9[1] = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v5 = MFIMAPStringFromMailboxName(mailboxCopy);
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [(MFIMAPConnection *)self _sendMailboxCommand:15 withArguments:v6];
  LOBYTE(self) = [(MFIMAPConnection *)self _sendMailboxCommand:11 withArguments:v6];

  v7 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)renameMailbox:(id)mailbox toMailbox:(id)toMailbox
{
  v18[2] = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  toMailboxCopy = toMailbox;
  v8 = MFIMAPStringFromMailboxName(mailboxCopy);

  v9 = MFIMAPStringFromMailboxName(toMailboxCopy);

  v18[0] = v8;
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v11 = [(MFIMAPConnection *)self _sendMailboxCommand:12 withArguments:v10];
  if (v11)
  {
    v17 = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(MFIMAPConnection *)self _sendMailboxCommand:15 withArguments:v12];

    v16 = v9;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(MFIMAPConnection *)self _sendMailboxCommand:14 withArguments:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)subscribeMailbox:(id)mailbox
{
  v9[1] = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v5 = MFIMAPStringFromMailboxName(mailboxCopy);
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  LOBYTE(self) = [(MFIMAPConnection *)self _sendMailboxCommand:14 withArguments:v6];
  v7 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)unsubscribeMailbox:(id)mailbox
{
  v9[1] = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v5 = MFIMAPStringFromMailboxName(mailboxCopy);
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  LOBYTE(self) = [(MFIMAPConnection *)self _sendMailboxCommand:15 withArguments:v6];
  v7 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)getQuotaForRootName:(id)name
{
  v19[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([(MFIMAPConnection *)self supportsCapability:6])
  {
    v14 = 27;
    v19[0] = nameCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v14 count:1];
    responseType = [v5 responseType];
    v7 = responseType == 2;
    if (responseType != 2)
    {
      v8 = +[MFActivityMonitor currentMonitor];
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:0];
      [v8 setError:v9];
    }

    [(MFIMAPConnection *)self didFinishCommands:&v14 count:1];
  }

  else
  {
    v10 = +[MFActivityMonitor currentMonitor];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:0];
    [v10 setError:v11];

    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)quotaPercentagesForMailbox:(id)mailbox
{
  v48[1] = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  if (![(MFIMAPConnection *)self supportsCapability:6])
  {
    v20 = +[MFActivityMonitor currentMonitor];
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:0];
    [v20 setError:v21];

    v4 = 0;
    goto LABEL_31;
  }

  v41 = 26;
  v48[0] = mailboxCopy;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v25 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v41 count:1];
  if ([v25 responseType] == 2)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v43;
    v3 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v3)
    {
      v4 = 0;
      v29 = *v38;
      v30 = v3;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v37 + 1) + 8 * i);
          if ([v5 responseType] == 19)
          {
            quotas = [v5 quotas];
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = quotas;
            v7 = [v32 countByEnumeratingWithState:&v33 objects:v46 count:16];
            if (v7)
            {
              v8 = *v34;
              do
              {
                for (j = 0; j != v7; ++j)
                {
                  if (*v34 != v8)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v10 = *(*(&v33 + 1) + 8 * j);
                  v11 = [v10 objectForKey:@"_IMAPCurrentUsageQuotaKey"];
                  v12 = [v10 objectForKey:@"_IMAPMaxUsageQuotaKey"];
                  v13 = v12;
                  if (v11)
                  {
                    v14 = v12 == 0;
                  }

                  else
                  {
                    v14 = 1;
                  }

                  if (!v14)
                  {
                    unsignedIntValue = [v11 unsignedIntValue];
                    unsignedIntValue2 = [v13 unsignedIntValue];
                    if (!v4)
                    {
                      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    }

                    v17 = objc_alloc(MEMORY[0x277CCABB0]);
                    *&v18 = unsignedIntValue / unsignedIntValue2;
                    v19 = [v17 initWithFloat:v18];
                    [v4 addObject:v19];
                  }
                }

                v7 = [v32 countByEnumeratingWithState:&v33 objects:v46 count:16];
              }

              while (v7);
            }
          }
        }

        v30 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v30);
      goto LABEL_30;
    }
  }

  else
  {
    obj = +[MFActivityMonitor currentMonitor];
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:0];
    [obj setError:v22];
  }

  v4 = 0;
LABEL_30:

  [(MFIMAPConnection *)self didFinishCommands:&v41 count:1];
LABEL_31:

  v23 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_sendMailboxCommand:(int)command withArguments:(id)arguments
{
  commandCopy = command;
  argumentsCopy = arguments;
  v13 = argumentsCopy;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = [(MFIMAPConnection *)self _responseFromSendingCommands:&commandCopy count:1];
  responseType = [v6 responseType];
  if (responseType != 2)
  {
    v8 = +[MFActivityMonitor currentMonitor];
    error = [v8 error];

    if (!error)
    {
      v10 = [(MFIMAPConnection *)self _errorForResponse:v6 commandParams:&commandCopy];
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&commandCopy count:1];

  return responseType == 2;
}

- (id)copyArgumentForSearchTerm:(id)term
{
  v27 = *MEMORY[0x277D85DE8];
  termCopy = term;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = _IMAPNeedsLiteralCharacterSet;
    v28.length = [(__CFString *)termCopy length];
    v28.location = 0;
    if (CFStringFindCharacterFromSet(termCopy, v5, v28, 0, 0))
    {
      v6 = [(__CFString *)termCopy dataUsingEncoding:4 allowLossyConversion:0];
    }

    else
    {
      v7 = _IMAPCreateQuotedString(&termCopy->isa);
      if (v7)
      {
        goto LABEL_11;
      }

      v6 = [(__CFString *)termCopy copy];
    }

    v7 = v6;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(__CFString *)termCopy copy];
    }

    else
    {
      v7 = 0;
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"(NOT A CRASH) see <rdar://problem/26633447> : term should be an NSString, but is %@", v10];

    v12 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      mambaID = [(MFConnection *)self mambaID];
      rumbaID = [(MFConnection *)self rumbaID];
      *buf = 136316162;
      v18 = mambaID;
      v19 = 2080;
      v20 = " ";
      v21 = 2114;
      v22 = rumbaID;
      v23 = 2080;
      v24 = " ";
      v25 = 2114;
      v26 = v11;
      _os_log_error_impl(&dword_2720B1000, v12, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s%{public}@", buf, 0x34u);
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)searchUidSet:(id)set forTerms:(id)terms success:(BOOL *)success
{
  setCopy = set;
  termsCopy = terms;
  if ([(MFIMAPConnection *)self supportsCapability:14])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:setCopy areMessageSequenceNumbers:0 forTerms:termsCopy success:success returning:4];
    v11 = [v10 objectForKey:@"IMAPESearchAllKey"];
    if (v11)
    {
      array = [MEMORY[0x277CBEB18] array];
      v13 = objc_autoreleasePoolPush();
      for (i = [v11 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v11, "indexGreaterThanIndex:", i))
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [array addObject:v15];
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    v19 = 0;
    v16 = _doUidSearch(self, setCopy, termsCopy, &v19, success, 0);
    v17 = v19;
    array = v17;
    if ((v16 & 1) == 0)
    {

      array = 0;
    }
  }

  return array;
}

- (id)searchIDSet:(id)set forTerms:(id)terms success:(BOOL *)success
{
  setCopy = set;
  termsCopy = terms;
  if ([(MFIMAPConnection *)self supportsCapability:14])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:setCopy areMessageSequenceNumbers:1 forTerms:termsCopy success:success returning:4];
    v11 = [v10 objectForKey:@"IMAPESearchAllKey"];
    if (v11)
    {
      array = [MEMORY[0x277CBEB18] array];
      v13 = objc_autoreleasePoolPush();
      for (i = [v11 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v11, "indexGreaterThanIndex:", i))
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [array addObject:v15];
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    v19 = 0;
    v16 = _doUidSearch(self, setCopy, termsCopy, &v19, success, 1);
    v17 = v19;
    array = v17;
    if ((v16 & 1) == 0)
    {

      array = 0;
    }
  }

  return array;
}

- (unint64_t)countForSearchOfIDSet:(id)set forTerms:(id)terms success:(BOOL *)success
{
  setCopy = set;
  termsCopy = terms;
  if ([(MFIMAPConnection *)self supportsCapability:14])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:setCopy areMessageSequenceNumbers:1 forTerms:termsCopy success:success returning:8];
    v11 = [v10 objectForKey:@"IMAPESearchCountKey"];
    v12 = v11;
    if (v11)
    {
      unsignedIntValue = [v11 unsignedIntValue];
    }

    else
    {
      if (success)
      {
        *success = 0;
      }

      unsignedIntValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = [(MFIMAPConnection *)self searchIDSet:setCopy forTerms:termsCopy success:success];
    unsignedIntValue = [v10 count];
  }

  return unsignedIntValue;
}

- (unint64_t)countForSearchOfUidSet:(id)set forTerms:(id)terms success:(BOOL *)success
{
  setCopy = set;
  termsCopy = terms;
  if ([(MFIMAPConnection *)self supportsCapability:14])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:setCopy areMessageSequenceNumbers:0 forTerms:termsCopy success:success returning:8];
    v11 = [v10 objectForKey:@"IMAPESearchCountKey"];
    v12 = v11;
    if (v11)
    {
      unsignedIntValue = [v11 unsignedIntValue];
    }

    else
    {
      if (success)
      {
        *success = 0;
      }

      unsignedIntValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = [(MFIMAPConnection *)self searchUidSet:setCopy forTerms:termsCopy success:success];
    unsignedIntValue = [v10 count];
  }

  return unsignedIntValue;
}

- (void)_updateSearchCapabilityWithAccount:(id)account
{
  v22 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  [(MFIMAPConnection *)self mf_lock];
  verifiedESearchResponse = self->_verifiedESearchResponse;
  [(MFIMAPConnection *)self mf_unlock];
  if (!verifiedESearchResponse && [(MFIMAPConnection *)self supportsCapability:14])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__MFIMAPConnection__updateSearchCapabilityWithAccount___block_invoke;
    v13[3] = &unk_279E34A20;
    v13[4] = self;
    v6 = [accountCopy verifyESearchSupportWithBlock:v13];
    [(MFIMAPConnection *)self mf_lock];
    if ((v6 & 1) == 0)
    {
      v7 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        mambaID = [(MFConnection *)self mambaID];
        rumbaID = [(MFConnection *)self rumbaID];
        *buf = 136315906;
        v15 = mambaID;
        v16 = 2080;
        v17 = " ";
        v18 = 2114;
        v19 = rumbaID;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sinconsistent esearch counts detected, ignoring esearch capability", buf, 0x2Au);
      }

      v10 = *(self + 76);
      v11 = v10 & 0xFFFFBFFF | (*(self + 154) << 16);
      *(self + 76) = v10 & 0xBFFF;
      *(self + 154) = BYTE2(v11);
    }

    self->_verifiedESearchResponse = 1;
    [(MFIMAPConnection *)self mf_unlock];
  }

  v12 = *MEMORY[0x277D85DE8];
}

BOOL __55__MFIMAPConnection__updateSearchCapabilityWithAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) countForSearchOfIDSet:@"1:*" forTerms:&unk_2881756B0 success:0];
  v3 = [*(a1 + 32) eSearchIDSet:@"1:*" areMessageSequenceNumbers:1 forTerms:&unk_2881756B0 success:0 returning:4];
  v4 = [v3 objectForKeyedSubscript:@"IMAPESearchAllKey"];
  v5 = v2 == [v4 count];

  return v5;
}

- (id)searchUidSet:(id)set forNewMessageIDs:(id)ds
{
  v51 = *MEMORY[0x277D85DE8];
  setCopy = set;
  dsCopy = ds;
  capacity = [dsCopy count];
  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:capacity];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = dsCopy;
  v5 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v5)
  {
    v29 = v5;
    Mutable = 0;
    v27 = *v46;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v46 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v32 = [(MFIMAPConnection *)self copyArgumentForSearchTerm:*(*(&v45 + 1) + 8 * i)];
        v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
        v44 = 0;
        v41 = 0;
        v42 = 0;
        v40 = 24;
        v33 = v7;
        v41 = v33;
        v8 = v42;
        v42 = 0;
        v43 = 0;

        v9 = v44;
        v44 = 0;

        if (setCopy)
        {
          [v33 addObject:@"UID"];
          [v33 addObject:setCopy];
        }

        [v33 addObject:@"HEADER"];
        [v33 addObject:@"MESSAGE-ID"];
        [v33 addObject:v32];
        v10 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v40 count:1];
        v11 = 0;
        v12 = [v42 count];
        if (v12)
        {
          v13 = 0;
          do
          {
            v14 = [v42 objectAtIndex:v13];
            if ([v14 responseType] == 14)
            {
              searchResults = [v14 searchResults];
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v16 = searchResults;
              v17 = [v16 countByEnumeratingWithState:&v36 objects:v49 count:16];
              if (v17)
              {
                v18 = *v37;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v37 != v18)
                    {
                      objc_enumerationMutation(v16);
                    }

                    unsignedIntValue = [*(*(&v36 + 1) + 8 * j) unsignedIntValue];
                    v21 = unsignedIntValue;
                    if (unsignedIntValue > v11 && (!Mutable || !CFSetContainsValue(Mutable, unsignedIntValue)))
                    {
                      v11 = v21;
                    }
                  }

                  v17 = [v16 countByEnumeratingWithState:&v36 objects:v49 count:16];
                }

                while (v17);
              }

              [v42 removeObjectAtIndex:v13];
              --v12;
            }

            else
            {
              ++v13;
            }
          }

          while (v13 < v12);
        }

        if (!Mutable && capacity >= 2)
        {
          Mutable = CFSetCreateMutable(0, capacity, 0);
        }

        if (v11 && Mutable)
        {
          CFSetAddValue(Mutable, v11);
        }

        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
        [v28 addObject:v22];

        [(MFIMAPConnection *)self didFinishCommands:&v40 count:1];
      }

      v29 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v29);

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
  }

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)deleteMessagesOlderThanNumberOfDays:(int)days
{
  v30[3] = *MEMORY[0x277D85DE8];
  if (days <= 0)
  {
    v13 = [(MFIMAPConnection *)self messageSetForRange:0xFFFFFFFF00000001];
    v30[0] = v13;
    v30[1] = @"+FLAGS.SILENT";
    v30[2] = @"(\\Deleted)";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];

    v24 = 22;
    v5 = v14;
    v25 = v5;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v15 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v24 count:1];
    [(MFIMAPConnection *)self didFinishCommands:&v24 count:1];
  }

  else
  {
    v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 dateByAddingUnit:16 value:1 - days toDate:date options:0];

    v29[0] = @"BEFORE";
    v23 = v7;
    v8 = MFIMAPDateSearchStringForDate(v7);
    v29[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

    v10 = [(MFIMAPConnection *)self searchUidSet:0 forTerms:v9 success:0];
    v11 = [v10 count];
    if (v11)
    {
      v12 = MFCreateArrayForMessageFlags(2, 1);
      if (v11 > 0x64)
      {
        Mutable = CFArrayCreateMutable(0, 100, 0);
        v17 = 0;
        v18 = 100;
        do
        {
          CFArrayRemoveAllValues(Mutable);
          if (v11 - v17 >= 0x64)
          {
            v19.length = 100;
          }

          else
          {
            v19.length = v11 - v17;
          }

          v19.location = v17;
          CFArrayAppendArray(Mutable, v10, v19);
          [(MFIMAPConnection *)self storeFlags:v12 state:1 forUids:Mutable, v23];
          v17 = v18;
          v20 = v11 > v18;
          v18 += 100;
        }

        while (v20);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        [(MFIMAPConnection *)self storeFlags:v12 state:1 forUids:v10, v7];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_responseFromSendingCommand:(id *)command andPossiblyCreateMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v7 = [(MFIMAPConnection *)self _responseFromSendingCommands:command count:1];
  if ([v7 responseType] == 4)
  {
    v8 = [v7 responseCode] == 8;
    if (v7)
    {
LABEL_12:
      if (!v8)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = 0;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  if (v8)
  {
    goto LABEL_12;
  }

  v9 = [command->var2 count];
  if (!v9)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v10 = 0;
  while (1)
  {
    v11 = [command->var2 objectAtIndex:v10];
    if ([v11 responseType] == 4 && objc_msgSend(v11, "responseCode") == 8)
    {
      break;
    }

    if (++v10 >= v9)
    {
      goto LABEL_18;
    }
  }

  [command->var2 removeObjectAtIndex:v10];

LABEL_16:
  [(MFIMAPConnection *)self didFinishCommands:command count:1];
  if ([(MFIMAPConnection *)self createMailbox:mailboxCopy])
  {
    v12 = [(MFIMAPConnection *)self _responseFromSendingCommands:command count:1];

    v7 = v12;
  }

LABEL_18:

  return v7;
}

- (BOOL)copyUids:(id)uids toMailboxNamed:(id)named newMessageInfo:(id *)info
{
  v23[2] = *MEMORY[0x277D85DE8];
  uidsCopy = uids;
  namedCopy = named;
  v10 = [(MFIMAPConnection *)self messageSetForNumbers:uidsCopy];
  v23[0] = v10;
  v11 = MFIMAPStringFromMailboxName(namedCopy);
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

  LODWORD(v18) = 23;
  v13 = v12;
  v19 = v13;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v14 = [(MFIMAPConnection *)self _responseFromSendingCommand:&v18 andPossiblyCreateMailbox:namedCopy];
  [(MFIMAPConnection *)self didFinishCommands:&v18 count:1];
  if (info)
  {
    *info = MFUIDPlusInfoFromResponse(v14);
  }

  v15 = [v14 responseType] == 2;

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)appendData:(id)data toMailboxNamed:(id)named flags:(id)flags dateReceived:(id)received newMessageInfo:(id *)info
{
  v39[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  namedCopy = named;
  flagsCopy = flags;
  receivedCopy = received;
  v32 = dataCopy;
  [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v15 = v33 = 19;
  v34 = v15;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (info)
  {
    *info = 0;
  }

  v16 = MFIMAPStringFromMailboxName(namedCopy);
  [v15 addObject:v16];

  if (flagsCopy)
  {
    v17 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:flagsCopy];
    [v15 addObject:v17];
  }

  v18 = receivedCopy;
  if (_MFIMAPDateStringForDate(NSDate *)::onceToken != -1)
  {
    [MFIMAPConnection appendData:toMailboxNamed:flags:dateReceived:newMessageInfo:];
  }

  v19 = [_MFIMAPDateStringForDate(NSDate *)::formatter stringFromDate:v18];

  if (v19)
  {
    [v15 addObject:v19];
  }

  [v15 addObject:dataCopy];
  v20 = [(MFIMAPConnection *)self _responseFromSendingCommand:&v33 andPossiblyCreateMailbox:namedCopy];
  v21 = v20;
  if (info && [v20 responseType] == 2 && objc_msgSend(v21, "responseCode") == 15)
  {
    responseInfo = [v21 responseInfo];
    v38[0] = @"UIDVALIDITY";
    v30 = responseInfo;
    v23 = [responseInfo objectAtIndexedSubscript:0];
    v38[1] = @"Source UIDS";
    v39[0] = v23;
    v24 = [responseInfo objectAtIndexedSubscript:1];
    v39[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

    v26 = v25;
    *info = v25;
  }

  v27 = [v21 responseType] == 2;

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (NSArray)additionalHeadersForFetch
{
  +[MFIMAPConnection mf_lock];
  v3 = [(NSArray *)self->_additionalHeadersForFetch copy];
  +[MFIMAPConnection mf_unlock];

  return v3;
}

- (void)setAdditionalHeadersForFetch:(id)fetch
{
  fetchCopy = fetch;
  +[MFIMAPConnection mf_lock];
  if (([fetchCopy isEqual:self->_additionalHeadersForFetch] & 1) == 0)
  {
    v4 = [fetchCopy copy];
    additionalHeadersForFetch = self->_additionalHeadersForFetch;
    self->_additionalHeadersForFetch = v4;
  }

  +[MFIMAPConnection mf_unlock];
}

- (void)fetchTotalSize:(unint64_t *)size andMessageCount:(unsigned int *)count
{
  v16[2] = *MEMORY[0x277D85DE8];
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v8 = [(MFIMAPConnection *)self messageSetForRange:0xFFFFFFFF00000001];
  v16[0] = v8;
  v16[1] = @"RFC822.SIZE";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  [(MFIMAPConnection *)self _doUidFetchWithRange:0xFFFFFFFF00000001 arguments:v9 validateMessage:0 responses:v7];
  if (count)
  {
    *count = 0;
  }

  if (size)
  {
    *size = 0;
  }

  v10 = [v7 count];
  if (v10)
  {
    v11 = v10 - 1;
    do
    {
      v12 = [v7 objectAtIndex:v11];
      v13 = [v12 fetchResultWithType:3];
      messageSize = [v13 messageSize];

      if (messageSize)
      {
        if (size)
        {
          *size += messageSize;
        }

        if (count)
        {
          ++*count;
        }
      }

      --v11;
    }

    while (v11 != -1);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)fetchMessageIdsForUids:(id)uids
{
  v38[2] = *MEMORY[0x277D85DE8];
  uidsCopy = uids;
  v26 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(uidsCopy, "count")}];
  allObjects = [uidsCopy allObjects];
  selfCopy = self;
  v5 = [(MFIMAPConnection *)self messageSetForNumbers:allObjects];

  v21 = v5;
  v38[0] = v5;
  v38[1] = @"(BODY.PEEK[HEADER.FIELDS (MESSAGE-ID)])";
  [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v22 = v32 = 21;
  v33 = v22;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v6 = [(MFIMAPConnection *)selfCopy _responseFromSendingCommands:&v32 count:1];
  LODWORD(v5) = [v6 responseType] == 2;

  if (v5)
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v34;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v7)
    {
      v8 = *v29;
      v25 = *MEMORY[0x277D06FE0];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          if ([v10 responseType] == 17)
          {
            v11 = [v10 fetchResultWithType:4];
            v12 = [v10 fetchResultWithType:8];
            fetchData = [v11 fetchData];
            if (fetchData)
            {
              v14 = [objc_alloc(MEMORY[0x277D24F70]) initWithData:fetchData];
              [v14 mf_convertNetworkLineEndingsToUnix];
              v15 = v14;

              v16 = [objc_alloc(MEMORY[0x277D24F80]) initWithHeaderData:v15 encoding:0xFFFFFFFFLL];
              v17 = [v16 copyFirstStringValueForKey:v25];
              v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v12, "uid")}];
              [v26 setObject:v17 forKeyedSubscript:v18];
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v7);
    }
  }

  [(MFIMAPConnection *)selfCopy didFinishCommands:&v32 count:1];

  v19 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)fetchUniqueRemoteIDsForUids:(id)uids
{
  v32[2] = *MEMORY[0x277D85DE8];
  uidsCopy = uids;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  allObjects = [uidsCopy allObjects];
  v6 = [(MFIMAPConnection *)self messageSetForNumbers:allObjects];

  v21 = v6;
  v32[0] = v6;
  v32[1] = @"(UID X-GM-MSGID)";
  [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v7 = v26 = 21;
  v27 = v7;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v8 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v26 count:1];
  LODWORD(v6) = [v8 responseType] == 2;

  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v28;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v31 count:{16, uidsCopy}];
    if (v10)
    {
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([v13 responseType] == 17)
          {
            v14 = [v13 fetchResultWithType:9];
            uniqueRemoteId = [v14 uniqueRemoteId];
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uniqueRemoteId];
            [v4 addObject:v16];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v10);
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&v26 count:1, uidsCopy];

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)performCustomCommand:(id)command withArguments:(id)arguments
{
  commandCopy = command;
  argumentsCopy = arguments;
  if ([argumentsCopy count])
  {
    v8 = [argumentsCopy mutableCopy];
    [v8 insertObject:commandCopy atIndex:0];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{commandCopy, 0}];
  }

  v18 = 37;
  v9 = v8;
  v19 = v9;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v10 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v18 count:1];
  responseType = [(MFIMAPConnection *)v10 responseType];
  if (responseType != 2)
  {
    v12 = +[MFActivityMonitor currentMonitor];
    error = [v12 error];

    if (!error)
    {
      v15 = _messageFromResponse(v10, v14);
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:v15];
      [v12 setError:v16];
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&v18 count:1];

  return responseType == 2;
}

- (void)setReadBufferSizeFromElapsedTime:(double)time bytesRead:(unint64_t)read
{
  if (time > 0.0 && read >= 0x401)
  {
    v5 = time - *&_kIMAPFetchTargetTime;
    if (time - *&_kIMAPFetchTargetTime < 0.0)
    {
      v5 = -(time - *&_kIMAPFetchTargetTime);
    }

    if (v5 > *&_kIMAPFetchTargetTime * 0.5)
    {
      readBufferSize = [(MFIMAPConnection *)self readBufferSize];
      v8 = *&_kIMAPFetchTargetTime;
      if (*&_kIMAPFetchTargetTime <= time)
      {
        if (readBufferSize >> 1 <= _kIMAPMinFetchChunkSize)
        {
          v9 = _kIMAPMinFetchChunkSize;
        }

        else
        {
          v9 = readBufferSize >> 1;
        }
      }

      else if (2 * readBufferSize >= _kIMAPMaxFetchChunkSize)
      {
        v9 = _kIMAPMaxFetchChunkSize;
      }

      else
      {
        v9 = 2 * readBufferSize;
      }

      [(MFIMAPConnection *)self setReadBufferSize:v9, v8];
    }
  }
}

- (unsigned)readBufferSize
{
  readBufferSize = self->_readBufferSize;
  if (!readBufferSize)
  {
    readBufferSize = 0x2000;
    self->_readBufferSize = 0x2000;
  }

  return readBufferSize;
}

+ (void)setReadSizeParameters
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [standardUserDefaults integerForKey:@"MinFetchChunkSize"];
  if (v2)
  {
    _kIMAPMinFetchChunkSize = v2;
  }

  v3 = [standardUserDefaults integerForKey:@"MaxFetchChunkSize"];
  if (v3)
  {
    _kIMAPMaxFetchChunkSize = v3;
  }

  [standardUserDefaults floatForKey:@"FetchDeltaTarget"];
  if (v4 != 0.0)
  {
    *&_kIMAPFetchTargetTime = v4;
  }
}

- (BOOL)_doUidFetchWithRange:(id)range arguments:(id)arguments validateMessage:(BOOL)message responses:(id)responses
{
  argumentsCopy = arguments;
  responsesCopy = responses;
  v25 = 21;
  v11 = argumentsCopy;
  v26 = v11;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v12 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v25 count:1];
  responseType = [v12 responseType];

  if (responseType != 2)
  {
    goto LABEL_19;
  }

  v14 = [v27 count];
  if (!v14)
  {
    goto LABEL_19;
  }

  v23 = responsesCopy;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = [v27 objectAtIndex:v17];
    if ([v18 responseType] != 17)
    {
      goto LABEL_15;
    }

    v19 = [v18 fetchResultWithType:8];
    v20 = [v19 uid];
    if (!v20)
    {

LABEL_15:
      ++v17;
      goto LABEL_16;
    }

    if (v20 < range.var0 || v20 > range.var1)
    {
      goto LABEL_15;
    }

    v21 = v20 <= v16;
    if (v20 > v16)
    {
      v16 = v20;
    }

    if (!message || [(MFIMAPConnection *)self _isFetchResponseValid:v18])
    {
      [v23 addObject:v18];
    }

    [v27 removeObjectAtIndex:v17];
    v15 |= v21;
    --v14;
LABEL_16:
  }

  while (v17 < v14);
  responsesCopy = v23;
  responseType = 2;
  if (v15)
  {
    [v23 sortUsingFunction:_compareFetchResultsByUid context:0];
  }

LABEL_19:
  [(MFIMAPConnection *)self didFinishCommands:&v25 count:1];

  return responseType == 2;
}

- (id)messageSetForRange:(id)range
{
  if (range.var1 >= 2)
  {
    if (range.var1 == -1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%d:*", range, v5];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%d:%d", range, range.var1];
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%d", range, v5];
  }
  v3 = ;

  return v3;
}

- (id)messageSetForRange:(id)range butNotNumbers:(id)numbers
{
  numbersCopy = numbers;
  firstIndex = [numbersCopy firstIndex];
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8 = 0;
  v9 = HIDWORD(*&range);
  var0 = range.var0;
  while (firstIndex <= v9)
  {
    if (firstIndex != var0)
    {
      if (firstIndex <= var0)
      {
        goto LABEL_12;
      }

      if (v8 >= 1)
      {
        [v7 appendString:{@", "}];
      }

      if (firstIndex - var0 == 1)
      {
        [v7 appendFormat:@"%lu", var0];
      }

      else
      {
        [v7 appendFormat:@"%lu:%lu", var0, firstIndex - 1];
      }

      ++v8;
    }

    var0 = firstIndex + 1;
LABEL_12:
    firstIndex = [numbersCopy indexGreaterThanIndex:firstIndex];
  }

  if (var0 <= v9)
  {
    if (v8 >= 1)
    {
      [v7 appendString:{@", "}];
    }

    if (v9 == var0)
    {
      [v7 appendFormat:@"%u", v9];
    }

    else if (v9 == 0xFFFFFFFF)
    {
      [v7 appendFormat:@"%lu:*", var0];
    }

    else
    {
      [v7 appendFormat:@"%lu:%u", var0, v9];
    }
  }

  return v7;
}

- (id)messageSetForNumbers:(id)numbers range:(_NSRange)range maxTokens:(unint64_t)tokens indexOfLastNumber:(unint64_t *)number
{
  length = range.length;
  location = range.location;
  numbersCopy = numbers;
  if (length == 1)
  {
    if (number)
    {
      *number = 1;
    }

    v9 = [numbersCopy objectAtIndex:location];
    v31 = [v9 description];
  }

  else
  {
    if (!length)
    {
      v31 = 0;
      if (number)
      {
        *number = 0;
      }

      goto LABEL_34;
    }

    v10 = [numbersCopy objectAtIndex:location];
    integerValue = [v10 integerValue];
    v12 = MEMORY[0x277CCAB68];
    v13 = [v10 description];
    v31 = [v12 stringWithString:v13];
    v14 = location + length;

    v15 = location + 1;
    if (v15 < v14)
    {
      v30 = tokens - 1;
      if (tokens != 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v28 = tokens - 2;
        while (1)
        {
          v19 = [numbersCopy objectAtIndex:{v15, v28}];
          integerValue2 = [v19 integerValue];
          v21 = integerValue2;
          v22 = integerValue2 != integerValue + 1 || v15 >= v14 - 1;
          v23 = !v22;
          if (!v22)
          {
            goto LABEL_25;
          }

          if (v18)
          {
            if (integerValue2 != integerValue + 1)
            {
              [v31 appendString:@":"];
              v25 = [v10 description];
              [v31 appendString:v25];

              if (v28 > v16)
              {
                [v31 appendString:{@", "}];
                v26 = [v19 description];
                [v31 appendString:v26];

                ++v17;
              }

              goto LABEL_24;
            }

            [v31 appendString:@":"];
            v24 = [v19 description];
            [v31 appendString:v24];
          }

          else
          {
            [v31 appendString:{@", "}];
            v24 = [v19 description];
            [v31 appendString:v24];
          }

LABEL_24:
          ++v17;
LABEL_25:

          if (++v15 < v14)
          {
            v16 = v17;
            integerValue = v21;
            v10 = v19;
            v18 = v23;
            if (v30 > v17)
            {
              continue;
            }
          }

          goto LABEL_31;
        }
      }
    }

    v19 = v10;
LABEL_31:
    if (number)
    {
      *number = v15;
    }
  }

LABEL_34:

  return v31;
}

- (id)messageSetForNumbers:(id)numbers range:(_NSRange)range
{
  v4 = [(MFIMAPConnection *)self messageSetForNumbers:numbers range:range.location maxTokens:range.length indexOfLastNumber:0x7FFFFFFFLL, 0];

  return v4;
}

- (id)messageSetForNumbers:(id)numbers
{
  numbersCopy = numbers;
  v5 = -[MFIMAPConnection messageSetForNumbers:range:](self, "messageSetForNumbers:range:", numbersCopy, 0, [numbersCopy count]);

  return v5;
}

- (id)parenthesizedStringWithObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [objectsCopy count];
  v6 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [objectsCopy objectAtIndex:i];
      if (i)
      {
        [v6 appendString:@" "];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 appendString:v8];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MFIMAPConnection *)self parenthesizedStringWithObjects:v8];
        }

        else
        {
          [v8 description];
        }
        v9 = ;
        [v6 appendString:v9];
      }
    }
  }

  [v6 appendString:@""]);

  return v6;
}

- (BOOL)authenticateUsingAccount:(id)account authenticator:(id)authenticator
{
  v61 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  authenticatorCopy = authenticator;
  v8 = MEMORY[0x277CBEB18];
  authScheme = [authenticatorCopy authScheme];
  name = [authScheme name];
  v11 = [v8 arrayWithObject:name];

  if (-[MFIMAPConnection supportsCapability:](self, "supportsCapability:", 16) && [authenticatorCopy supportsInitialClientResponse])
  {
    v12 = [authenticatorCopy responseForServerData:0];
    mf_encodeBase64WithoutLineBreaks = [v12 mf_encodeBase64WithoutLineBreaks];

    if (mf_encodeBase64WithoutLineBreaks)
    {
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:mf_encodeBase64WithoutLineBreaks encoding:1];
      [v11 addObject:v14];
    }

    else
    {
      v15 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        mambaID = [(MFConnection *)self mambaID];
        rumbaID = [(MFConnection *)self rumbaID];
        *buf = 136316162;
        v52 = mambaID;
        v53 = 2080;
        v54 = " ";
        v55 = 2114;
        v56 = rumbaID;
        v57 = 2080;
        v58 = " ";
        v59 = 2112;
        v60 = authenticatorCopy;
        _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%{public}@%s%@ claimed to support initial response data, and didn't supply an initial response", buf, 0x34u);
      }
    }
  }

  v46 = 4;
  v18 = v11;
  v47 = v18;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  [(MFIMAPConnection *)self mf_lock];
  v45 = 0;
  v19 = [(MFIMAPConnection *)self _sendCommands:&v46 count:1 response:&v45];
  v20 = v45;
  if (!v19)
  {
LABEL_24:
    v21 = v20;
    goto LABEL_46;
  }

  [authenticatorCopy setAuthenticationState:1];
  while (1)
  {
    if ([authenticatorCopy authenticationState] == 3)
    {
      goto LABEL_24;
    }

    v21 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:&v46];

    if (!v21)
    {
      [authenticatorCopy setAuthenticationState:3];
      goto LABEL_46;
    }

    responseType = [v21 responseType];
    if (responseType != 1)
    {
      break;
    }

    userData = [v21 userData];
    v24 = [authenticatorCopy responseForServerData:userData];

    if (v24)
    {
      if ([authenticatorCopy base64EncodeResponseData])
      {
        mf_encodeBase64WithoutLineBreaks2 = [v24 mf_encodeBase64WithoutLineBreaks];

        v24 = mf_encodeBase64WithoutLineBreaks2;
      }

      [(NSMutableData *)self->_data setData:v24];
    }

    else
    {
      [(NSMutableData *)self->_data setLength:0];
    }

    [(NSMutableData *)self->_data appendBytes:&_IMAPLineEnding length:2];
    justSentPlainTextPassword = [authenticatorCopy justSentPlainTextPassword];
    data = self->_data;
    if (justSentPlainTextPassword)
    {
      v28 = [(MFConnection *)self writeData:data dontLogBytesInRange:0, [(NSMutableData *)data length]- 2];
    }

    else
    {
      v28 = [(MFConnection *)self writeData:data];
    }

    if (!v28)
    {
      if ([authenticatorCopy authenticationState] == 1)
      {
        [authenticatorCopy setAuthenticationState:3];
      }

      goto LABEL_45;
    }

    v20 = v21;
  }

  if (responseType == 2)
  {
    [authenticatorCopy setAuthenticationState:4];
    *(self + 176) = *(self + 176) & 0xF8 | 2;
    if (!self->super._securityLayer)
    {
      securityLayer = [authenticatorCopy securityLayer];
      securityLayer = self->super._securityLayer;
      self->super._securityLayer = securityLayer;
    }

    [(MFIMAPConnection *)self _updateCapabilitiesForAccount:accountCopy withAuthenticationResponse:v21];
    goto LABEL_46;
  }

  if (responseType == 3)
  {
    v32 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      mambaID2 = [(MFConnection *)self mambaID];
      rumbaID2 = [(MFConnection *)self rumbaID];
      userString = [v21 userString];
      *buf = 136316162;
      v52 = mambaID2;
      v53 = 2080;
      v54 = " ";
      v55 = 2114;
      v56 = rumbaID2;
      v57 = 2080;
      v58 = " ";
      v59 = 2112;
      v60 = userString;
      _os_log_error_impl(&dword_2720B1000, v32, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%sIMAP protocol error: %@", buf, 0x34u);
    }

    goto LABEL_40;
  }

  if (responseType != 4)
  {
    v32 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      mambaID3 = [(MFConnection *)self mambaID];
      rumbaID3 = [(MFConnection *)self rumbaID];
      *buf = 136316162;
      v52 = mambaID3;
      v53 = 2080;
      v54 = " ";
      v55 = 2114;
      v56 = rumbaID3;
      v57 = 2080;
      v58 = " ";
      v59 = 2112;
      v60 = v21;
      _os_log_impl(&dword_2720B1000, v32, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s*** Unexpected response during authentication: %@", buf, 0x34u);
    }

LABEL_40:

    [authenticatorCopy setAuthenticationState:3];
    goto LABEL_46;
  }

  v29 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    mambaID4 = [(MFConnection *)self mambaID];
    rumbaID4 = [(MFConnection *)self rumbaID];
    userString2 = [v21 userString];
    *buf = 136316162;
    v52 = mambaID4;
    v53 = 2080;
    v54 = " ";
    v55 = 2114;
    v56 = rumbaID4;
    v57 = 2080;
    v58 = " ";
    v59 = 2112;
    v60 = userString2;
    _os_log_error_impl(&dword_2720B1000, v29, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%sIMAP auth failure: %@", buf, 0x34u);
  }

  [authenticatorCopy setAuthenticationState:2];
  if ([v21 responseCode] == 18)
  {
    [authenticatorCopy setMissingPasswordError];
    goto LABEL_46;
  }

  v24 = [(MFIMAPConnection *)self _serverErrorForAccount:accountCopy response:v21 command:&v46];
  if (v24)
  {
    v38 = +[MFActivityMonitor currentMonitor];
    [v38 setError:v24];
  }

LABEL_45:

LABEL_46:
  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:&v46 count:1];
  if ([authenticatorCopy authenticationState] == 3)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0 reason:"MFIMAPConnection SASLAuthenticationProtocolError"];
  }

  v39 = [authenticatorCopy authenticationState] == 4;

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)startTLSForAccount:(id)account
{
  accountCopy = account;
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFIMAPConnection *)self supportsCapability:0])
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    LODWORD(v21) = 3;
    v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v21 count:1];
    responseType = [v5 responseType];

    v7 = responseType == 2;
    if (responseType != 2)
    {
      v8 = MEMORY[0x277CCACA8];
      accountTypeString = [objc_opt_class() accountTypeString];
      hostname = [accountCopy hostname];
      v11 = [v8 stringWithFormat:@"Starting TLS failed on %@ server “%@”. Please check your account settings and try again.", accountTypeString, hostname];

      v12 = +[MFActivityMonitor currentMonitor];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:v11];
      [v12 setError:v13];
    }

    [(MFIMAPConnection *)self didFinishCommands:&v21 count:1];
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    accountTypeString2 = [objc_opt_class() accountTypeString];
    hostname2 = [accountCopy hostname];
    v17 = [v14 stringWithFormat:@"The %@ server “%@” doesn’t support TLS (SSL) on port %u. Please check your account settings and try again.", accountTypeString2, hostname2, objc_msgSend(accountCopy, "portNumber")];

    v18 = +[MFActivityMonitor currentMonitor];
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:v17];
    [v18 setError:v19];

    v7 = 0;
  }

  [(MFIMAPConnection *)self mf_unlock];

  return v7;
}

- (id)description
{
  selectedMailbox = self->_selectedMailbox;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [MFIMAPConnection description]::_StateStrings[*(self + 176) & 7];
  if (*(&self->super + 100))
  {
    v7 = ", Fetching";
  }

  else
  {
    v7 = "";
  }

  if (selectedMailbox)
  {
    [v4 stringWithFormat:@"<%@:%p> [%@%s] delegate=%p mailbox=<%@>", v5, self, v6, v7, self->_delegateState.__weak_void_delegate, self->_selectedMailbox];
  }

  else
  {
    [v4 stringWithFormat:@"<%@:%p> [%@%s] delegate=%p", v5, self, v6, v7, self->_delegateState.__weak_void_delegate, v10];
  }
  v8 = ;

  return v8;
}

- (void)notifyDelegateOfBodyLoadStart:(id)start section:(id)section
{
  startCopy = start;
  sectionCopy = section;
  retainedReference = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v8 = retainedReference;
  if (retainedReference && (*(&self->_delegateState + 8) & 0x10) != 0)
  {
    [retainedReference connection:self didBeginBodyLoad:startCopy section:sectionCopy];
  }
}

- (void)notifyDelegateOfBodyLoadAppendage:(id)appendage section:(id)section
{
  appendageCopy = appendage;
  sectionCopy = section;
  retainedReference = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v8 = retainedReference;
  if (retainedReference && (*(&self->_delegateState + 8) & 0x20) != 0)
  {
    [retainedReference connection:self didLoadMoreBodyData:appendageCopy section:sectionCopy];
  }
}

- (void)notifyDelegateOfBodyLoadCompletion:(id)completion section:(id)section
{
  completionCopy = completion;
  sectionCopy = section;
  retainedReference = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v8 = retainedReference;
  if (retainedReference && (*(&self->_delegateState + 8) & 0x40) != 0)
  {
    [retainedReference connection:self didFinishLoadingBodyData:completionCopy section:sectionCopy];
  }
}

- (unsigned)literalChunkSize
{
  p_delegateState = &self->_delegateState;
  retainedReference = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v5 = retainedReference;
  if (retainedReference && (*(p_delegateState + 8) & 0x80) != 0)
  {
    v6 = [retainedReference connectionBodyDataReadChunkSize:self];
  }

  else
  {
    v6 = 4096;
  }

  return v6;
}

- (id)_readDataOfLength:(int64_t)length
{
  [(NSMutableData *)self->_data setLength:0];
  if (length < 1)
  {
    if (length < 0 && [(MFConnection *)self readLineIntoData:self->_data])
    {
      bytes = [(NSMutableData *)self->_data bytes];
      if (bytes)
      {
        v8 = bytes;
        v9 = [(NSMutableData *)self->_data length];
        v7 = v9 - 2;
        if (v9 >= 2 && *(v8 + v9 - 1) == 10 && *(v8 + v7) == 13)
        {
          [(NSMutableData *)self->_data setLength:?];
        }
      }

      if ([(NSMutableData *)self->_data length])
      {
        bytes2 = [(NSMutableData *)self->_data bytes];
        if (bytes2)
        {
          v11 = bytes2;
          if (!*bytes2)
          {
            v12 = [(NSMutableData *)self->_data length];
            v13 = v11 + 1;
            v14 = 1;
            v15 = v12;
            do
            {
              if (*v13++)
              {
                v17 = 1;
              }

              else
              {
                v17 = v14 >= v12;
              }

              ++v14;
              --v15;
            }

            while (!v17);
            memmove([(NSMutableData *)self->_data mutableBytes], v13 - 1, v15);
            [(NSMutableData *)self->_data setLength:v15];
          }
        }
      }

      goto LABEL_3;
    }
  }

  else if ([(MFConnection *)self readBytesIntoData:self->_data desiredLength:length])
  {
LABEL_3:
    data = self->_data;
    goto LABEL_22;
  }

  data = 0;
LABEL_22:

  return data;
}

- (id)_fetchArgumentForMessageSkeletonsWithHeaders:(id)headers
{
  headersCopy = headers;
  if (!headersCopy)
  {
    __assert_rtn("[MFIMAPConnection _fetchArgumentForMessageSkeletonsWithHeaders:]", "IMAP_IMAPConnection.mm", 3640, "requiredHeaders");
  }

  [(MFIMAPConnection *)self mf_lock];
  if (!self->_lastRequiredHeaders || ![(NSArray *)self->_lastRequiredHeadersArray isEqualToArray:headersCopy])
  {
    objc_storeStrong(&self->_lastRequiredHeadersArray, headers);
    v6 = objc_msgSend(@"(INTERNALDATE UID RFC822.SIZE FLAGS "), "mutableCopyWithZone:", 0;
    if ([(MFIMAPConnection *)self supportsCapability:15])
    {
      [v6 appendString:@"MODSEQ "];
    }

    if ([(MFIMAPConnection *)self supportsCapability:18])
    {
      [v6 appendString:@"X-GM-MSGID "];
    }

    objc_msgSend(v6, "appendString:", @"BODY.PEEK[HEADER.FIELDS (");
    v7 = [(NSArray *)self->_lastRequiredHeadersArray count];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = [(NSArray *)self->_lastRequiredHeadersArray objectAtIndex:i];
        v10 = _IMAPCreateQuotedString(v9);
        if (i)
        {
          [v6 appendString:@" "];
        }

        [v6 appendString:v10];
      }
    }

    [v6 appendString:@"]]"));
    lastRequiredHeaders = self->_lastRequiredHeaders;
    self->_lastRequiredHeaders = v6;
  }

  v12 = self->_lastRequiredHeaders;
  [(MFIMAPConnection *)self mf_unlock];

  return v12;
}

- (id)_responseFromSendingCommands:(id *)commands count:(unint64_t)count
{
  [(MFIMAPConnection *)self mf_lock];
  v18 = 0;
  v7 = [(MFIMAPConnection *)self _sendCommands:commands count:count response:&v18];
  v8 = v18;
  v9 = v8;
  if (v7)
  {
    v10 = &commands[v7];
    v11 = v10 - 1;
    var3 = v10[-1].var3;
    do
    {
      v13 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:v11];

      if (!v13)
      {
        break;
      }

      v14 = [v13 tag];
      intValue = [v14 intValue];

      v16 = var3 == intValue;
      v9 = v13;
    }

    while (!v16);
  }

  else
  {
    v13 = v8;
  }

  [(MFIMAPConnection *)self locked_scheduleIdle];
  [(MFIMAPConnection *)self mf_unlock];

  return v13;
}

- (BOOL)sendResponsesForCommand:(id *)command toQueue:(id)queue
{
  queueCopy = queue;
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFIMAPConnection *)self _sendCommands:command count:1 response:0])
  {
    v7 = +[MFActivityMonitor currentMonitor];
    var3 = command->var3;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:command];
      shouldCancel = [v7 shouldCancel];
      if (v10)
      {
        v12 = shouldCancel;
      }

      else
      {
        v12 = 1;
      }

      if ((v12 & 1) != 0 || ([v10 isUntagged] & 1) == 0 && (objc_msgSend(v10, "tag"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intValue"), v15, var3 == v16))
      {
        v13 = 1;
        v14 = 1;
      }

      else
      {
        v13 = [queueCopy addItem:v10];
        v14 = 0;
      }

      objc_autoreleasePoolPop(v9);
    }

    while (!(v14 & 1 | ((v13 & 1) == 0)));
    v17 = v14 & v13;
  }

  else
  {
    v17 = 1;
  }

  [(MFIMAPConnection *)self locked_scheduleIdle];
  [(MFIMAPConnection *)self mf_unlock];

  return v17;
}

- (BOOL)sendResponsesForUIDFetchForUIDs:(id)ds fields:(id)fields toQueue:(id)queue
{
  v24[2] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  fieldsCopy = fields;
  queueCopy = queue;
  v23 = 0;
  v11 = [dsCopy count];
  v12 = +[MFActivityMonitor currentMonitor];
  if (v11)
  {
    v13 = 1;
    do
    {
      if ([v12 shouldCancel])
      {
        break;
      }

      v14 = [MFIMAPConnection messageSetForNumbers:"messageSetForNumbers:range:maxTokens:indexOfLastNumber:" range:dsCopy maxTokens:? indexOfLastNumber:?];
      v18 = 21;
      v24[0] = v14;
      v24[1] = fieldsCopy;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v15 = [(MFIMAPConnection *)self sendResponsesForCommand:&v18 toQueue:queueCopy];

      v13 &= v15;
    }

    while (v23 < v11);
  }

  else
  {
    v13 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

- (BOOL)sendUidAndFlagResponsesForUIDs:(id)ds sequenceIdentifierProvider:(id)provider flagSearchResults:(id)results toQueue:(id)queue
{
  dsCopy = ds;
  providerCopy = provider;
  resultsCopy = results;
  queueCopy = queue;
  if (resultsCopy || ![(MFIMAPConnection *)self supportsCapability:15])
  {
    _fetchArgumentForMessageUidsAndFlags = [(MFIMAPConnection *)self _fetchArgumentForMessageUidsAndFlags];
    LOBYTE(self) = [(MFIMAPConnection *)self sendResponsesForUIDs:dsCopy fields:_fetchArgumentForMessageUidsAndFlags flagSearchResults:resultsCopy toQueue:queueCopy];
  }

  else
  {
    v14 = [providerCopy sequenceIdentifierForUIDs:dsCopy];
    v18 = v14;
    LODWORD(self) = [(MFIMAPConnection *)self sendResponsesForCondStoreFlagFetchForUIDs:dsCopy withSequenceIdentifier:&v18 toQueue:queueCopy];
    v15 = v18;

    [queueCopy flush];
    if (self && [v15 length] && (objc_msgSend(v15, "isEqualToString:", v14) & 1) == 0)
    {
      [providerCopy setSequenceIdentifier:v15 forUIDs:dsCopy];
    }
  }

  return self;
}

- (BOOL)sendUidResponsesForSearchArguments:(id)arguments toQueue:(id)queue
{
  argumentsCopy = arguments;
  queueCopy = queue;
  v26 = 0;
  if ([(MFIMAPConnection *)self supportsCapability:14])
  {
    v8 = +[MFActivityMonitor currentMonitor];
    v9 = [(MFIMAPConnection *)self eSearchIDSet:0 areMessageSequenceNumbers:0 arguments:argumentsCopy success:&v26 returning:4];
    v10 = [v9 objectForKey:@"IMAPESearchAllKey"];
    v11 = v10;
    if (v26 && v10)
    {
      context = objc_autoreleasePoolPush();
      array = [MEMORY[0x277CBEB18] array];
      for (i = [v11 firstIndex]; ; i = objc_msgSend(v11, "indexGreaterThanIndex:", i))
      {
        shouldCancel = [v8 shouldCancel];
        v15 = i == 0x7FFFFFFFFFFFFFFFLL ? 1 : shouldCancel;
        if (v15)
        {
          break;
        }

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [array addObject:v16];
      }

      if (([v8 shouldCancel] & 1) == 0)
      {
        v17 = objc_alloc_init(MFIMAPResponse);
        [(MFIMAPResponse *)v17 setResponseType:14];
        [(MFIMAPResponse *)v17 setSearchResults:array];
        [queueCopy addItem:v17];
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    v21 = 24;
    v22 = argumentsCopy;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = [(MFIMAPConnection *)self sendResponsesForCommand:&v21 toQueue:queueCopy];
  }

  v18 = v26;

  return v18;
}

- (id)searchUIDs:(id)ds withFlagRequests:(id)requests
{
  v30 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v22 = dsCopy;
  requestsCopy = requests;
  _fetchArgumentForMessageUidsAndFlags = [(MFIMAPConnection *)self _fetchArgumentForMessageUidsAndFlags];
  v8 = [@"(UID FLAGS)" isEqualToString:_fetchArgumentForMessageUidsAndFlags];

  if (v8)
  {
    v20 = [dsCopy objectAtIndex:0];
    lastObject = [dsCopy lastObject];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v20, lastObject];
    v10 = objc_alloc_init(MFIMAPConnectionFlagSearchResults);
    v28 = 1;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = requestsCopy;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          searchTerms = [v15 searchTerms];
          v17 = [(MFIMAPConnection *)self searchUidSet:v9 forTerms:searchTerms success:&v28];

          if (v28 != 1)
          {

            v10 = 0;
            goto LABEL_13;
          }

          -[MFIMAPConnectionFlagSearchResults cacheStateForUIDs:mask:existenceSetsFlag:](v10, "cacheStateForUIDs:mask:existenceSetsFlag:", v17, [v15 mask], objc_msgSend(v15, "isPositiveMatch"));
        }

        v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)sendResponsesForUIDs:(id)ds fields:(id)fields flagSearchResults:(id)results toQueue:(id)queue
{
  v27 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  fieldsCopy = fields;
  resultsCopy = results;
  queueCopy = queue;
  if (resultsCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = dsCopy;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = [resultsCopy copyResponseForUID:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "integerValue", v22)}];
          if (v18)
          {
            [queueCopy addItem:v18];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    v19 = 1;
  }

  else
  {
    v19 = [(MFIMAPConnection *)self sendResponsesForUIDFetchForUIDs:dsCopy fields:fieldsCopy toQueue:queueCopy];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)didFinishCommands:(id *)commands count:(unint64_t)count
{
  v42 = *MEMORY[0x277D85DE8];
  if (!count)
  {
    goto LABEL_46;
  }

  countCopy = count;
  *&v4 = 136316162;
  v28 = v4;
  do
  {
    v8 = [commands->var2 count];
    if (!v8)
    {
      goto LABEL_43;
    }

    v9 = 0;
    v29 = 0;
    do
    {
      v10 = [commands->var2 objectAtIndex:v9];
      responseType = [v10 responseType];
      if (responseType <= 8)
      {
        if (responseType <= 3)
        {
          if (responseType != 2)
          {
            if (responseType == 3)
            {
              v13 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                mambaID = [(MFConnection *)self mambaID];
                rumbaID = [(MFConnection *)self rumbaID];
                v25 = [(MFIMAPConnection *)self _errorForResponse:v10 commandParams:commands];
                *buf = v28;
                v31 = mambaID;
                v32 = 2080;
                v33 = " ";
                v34 = 2114;
                v35 = rumbaID;
                v36 = 2080;
                v37 = " ";
                v38 = 2112;
                v39 = v25;
                _os_log_error_impl(&dword_2720B1000, v13, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s%@", buf, 0x34u);
              }

              self->_gotBadResponse = 1;
              goto LABEL_37;
            }

            goto LABEL_40;
          }

          if ([v10 responseCode] != 12)
          {
            goto LABEL_37;
          }

          retainedReference = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
          if (retainedReference && (*(&self->_delegateState + 8) & 0x200) != 0)
          {
            responseInfo = [v10 responseInfo];
            -[NSObject setHighestModSequence:](retainedReference, "setHighestModSequence:", [responseInfo unsignedLongLongValue]);
          }
        }

        else
        {
          if (responseType != 4)
          {
            if (responseType == 6)
            {
              v19 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                mambaID2 = [(MFConnection *)self mambaID];
                rumbaID2 = [(MFConnection *)self rumbaID];
                v22 = _IMAPCommandTable[commands->var0];
                *buf = 136316418;
                v31 = mambaID2;
                v32 = 2080;
                v33 = " ";
                v34 = 2114;
                v35 = rumbaID2;
                v36 = 2080;
                v37 = " ";
                v38 = 2080;
                v39 = v22;
                v40 = 2112;
                v41 = v10;
                _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sMFIMAPConnection was lost during processing of command %s: %@.", buf, 0x3Eu);
              }

              v29 = 1;
              goto LABEL_37;
            }

            if (responseType == 7)
            {
              capabilities = [v10 capabilities];
              if (capabilities)
              {
                [(MFIMAPConnection *)self mf_lock];
                [(MFIMAPConnection *)self _clearCapabilities];
                [(MFIMAPConnection *)self _addCapabilities:capabilities];
                [(MFIMAPConnection *)self mf_unlock];
              }

              goto LABEL_12;
            }

            goto LABEL_40;
          }

          retainedReference = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
          if (os_log_type_enabled(retainedReference, OS_LOG_TYPE_DEFAULT))
          {
            mambaID3 = [(MFConnection *)self mambaID];
            rumbaID3 = [(MFConnection *)self rumbaID];
            v17 = _IMAPCommandTable[commands->var0];
            *buf = 136316418;
            v31 = mambaID3;
            v32 = 2080;
            v33 = " ";
            v34 = 2114;
            v35 = rumbaID3;
            v36 = 2080;
            v37 = " ";
            v38 = 2080;
            v39 = v17;
            v40 = 2112;
            v41 = v10;
            _os_log_impl(&dword_2720B1000, retainedReference, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sUnhandled response to command %s: %@", buf, 0x3Eu);
          }
        }

        goto LABEL_37;
      }

      if ((responseType - 10) < 2)
      {
        goto LABEL_37;
      }

      if (responseType == 9)
      {
        capabilities = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
        if (capabilities && (*(&self->_delegateState + 8) & 0x100) != 0)
        {
          [capabilities setServerMessageCount:{objc_msgSend(v10, "number")}];
        }

LABEL_12:

LABEL_37:
        [commands->var2 removeObjectAtIndex:v9];
        --v8;
        goto LABEL_38;
      }

      if (responseType == 17)
      {
        goto LABEL_37;
      }

LABEL_40:
      ++v9;
LABEL_38:
    }

    while (v9 < v8);
    if (v29)
    {
      [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1 reason:"receivedByeByeBabyBabyGoodbye"];
    }

LABEL_43:
    var2 = commands->var2;
    if (var2)
    {
      commands->var2 = 0;
    }

    ++commands;
    --countCopy;
  }

  while (countCopy);
LABEL_46:
  v27 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 36) = 0;
  *(self + 37) = 0;
  return self;
}

- (id)_messageIDsFromFetchResultData:(id)data
{
  v49 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = [MEMORY[0x277CBEB58] set];
  v34 = dataCopy;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(dataCopy length:"bytes") encoding:{objc_msgSend(dataCopy, "length"), 4}];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v33 = v5;
  v7 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v32 = v7;
  [v7 componentsSeparatedByString:@"\r\n"];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v37 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v37)
  {
    v36 = *v44;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        v10 = [v9 length];
        v11 = [@"In-Reply-To:" length];
        if (v10 >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = v10;
        }

        v13 = [v9 rangeOfString:@"In-Reply-To:" options:1 range:{0, v12}];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = [v9 length];
          v16 = [@"References:" length];
          if (v15 >= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v15;
          }

          v13 = [v9 rangeOfString:@"References:" options:1 range:{0, v17}];
        }

        if (!v13)
        {
          v18 = [v9 substringFromIndex:v14];

          v9 = v18;
        }

        whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v20 = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

        v38 = v20;
        v21 = [v20 componentsSeparatedByString:@">"];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v40;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v40 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v39 + 1) + 8 * j);
              v27 = [v26 rangeOfString:@"<" options:2 range:{0, objc_msgSend(v26, "length")}];
              if (v27 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v29 = [v26 substringFromIndex:v27 + v28];

                v26 = v29;
              }

              if ([v26 length])
              {
                [v4 addObject:v26];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v23);
        }
      }

      v37 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v37);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_getReferencesForMessageSet:(id)set
{
  v44 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v4 = [MEMORY[0x277CBEB58] set];
  v33 = 21;
  v34 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v35 = 0;
  v36 = 0;
  v37 = 0;
  [v34 addObject:setCopy];
  [v34 addObject:@"BODY[HEADER.FIELDS (REFERENCES IN-REPLY-TO)]"];
  v19 = v34;
  v20 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v33 count:1];
  if ([v20 responseType] == 2)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v35;
    v5 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (!v5)
    {
      goto LABEL_22;
    }

    v23 = *v30;
    while (1)
    {
      v24 = v5;
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        fetchResults = [v7 fetchResults];
        v9 = [fetchResults countByEnumeratingWithState:&v25 objects:v42 count:16];
        if (v9)
        {
          v10 = *v26;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v26 != v10)
              {
                objc_enumerationMutation(fetchResults);
              }

              v12 = *(*(&v25 + 1) + 8 * j);
              type = [v12 type];
              if (type == 4)
              {
                fetchData = [v12 fetchData];
                v16 = [(MFIMAPConnection *)self _messageIDsFromFetchResultData:fetchData];
                [v4 unionSet:v16];
              }

              else
              {
                if (type == 8)
                {
                  continue;
                }

                fetchData = vm_imap_log();
                if (os_log_type_enabled(fetchData, OS_LOG_TYPE_ERROR))
                {
                  type2 = [v12 type];
                  *buf = 138412546;
                  v39 = v12;
                  v40 = 1024;
                  v41 = type2;
                  _os_log_error_impl(&dword_2720B1000, fetchData, OS_LOG_TYPE_ERROR, "ERROR: UNKNOWN RESULT: %@ %d", buf, 0x12u);
                }
              }
            }

            v9 = [fetchResults countByEnumeratingWithState:&v25 objects:v42 count:16];
          }

          while (v9);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
      if (!v5)
      {
LABEL_22:

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_searchUidsForMessageIDs:(id)ds excludeDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  dsCopy = ds;
  v7 = [dsCopy count];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4 * v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__MFIMAPConnection_ReferenceSearching___searchUidsForMessageIDs_excludeDeleted___block_invoke;
  v13[3] = &unk_279E34F00;
  v15 = v7 - 1;
  v9 = v8;
  v14 = v9;
  [dsCopy enumerateObjectsUsingBlock:v13];

  if (deletedCopy)
  {
    [v9 addObject:@"UNDELETED"];
  }

  v12 = 0;
  v10 = [(MFIMAPConnection *)self searchIDSet:0 forTerms:v9 success:&v12];

  return v10;
}

void __80__MFIMAPConnection_ReferenceSearching___searchUidsForMessageIDs_excludeDeleted___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (*(a1 + 40) > a3)
  {
    [*(a1 + 32) addObject:@"OR"];
  }

  [*(a1 + 32) addObject:@"HEADER"];
  [*(a1 + 32) addObject:@"Message-ID"];
  [*(a1 + 32) addObject:v5];
}

- (id)_getFirstLevelMessageIDsForReference:(id)reference
{
  v4 = MEMORY[0x277CBEB58];
  referenceCopy = reference;
  v6 = [v4 set];
  v7 = [MEMORY[0x277CBEB98] setWithObject:referenceCopy];

  v8 = [(MFIMAPConnection *)self _uidsForMessageIDs:v7 excludeDeleted:0];

  if ([v8 count])
  {
    allObjects = [v8 allObjects];
    v10 = [(MFIMAPConnection *)self messageSetForNumbers:allObjects];

    v11 = [(MFIMAPConnection *)self _getReferencesForMessageSet:v10];
    [v6 unionSet:v11];
  }

  return v6;
}

- (id)uidsReferencedBy:(id)by
{
  v21 = *MEMORY[0x277D85DE8];
  byCopy = by;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = byCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MFIMAPConnection *)self _getFirstLevelMessageIDsForReference:*(*(&v16 + 1) + 8 * i), v16];
        v12 = [v11 mutableCopy];

        [v12 minusSet:v6];
        [v5 unionSet:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [(MFIMAPConnection *)self _uidsForMessageIDs:v5 excludeDeleted:0];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)sendResponsesForCondStoreFlagFetchForUIDs:(id)ds withSequenceIdentifier:(id *)identifier toQueue:(id)queue
{
  v51[3] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  selfCopy = self;
  queueCopy = queue;
  v28 = dsCopy;
  v32 = [(MFIMAPConnection *)self messageSetForNumbers:dsCopy];
  v8 = MEMORY[0x277CCACA8];
  if (identifier && [*identifier length])
  {
    v9 = *identifier;
  }

  else
  {
    v9 = @"0";
  }

  v31 = [v8 stringWithFormat:@"(CHANGEDSINCE %@)", v9];
  v51[0] = v32;
  v51[1] = @"(FLAGS)";
  v51[2] = v31;
  [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
  v29 = v44 = 21;
  v45 = v29;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v10 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v44 count:1];
  responseType = [v10 responseType];
  if (responseType == 2)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v46;
    v12 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    v27 = v10;
    if (!v12)
    {

      goto LABEL_27;
    }

    v13 = 0;
    v14 = 0;
    v15 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        if ([v17 responseType] == 17)
        {
          fetchResults = [v17 fetchResults];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v19 = fetchResults;
          v20 = [v19 countByEnumeratingWithState:&v36 objects:v49 count:16];
          if (v20)
          {
            v21 = *v37;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v37 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                modSequenceNumber = [*(*(&v36 + 1) + 8 * j) modSequenceNumber];
                v24 = modSequenceNumber > v13;
                if (modSequenceNumber > v13)
                {
                  v13 = modSequenceNumber;
                }

                v14 |= v24;
              }

              v20 = [v19 countByEnumeratingWithState:&v36 objects:v49 count:16];
            }

            while (v20);
          }

          [queueCopy addItem:v17];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v12);

    v10 = v27;
    responseType = 2;
    if (((identifier != 0) & v14) == 1)
    {
      *identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v13];
LABEL_27:
      v10 = v27;
      responseType = 2;
    }
  }

  [(MFIMAPConnection *)selfCopy didFinishCommands:&v44 count:1];

  v25 = *MEMORY[0x277D85DE8];
  return responseType == 2;
}

- (int64_t)_moveMessageSet:(id)set toMailboxName:(id)name command:(int)command newMessageInfo:(id *)info
{
  v28[2] = *MEMORY[0x277D85DE8];
  setCopy = set;
  nameCopy = name;
  if ([(MFIMAPConnection *)self supportsCapability:19])
  {
    v12 = [(MFIMAPConnection *)self messageSetForNumbers:setCopy];
    v13 = v12;
    if (v12)
    {
      v28[0] = v12;
      v14 = MFIMAPStringFromMailboxName(nameCopy);
      v28[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

      LODWORD(v23) = command;
      v16 = v15;
      v24 = v16;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v17 = [(MFIMAPConnection *)self _responseFromSendingCommand:&v23 andPossiblyCreateMailbox:nameCopy];
      responseType = [v17 responseType];
      v19 = responseType;
      if (info && responseType == 2)
      {
        *info = [objc_opt_class() _UIDPlusInfoFromIMAPResponses:v25];
      }

      [(MFIMAPConnection *)self didFinishCommands:&v23 count:1];
      v20 = v19 != 2;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 2;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)_UIDPlusInfoFromIMAPResponses:(id)responses
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  responsesCopy = responses;
  v4 = [responsesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(responsesCopy);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 responseType] == 2 && objc_msgSend(v7, "responseCode") == 16)
        {
          v9 = v7;

          if (v9)
          {
            v8 = MFUIDPlusInfoFromResponse(v9);
          }

          else
          {
            v8 = 0;
          }

          goto LABEL_14;
        }
      }

      v4 = [responsesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_14:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)handleStreamEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_1_2(v1, 4.8153e-34, v2, v3);
  OUTLINED_FUNCTION_0_3(v4, v5, v6);
  OUTLINED_FUNCTION_3_0(&dword_2720B1000, "#D %s%s%{public}@%shandleStreamEvent kCFStreamEventHasBytesAvailable", v7, v8);
}

- (void)handleStreamEvent:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_1_2(v1, 4.8153e-34, v2, v3);
  OUTLINED_FUNCTION_0_3(v4, v5, v6);
  OUTLINED_FUNCTION_3_0(&dword_2720B1000, "#D %s%s%{public}@%shandleStreamEvent kCFStreamEventEndEncountered", v7, v8);
}

@end