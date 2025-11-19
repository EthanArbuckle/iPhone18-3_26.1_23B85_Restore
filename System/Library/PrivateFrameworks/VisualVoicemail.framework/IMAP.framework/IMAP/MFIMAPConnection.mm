@interface MFIMAPConnection
+ (id)_UIDPlusInfoFromIMAPResponses:(id)a3;
+ (void)initialize;
+ (void)setReadSizeParameters;
- (BOOL)_doBasicConnectionUsingAccount:(id)a3;
- (BOOL)_doUidFetchWithRange:(id)a3 arguments:(id)a4 validateMessage:(BOOL)a5 responses:(id)a6;
- (BOOL)_sendMailboxCommand:(int)a3 withArguments:(id)a4;
- (BOOL)_tryConnectionUsingAccount:(id)a3;
- (BOOL)appendData:(id)a3 toMailboxNamed:(id)a4 flags:(id)a5 dateReceived:(id)a6 newMessageInfo:(id *)a7;
- (BOOL)authenticateUsingAccount:(id)a3;
- (BOOL)authenticateUsingAccount:(id)a3 authenticator:(id)a4;
- (BOOL)closeAndLogout;
- (BOOL)connectUsingAccount:(id)a3;
- (BOOL)copyUids:(id)a3 toMailboxNamed:(id)a4 newMessageInfo:(id *)a5;
- (BOOL)createMailbox:(id)a3;
- (BOOL)deleteMailbox:(id)a3;
- (BOOL)deleteMessagesOlderThanNumberOfDays:(int)a3;
- (BOOL)expunge;
- (BOOL)expungeUids:(id)a3;
- (BOOL)getQuotaForRootName:(id)a3;
- (BOOL)loginWithAccount:(id)a3 password:(id)a4;
- (BOOL)logout;
- (BOOL)performCustomCommand:(id)a3 withArguments:(id)a4;
- (BOOL)renameMailbox:(id)a3 toMailbox:(id)a4;
- (BOOL)selectMailbox:(id)a3 withAccount:(id)a4;
- (BOOL)sendResponsesForCommand:(id *)a3 toQueue:(id)a4;
- (BOOL)sendResponsesForCondStoreFlagFetchForUIDs:(id)a3 withSequenceIdentifier:(id *)a4 toQueue:(id)a5;
- (BOOL)sendResponsesForUIDFetchForUIDs:(id)a3 fields:(id)a4 toQueue:(id)a5;
- (BOOL)sendResponsesForUIDs:(id)a3 fields:(id)a4 flagSearchResults:(id)a5 toQueue:(id)a6;
- (BOOL)sendUidAndFlagResponsesForUIDs:(id)a3 sequenceIdentifierProvider:(id)a4 flagSearchResults:(id)a5 toQueue:(id)a6;
- (BOOL)sendUidResponsesForSearchArguments:(id)a3 toQueue:(id)a4;
- (BOOL)startTLSForAccount:(id)a3;
- (BOOL)subscribeMailbox:(id)a3;
- (BOOL)supportsCapability:(int)a3;
- (BOOL)unsubscribeMailbox:(id)a3;
- (MFIMAPConnection)initWithMambaID:(const char *)a3;
- (NSArray)additionalHeadersForFetch;
- (id).cxx_construct;
- (id)_copyNextServerResponseForCommand:(id *)a3;
- (id)_copyNextTaggedOrContinuationResponseForCommand:(id *)a3;
- (id)_doListCommand:(int)a3 withReference:(id)a4 mailboxName:(id)a5 options:(int)a6 getSpecialUse:(BOOL)a7 statusDataItems:(id)a8 statusEntriesByMailbox:(id *)a9;
- (id)_doNamespaceCommand;
- (id)_errorForResponse:(id)a3 commandParams:(id *)a4;
- (id)_fetchArgumentForMessageSkeletonsWithHeaders:(id)a3;
- (id)_getFirstLevelMessageIDsForReference:(id)a3;
- (id)_getReferencesForMessageSet:(id)a3;
- (id)_messageIDsFromFetchResultData:(id)a3;
- (id)_readDataOfLength:(int64_t)a3;
- (id)_responseFromSendingCommand:(id *)a3 andPossiblyCreateMailbox:(id)a4;
- (id)_responseFromSendingCommands:(id *)a3 count:(unint64_t)a4;
- (id)_searchUidsForMessageIDs:(id)a3 excludeDeleted:(BOOL)a4;
- (id)_serverErrorForAccount:(id)a3 response:(id)a4 command:(id *)a5;
- (id)capabilities;
- (id)copyArgumentForSearchTerm:(id)a3;
- (id)copyDiagnosticInformation;
- (id)description;
- (id)eSearchIDSet:(id)a3 areMessageSequenceNumbers:(BOOL)a4 arguments:(id)a5 success:(BOOL *)a6 returning:(int)a7;
- (id)fetchMessageIdsForUids:(id)a3;
- (id)fetchUniqueRemoteIDsForUids:(id)a3;
- (id)messageSetForNumbers:(id)a3;
- (id)messageSetForNumbers:(id)a3 range:(_NSRange)a4;
- (id)messageSetForNumbers:(id)a3 range:(_NSRange)a4 maxTokens:(unint64_t)a5 indexOfLastNumber:(unint64_t *)a6;
- (id)messageSetForRange:(id)a3;
- (id)messageSetForRange:(id)a3 butNotNumbers:(id)a4;
- (id)parenthesizedStringWithObjects:(id)a3;
- (id)parseIndexSetFromSequenceSet:(id)a3;
- (id)quotaPercentagesForMailbox:(id)a3;
- (id)searchIDSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5;
- (id)searchUIDs:(id)a3 withFlagRequests:(id)a4;
- (id)searchUidSet:(id)a3 forNewMessageIDs:(id)a4;
- (id)searchUidSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5;
- (id)separatorChar;
- (id)serverPathPrefix;
- (id)uidsReferencedBy:(id)a3;
- (int)_doIMAPLoginForAccount:(id)a3 quotedUsername:(id)a4 password:(id)a5;
- (int)connectionState;
- (int)fillLiteralBuffer:(char *)a3 count:(unint64_t)a4 dataLength:(unint64_t)a5 nonSynchronizingLiteral:(BOOL *)a6;
- (int64_t)_moveMessageSet:(id)a3 toMailboxName:(id)a4 command:(int)a5 newMessageInfo:(id *)a6;
- (unint64_t)_sendCommands:(id *)a3 count:(unint64_t)a4 response:(id *)a5;
- (unint64_t)countForSearchOfIDSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5;
- (unint64_t)countForSearchOfUidSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5;
- (unsigned)literalChunkSize;
- (unsigned)readBufferSize;
- (void)_addCapabilities:(id)a3;
- (void)_clearCapabilities;
- (void)_enableCompressionIfSupported;
- (void)_fetchCapabilities;
- (void)_sendClientInfoIfSupported;
- (void)_updateCapabilitiesForAccount:(id)a3 withAuthenticationResponse:(id)a4;
- (void)_updateSearchCapabilityWithAccount:(id)a3;
- (void)close;
- (void)dealloc;
- (void)didFinishCommands:(id *)a3 count:(unint64_t)a4;
- (void)disconnectAndNotifyDelegate:(BOOL)a3 reason:(const char *)a4;
- (void)fetchStatusForMailboxes:(id)a3 args:(id)a4;
- (void)fetchTotalSize:(unint64_t *)a3 andMessageCount:(unsigned int *)a4;
- (void)finishIdle;
- (void)handleBytesAvailable;
- (void)handleStreamEvent:(unint64_t)a3;
- (void)locked_finishIdle;
- (void)locked_scheduleIdle;
- (void)locked_scheduleIdleResetAfterDelay:(double)a3;
- (void)locked_startIdle;
- (void)noop;
- (void)notifyDelegateOfBodyLoadAppendage:(id)a3 section:(id)a4;
- (void)notifyDelegateOfBodyLoadCompletion:(id)a3 section:(id)a4;
- (void)notifyDelegateOfBodyLoadStart:(id)a3 section:(id)a4;
- (void)parseESearchResponseWithContext:(id)a3;
- (void)parseSearchReturn:(id)a3;
- (void)scheduleIdleReset;
- (void)setAdditionalHeadersForFetch:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setReadBufferSizeFromElapsedTime:(double)a3 bytesRead:(unint64_t)a4;
- (void)socketClosedUnderneath;
- (void)unselect;
@end

@implementation MFIMAPConnection

- (id)eSearchIDSet:(id)a3 areMessageSequenceNumbers:(BOOL)a4 arguments:(id)a5 success:(BOOL *)a6 returning:(int)a7
{
  v12 = a3;
  v13 = a5;
  v36 = 24;
  v14 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v13, "count") + 2 * (v12 != 0)}];
  v37 = v14;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (!a7)
  {
    __assert_rtn("[MFIMAPConnection(ESearch) eSearchIDSet:areMessageSequenceNumbers:arguments:success:returning:]", "IMAP_ESearch.m", 35, "returning && Should have at least one return request on an esearch command.");
  }

  v15 = v14;
  [v14 addObject:@"RETURN"];
  v16 = objc_msgSend(@"("), "mutableCopy";
  v17 = v16;
  if (a7)
  {
    [v16 appendString:@"MIN"];
    if ((a7 & 2) == 0)
    {
LABEL_10:
      if ((a7 & 4) == 0)
      {
LABEL_13:
        if ((a7 & 8) == 0)
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

  if ((a7 & 2) != 0)
  {
    goto LABEL_9;
  }

  if ((a7 & 4) != 0)
  {
    goto LABEL_12;
  }

  if ((a7 & 8) != 0)
  {
LABEL_15:
    [v17 appendString:@"COUNT"];
  }

LABEL_16:
  [v17 appendString:@""]);
  [v15 addObject:v17];
  if (v12)
  {
    if (!a4)
    {
      [v15 addObject:@"UID"];
    }

    [v15 addObject:v12];
  }

  [v15 addObjectsFromArray:v13];
  v18 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v36 count:1];
  v19 = [v18 responseType];
  v33 = self;
  if (a6)
  {
    *a6 = v19 == 2;
  }

  v34 = v12;
  v31 = v18;
  if (v19 == 2 && (v20 = [v38 count]) != 0)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = [v38 objectAtIndex:{v22, v31}];
      if ([v23 responseType] == 20)
      {
        v24 = [v23 keyValuePairs];

        v25 = [v24 objectForKey:@"IMAPESearchTagKey"];
        v26 = [v25 intValue];
        v27 = v39;

        if (v27 == v26)
        {
          v21 = v24;
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

  [(MFIMAPConnection *)v33 didFinishCommands:&v36 count:1, v31];
  v29 = v21;

  return v29;
}

- (id)parseIndexSetFromSequenceSet:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v5 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v3];
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
        v6 = [v5 scanLocation];
        v7 = [v3 characterAtIndex:v6];
        if (v7 == 44)
        {
          [v4 addIndex:v12];
          v8 = v6 + 1;
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

        [v5 setScanLocation:v6 + 1];
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

- (void)parseSearchReturn:(id)a3
{
  v15 = a3;
  v4 = [v15 end];
  if (v4 > [v15 start])
  {
    while (![v15 match:"MIN"])
    {
      if ([v15 match:"MAX"])
      {
        if (([v15 parseSpace] & 1) == 0)
        {
          [v15 emitWarning:@"Expected space"];
        }

        v5 = [v15 copyNumber];
        if (!v5)
        {
          [v15 emitError:@"Expected number for maximum result"];
        }

        v6 = [v15 response];
        v7 = v6;
        v8 = v5;
        v9 = @"IMAPESearchMaxKey";
        goto LABEL_14;
      }

      if ([v15 match:"ALL"])
      {
        if (([v15 parseSpace] & 1) == 0)
        {
          [v15 emitWarning:@"Expected space"];
        }

        v11 = [v15 copyMessageSet];
        v12 = [(MFIMAPConnection *)self parseIndexSetFromSequenceSet:v11];
        v13 = [v15 response];
        [v13 setValue:v12 forKey:@"IMAPESearchAllKey"];

        goto LABEL_16;
      }

      if (![v15 match:"COUNT"])
      {
        [v15 emitError:@"Did not find a valid search return."];
        goto LABEL_16;
      }

      if (([v15 parseSpace] & 1) == 0)
      {
        [v15 emitWarning:@"Expected space"];
      }

      v5 = [v15 copyNumber];
      if (!v5)
      {
        [v15 emitError:@"Expected number for count result"];
      }

      v14 = [v15 response];
      [v14 setValue:v5 forKey:@"IMAPESearchCountKey"];

LABEL_15:
LABEL_16:
      [v15 parseSpace];
      v10 = [v15 end];
      if (v10 <= [v15 start])
      {
        goto LABEL_29;
      }
    }

    if (([v15 parseSpace] & 1) == 0)
    {
      [v15 emitWarning:@"Expected space"];
    }

    v5 = [v15 copyNumber];
    if (!v5)
    {
      [v15 emitError:@"Expected number for minimum result"];
    }

    v6 = [v15 response];
    v7 = v6;
    v8 = v5;
    v9 = @"IMAPESearchMinKey";
LABEL_14:
    [v6 setValue:v8 forKey:v9];

    goto LABEL_15;
  }

LABEL_29:
}

- (void)parseESearchResponseWithContext:(id)a3
{
  v7 = a3;
  if (([v7 parseSpace] & 1) == 0)
  {
    [v7 emitWarning:@"Expected space"];
  }

  if ([v7 match:"(")]
  {
    if ([v7 match:"TAG"])
    {
      if (([v7 parseSpace] & 1) == 0)
      {
        [v7 emitWarning:@"Expected space"];
      }

      v4 = [v7 copyQuotedString];
      v5 = [v7 response];
      [v5 setValue:v4 forKey:@"IMAPESearchTagKey"];
    }

    if (([v7 match:"]") & 1) == 0)
    {
      [v7 emitError:@"Expected right paren"];
    }
  }

  if ([v7 parseSpace])
  {
    if ([v7 match:"UID"])
    {
      if (([v7 parseSpace] & 1) == 0)
      {
        v6 = [v7 end];
        if (v6 != [v7 start])
        {
          [v7 emitWarning:@"Expected space"];
        }
      }
    }

    [(MFIMAPConnection *)self parseSearchReturn:v7];
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

  [a1 setReadSizeParameters];
}

- (MFIMAPConnection)initWithMambaID:(const char *)a3
{
  v4.receiver = self;
  v4.super_class = MFIMAPConnection;
  if ([(MFConnection *)&v4 initWithMambaID:a3])
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
  v3 = [(MFConnection *)&v12 copyDiagnosticInformation];
  v4 = [v3 mutableCopy];
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
  v8 = [(MFIMAPConnection *)self isIdle];
  v9 = [(MFIMAPConnection *)self idleCommandSequenceNumber];
  if (v8)
  {
    v10 = @"yes";
  }

  else
  {
    v10 = @"no";
  }

  [v5 appendFormat:@"    using IDLE: %@ (seq=%lu)\n", v10, v9];
  [(MFIMAPConnection *)self mf_unlock];

  return v5;
}

- (void)setDelegate:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MFConnection *)self mambaID];
    v7 = [(MFConnection *)self rumbaID];
    v23 = 136316162;
    v24 = v6;
    v25 = 2080;
    v26 = " ";
    v27 = 2114;
    v28 = v7;
    v29 = 2080;
    v30 = " ";
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%ssetDelegate: %@", &v23, 0x34u);
  }

  v8 = [VFWeakReferenceHolder weakReferenceWithObject:v4];
  holder = self->_delegateState.holder;
  if (holder != v8)
  {
    v10 = [(VFWeakReferenceHolder *)holder retainedReference];
    v11 = v10;
    if (v10 && (*(&self->_delegateState + 8) & 0x400) != 0)
    {
      [v10 willRemoveDelegation:self];
    }

    objc_storeStrong(&self->_delegateState.holder, v8);
    self->_delegateState.__weak_void_delegate = v4;
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

- (void)_addCapabilities:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    capabilities = self->_capabilities;
    if (!capabilities)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v7 = self->_capabilities;
      self->_capabilities = v6;

      capabilities = self->_capabilities;
    }

    [(NSMutableSet *)capabilities addObjectsFromArray:v4];
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
  v4 = [v3 responseType];

  if (v4 == 2)
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
          v8 = [v7 capabilities];
          [(MFIMAPConnection *)self _addCapabilities:v8];

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

- (BOOL)_doBasicConnectionUsingAccount:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFConnection *)self getSocket];

  if (v5)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0 reason:"flush any previous connection activity"];
  }

  *(self + 176) &= 0xF8u;
  self->_expirationTime = 0.0;
  v30.receiver = self;
  v30.super_class = MFIMAPConnection;
  v6 = [(MFConnection *)&v30 connectUsingAccount:v4];
  v7 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MFConnection *)self mambaID];
    v9 = [(MFConnection *)self rumbaID];
    v10 = v9;
    v11 = @"failed";
    *buf = 136316418;
    v32 = v8;
    v33 = 2080;
    v34 = " ";
    if (v6)
    {
      v11 = @"succeeded";
    }

    v35 = 2114;
    v36 = v9;
    v37 = 2080;
    v38 = " ";
    v39 = 2112;
    v40 = v4;
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
        v14 = [v13 responseType];
        if (v14 == 5)
        {
          *(self + 176) = *(self + 176) & 0xF8 | 2;
        }

        else if (v14 == 2)
        {
          *(self + 176) = *(self + 176) & 0xF8 | 1;
          if ([v13 responseCode] == 14)
          {
            [(MFIMAPConnection *)self _clearCapabilities];
            v15 = [v13 responseInfo];
            [(MFIMAPConnection *)self _addCapabilities:v15];
          }
        }

        goto LABEL_22;
      }

      v17 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(MFConnection *)self mambaID];
        v23 = [(MFConnection *)self rumbaID];
        v24 = [(MFConnection *)self hostname];
        *buf = 136316162;
        v32 = v22;
        v33 = 2080;
        v34 = " ";
        v35 = 2114;
        v36 = v23;
        v37 = 2080;
        v38 = " ";
        v39 = 2112;
        v40 = v24;
        _os_log_impl(&dword_2720B1000, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s*** Expected untagged initial response from %@", buf, 0x34u);
      }

      v21 = "Expected untagged initial response from host";
    }

    else
    {
      v17 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(MFConnection *)self mambaID];
        v19 = [(MFConnection *)self rumbaID];
        v20 = [(MFConnection *)self hostname];
        *buf = 136316162;
        v32 = v18;
        v33 = 2080;
        v34 = " ";
        v35 = 2114;
        v36 = v19;
        v37 = 2080;
        v38 = " ";
        v39 = 2112;
        v40 = v20;
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

- (BOOL)_tryConnectionUsingAccount:(id)a3
{
  v4 = a3;
  v5 = [(MFIMAPConnection *)self _doBasicConnectionUsingAccount:v4];
  v6 = [(MFConnection *)self getSocket];
  if (!v5)
  {
    goto LABEL_8;
  }

  if (![v4 usesSSL] || (objc_msgSend(v6, "securityProtocol"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(*MEMORY[0x277CBF0A0], "isEqualToString:", v7), v7, !v8))
  {
    v10 = 1;
    goto LABEL_10;
  }

  if ([(MFIMAPConnection *)self startTLSForAccount:v4])
  {
    v9 = [v4 clientCertificates];
    if (v9)
    {
      [v6 setCertificates:v9];
    }

    v10 = [v6 setSecurityProtocol:*MEMORY[0x277CBF098]];
    [(MFIMAPConnection *)self _updateCapabilitiesForAccount:v4 withAuthenticationResponse:0];
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (BOOL)connectUsingAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 hostname];
  v6 = [v4 credentialAccessibility];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = [v4 missingPasswordErrorWithTitle:@"Cannot Get Mail"];
      if (v7)
      {
        v8 = +[MFActivityMonitor currentMonitor];
        [v8 setError:v7];
      }
    }

    goto LABEL_8;
  }

  if (!v5 || ![v5 length])
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  [(MFIMAPConnection *)self mf_lock];
  v9 = [(MFIMAPConnection *)self _tryConnectionUsingAccount:v4];
  [(MFIMAPConnection *)self mf_unlock];
LABEL_9:

  return v9;
}

- (void)disconnectAndNotifyDelegate:(BOOL)a3 reason:(const char *)a4
{
  v5 = a3;
  v30 = *MEMORY[0x277D85DE8];
  [(MFIMAPConnection *)self mf_lock];
  v7 = [(MFConnection *)self getSocket];
  ptr = self->logger.__ptr_;
  if (v7)
  {
    v9 = ctu::OsLogLogger::getOsLogHandle(ptr);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 rumbaID];
      v20 = 138412802;
      v21 = v10;
      v22 = 2048;
      v23 = v7;
      v24 = 2080;
      v25 = a4;
      _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "#I %@ socket (%p) disconnectAndNotifyDelegate [%s]", &v20, 0x20u);
    }

    [v7 setEventHandler:0];
    [v7 setClosingEventHandler:0];
    [(MFConnection *)self abortSocket:v7];
    self->_expirationTime = 0.0;
  }

  else
  {
    v11 = ctu::OsLogLogger::getOsLogHandle(ptr);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MFConnection *)self mambaID];
      v13 = [(MFConnection *)self rumbaID];
      v20 = 136316162;
      v21 = v12;
      v22 = 2080;
      v23 = " ";
      v24 = 2114;
      v25 = v13;
      v26 = 2080;
      v27 = " ";
      v28 = 2080;
      v29 = a4;
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
  if (v5)
  {
    v17 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
    v18 = v17;
    if (v17 && (*(&self->_delegateState + 8) & 8) != 0)
    {
      [v17 connectionDidDisconnect:self];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int)connectionState
{
  v3 = [(MFConnection *)self getSocket];
  if (v3)
  {
    [(MFIMAPConnection *)self mf_lock];
    if (self->_expirationTime != 0.0 && CFAbsoluteTimeGetCurrent() > self->_expirationTime)
    {
      [(MFIMAPConnection *)self noop];
    }

    v4 = [v3 isValid];
    v5 = *(self + 176);
    if ((v4 & 1) == 0)
    {
      v5 &= 0xF8u;
      *(self + 176) = v5;
    }

    v6 = v4 ^ 1;
    if ((v5 & 7) != 0)
    {
      while (!(v6 & 1 | (([v3 isReadable] & 1) == 0)))
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

- (int)fillLiteralBuffer:(char *)a3 count:(unint64_t)a4 dataLength:(unint64_t)a5 nonSynchronizingLiteral:(BOOL *)a6
{
  *(self + 154);
  v6 = *(self + 76);
  if ((v6 & 2) != 0)
  {
    *a6 = 1;
  }

  else
  {
    if (a5 > 0x1000)
    {
      *a6 = 0;
LABEL_8:
      v7 = "";
      return snprintf(a3, a4, "{%lu%s}\r\n", a5, v7);
    }

    *a6 = (v6 & 4) != 0;
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  v7 = "+";
  return snprintf(a3, a4, "{%lu%s}\r\n", a5, v7);
}

- (unint64_t)_sendCommands:(id *)a3 count:(unint64_t)a4 response:(id *)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 1;
  [(MFIMAPConnection *)self locked_finishIdle];
  [(NSMutableData *)self->_data setLength:0];
  if (!a4)
  {
    v8 = 0;
    v63 = 0;
    v7 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_123;
  }

  v7 = 0;
  v66 = 0;
  v63 = 0;
  v8 = 0;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    var0 = a3->var0;
    if (a3->var0 == 29)
    {
      var3 = 0;
      goto LABEL_10;
    }

    if (var0 != 32)
    {
      break;
    }

    var3 = a3->var3;
LABEL_9:
    v11 = self->_commandNumber + 1;
    self->_commandNumber = v11;
    a3->var3 = v11;
    snprintf(__str, 0x20uLL, "%lu ", v11);
    [(NSMutableData *)self->_data mf_appendCString:__str];
LABEL_10:
    v68 = [a3->var1 count];
    v12 = a3->var0;
    v67 = a3;
    if (v12 == 37)
    {
      if (!v68)
      {
        goto LABEL_117;
      }

      v13 = [a3->var1 objectAtIndex:0];
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
      v17 = v7;
      while (1)
      {
        v18 = [a3->var1 objectAtIndex:v16];
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
        if (a3->var0 == 5)
        {
          if (v16 != 1)
          {
            goto LABEL_29;
          }
        }

        else if (v16 != 1 || a3->var0 != 4)
        {
          goto LABEL_29;
        }

        v9 = [(NSMutableData *)self->_data length];
        v8 = [v20 length];
LABEL_29:
        [(NSMutableData *)self->_data appendData:v20];

        ++v16;
        v7 = v17;
LABEL_110:

        v17 = v7;
        a3 = v67;
        if (v16 == v68)
        {
          goto LABEL_115;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = ++v16 == v68 && a3->var0 == 19;
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

          else if (a3->var0 == 5)
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
          v26 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:a3];
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
        v7 = v66;
        if ((v52 & 1) == 0)
        {
          goto LABEL_114;
        }

        goto LABEL_110;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = ++v16 == v68 && a3->var0 == 19;
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
            v39 = [v64 bytes];
            v40 = [v64 length];
            [(NSMutableData *)self->_data setLength:0];
            *(v73 + 24) = 1;
            if (v40 >= 1)
            {
              v41 = &v39[v40];
              do
              {
                v42 = v41 - v39;
                v43 = memchr(v39, 10, v41 - v39);
                v44 = v43;
                if (v43)
                {
                  v45 = v43 - v39;
                  if (v43 == v39)
                  {
                    goto LABEL_80;
                  }

                  v46 = *(v43 - 1);
                  v47 = self->_data;
                  if (v46 != 13)
                  {
                    [(NSMutableData *)v47 appendBytes:v39 length:v45];
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

                [(NSMutableData *)v47 appendBytes:v39 length:v42];
LABEL_81:
                if (v44)
                {
                  v39 = v44 + 1;
                }

                else
                {
                  v39 = v41;
                }

                if ([(NSMutableData *)self->_data length]> 0xFFF || v39 >= v41)
                {
                  v49 = [(MFConnection *)self writeData:self->_data];
                  *(v73 + 24) = v49;
                  [(NSMutableData *)self->_data setLength:0];
                }
              }

              while (*(v73 + 24) == 1 && v39 < v41);
            }
          }

          else
          {
            if (v67->var0 == 5)
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
          v36 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:v67];
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

      v7 = v17;
      v8 = v53;
      a3 = v67;
    }

LABEL_115:
    if (!v63)
    {
      v63 = 0;
      [(NSMutableData *)self->_data appendBytes:&_IMAPLineEnding length:2];
    }

LABEL_117:
    ++a3;
    if (++v66 == a4)
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
    v55 = [(MFConnection *)self mambaID];
    v56 = [(MFConnection *)self rumbaID];
    v57 = a3->var0;
    *buf = 136316162;
    v77 = v55;
    v78 = 2080;
    v79 = " ";
    v80 = 2114;
    v81 = v56;
    v82 = 2080;
    v83 = " ";
    v84 = 1024;
    v85 = v57;
    _os_log_impl(&dword_2720B1000, v54, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s*** Invalid IMAP command %d", buf, 0x30u);
  }

LABEL_123:
  if (*(v73 + 24) == 1 && [(NSMutableData *)self->_data length]&& [(MFConnection *)self writeData:self->_data dontLogBytesInRange:v9, v8])
  {
    v7 = a4;
  }

  [(NSMutableData *)self->_data setLength:0];
  if (a5)
  {
    v58 = v63;
    *a5 = v63;
  }

  self->_expirationTime = CFAbsoluteTimeGetCurrent() + 1500.0;
  if (v7 < a4)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1 reason:"sendCommand -> numSent < commandCount"];
  }

  _Block_object_dispose(&v72, 8);
  v59 = *MEMORY[0x277D85DE8];
  return v7;
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

- (id)_copyNextServerResponseForCommand:(id *)a3
{
  v4 = [[MFIMAPResponse alloc] initWithConnection:self responseConsumer:a3->var4];
  v5 = v4;
  if (!v4 || [(MFIMAPResponse *)v4 responseType]== 6)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1 reason:"_copyNextServerResponseForCommand -> not response or BYE"];

    return 0;
  }

  return v5;
}

- (id)_copyNextTaggedOrContinuationResponseForCommand:(id *)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3->var3];
  v6 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:a3];
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
      v9 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
      v10 = v9;
      if (!v9 || (*(&self->_delegateState + 8) & 1) == 0)
      {

LABEL_9:
        var2 = a3->var2;
        if (!var2)
        {
          v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v13 = a3->var2;
          a3->var2 = v12;

          var2 = a3->var2;
        }

        [var2 addObject:v6];
        goto LABEL_12;
      }

      v15 = [v9 connection:self shouldHandleUntaggedResponse:v6 forCommand:a3];

      if (v15)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v14 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:a3];

    v6 = v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  v16 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v17 = v16;
  if (v16 && (*(&self->_delegateState + 8) & 2) != 0)
  {
    [v16 connection:self didReceiveResponse:v6 forCommand:a3];
  }

LABEL_20:
  return v6;
}

- (id)_errorForResponse:(id)a3 commandParams:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[MFActivityMonitor currentMonitor];
  var0 = a4->var0;
  if (a4->var0 == 13)
  {
    v9 = [(MFConnection *)self hostname];
    if (v9)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Mail was unable to open this mailbox on the server “%@”.", v9];
      v12 = v10 = v9;
      goto LABEL_6;
    }

    var0 = a4->var0;
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCACA8] stringWithCString:_IMAPCommandTable[var0] encoding:1];
  v12 = [v13 stringWithFormat:@"IMAP command “%@” failed.", v14];

  v10 = 0;
LABEL_6:
  v15 = _messageFromResponse(v6, v11);
  if (!v15)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = a4->var2;
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
  v22 = [v7 error];
  v23 = v22 == 0;

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

  v4 = [(NSMutableSet *)capabilities allObjects];
  [(MFIMAPConnection *)self mf_unlock];

  return v4;
}

- (BOOL)supportsCapability:(int)a3
{
  [(MFIMAPConnection *)self mf_lock];
  if (!self->_capabilities)
  {
    [(MFIMAPConnection *)self _fetchCapabilities];
  }

  v5 = (*(self + 76) | (*(self + 154) << 16)) & (1 << a3) & 0x7FFFFF;
  if (a3 != 15 || !v5)
  {
    [(MFIMAPConnection *)self mf_unlock];
    if (!v5)
    {
      goto LABEL_13;
    }

    switch(a3)
    {
      case 13:
        v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v11 = [v10 BOOLForKey:@"DisableCOMPRESS"];
        break;
      case 14:
        v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v11 = [v10 BOOLForKey:@"DisableESEARCH"];
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
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [v7 BOOLForKey:@"DisableCONDSTORE"];

  v9 = v8 ^ 1;
  return v9 & 1;
}

- (void)noop
{
  [(MFIMAPConnection *)self mf_lock];
  v3 = [(MFConnection *)self getSocket];
  v4 = [v3 timeout];
  if (v4 >= 11)
  {
    [v3 setTimeout:10];
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  LODWORD(v6) = 1;
  v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v6 count:1];
  if (v4 >= 11)
  {
    [v3 setTimeout:v4];
  }

  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:&v6 count:1];
}

- (BOOL)authenticateUsingAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 password];
  [(MFIMAPConnection *)self mf_lock];
  if ((*(self + 176) & 6) != 0)
  {
    goto LABEL_3;
  }

  v12.receiver = self;
  v12.super_class = MFIMAPConnection;
  if ([(MFConnection *)&v12 authenticateUsingAccount:v4])
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
    v10 = [v4 loginDisabledErrorWithTitle:@"Cannot Get Mail"];
    v11 = +[MFActivityMonitor currentMonitor];
    [v11 setError:v10];
LABEL_13:

    goto LABEL_14;
  }

  if (!v5)
  {
    v10 = [v4 missingPasswordErrorWithTitle:@"Cannot Get Mail"];
    v11 = +[MFActivityMonitor currentMonitor];
    [v11 setError:v10];
    goto LABEL_13;
  }

  if (![(MFIMAPConnection *)self loginWithAccount:v4 password:v5])
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

- (id)_serverErrorForAccount:(id)a3 response:(id)a4 command:(id *)a5
{
  v7 = a3;
  v8 = [v7 errorForResponse:a4];
  v9 = [a5->var2 count];
  if (!v8)
  {
    v10 = v9;
    if (v9)
    {
      v11 = 1;
      do
      {
        v12 = [a5->var2 objectAtIndex:v11 - 1];
        v8 = [v7 errorForResponse:v12];

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

- (void)_updateCapabilitiesForAccount:(id)a3 withAuthenticationResponse:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(MFIMAPConnection *)self _clearCapabilities];
  if (v6 && [v6 responseCode] == 14)
  {
    v7 = [v6 responseInfo];
    [(MFIMAPConnection *)self _addCapabilities:v7];
  }

  else
  {
    v7 = [(MFIMAPConnection *)self capabilities];
  }

  [v8 _setCapabilities:v7];
}

- (int)_doIMAPLoginForAccount:(id)a3 quotedUsername:(id)a4 password:(id)a5
{
  v41[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 5;
  v41[0] = v9;
  v41[1] = v10;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v11 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v26 count:1];
  v12 = [v11 responseType];
  if (v12 == 2)
  {
    *(self + 176) = *(self + 176) & 0xF8 | 2;
    v13 = 0;
    [(MFIMAPConnection *)self _updateCapabilitiesForAccount:v8 withAuthenticationResponse:v11];
  }

  else
  {
    v14 = +[MFActivityMonitor currentMonitor];
    v13 = [v14 error];

    if (v13)
    {
      goto LABEL_6;
    }

    v13 = [(MFIMAPConnection *)self _serverErrorForAccount:v8 response:v11 command:&v26];
    if (v13)
    {
      goto LABEL_6;
    }

    v15 = MEMORY[0x277CCACA8];
    v16 = [v8 hostname];
    v17 = [v15 stringWithFormat:@"The user name or password for “%@” is incorrect.", v16];

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:v17 title:@"Cannot Get Mail" userInfo:0];

    if (v13)
    {
LABEL_6:
      if ((*(self + 176) & 6) != 0)
      {
        *(self + 176) = *(self + 176) & 0xF8 | 1;
      }

      v18 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = [(MFConnection *)self mambaID];
        v25 = [(MFConnection *)self rumbaID];
        v23 = [v11 userString];
        *buf = 136316162;
        v32 = v22;
        v33 = 2080;
        v34 = " ";
        v35 = 2114;
        v36 = v25;
        v37 = 2080;
        v38 = " ";
        v39 = 2112;
        v40 = v23;
        v24 = v23;
        _os_log_error_impl(&dword_2720B1000, v18, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%smore error info: %@", buf, 0x34u);
      }

      v19 = +[MFActivityMonitor currentMonitor];
      [v19 setError:v13];
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&v26 count:1];

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)loginWithAccount:(id)a3 password:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MFIMAPConnection *)self mf_lock];
  if ((*(self + 176) & 6) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 username];
    v10 = _IMAPCreateQuotedString(v9);
    if (v7 && (v11 = _IMAPNeedsLiteralCharacterSet, v19.length = [(__CFString *)v7 length], v19.location = 0, CFStringFindCharacterFromSet(v7, v11, v19, 0, 0)))
    {
      v12 = [(__CFString *)v7 dataUsingEncoding:4 allowLossyConversion:0];
      v13 = 1;
    }

    else
    {
      v12 = _IMAPCreateQuotedString(&v7->isa);
      v13 = 0;
    }

    v14 = *(self + 176) & 6;
    if ((*(self + 176) & 6) == 0)
    {
      v15 = [(MFIMAPConnection *)self _doIMAPLoginForAccount:v6 quotedUsername:v10 password:v12];
      v14 = *(self + 176) & 6;
      v16 = (*(self + 176) & 6) != 0;
      if (v15 != 3)
      {
        v16 = 1;
      }

      if (((v13 | v16) & 1) == 0)
      {
        v17 = [(__CFString *)v7 dataUsingEncoding:4 allowLossyConversion:0];

        [(MFIMAPConnection *)self _doIMAPLoginForAccount:v6 quotedUsername:v10 password:v17];
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
    v3 = [(MFIMAPConnection *)self _doNamespaceCommand];
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
              v9 = [v8 privateNamespaces];
              v10 = [v9 firstObject];

              if (v10)
              {
                v11 = [v10 objectForKeyedSubscript:@"_IMAPNamespacePrefixKey"];
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

- (id)_doListCommand:(int)a3 withReference:(id)a4 mailboxName:(id)a5 options:(int)a6 getSpecialUse:(BOOL)a7 statusDataItems:(id)a8 statusEntriesByMailbox:(id *)a9
{
  v10 = a7;
  v87[1] = *MEMORY[0x277D85DE8];
  v69 = a4;
  v14 = a5;
  v71 = a8;
  theString = v14;
  if (!v14)
  {
    v77 = 0;
    v73 = 0;
    goto LABEL_76;
  }

  [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v72 = v82 = a3;
  v83 = v72;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v15 = MFIMAPStringFromMailboxName(v69);
  [v72 addObject:v15];

  if (a6 == 1)
  {
    v16 = @"%";
LABEL_7:
    if ([(__CFString *)v14 length])
    {
      v17 = [(MFIMAPConnection *)self separatorChar];
      MutableCopy = CFStringCreateMutableCopy(0, [(__CFString *)v17 length]+ [(__CFString *)v14 length]+ [(__CFString *)v16 length], v14);
      v19 = MutableCopy;
      if (v17)
      {
        CFStringAppend(MutableCopy, v17);
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
      v17 = MFIMAPStringFromMailboxName(v16);
      [v72 addObject:v17];
    }

    goto LABEL_14;
  }

  if (a6 == 2)
  {
    v16 = @"*";
    goto LABEL_7;
  }

  v17 = MFIMAPStringFromMailboxName(v14);
  [v72 addObject:v17];
LABEL_14:

  v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v10)
  {
    [v70 addObject:@"SPECIAL-USE"];
  }

  if ([v71 count] && -[MFIMAPConnection supportsCapability:](self, "supportsCapability:", 21))
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:v71];
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
  v76 = self;
  v29 = [v28 responseType] == 2;

  if (v29)
  {
    v80 = [v84 count];
    v73 = [MEMORY[0x277CBEB18] array];
    if (v80)
    {
      v30 = 0;
      while (1)
      {
        v31 = v30;
        v81 = [v84 objectAtIndex:?];
        v32 = [v81 responseType];
        v33 = v32;
        if ((v32 - 15) <= 1)
        {
          break;
        }

        if (v77 && v32 == 13)
        {
          v39 = [v81 statusEntries];
          v40 = [v81 mailboxName];
          [v77 setObject:v39 forKeyedSubscript:v40];

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

      v74 = [v81 mailboxAttributes];
      v79 = [v81 mailboxName];
      v78 = [v81 separator];
      if (v78)
      {
        [(MFIMAPConnection *)v76 mf_lock];
        v34 = v76;
        if (!v76->_separatorChar)
        {
          v35 = [v78 copyWithZone:0];
          separatorChar = v76->_separatorChar;
          v76->_separatorChar = v35;

          v34 = v76;
        }

        [(MFIMAPConnection *)v34 mf_unlock];
      }

      if (v79)
      {
        if ([v79 length] && (!-[__CFString length](theString, "length") || objc_msgSend(v79, "hasPrefix:", theString)))
        {
          v37 = v73;
          v38 = [(__CFString *)theString length];
          if ([(NSString *)v76->_serverNamespace length])
          {
            v67 = [v79 hasPrefix:v76->_serverNamespace] ^ 1;
          }

          else
          {
            v67 = 0;
          }

          if (v78)
          {
            [v79 rangeOfString:v78 options:8 range:{v38, objc_msgSend(v79, "length") - v38}];
            if (v41)
            {
              v38 += [v78 length];
            }
          }

          if (v38)
          {
            v42 = [v79 substringFromIndex:v38];

            v79 = v42;
          }

          if (!v78)
          {
            v87[0] = v79;
            v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];
            v47 = 1;
LABEL_52:
            v48 = 0;
            v49 = 0;
            while (2)
            {
              v50 = [v43 objectAtIndex:v49];
              v51 = [v37 mf_indexOfMailboxDictionaryWithName:v50];
              if (v51 == 0x7FFFFFFFFFFFFFFFLL)
              {

                goto LABEL_56;
              }

              v52 = [v37 objectAtIndex:v51];

              v48 = v52;
              if (!v52)
              {
LABEL_56:
                v48 = [MEMORY[0x277CBEB38] dictionary];
                [v48 setObject:v50 forKey:@"MailboxName"];
                if (v49 + 1 < v47)
                {
                  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
                  [v48 setObject:v53 forKey:@"IMAPMailboxAttributes"];

                  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
                  [v48 setObject:v54 forKey:@"MailboxAttributes"];
                }

                [v37 vf_insertObject:v48 usingSortFunction:_MFCompareMailboxDictionariesByName context:0 allowDuplicates:1];
              }

              v55 = [v48 objectForKey:@"MailboxChildren"];

              v37 = v55;
              if (!((v55 != 0) | (a6 != 2) | v74 & 1))
              {
                v37 = [MEMORY[0x277CBEB18] array];
                [v48 setObject:v37 forKey:@"MailboxChildren"];
              }

              if (v47 == ++v49)
              {
                goto LABEL_62;
              }

              continue;
            }
          }

          v43 = [v79 componentsSeparatedByString:?];
          v44 = [v43 count];
          if (v44)
          {
            v45 = [v43 lastObject];
            v46 = [v45 isEqualToString:&stru_288159858];

            v47 = v44 - (v46 & 1);
            if (v44 != (v46 & 1))
            {
              goto LABEL_52;
            }
          }

          v48 = 0;
LABEL_62:
          v56 = v43;
          v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v74];
          [v48 setObject:v57 forKey:@"IMAPMailboxAttributes"];

          v58 = [v48 objectForKey:@"MailboxAttributes"];
          v59 = [v58 unsignedIntValue] & 0xFFFFFFFD | (2 * ((v74 >> 1) & 1));
          if (v67)
          {
            v60 = v59 | 0x80;
          }

          else
          {
            v60 = v59;
          }

          v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v60];
          [v48 setObject:v61 forKey:@"MailboxAttributes"];

          if (v33 == 15)
          {
            v62 = [v81 extraAttributes];
            if ([v62 count])
            {
              [v48 setObject:v62 forKey:@"MailboxExtraAttributes"];
            }
          }
        }
      }

      else
      {
        v79 = 0;
      }

      [v84 removeObjectAtIndex:v31];

      goto LABEL_71;
    }
  }

  else
  {
    v73 = 0;
  }

LABEL_75:
  [(MFIMAPConnection *)v76 didFinishCommands:&v82 count:1];

LABEL_76:
  v63 = v77;
  if (a9)
  {
    v64 = v77;
    v63 = v77;
    *a9 = v77;
  }

  v65 = *MEMORY[0x277D85DE8];

  return v73;
}

- (void)close
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  LODWORD(v6) = 18;
  [(MFIMAPConnection *)self mf_lock];
  v3 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v6 count:1];
  v4 = [v3 responseType];

  if (v4 == 2)
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
    v4 = [v3 responseType];

    if (v4 == 2)
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
    v4 = [(MFConnection *)self mambaID];
    v5 = [(MFConnection *)self rumbaID];
    v7 = 136315906;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v11 = 2114;
    v12 = v5;
    v13 = 2080;
    v14 = " ";
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%ssocket is closed, terminating connection", &v7, 0x2Au);
  }

  [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1 reason:"MFIMAPConnection socketClosedUnderneath"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleStreamEvent:(unint64_t)a3
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(MFConnection *)self mambaID];
    v16 = [(MFConnection *)self rumbaID];
    *buf = 136316162;
    v18 = v15;
    v19 = 2080;
    v20 = " ";
    v21 = 2114;
    v22 = v16;
    v23 = 2080;
    v24 = " ";
    v25 = 1024;
    v26 = v3;
    _os_log_debug_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEBUG, "#D %s%s%{public}@%shandleStreamEvent %d", buf, 0x30u);
  }

  if (!self->_streamEventQueue)
  {
    v6 = [[MFInvocationQueue alloc] initWithMambaID:"invc.con" mambaID:[(MFConnection *)self mambaID]];
    streamEventQueue = self->_streamEventQueue;
    self->_streamEventQueue = v6;
  }

  if ((v3 & 2) != 0)
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

  if ((v3 & 0x10) != 0)
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
            v6 = [(MFConnection *)self mambaID];
            v7 = [(MFConnection *)self rumbaID];
            *buf = v11;
            *&buf[4] = v6;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2114;
            *&buf[24] = v7;
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

  v4 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v5 = v4;
  if (!v4 || (*(&self->_delegateState + 8) & 0x800) == 0)
  {

LABEL_6:
    v6 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MFConnection *)self mambaID];
      v8 = [(MFConnection *)self rumbaID];
      v9 = [(MFIMAPConnection *)self delegate];
      *buf = 136316162;
      v29 = v7;
      v30 = 2080;
      v31 = " ";
      v32 = 2114;
      v33 = v8;
      v34 = 2080;
      v35 = " ";
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sdelegate rejected starting IDLE state: %@", buf, 0x34u);
    }

    goto LABEL_9;
  }

  v11 = [v4 shouldStartIdleForConnection:self];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(MFConnection *)self mambaID];
    v14 = [(MFConnection *)self rumbaID];
    v15 = [(MFIMAPConnection *)self delegate];
    *buf = 136316162;
    v29 = v13;
    v30 = 2080;
    v31 = " ";
    v32 = 2114;
    v33 = v14;
    v34 = 2080;
    v35 = " ";
    v36 = 2112;
    v37 = v15;
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
      v20 = [(MFConnection *)self mambaID];
      v21 = [(MFConnection *)self rumbaID];
      v22 = [(MFIMAPConnection *)self delegate];
      *buf = 136316162;
      v29 = v20;
      v30 = 2080;
      v31 = " ";
      v32 = 2114;
      v33 = v21;
      v34 = 2080;
      v35 = " ";
      v36 = 2112;
      v37 = v22;
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
  v3 = [(MFConnection *)self getSocket];
  [v3 setEventHandler:0];

  v4 = [(MFIMAPConnection *)self idleSubscriptionCancelable];
  [v4 cancel];

  if ([(MFIMAPConnection *)self isIdle])
  {
    v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MFConnection *)self mambaID];
      v7 = [(MFConnection *)self rumbaID];
      v8 = [(MFIMAPConnection *)self delegate];
      v10 = 136316162;
      *v11 = v6;
      *&v11[8] = 2080;
      *&v11[10] = " ";
      *&v11[18] = 2114;
      idleCommandSequenceNumber = v7;
      *v13 = 2080;
      *&v13[2] = " ";
      v14 = 2112;
      v15 = v8;
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
    v3 = [(MFConnection *)self getSocket];
    v4 = MEMORY[0x277CBEAE8];
    v5 = [VMWeakConnectionDelegate forConnection:self];
    v6 = [v4 mf_invocationWithSelector:sel_handleStreamEvent_ target:v5];
    [v3 setEventHandler:v6];

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

- (void)locked_scheduleIdleResetAfterDelay:(double)a3
{
  objc_initWeak(&location, self);
  v5 = [(MFIMAPConnection *)self idleSubscriptionCancelable];
  [v5 cancel];

  v6 = [MEMORY[0x277D071B8] globalAsyncSchedulerWithQualityOfService:17];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__MFIMAPConnection_locked_scheduleIdleResetAfterDelay___block_invoke;
  v8[3] = &unk_279E349F8;
  objc_copyWeak(v9, &location);
  v9[1] = *&a3;
  v7 = [v6 afterDelay:v8 performBlock:a3];
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

- (BOOL)expungeUids:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  if (![v4 count])
  {
    v9 = 1;
    goto LABEL_11;
  }

  v5 = [(MFIMAPConnection *)self messageSetForNumbers:v4];
  v22[0] = v5;
  [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v6 = v17 = 17;
  v18 = v6;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v7 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v17 count:1];
  v8 = [v7 responseType];
  v9 = v8 == 2;
  [(MFIMAPConnection *)self didFinishCommands:&v17 count:1];
  if (v8 != 2 && (+[MFActivityMonitor currentMonitor](MFActivityMonitor, "currentMonitor"), v10 = objc_claimAutoreleasedReturnValue(), [v10 error], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v10, v12))
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

- (void)fetchStatusForMailboxes:(id)a3 args:(id)a4
{
  v6 = a3;
  v7 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:a4, v6];
  v8 = self;
  v9 = v6;
  v26 = v7;
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
      v16 = [(MFIMAPConnection *)v8 separatorChar];
      if ([v15 hasPrefix:v16])
      {
        v17 = [v15 substringFromIndex:{objc_msgSend(v16, "length")}];

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
        v22 = [(MFIMAPConnection *)v8 _responseFromSendingCommands:v30 count:v14];
        v23 = [v22 responseType];

        [(MFIMAPConnection *)v8 didFinishCommands:v30 count:v14];
        if (v23 != 2)
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

- (BOOL)selectMailbox:(id)a3 withAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _processSelectCommand(self, 13, v6);
  if (v8)
  {
    [(MFIMAPConnection *)self _updateSearchCapabilityWithAccount:v7];
  }

  return v8;
}

- (BOOL)createMailbox:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MFIMAPStringFromMailboxName(v4);
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

- (BOOL)deleteMailbox:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MFIMAPStringFromMailboxName(v4);
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [(MFIMAPConnection *)self _sendMailboxCommand:15 withArguments:v6];
  LOBYTE(self) = [(MFIMAPConnection *)self _sendMailboxCommand:11 withArguments:v6];

  v7 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)renameMailbox:(id)a3 toMailbox:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MFIMAPStringFromMailboxName(v6);

  v9 = MFIMAPStringFromMailboxName(v7);

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

- (BOOL)subscribeMailbox:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MFIMAPStringFromMailboxName(v4);
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  LOBYTE(self) = [(MFIMAPConnection *)self _sendMailboxCommand:14 withArguments:v6];
  v7 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)unsubscribeMailbox:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MFIMAPStringFromMailboxName(v4);
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  LOBYTE(self) = [(MFIMAPConnection *)self _sendMailboxCommand:15 withArguments:v6];
  v7 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)getQuotaForRootName:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MFIMAPConnection *)self supportsCapability:6])
  {
    v14 = 27;
    v19[0] = v4;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v14 count:1];
    v6 = [v5 responseType];
    v7 = v6 == 2;
    if (v6 != 2)
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

- (id)quotaPercentagesForMailbox:(id)a3
{
  v48[1] = *MEMORY[0x277D85DE8];
  v27 = a3;
  if (![(MFIMAPConnection *)self supportsCapability:6])
  {
    v20 = +[MFActivityMonitor currentMonitor];
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:0];
    [v20 setError:v21];

    v4 = 0;
    goto LABEL_31;
  }

  v41 = 26;
  v48[0] = v27;
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
            v6 = [v5 quotas];
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = v6;
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
                    v15 = [v11 unsignedIntValue];
                    v16 = [v13 unsignedIntValue];
                    if (!v4)
                    {
                      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    }

                    v17 = objc_alloc(MEMORY[0x277CCABB0]);
                    *&v18 = v15 / v16;
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

- (BOOL)_sendMailboxCommand:(int)a3 withArguments:(id)a4
{
  v12 = a3;
  v5 = a4;
  v13 = v5;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v12 count:1];
  v7 = [v6 responseType];
  if (v7 != 2)
  {
    v8 = +[MFActivityMonitor currentMonitor];
    v9 = [v8 error];

    if (!v9)
    {
      v10 = [(MFIMAPConnection *)self _errorForResponse:v6 commandParams:&v12];
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&v12 count:1];

  return v7 == 2;
}

- (id)copyArgumentForSearchTerm:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = _IMAPNeedsLiteralCharacterSet;
    v28.length = [(__CFString *)v4 length];
    v28.location = 0;
    if (CFStringFindCharacterFromSet(v4, v5, v28, 0, 0))
    {
      v6 = [(__CFString *)v4 dataUsingEncoding:4 allowLossyConversion:0];
    }

    else
    {
      v7 = _IMAPCreateQuotedString(&v4->isa);
      if (v7)
      {
        goto LABEL_11;
      }

      v6 = [(__CFString *)v4 copy];
    }

    v7 = v6;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(__CFString *)v4 copy];
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
      v15 = [(MFConnection *)self mambaID];
      v16 = [(MFConnection *)self rumbaID];
      *buf = 136316162;
      v18 = v15;
      v19 = 2080;
      v20 = " ";
      v21 = 2114;
      v22 = v16;
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

- (id)searchUidSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MFIMAPConnection *)self supportsCapability:14])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:v8 areMessageSequenceNumbers:0 forTerms:v9 success:a5 returning:4];
    v11 = [v10 objectForKey:@"IMAPESearchAllKey"];
    if (v11)
    {
      v12 = [MEMORY[0x277CBEB18] array];
      v13 = objc_autoreleasePoolPush();
      for (i = [v11 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v11, "indexGreaterThanIndex:", i))
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [v12 addObject:v15];
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v19 = 0;
    v16 = _doUidSearch(self, v8, v9, &v19, a5, 0);
    v17 = v19;
    v12 = v17;
    if ((v16 & 1) == 0)
    {

      v12 = 0;
    }
  }

  return v12;
}

- (id)searchIDSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MFIMAPConnection *)self supportsCapability:14])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:v8 areMessageSequenceNumbers:1 forTerms:v9 success:a5 returning:4];
    v11 = [v10 objectForKey:@"IMAPESearchAllKey"];
    if (v11)
    {
      v12 = [MEMORY[0x277CBEB18] array];
      v13 = objc_autoreleasePoolPush();
      for (i = [v11 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v11, "indexGreaterThanIndex:", i))
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [v12 addObject:v15];
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v19 = 0;
    v16 = _doUidSearch(self, v8, v9, &v19, a5, 1);
    v17 = v19;
    v12 = v17;
    if ((v16 & 1) == 0)
    {

      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)countForSearchOfIDSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MFIMAPConnection *)self supportsCapability:14])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:v8 areMessageSequenceNumbers:1 forTerms:v9 success:a5 returning:8];
    v11 = [v10 objectForKey:@"IMAPESearchCountKey"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 unsignedIntValue];
    }

    else
    {
      if (a5)
      {
        *a5 = 0;
      }

      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = [(MFIMAPConnection *)self searchIDSet:v8 forTerms:v9 success:a5];
    v13 = [v10 count];
  }

  return v13;
}

- (unint64_t)countForSearchOfUidSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MFIMAPConnection *)self supportsCapability:14])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:v8 areMessageSequenceNumbers:0 forTerms:v9 success:a5 returning:8];
    v11 = [v10 objectForKey:@"IMAPESearchCountKey"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 unsignedIntValue];
    }

    else
    {
      if (a5)
      {
        *a5 = 0;
      }

      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = [(MFIMAPConnection *)self searchUidSet:v8 forTerms:v9 success:a5];
    v13 = [v10 count];
  }

  return v13;
}

- (void)_updateSearchCapabilityWithAccount:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v6 = [v4 verifyESearchSupportWithBlock:v13];
    [(MFIMAPConnection *)self mf_lock];
    if ((v6 & 1) == 0)
    {
      v7 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(MFConnection *)self mambaID];
        v9 = [(MFConnection *)self rumbaID];
        *buf = 136315906;
        v15 = v8;
        v16 = 2080;
        v17 = " ";
        v18 = 2114;
        v19 = v9;
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

- (id)searchUidSet:(id)a3 forNewMessageIDs:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v25 = a4;
  capacity = [v25 count];
  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:capacity];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v25;
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

        if (v31)
        {
          [v33 addObject:@"UID"];
          [v33 addObject:v31];
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
              v15 = [v14 searchResults];
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v16 = v15;
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

                    v20 = [*(*(&v36 + 1) + 8 * j) unsignedIntValue];
                    v21 = v20;
                    if (v20 > v11 && (!Mutable || !CFSetContainsValue(Mutable, v20)))
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

- (BOOL)deleteMessagesOlderThanNumberOfDays:(int)a3
{
  v30[3] = *MEMORY[0x277D85DE8];
  if (a3 <= 0)
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
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 dateByAddingUnit:16 value:1 - a3 toDate:v6 options:0];

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

- (id)_responseFromSendingCommand:(id *)a3 andPossiblyCreateMailbox:(id)a4
{
  v6 = a4;
  v7 = [(MFIMAPConnection *)self _responseFromSendingCommands:a3 count:1];
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

  v9 = [a3->var2 count];
  if (!v9)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v10 = 0;
  while (1)
  {
    v11 = [a3->var2 objectAtIndex:v10];
    if ([v11 responseType] == 4 && objc_msgSend(v11, "responseCode") == 8)
    {
      break;
    }

    if (++v10 >= v9)
    {
      goto LABEL_18;
    }
  }

  [a3->var2 removeObjectAtIndex:v10];

LABEL_16:
  [(MFIMAPConnection *)self didFinishCommands:a3 count:1];
  if ([(MFIMAPConnection *)self createMailbox:v6])
  {
    v12 = [(MFIMAPConnection *)self _responseFromSendingCommands:a3 count:1];

    v7 = v12;
  }

LABEL_18:

  return v7;
}

- (BOOL)copyUids:(id)a3 toMailboxNamed:(id)a4 newMessageInfo:(id *)a5
{
  v23[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(MFIMAPConnection *)self messageSetForNumbers:v8];
  v23[0] = v10;
  v11 = MFIMAPStringFromMailboxName(v9);
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

  LODWORD(v18) = 23;
  v13 = v12;
  v19 = v13;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v14 = [(MFIMAPConnection *)self _responseFromSendingCommand:&v18 andPossiblyCreateMailbox:v9];
  [(MFIMAPConnection *)self didFinishCommands:&v18 count:1];
  if (a5)
  {
    *a5 = MFUIDPlusInfoFromResponse(v14);
  }

  v15 = [v14 responseType] == 2;

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)appendData:(id)a3 toMailboxNamed:(id)a4 flags:(id)a5 dateReceived:(id)a6 newMessageInfo:(id *)a7
{
  v39[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v31 = a6;
  v32 = v12;
  [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v15 = v33 = 19;
  v34 = v15;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (a7)
  {
    *a7 = 0;
  }

  v16 = MFIMAPStringFromMailboxName(v13);
  [v15 addObject:v16];

  if (v14)
  {
    v17 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:v14];
    [v15 addObject:v17];
  }

  v18 = v31;
  if (_MFIMAPDateStringForDate(NSDate *)::onceToken != -1)
  {
    [MFIMAPConnection appendData:toMailboxNamed:flags:dateReceived:newMessageInfo:];
  }

  v19 = [_MFIMAPDateStringForDate(NSDate *)::formatter stringFromDate:v18];

  if (v19)
  {
    [v15 addObject:v19];
  }

  [v15 addObject:v12];
  v20 = [(MFIMAPConnection *)self _responseFromSendingCommand:&v33 andPossiblyCreateMailbox:v13];
  v21 = v20;
  if (a7 && [v20 responseType] == 2 && objc_msgSend(v21, "responseCode") == 15)
  {
    v22 = [v21 responseInfo];
    v38[0] = @"UIDVALIDITY";
    v30 = v22;
    v23 = [v22 objectAtIndexedSubscript:0];
    v38[1] = @"Source UIDS";
    v39[0] = v23;
    v24 = [v22 objectAtIndexedSubscript:1];
    v39[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

    v26 = v25;
    *a7 = v25;
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

- (void)setAdditionalHeadersForFetch:(id)a3
{
  v6 = a3;
  +[MFIMAPConnection mf_lock];
  if (([v6 isEqual:self->_additionalHeadersForFetch] & 1) == 0)
  {
    v4 = [v6 copy];
    additionalHeadersForFetch = self->_additionalHeadersForFetch;
    self->_additionalHeadersForFetch = v4;
  }

  +[MFIMAPConnection mf_unlock];
}

- (void)fetchTotalSize:(unint64_t *)a3 andMessageCount:(unsigned int *)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v8 = [(MFIMAPConnection *)self messageSetForRange:0xFFFFFFFF00000001];
  v16[0] = v8;
  v16[1] = @"RFC822.SIZE";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  [(MFIMAPConnection *)self _doUidFetchWithRange:0xFFFFFFFF00000001 arguments:v9 validateMessage:0 responses:v7];
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v10 = [v7 count];
  if (v10)
  {
    v11 = v10 - 1;
    do
    {
      v12 = [v7 objectAtIndex:v11];
      v13 = [v12 fetchResultWithType:3];
      v14 = [v13 messageSize];

      if (v14)
      {
        if (a3)
        {
          *a3 += v14;
        }

        if (a4)
        {
          ++*a4;
        }
      }

      --v11;
    }

    while (v11 != -1);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)fetchMessageIdsForUids:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v24 = a3;
  v26 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v4 = [v24 allObjects];
  v23 = self;
  v5 = [(MFIMAPConnection *)self messageSetForNumbers:v4];

  v21 = v5;
  v38[0] = v5;
  v38[1] = @"(BODY.PEEK[HEADER.FIELDS (MESSAGE-ID)])";
  [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v22 = v32 = 21;
  v33 = v22;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v6 = [(MFIMAPConnection *)v23 _responseFromSendingCommands:&v32 count:1];
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
            v13 = [v11 fetchData];
            if (v13)
            {
              v14 = [objc_alloc(MEMORY[0x277D24F70]) initWithData:v13];
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

  [(MFIMAPConnection *)v23 didFinishCommands:&v32 count:1];

  v19 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)fetchUniqueRemoteIDsForUids:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [v19 allObjects];
  v6 = [(MFIMAPConnection *)self messageSetForNumbers:v5];

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
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v31 count:{16, v19}];
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
            v15 = [v14 uniqueRemoteId];
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
            [v4 addObject:v16];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v10);
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&v26 count:1, v19];

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)performCustomCommand:(id)a3 withArguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [v7 mutableCopy];
    [v8 insertObject:v6 atIndex:0];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v6, 0}];
  }

  v18 = 37;
  v9 = v8;
  v19 = v9;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v10 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v18 count:1];
  v11 = [(MFIMAPConnection *)v10 responseType];
  if (v11 != 2)
  {
    v12 = +[MFActivityMonitor currentMonitor];
    v13 = [v12 error];

    if (!v13)
    {
      v15 = _messageFromResponse(v10, v14);
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:v15];
      [v12 setError:v16];
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&v18 count:1];

  return v11 == 2;
}

- (void)setReadBufferSizeFromElapsedTime:(double)a3 bytesRead:(unint64_t)a4
{
  if (a3 > 0.0 && a4 >= 0x401)
  {
    v5 = a3 - *&_kIMAPFetchTargetTime;
    if (a3 - *&_kIMAPFetchTargetTime < 0.0)
    {
      v5 = -(a3 - *&_kIMAPFetchTargetTime);
    }

    if (v5 > *&_kIMAPFetchTargetTime * 0.5)
    {
      v7 = [(MFIMAPConnection *)self readBufferSize];
      v8 = *&_kIMAPFetchTargetTime;
      if (*&_kIMAPFetchTargetTime <= a3)
      {
        if (v7 >> 1 <= _kIMAPMinFetchChunkSize)
        {
          v9 = _kIMAPMinFetchChunkSize;
        }

        else
        {
          v9 = v7 >> 1;
        }
      }

      else if (2 * v7 >= _kIMAPMaxFetchChunkSize)
      {
        v9 = _kIMAPMaxFetchChunkSize;
      }

      else
      {
        v9 = 2 * v7;
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
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v5 integerForKey:@"MinFetchChunkSize"];
  if (v2)
  {
    _kIMAPMinFetchChunkSize = v2;
  }

  v3 = [v5 integerForKey:@"MaxFetchChunkSize"];
  if (v3)
  {
    _kIMAPMaxFetchChunkSize = v3;
  }

  [v5 floatForKey:@"FetchDeltaTarget"];
  if (v4 != 0.0)
  {
    *&_kIMAPFetchTargetTime = v4;
  }
}

- (BOOL)_doUidFetchWithRange:(id)a3 arguments:(id)a4 validateMessage:(BOOL)a5 responses:(id)a6
{
  v9 = a4;
  v10 = a6;
  v25 = 21;
  v11 = v9;
  v26 = v11;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v12 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v25 count:1];
  v13 = [v12 responseType];

  if (v13 != 2)
  {
    goto LABEL_19;
  }

  v14 = [v27 count];
  if (!v14)
  {
    goto LABEL_19;
  }

  v23 = v10;
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

    if (v20 < a3.var0 || v20 > a3.var1)
    {
      goto LABEL_15;
    }

    v21 = v20 <= v16;
    if (v20 > v16)
    {
      v16 = v20;
    }

    if (!a5 || [(MFIMAPConnection *)self _isFetchResponseValid:v18])
    {
      [v23 addObject:v18];
    }

    [v27 removeObjectAtIndex:v17];
    v15 |= v21;
    --v14;
LABEL_16:
  }

  while (v17 < v14);
  v10 = v23;
  v13 = 2;
  if (v15)
  {
    [v23 sortUsingFunction:_compareFetchResultsByUid context:0];
  }

LABEL_19:
  [(MFIMAPConnection *)self didFinishCommands:&v25 count:1];

  return v13 == 2;
}

- (id)messageSetForRange:(id)a3
{
  if (a3.var1 >= 2)
  {
    if (a3.var1 == -1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%d:*", a3, v5];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%d:%d", a3, a3.var1];
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a3, v5];
  }
  v3 = ;

  return v3;
}

- (id)messageSetForRange:(id)a3 butNotNumbers:(id)a4
{
  v5 = a4;
  v6 = [v5 firstIndex];
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8 = 0;
  v9 = HIDWORD(*&a3);
  var0 = a3.var0;
  while (v6 <= v9)
  {
    if (v6 != var0)
    {
      if (v6 <= var0)
      {
        goto LABEL_12;
      }

      if (v8 >= 1)
      {
        [v7 appendString:{@", "}];
      }

      if (v6 - var0 == 1)
      {
        [v7 appendFormat:@"%lu", var0];
      }

      else
      {
        [v7 appendFormat:@"%lu:%lu", var0, v6 - 1];
      }

      ++v8;
    }

    var0 = v6 + 1;
LABEL_12:
    v6 = [v5 indexGreaterThanIndex:v6];
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

- (id)messageSetForNumbers:(id)a3 range:(_NSRange)a4 maxTokens:(unint64_t)a5 indexOfLastNumber:(unint64_t *)a6
{
  length = a4.length;
  location = a4.location;
  v32 = a3;
  if (length == 1)
  {
    if (a6)
    {
      *a6 = 1;
    }

    v9 = [v32 objectAtIndex:location];
    v31 = [v9 description];
  }

  else
  {
    if (!length)
    {
      v31 = 0;
      if (a6)
      {
        *a6 = 0;
      }

      goto LABEL_34;
    }

    v10 = [v32 objectAtIndex:location];
    v11 = [v10 integerValue];
    v12 = MEMORY[0x277CCAB68];
    v13 = [v10 description];
    v31 = [v12 stringWithString:v13];
    v14 = location + length;

    v15 = location + 1;
    if (v15 < v14)
    {
      v30 = a5 - 1;
      if (a5 != 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v28 = a5 - 2;
        while (1)
        {
          v19 = [v32 objectAtIndex:{v15, v28}];
          v20 = [v19 integerValue];
          v21 = v20;
          v22 = v20 != v11 + 1 || v15 >= v14 - 1;
          v23 = !v22;
          if (!v22)
          {
            goto LABEL_25;
          }

          if (v18)
          {
            if (v20 != v11 + 1)
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
            v11 = v21;
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
    if (a6)
    {
      *a6 = v15;
    }
  }

LABEL_34:

  return v31;
}

- (id)messageSetForNumbers:(id)a3 range:(_NSRange)a4
{
  v4 = [(MFIMAPConnection *)self messageSetForNumbers:a3 range:a4.location maxTokens:a4.length indexOfLastNumber:0x7FFFFFFFLL, 0];

  return v4;
}

- (id)messageSetForNumbers:(id)a3
{
  v4 = a3;
  v5 = -[MFIMAPConnection messageSetForNumbers:range:](self, "messageSetForNumbers:range:", v4, 0, [v4 count]);

  return v5;
}

- (id)parenthesizedStringWithObjects:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [v4 objectAtIndex:i];
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

- (BOOL)authenticateUsingAccount:(id)a3 authenticator:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEB18];
  v9 = [v7 authScheme];
  v10 = [v9 name];
  v11 = [v8 arrayWithObject:v10];

  if (-[MFIMAPConnection supportsCapability:](self, "supportsCapability:", 16) && [v7 supportsInitialClientResponse])
  {
    v12 = [v7 responseForServerData:0];
    v13 = [v12 mf_encodeBase64WithoutLineBreaks];

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:1];
      [v11 addObject:v14];
    }

    else
    {
      v15 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(MFConnection *)self mambaID];
        v17 = [(MFConnection *)self rumbaID];
        *buf = 136316162;
        v52 = v16;
        v53 = 2080;
        v54 = " ";
        v55 = 2114;
        v56 = v17;
        v57 = 2080;
        v58 = " ";
        v59 = 2112;
        v60 = v7;
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

  [v7 setAuthenticationState:1];
  while (1)
  {
    if ([v7 authenticationState] == 3)
    {
      goto LABEL_24;
    }

    v21 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:&v46];

    if (!v21)
    {
      [v7 setAuthenticationState:3];
      goto LABEL_46;
    }

    v22 = [v21 responseType];
    if (v22 != 1)
    {
      break;
    }

    v23 = [v21 userData];
    v24 = [v7 responseForServerData:v23];

    if (v24)
    {
      if ([v7 base64EncodeResponseData])
      {
        v25 = [v24 mf_encodeBase64WithoutLineBreaks];

        v24 = v25;
      }

      [(NSMutableData *)self->_data setData:v24];
    }

    else
    {
      [(NSMutableData *)self->_data setLength:0];
    }

    [(NSMutableData *)self->_data appendBytes:&_IMAPLineEnding length:2];
    v26 = [v7 justSentPlainTextPassword];
    data = self->_data;
    if (v26)
    {
      v28 = [(MFConnection *)self writeData:data dontLogBytesInRange:0, [(NSMutableData *)data length]- 2];
    }

    else
    {
      v28 = [(MFConnection *)self writeData:data];
    }

    if (!v28)
    {
      if ([v7 authenticationState] == 1)
      {
        [v7 setAuthenticationState:3];
      }

      goto LABEL_45;
    }

    v20 = v21;
  }

  if (v22 == 2)
  {
    [v7 setAuthenticationState:4];
    *(self + 176) = *(self + 176) & 0xF8 | 2;
    if (!self->super._securityLayer)
    {
      v30 = [v7 securityLayer];
      securityLayer = self->super._securityLayer;
      self->super._securityLayer = v30;
    }

    [(MFIMAPConnection *)self _updateCapabilitiesForAccount:v6 withAuthenticationResponse:v21];
    goto LABEL_46;
  }

  if (v22 == 3)
  {
    v32 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [(MFConnection *)self mambaID];
      v34 = [(MFConnection *)self rumbaID];
      v35 = [v21 userString];
      *buf = 136316162;
      v52 = v33;
      v53 = 2080;
      v54 = " ";
      v55 = 2114;
      v56 = v34;
      v57 = 2080;
      v58 = " ";
      v59 = 2112;
      v60 = v35;
      _os_log_error_impl(&dword_2720B1000, v32, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%sIMAP protocol error: %@", buf, 0x34u);
    }

    goto LABEL_40;
  }

  if (v22 != 4)
  {
    v32 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(MFConnection *)self mambaID];
      v37 = [(MFConnection *)self rumbaID];
      *buf = 136316162;
      v52 = v36;
      v53 = 2080;
      v54 = " ";
      v55 = 2114;
      v56 = v37;
      v57 = 2080;
      v58 = " ";
      v59 = 2112;
      v60 = v21;
      _os_log_impl(&dword_2720B1000, v32, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s*** Unexpected response during authentication: %@", buf, 0x34u);
    }

LABEL_40:

    [v7 setAuthenticationState:3];
    goto LABEL_46;
  }

  v29 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v42 = [(MFConnection *)self mambaID];
    v43 = [(MFConnection *)self rumbaID];
    v44 = [v21 userString];
    *buf = 136316162;
    v52 = v42;
    v53 = 2080;
    v54 = " ";
    v55 = 2114;
    v56 = v43;
    v57 = 2080;
    v58 = " ";
    v59 = 2112;
    v60 = v44;
    _os_log_error_impl(&dword_2720B1000, v29, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%sIMAP auth failure: %@", buf, 0x34u);
  }

  [v7 setAuthenticationState:2];
  if ([v21 responseCode] == 18)
  {
    [v7 setMissingPasswordError];
    goto LABEL_46;
  }

  v24 = [(MFIMAPConnection *)self _serverErrorForAccount:v6 response:v21 command:&v46];
  if (v24)
  {
    v38 = +[MFActivityMonitor currentMonitor];
    [v38 setError:v24];
  }

LABEL_45:

LABEL_46:
  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:&v46 count:1];
  if ([v7 authenticationState] == 3)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0 reason:"MFIMAPConnection SASLAuthenticationProtocolError"];
  }

  v39 = [v7 authenticationState] == 4;

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)startTLSForAccount:(id)a3
{
  v4 = a3;
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFIMAPConnection *)self supportsCapability:0])
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    LODWORD(v21) = 3;
    v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:&v21 count:1];
    v6 = [v5 responseType];

    v7 = v6 == 2;
    if (v6 != 2)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [objc_opt_class() accountTypeString];
      v10 = [v4 hostname];
      v11 = [v8 stringWithFormat:@"Starting TLS failed on %@ server “%@”. Please check your account settings and try again.", v9, v10];

      v12 = +[MFActivityMonitor currentMonitor];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:v11];
      [v12 setError:v13];
    }

    [(MFIMAPConnection *)self didFinishCommands:&v21 count:1];
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [objc_opt_class() accountTypeString];
    v16 = [v4 hostname];
    v17 = [v14 stringWithFormat:@"The %@ server “%@” doesn’t support TLS (SSL) on port %u. Please check your account settings and try again.", v15, v16, objc_msgSend(v4, "portNumber")];

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

- (void)notifyDelegateOfBodyLoadStart:(id)a3 section:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v8 = v7;
  if (v7 && (*(&self->_delegateState + 8) & 0x10) != 0)
  {
    [v7 connection:self didBeginBodyLoad:v9 section:v6];
  }
}

- (void)notifyDelegateOfBodyLoadAppendage:(id)a3 section:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v8 = v7;
  if (v7 && (*(&self->_delegateState + 8) & 0x20) != 0)
  {
    [v7 connection:self didLoadMoreBodyData:v9 section:v6];
  }
}

- (void)notifyDelegateOfBodyLoadCompletion:(id)a3 section:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v8 = v7;
  if (v7 && (*(&self->_delegateState + 8) & 0x40) != 0)
  {
    [v7 connection:self didFinishLoadingBodyData:v9 section:v6];
  }
}

- (unsigned)literalChunkSize
{
  p_delegateState = &self->_delegateState;
  v4 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v5 = v4;
  if (v4 && (*(p_delegateState + 8) & 0x80) != 0)
  {
    v6 = [v4 connectionBodyDataReadChunkSize:self];
  }

  else
  {
    v6 = 4096;
  }

  return v6;
}

- (id)_readDataOfLength:(int64_t)a3
{
  [(NSMutableData *)self->_data setLength:0];
  if (a3 < 1)
  {
    if (a3 < 0 && [(MFConnection *)self readLineIntoData:self->_data])
    {
      v6 = [(NSMutableData *)self->_data bytes];
      if (v6)
      {
        v8 = v6;
        v9 = [(NSMutableData *)self->_data length];
        v7 = v9 - 2;
        if (v9 >= 2 && *(v8 + v9 - 1) == 10 && *(v8 + v7) == 13)
        {
          [(NSMutableData *)self->_data setLength:?];
        }
      }

      if ([(NSMutableData *)self->_data length])
      {
        v10 = [(NSMutableData *)self->_data bytes];
        if (v10)
        {
          v11 = v10;
          if (!*v10)
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

  else if ([(MFConnection *)self readBytesIntoData:self->_data desiredLength:a3])
  {
LABEL_3:
    data = self->_data;
    goto LABEL_22;
  }

  data = 0;
LABEL_22:

  return data;
}

- (id)_fetchArgumentForMessageSkeletonsWithHeaders:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    __assert_rtn("[MFIMAPConnection _fetchArgumentForMessageSkeletonsWithHeaders:]", "IMAP_IMAPConnection.mm", 3640, "requiredHeaders");
  }

  [(MFIMAPConnection *)self mf_lock];
  if (!self->_lastRequiredHeaders || ![(NSArray *)self->_lastRequiredHeadersArray isEqualToArray:v5])
  {
    objc_storeStrong(&self->_lastRequiredHeadersArray, a3);
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

- (id)_responseFromSendingCommands:(id *)a3 count:(unint64_t)a4
{
  [(MFIMAPConnection *)self mf_lock];
  v18 = 0;
  v7 = [(MFIMAPConnection *)self _sendCommands:a3 count:a4 response:&v18];
  v8 = v18;
  v9 = v8;
  if (v7)
  {
    v10 = &a3[v7];
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
      v15 = [v14 intValue];

      v16 = var3 == v15;
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

- (BOOL)sendResponsesForCommand:(id *)a3 toQueue:(id)a4
{
  v6 = a4;
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFIMAPConnection *)self _sendCommands:a3 count:1 response:0])
  {
    v7 = +[MFActivityMonitor currentMonitor];
    var3 = a3->var3;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:a3];
      v11 = [v7 shouldCancel];
      if (v10)
      {
        v12 = v11;
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
        v13 = [v6 addItem:v10];
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

- (BOOL)sendResponsesForUIDFetchForUIDs:(id)a3 fields:(id)a4 toQueue:(id)a5
{
  v24[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v11 = [v8 count];
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

      v14 = [MFIMAPConnection messageSetForNumbers:"messageSetForNumbers:range:maxTokens:indexOfLastNumber:" range:v8 maxTokens:? indexOfLastNumber:?];
      v18 = 21;
      v24[0] = v14;
      v24[1] = v9;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v15 = [(MFIMAPConnection *)self sendResponsesForCommand:&v18 toQueue:v10];

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

- (BOOL)sendUidAndFlagResponsesForUIDs:(id)a3 sequenceIdentifierProvider:(id)a4 flagSearchResults:(id)a5 toQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12 || ![(MFIMAPConnection *)self supportsCapability:15])
  {
    v16 = [(MFIMAPConnection *)self _fetchArgumentForMessageUidsAndFlags];
    LOBYTE(self) = [(MFIMAPConnection *)self sendResponsesForUIDs:v10 fields:v16 flagSearchResults:v12 toQueue:v13];
  }

  else
  {
    v14 = [v11 sequenceIdentifierForUIDs:v10];
    v18 = v14;
    LODWORD(self) = [(MFIMAPConnection *)self sendResponsesForCondStoreFlagFetchForUIDs:v10 withSequenceIdentifier:&v18 toQueue:v13];
    v15 = v18;

    [v13 flush];
    if (self && [v15 length] && (objc_msgSend(v15, "isEqualToString:", v14) & 1) == 0)
    {
      [v11 setSequenceIdentifier:v15 forUIDs:v10];
    }
  }

  return self;
}

- (BOOL)sendUidResponsesForSearchArguments:(id)a3 toQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26 = 0;
  if ([(MFIMAPConnection *)self supportsCapability:14])
  {
    v8 = +[MFActivityMonitor currentMonitor];
    v9 = [(MFIMAPConnection *)self eSearchIDSet:0 areMessageSequenceNumbers:0 arguments:v6 success:&v26 returning:4];
    v10 = [v9 objectForKey:@"IMAPESearchAllKey"];
    v11 = v10;
    if (v26 && v10)
    {
      context = objc_autoreleasePoolPush();
      v12 = [MEMORY[0x277CBEB18] array];
      for (i = [v11 firstIndex]; ; i = objc_msgSend(v11, "indexGreaterThanIndex:", i))
      {
        v14 = [v8 shouldCancel];
        v15 = i == 0x7FFFFFFFFFFFFFFFLL ? 1 : v14;
        if (v15)
        {
          break;
        }

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [v12 addObject:v16];
      }

      if (([v8 shouldCancel] & 1) == 0)
      {
        v17 = objc_alloc_init(MFIMAPResponse);
        [(MFIMAPResponse *)v17 setResponseType:14];
        [(MFIMAPResponse *)v17 setSearchResults:v12];
        [v7 addItem:v17];
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    v21 = 24;
    v22 = v6;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = [(MFIMAPConnection *)self sendResponsesForCommand:&v21 toQueue:v7];
  }

  v18 = v26;

  return v18;
}

- (id)searchUIDs:(id)a3 withFlagRequests:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22 = v6;
  v23 = a4;
  v7 = [(MFIMAPConnection *)self _fetchArgumentForMessageUidsAndFlags];
  v8 = [@"(UID FLAGS)" isEqualToString:v7];

  if (v8)
  {
    v20 = [v6 objectAtIndex:0];
    v21 = [v6 lastObject];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v20, v21];
    v10 = objc_alloc_init(MFIMAPConnectionFlagSearchResults);
    v28 = 1;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v23;
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
          v16 = [v15 searchTerms];
          v17 = [(MFIMAPConnection *)self searchUidSet:v9 forTerms:v16 success:&v28];

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

- (BOOL)sendResponsesForUIDs:(id)a3 fields:(id)a4 flagSearchResults:(id)a5 toQueue:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v10;
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

          v18 = [v12 copyResponseForUID:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "integerValue", v22)}];
          if (v18)
          {
            [v13 addItem:v18];
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
    v19 = [(MFIMAPConnection *)self sendResponsesForUIDFetchForUIDs:v10 fields:v11 toQueue:v13];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)didFinishCommands:(id *)a3 count:(unint64_t)a4
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    goto LABEL_46;
  }

  v5 = a4;
  *&v4 = 136316162;
  v28 = v4;
  do
  {
    v8 = [a3->var2 count];
    if (!v8)
    {
      goto LABEL_43;
    }

    v9 = 0;
    v29 = 0;
    do
    {
      v10 = [a3->var2 objectAtIndex:v9];
      v11 = [v10 responseType];
      if (v11 <= 8)
      {
        if (v11 <= 3)
        {
          if (v11 != 2)
          {
            if (v11 == 3)
            {
              v13 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                v23 = [(MFConnection *)self mambaID];
                v24 = [(MFConnection *)self rumbaID];
                v25 = [(MFIMAPConnection *)self _errorForResponse:v10 commandParams:a3];
                *buf = v28;
                v31 = v23;
                v32 = 2080;
                v33 = " ";
                v34 = 2114;
                v35 = v24;
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

          v14 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
          if (v14 && (*(&self->_delegateState + 8) & 0x200) != 0)
          {
            v18 = [v10 responseInfo];
            -[NSObject setHighestModSequence:](v14, "setHighestModSequence:", [v18 unsignedLongLongValue]);
          }
        }

        else
        {
          if (v11 != 4)
          {
            if (v11 == 6)
            {
              v19 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = [(MFConnection *)self mambaID];
                v21 = [(MFConnection *)self rumbaID];
                v22 = _IMAPCommandTable[a3->var0];
                *buf = 136316418;
                v31 = v20;
                v32 = 2080;
                v33 = " ";
                v34 = 2114;
                v35 = v21;
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

            if (v11 == 7)
            {
              v12 = [v10 capabilities];
              if (v12)
              {
                [(MFIMAPConnection *)self mf_lock];
                [(MFIMAPConnection *)self _clearCapabilities];
                [(MFIMAPConnection *)self _addCapabilities:v12];
                [(MFIMAPConnection *)self mf_unlock];
              }

              goto LABEL_12;
            }

            goto LABEL_40;
          }

          v14 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(MFConnection *)self mambaID];
            v16 = [(MFConnection *)self rumbaID];
            v17 = _IMAPCommandTable[a3->var0];
            *buf = 136316418;
            v31 = v15;
            v32 = 2080;
            v33 = " ";
            v34 = 2114;
            v35 = v16;
            v36 = 2080;
            v37 = " ";
            v38 = 2080;
            v39 = v17;
            v40 = 2112;
            v41 = v10;
            _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sUnhandled response to command %s: %@", buf, 0x3Eu);
          }
        }

        goto LABEL_37;
      }

      if ((v11 - 10) < 2)
      {
        goto LABEL_37;
      }

      if (v11 == 9)
      {
        v12 = [(VFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
        if (v12 && (*(&self->_delegateState + 8) & 0x100) != 0)
        {
          [v12 setServerMessageCount:{objc_msgSend(v10, "number")}];
        }

LABEL_12:

LABEL_37:
        [a3->var2 removeObjectAtIndex:v9];
        --v8;
        goto LABEL_38;
      }

      if (v11 == 17)
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
    var2 = a3->var2;
    if (var2)
    {
      a3->var2 = 0;
    }

    ++a3;
    --v5;
  }

  while (v5);
LABEL_46:
  v27 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 36) = 0;
  *(self + 37) = 0;
  return self;
}

- (id)_messageIDsFromFetchResultData:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v34 = v3;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v3 length:"bytes") encoding:{objc_msgSend(v3, "length"), 4}];
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v33 = v5;
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

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

        v19 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v20 = [v9 stringByTrimmingCharactersInSet:v19];

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

- (id)_getReferencesForMessageSet:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v33 = 21;
  v34 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v35 = 0;
  v36 = 0;
  v37 = 0;
  [v34 addObject:v21];
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
        v8 = [v7 fetchResults];
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v42 count:16];
        if (v9)
        {
          v10 = *v26;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v26 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v25 + 1) + 8 * j);
              v13 = [v12 type];
              if (v13 == 4)
              {
                v14 = [v12 fetchData];
                v16 = [(MFIMAPConnection *)self _messageIDsFromFetchResultData:v14];
                [v4 unionSet:v16];
              }

              else
              {
                if (v13 == 8)
                {
                  continue;
                }

                v14 = vm_imap_log();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  v15 = [v12 type];
                  *buf = 138412546;
                  v39 = v12;
                  v40 = 1024;
                  v41 = v15;
                  _os_log_error_impl(&dword_2720B1000, v14, OS_LOG_TYPE_ERROR, "ERROR: UNKNOWN RESULT: %@ %d", buf, 0x12u);
                }
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v25 objects:v42 count:16];
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

- (id)_searchUidsForMessageIDs:(id)a3 excludeDeleted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 count];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4 * v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__MFIMAPConnection_ReferenceSearching___searchUidsForMessageIDs_excludeDeleted___block_invoke;
  v13[3] = &unk_279E34F00;
  v15 = v7 - 1;
  v9 = v8;
  v14 = v9;
  [v6 enumerateObjectsUsingBlock:v13];

  if (v4)
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

- (id)_getFirstLevelMessageIDsForReference:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v5];

  v8 = [(MFIMAPConnection *)self _uidsForMessageIDs:v7 excludeDeleted:0];

  if ([v8 count])
  {
    v9 = [v8 allObjects];
    v10 = [(MFIMAPConnection *)self messageSetForNumbers:v9];

    v11 = [(MFIMAPConnection *)self _getReferencesForMessageSet:v10];
    [v6 unionSet:v11];
  }

  return v6;
}

- (id)uidsReferencedBy:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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

- (BOOL)sendResponsesForCondStoreFlagFetchForUIDs:(id)a3 withSequenceIdentifier:(id *)a4 toQueue:(id)a5
{
  v51[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v33 = self;
  v34 = a5;
  v28 = v7;
  v32 = [(MFIMAPConnection *)self messageSetForNumbers:v7];
  v8 = MEMORY[0x277CCACA8];
  if (a4 && [*a4 length])
  {
    v9 = *a4;
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
  v11 = [v10 responseType];
  if (v11 == 2)
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
          v18 = [v17 fetchResults];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v19 = v18;
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

                v23 = [*(*(&v36 + 1) + 8 * j) modSequenceNumber];
                v24 = v23 > v13;
                if (v23 > v13)
                {
                  v13 = v23;
                }

                v14 |= v24;
              }

              v20 = [v19 countByEnumeratingWithState:&v36 objects:v49 count:16];
            }

            while (v20);
          }

          [v34 addItem:v17];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v12);

    v10 = v27;
    v11 = 2;
    if (((a4 != 0) & v14) == 1)
    {
      *a4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v13];
LABEL_27:
      v10 = v27;
      v11 = 2;
    }
  }

  [(MFIMAPConnection *)v33 didFinishCommands:&v44 count:1];

  v25 = *MEMORY[0x277D85DE8];
  return v11 == 2;
}

- (int64_t)_moveMessageSet:(id)a3 toMailboxName:(id)a4 command:(int)a5 newMessageInfo:(id *)a6
{
  v28[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([(MFIMAPConnection *)self supportsCapability:19])
  {
    v12 = [(MFIMAPConnection *)self messageSetForNumbers:v10];
    v13 = v12;
    if (v12)
    {
      v28[0] = v12;
      v14 = MFIMAPStringFromMailboxName(v11);
      v28[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

      LODWORD(v23) = a5;
      v16 = v15;
      v24 = v16;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v17 = [(MFIMAPConnection *)self _responseFromSendingCommand:&v23 andPossiblyCreateMailbox:v11];
      v18 = [v17 responseType];
      v19 = v18;
      if (a6 && v18 == 2)
      {
        *a6 = [objc_opt_class() _UIDPlusInfoFromIMAPResponses:v25];
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

+ (id)_UIDPlusInfoFromIMAPResponses:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
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

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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