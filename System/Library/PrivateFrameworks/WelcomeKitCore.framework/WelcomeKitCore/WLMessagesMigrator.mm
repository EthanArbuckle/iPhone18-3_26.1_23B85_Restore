@interface WLMessagesMigrator
+ (id)_attachmentPersistentPathForGuid:(id)guid fileName:(id)name mimeType:(id)type uti:(id)uti;
- (BOOL)_insertChatHandleJoinRowWithChatID:(int64_t)d handleID:(int64_t)iD duplicateMightExist:(BOOL)exist;
- (BOOL)_insertChatMessageJoinRowWithChatID:(int64_t)d messageID:(int64_t)iD date:(int64_t)date;
- (BOOL)_insertMessage:(id)message;
- (BOOL)_insertMessageAttachmentJoinRowWithMessageID:(int64_t)d attachmentID:(int64_t)iD;
- (BOOL)_openDatabase;
- (BOOL)_performSimpleQuery:(id)query;
- (BOOL)isValidTableName:(id)name;
- (WLFeaturePayload)featurePayload;
- (WLMessagesMigrator)initWithSQLController:(id)controller;
- (id)_chatAccountLoginWithMessage:(id)message;
- (id)_chatGUIDWithNonGroupMessage:(id)message;
- (id)_databaseFilename;
- (id)_handleIDsForMessage:(id)message;
- (id)_messageAccountWithMessage:(id)message;
- (id)_messageAttributedBodyDataWithMessage:(id)message;
- (id)_otherPartyAddressWithNonGroupMessage:(id)message;
- (id)_ourAddressWithMessage:(id)message;
- (id)_uniqueHandleStringsWithMessage:(id)message;
- (id)importDidEnd;
- (id)importWillBegin;
- (int64_t)_attachmentDateWithMessage:(id)message;
- (int64_t)_chatIDForHandleIDs:(id)ds groupRoomName:(id)name groupID:(id)d message:(id)message;
- (int64_t)_chatStyleWithMessage:(id)message;
- (int64_t)_handleIDFromNonGroupMessageHandleIDs:(id)ds;
- (int64_t)_insertMessageRowWithMessage:(id)message handleIDs:(id)ds groupRoomName:(id)name;
- (int64_t)_insertRowWithAttachment:(id)attachment filePath:(id)path forMessage:(id)message;
- (int64_t)_messageDateDeliveredWithMessage:(id)message;
- (int64_t)_messageDateReadWithMessage:(id)message;
- (int64_t)_messageDateWithMessage:(id)message;
- (int64_t)_senderHandleIDFromReceivedGroupMessageHandleIDs:(id)ds;
- (void)_closeDatabase;
- (void)_updateClient;
- (void)addWorkingTime:(unint64_t)time;
- (void)deleteData;
- (void)deleteFromTable:(id)table;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)summary account:(id)account;
- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion;
- (void)performPreImportPhaseForSummary:(id)summary data:(id)data;
- (void)setEstimatedDataSize:(unint64_t)size;
- (void)setState:(id)state;
@end

@implementation WLMessagesMigrator

- (WLMessagesMigrator)initWithSQLController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = WLMessagesMigrator;
  v5 = [(WLMessagesMigrator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WLMessagesMigrator *)v5 setSqlController:controllerCopy];
  }

  return v6;
}

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:stateCopy];
}

- (void)setEstimatedDataSize:(unint64_t)size
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:size];
}

- (void)addWorkingTime:(unint64_t)time
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + time}];
}

- (void)estimateItemSizeForSummary:(id)summary account:(id)account
{
  summaryCopy = summary;
  if (![summaryCopy itemSize])
  {
    [summaryCopy setItemSize:20480];
  }
}

- (void)performPreImportPhaseForSummary:(id)summary data:(id)data
{
  v46 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  dataCopy = data;
  _WLLog();
  v8 = [(WLMessagesMigrator *)self sqlController:self];
  v39 = dataCopy;
  v9 = [WLMessage mimeHeadersFromMimeData:dataCopy sqlController:v8];

  _WLLog();
  v37 = [WLMessage dateFromMimeHeaders:v9, self, v9];
  [summaryCopy setModifiedDate:?];
  sqlController = [(WLMessagesMigrator *)self sqlController];
  v40 = summaryCopy;
  [sqlController updateModifiedDateForSummary:summaryCopy];

  v11 = [WLMessage senderFromMimeHeaders:v9];
  _WLLog();
  v38 = v9;
  v12 = [WLMessage recipientsFromMimeHeaders:v9, self, v11];
  selfCopy3 = self;
  v32 = v12;
  _WLLog();
  v13 = MEMORY[0x277CBEBF8];
  v35 = v12;
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;
  v15 = v14;
  v36 = v11;
  if (v11)
  {
    v16 = [v14 arrayByAddingObject:{v11, self, v32}];

    v15 = v16;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v41 + 1) + 8 * i);
        v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v22, "isPhoneNumber", selfCopy3, v32)}];
        v34 = [v22 icc];
        selfCopy3 = self;
        v32 = v22;
        _WLLog();

        if ([v22 isPhoneNumber])
        {
          v24 = [v22 icc];
          v25 = [v24 length];

          if (v25)
          {
            v26 = [v22 icc];
            [v22 ccAcNumber];
            v33 = v32 = v26;
            selfCopy3 = self;
            _WLLog();

            sqlController2 = [(WLMessagesMigrator *)self sqlController];
            v28 = [v22 icc];
            ccAcNumber = [v22 ccAcNumber];
            [sqlController2 insertMessagePhoneNumberWithIcc:v28 ccAcNumber:ccAcNumber];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v19);
  }

  _WLLog();
  v30 = *MEMORY[0x277D85DE8];
}

- (id)importWillBegin
{
  v15[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  accountGuid = self->_accountGuid;
  self->_accountGuid = uUIDString;

  v7 = 0;
  if (![(WLMessagesMigrator *)self _openDatabase])
  {
    self->_database = 0;
    selfCopy = self;
    _WLLog();
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D7B8F8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"Messages migrator couldn't open messages database";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:{1, selfCopy}];
    v7 = [v8 errorWithDomain:v9 code:1 userInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)importDidEnd
{
  [(WLMessagesMigrator *)self _updateClient];
  [(WLMessagesMigrator *)self _closeDatabase];
  sqlController = [(WLMessagesMigrator *)self sqlController];
  [sqlController deleteGroupMessageInfoForAllDevices];

  sqlController2 = [(WLMessagesMigrator *)self sqlController];
  [sqlController2 deleteMessagePhoneNumbersForAllDevices];

  _WLLog();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.imdpersistenceagent.notification.mergecompleted", 0, 0, 1u);
  return 0;
}

- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion
{
  v26[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  summaryCopy = summary;
  accountCopy = account;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

  v15 = objc_loadWeakRetained(&self->_featurePayload);
  [v15 setSize:{objc_msgSend(v15, "size") + objc_msgSend(dataCopy, "length")}];

  v16 = objc_alloc_init(WLMessage);
  [(WLMessage *)v16 setSummary:summaryCopy];
  if (!dataCopy)
  {
    _WLLog();
    if (!completionCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v17 = objc_autoreleasePoolPush();
  sqlController = [(WLMessagesMigrator *)self sqlController];
  [(WLMessage *)v16 parseMIMEData:dataCopy sqlController:sqlController];

  v19 = [(WLMessagesMigrator *)self _insertMessage:v16];
  objc_autoreleasePoolPop(v17);
  if (completionCopy)
  {
    if (!v19)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D7B8F8];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = @"Message import failed";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v23 = [v20 errorWithDomain:v21 code:1 userInfo:v22];
      completionCopy[2](completionCopy, 0, v23);

      goto LABEL_8;
    }

LABEL_4:
    completionCopy[2](completionCopy, 1, 0);
  }

LABEL_8:

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_databaseFilename
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/SMS/sms.db"];

  return v3;
}

- (BOOL)_openDatabase
{
  _databaseFilename = [(WLMessagesMigrator *)self _databaseFilename];
  v4 = sqlite3_open([_databaseFilename UTF8String], &self->_database);
  if (v4)
  {
    _WLLog();
  }

  return v4 == 0;
}

- (void)_closeDatabase
{
  database = self->_database;
  if (database)
  {
    sqlite3_close(database);
    self->_database = 0;
  }
}

- (BOOL)_performSimpleQuery:(id)query
{
  queryCopy = query;
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_database, [queryCopy UTF8String], -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
    v5 = 0;
  }

  else
  {
    v6 = sqlite3_errcode(self->_database);
    v5 = v6 != 101;
    if (v6 == 101)
    {
      sqlite3_errcode(self->_database);
      sqlite3_errmsg(self->_database);
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }

  return v5;
}

- (id)_ourAddressWithMessage:(id)message
{
  messageCopy = message;
  messageDirection = [messageCopy messageDirection];
  if (!messageDirection)
  {
    sender = [messageCopy sender];
    address = [sender address];
LABEL_6:

    if (address)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (messageDirection == 1 && ([messageCopy isGroupMessage] & 1) == 0)
  {
    sender = [messageCopy recipients];
    v6 = [sender objectAtIndexedSubscript:0];
    address = [v6 address];

    goto LABEL_6;
  }

LABEL_7:
  address = &stru_2882CBB40;
LABEL_8:

  return address;
}

- (id)_otherPartyAddressWithNonGroupMessage:(id)message
{
  messageCopy = message;
  messageDirection = [messageCopy messageDirection];
  if (!messageDirection)
  {
    recipients = [messageCopy recipients];
    v7 = [recipients objectAtIndexedSubscript:0];
    address = [v7 address];

    goto LABEL_5;
  }

  if (messageDirection == 1)
  {
    recipients = [messageCopy sender];
    address = [recipients address];
LABEL_5:

    goto LABEL_7;
  }

  address = 0;
LABEL_7:

  return address;
}

- (BOOL)_insertMessage:(id)message
{
  v101 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  _beginTransaction = [(WLMessagesMigrator *)self _beginTransaction];
  if (_beginTransaction)
  {
    v6 = [(WLMessagesMigrator *)self _handleIDsForMessage:messageCopy];
    if ([v6 count])
    {
      v7 = 0;
      v8 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  v65 = messageCopy;
  _WLLog();
  v8 = 0;
  v7 = _beginTransaction;
LABEL_6:
  if ([messageCopy isGroupMessage])
  {
    v9 = [messageCopy messageDirection] == 1;
    if (!v8)
    {
LABEL_8:
      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_55;
    }
  }

  else
  {
    v9 = 1;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  selfCopy2 = self;
  v82 = v7;
  v80 = _beginTransaction;
  v75 = v9;
  if ([messageCopy isGroupMessage])
  {
    v13 = [(WLMessagesMigrator *)self _sortedHandleIDs:v6];
    v98 = 0;
    threadID = [messageCopy threadID];
    v15 = [threadID length];

    sqlController = [(WLMessagesMigrator *)self sqlController];
    v17 = sqlController;
    if (v15)
    {
      threadID2 = [messageCopy threadID];
      v19 = [v17 groupMessageInfoMatchingSourceThreadID:threadID2];

      v98 = v19 != 0;
    }

    else
    {
      v19 = [sqlController groupMessageInfoMatchingSortedHandleIDs:v13 handleIDsAreComplete:v9 didMatchExactly:&v98];
    }

    v81 = v13;
    if (v19)
    {
      roomName = [v19 roomName];
      groupID = [v19 groupID];
      v87 = v98;
      obja = [messageCopy threadID];
      v77 = v6;
      v22 = [v13 componentsJoinedByString:{@", "}];
      v23 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      sortedHandleIDs = [v19 sortedHandleIDs];
      v25 = [sortedHandleIDs componentsJoinedByString:{@", "}];
      v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v19, "handleIDsAreComplete")}];
      [MEMORY[0x277CCABB0] numberWithBool:v98];
      v74 = v73 = v26;
      v71 = groupID;
      v72 = v25;
      v79 = groupID;
      v83 = roomName;
      v69 = v23;
      v70 = roomName;
      v66 = obja;
      v67 = v22;
      selfCopy3 = selfCopy2;
      _WLLog();

      v6 = v77;
      self = selfCopy2;

      v27 = !v87;
    }

    else
    {
      generatedRoomNameForGroupChat = [MEMORY[0x277CCACA8] generatedRoomNameForGroupChat];
      wl_uniqueIdentifier = [MEMORY[0x277CCACA8] wl_uniqueIdentifier];
      threadID3 = [messageCopy threadID];
      v31 = [v13 componentsJoinedByString:{@", "}];
      [MEMORY[0x277CCABB0] numberWithBool:v9];
      v79 = wl_uniqueIdentifier;
      v70 = generatedRoomNameForGroupChat;
      v71 = wl_uniqueIdentifier;
      v83 = generatedRoomNameForGroupChat;
      v69 = v67 = v31;
      selfCopy3 = self;
      v66 = threadID3;
      _WLLog();

      v27 = 1;
    }

    v76 = v27;
  }

  else
  {
    v83 = 0;
    v79 = 0;
    v76 = 0;
    v81 = 0;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  attachments = [messageCopy attachments];
  v33 = [attachments countByEnumeratingWithState:&v94 objects:v100 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v95;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v95 != v35)
        {
          objc_enumerationMutation(attachments);
        }

        v37 = *(*(&v94 + 1) + 8 * i);
        wl_uniqueIdentifier2 = [MEMORY[0x277CCACA8] wl_uniqueIdentifier];
        [v37 setGuid:wl_uniqueIdentifier2];
      }

      v34 = [attachments countByEnumeratingWithState:&v94 objects:v100 count:16];
    }

    while (v34);
  }

  subject = [messageCopy subject];
  [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(messageCopy, "isGroupMessage")}];
  v68 = v10 = v83;
  _WLLog();

  v88 = [(WLMessagesMigrator *)self _insertMessageRowWithMessage:messageCopy handleIDs:v6 groupRoomName:v83, self, subject, v68, v83];
  if (v88 < 0)
  {
    _WLLog();
LABEL_54:
    v7 = v82;
    v12 = v81;
    _beginTransaction = v80;
    v11 = v79;
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = [messageCopy attachments];
    v40 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
    if (v40)
    {
      v41 = v40;
      v86 = *v91;
      v78 = v6;
      while (2)
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v91 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v90 + 1) + 8 * j);
          guid = [v43 guid];
          fileName = [v43 fileName];
          mimeType = [v43 mimeType];
          v47 = [v43 uti];
          v48 = [WLMessagesMigrator _attachmentPersistentPathForGuid:guid fileName:fileName mimeType:mimeType uti:v47];

          if (!v48)
          {
            self = selfCopy2;
            _WLLog();
LABEL_53:

            v6 = v78;
            v10 = v83;
            goto LABEL_54;
          }

          v49 = objc_alloc_init(MEMORY[0x277CCAA00]);
          stringByDeletingLastPathComponent = [v48 stringByDeletingLastPathComponent];
          self = selfCopy2;
          if (([v49 makeDirectoriesInPath:stringByDeletingLastPathComponent mode:448] & 1) == 0 || (objc_msgSend(v43, "data"), v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "writeToFile:atomically:", v48, 1), v51, (v52 & 1) == 0) || (v53 = -[WLMessagesMigrator _insertRowWithAttachment:filePath:forMessage:](selfCopy2, "_insertRowWithAttachment:filePath:forMessage:", v43, v48, messageCopy), v53 < 0) || !-[WLMessagesMigrator _insertMessageAttachmentJoinRowWithMessageID:attachmentID:](selfCopy2, "_insertMessageAttachmentJoinRowWithMessageID:attachmentID:", v88, v53))
          {
            _WLLog();

            goto LABEL_53;
          }
        }

        v41 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
        v6 = v78;
        v10 = v83;
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v11 = v79;
    v54 = [(WLMessagesMigrator *)self _chatIDForHandleIDs:v6 groupRoomName:v10 groupID:v79 message:messageCopy];
    if (v54 < 0)
    {
      _WLLog();
      v7 = v82;
      v12 = v81;
      _beginTransaction = v80;
    }

    else
    {
      v7 = v82;
      v12 = v81;
      _beginTransaction = v80;
      if ([(WLMessagesMigrator *)self _insertChatMessageJoinRowWithChatID:v54 messageID:v88 date:[(WLMessagesMigrator *)self _messageDateWithMessage:messageCopy]])
      {
        if ([(WLMessagesMigrator *)self _commitTransaction])
        {
          if (v76)
          {
            threadID4 = [messageCopy threadID];
            v56 = [threadID4 length];

            sqlController2 = [(WLMessagesMigrator *)self sqlController];
            v58 = sqlController2;
            if (v56)
            {
              threadID5 = [messageCopy threadID];
              [v58 insertGroupMessageInfoWithSourceThreadID:threadID5 roomName:v10 groupID:v79];
            }

            else
            {
              [sqlController2 insertGroupMessageInfoWithSortedHandleIDs:v81 handleIDsAreComplete:v75 roomName:v10 groupID:v79];
            }
          }
        }

        else
        {
          _WLLog();
        }

        v60 = 1;
        if (v82)
        {
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      _WLLog();
    }
  }

LABEL_55:
  if (_beginTransaction && ![(WLMessagesMigrator *)self _rollbackTransaction])
  {
    _WLLog();
  }

  v60 = 0;
  if (v7)
  {
LABEL_59:
    v60 = 1;
    _WLLog();
  }

LABEL_60:

  v61 = *MEMORY[0x277D85DE8];
  return v60;
}

+ (id)_attachmentPersistentPathForGuid:(id)guid fileName:(id)name mimeType:(id)type uti:(id)uti
{
  guidCopy = guid;
  nameCopy = name;
  typeCopy = type;
  utiCopy = uti;
  pathExtension = [nameCopy pathExtension];
  v14 = [guidCopy hash];
  if (![pathExtension length])
  {
    defaultHFSFileManager = [MEMORY[0x277D19250] defaultHFSFileManager];
    v16 = [defaultHFSFileManager pathExtensionForUTIType:utiCopy];

    pathExtension = v16;
    if (![v16 length])
    {
      defaultHFSFileManager2 = [MEMORY[0x277D19250] defaultHFSFileManager];
      v18 = [defaultHFSFileManager2 pathExtensionForMIMEType:typeCopy];

      pathExtension = v18;
    }

    if ([pathExtension length])
    {
      [nameCopy stringByAppendingPathExtension:pathExtension];
      v20 = v19 = pathExtension;

      nameCopy = v20;
      pathExtension = v19;
    }
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x", v14];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02d", v14 & 0xF];
  _WLLog();
  if ([nameCopy length] && objc_msgSend(guidCopy, "length"))
  {
    stringByResolvingAndStandardizingPath = [@"/var/mobile/Library/SMS/Attachments" stringByResolvingAndStandardizingPath];
    v24 = [stringByResolvingAndStandardizingPath stringByAppendingPathComponent:v21];
    [v24 stringByAppendingPathComponent:v22];
    v33 = nameCopy;
    v25 = v22;
    v26 = v21;
    v27 = pathExtension;
    v29 = v28 = utiCopy;
    v30 = [v29 stringByAppendingPathComponent:guidCopy];

    utiCopy = v28;
    pathExtension = v27;
    v21 = v26;
    v22 = v25;
    nameCopy = v33;

    v31 = [v30 stringByAppendingPathComponent:v33];
  }

  else
  {
    v31 = 0;
  }

  _WLLog();

  return v31;
}

- (int64_t)_insertRowWithAttachment:(id)attachment filePath:(id)path forMessage:(id)message
{
  attachmentCopy = attachment;
  pathCopy = path;
  messageCopy = message;
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, "INSERT INTO attachment (guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, original_guid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
    insert_rowid = -1;
  }

  else
  {
    v12 = ppStmt;
    guid = [attachmentCopy guid];
    sqlite3_bind_text(v12, 1, [guid UTF8String], -1, 0);

    sqlite3_bind_int64(ppStmt, 2, [(WLMessagesMigrator *)self _attachmentDateWithMessage:messageCopy]);
    sqlite3_bind_int64(ppStmt, 3, [(WLMessagesMigrator *)self _attachmentDateWithMessage:messageCopy]);
    sqlite3_bind_text(ppStmt, 4, [pathCopy UTF8String], -1, 0);
    v14 = [attachmentCopy uti];

    v15 = ppStmt;
    if (v14)
    {
      v16 = [attachmentCopy uti];
      sqlite3_bind_text(v15, 5, [v16 UTF8String], -1, 0);
    }

    else
    {
      sqlite3_bind_null(ppStmt, 5);
    }

    v17 = ppStmt;
    mimeType = [attachmentCopy mimeType];
    sqlite3_bind_text(v17, 6, [mimeType UTF8String], -1, 0);

    sqlite3_bind_int(ppStmt, 7, 5);
    sqlite3_bind_int(ppStmt, 8, [(WLMessagesMigrator *)self _messageIsFromMeWithMessage:messageCopy]);
    sqlite3_bind_null(ppStmt, 9);
    v19 = ppStmt;
    lastPathComponent = [pathCopy lastPathComponent];
    sqlite3_bind_text(v19, 10, [lastPathComponent UTF8String], -1, 0);

    v21 = ppStmt;
    data = [attachmentCopy data];
    sqlite3_bind_int(v21, 11, [data length]);

    v23 = ppStmt;
    guid2 = [attachmentCopy guid];
    sqlite3_bind_text(v23, 12, [guid2 UTF8String], -1, 0);

    if (sqlite3_step(ppStmt) == 101)
    {
      insert_rowid = sqlite3_last_insert_rowid(self->_database);
    }

    else
    {
      sqlite3_errcode(self->_database);
      sqlite3_errmsg(self->_database);
      _WLLog();
      insert_rowid = -1;
    }

    sqlite3_finalize(ppStmt);
  }

  return insert_rowid;
}

- (BOOL)_insertMessageAttachmentJoinRowWithMessageID:(int64_t)d attachmentID:(int64_t)iD
{
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, "INSERT INTO message_attachment_join (message_id, attachment_id) VALUES (?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
    return 0;
  }

  else
  {
    sqlite3_bind_int64(ppStmt, 1, d);
    sqlite3_bind_int64(ppStmt, 2, iD);
    v8 = sqlite3_step(ppStmt);
    v7 = v8 == 101;
    if (v8 != 101)
    {
      sqlite3_errcode(self->_database);
      sqlite3_errmsg(self->_database);
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }

  return v7;
}

- (id)_handleIDsForMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [(WLMessagesMigrator *)self _uniqueHandleStringsWithMessage:messageCopy];
  if (![v5 count])
  {
    v17 = 0;
    goto LABEL_28;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v5;
  v8 = v6;
  v26 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v26)
  {
    goto LABEL_27;
  }

  v24 = v5;
  v25 = *v30;
  while (2)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v30 != v25)
      {
        objc_enumerationMutation(v7);
      }

      v10 = *(*(&v29 + 1) + 8 * i);
      ppStmt = 0;
      if (sqlite3_prepare(self->_database, "SELECT ROWID FROM handle WHERE id=? LIMIT 1", -1, &ppStmt, 0))
      {
        goto LABEL_8;
      }

      sqlite3_bind_text(ppStmt, 1, [v10 UTF8String], -1, 0);
      if (sqlite3_step(ppStmt) == 100)
      {
        do
        {
          insert_rowid = sqlite3_column_int64(ppStmt, 0);
        }

        while (sqlite3_step(ppStmt) == 100);
      }

      else
      {
        insert_rowid = -1;
      }

      if (sqlite3_errcode(self->_database) != 101 && sqlite3_errcode(self->_database) >= 1)
      {
        v22 = sqlite3_errcode(self->_database);
        v23 = sqlite3_errmsg(self->_database);
        selfCopy = self;
        v21 = "SELECT ROWID FROM handle WHERE id=? LIMIT 1";
        _WLLog();
      }

      sqlite3_finalize(ppStmt);
      if (insert_rowid == -1)
      {
LABEL_8:
        pStmt = 0;
        if (sqlite3_prepare(self->_database, "INSERT INTO handle (id, country, service, uncanonicalized_id) VALUES (?, ?, ?, ?)", -1, &pStmt, 0))
        {
          sqlite3_errcode(self->_database);
          sqlite3_errmsg(self->_database);
          _WLLog();
        }

        else
        {
          sqlite3_bind_text(pStmt, 1, [v10 UTF8String], -1, 0);
          sqlite3_bind_null(pStmt, 2);
          v11 = pStmt;
          v12 = [(WLMessagesMigrator *)self _serviceStringWithMessage:messageCopy];
          sqlite3_bind_text(v11, 3, [v12 UTF8String], -1, 0);

          v13 = pStmt;
          v14 = [(WLMessagesMigrator *)self _uncanonicalizedIDWithMessage:messageCopy];
          sqlite3_bind_text(v13, 4, [v14 UTF8String], -1, 0);

          if (sqlite3_step(pStmt) == 101)
          {
            insert_rowid = sqlite3_last_insert_rowid(self->_database);
            sqlite3_finalize(pStmt);
            goto LABEL_19;
          }

          sqlite3_errcode(self->_database);
          sqlite3_errmsg(self->_database);
          _WLLog();
          sqlite3_finalize(pStmt);
        }

        v8 = 0;
        goto LABEL_26;
      }

LABEL_19:
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{insert_rowid, selfCopy, v21, v22, v23}];
      [v6 addObject:v16];
    }

    v26 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v26)
    {
      continue;
    }

    break;
  }

  v8 = v6;
LABEL_26:
  v5 = v24;
LABEL_27:

  v17 = v8;
LABEL_28:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_uniqueHandleStringsWithMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ([messageCopy isGroupMessage])
  {
    if ([messageCopy messageDirection] == 1)
    {
      sender = [messageCopy sender];

      if (sender)
      {
        sender2 = [messageCopy sender];
        address = [sender2 address];
        v9 = [address length];

        if (!v9)
        {
          _WLLog();
          goto LABEL_19;
        }

        sender3 = [messageCopy sender];
        address2 = [sender3 address];
        [v5 addObject:address2];
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    recipients = [messageCopy recipients];
    v13 = [recipients countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(recipients);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        address3 = [v17 address];
        v19 = [address3 length];

        if (!v19)
        {
          goto LABEL_18;
        }

        address4 = [v17 address];
        [v5 addObject:address4];

        if (v14 == ++v16)
        {
          v14 = [recipients countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v14)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

LABEL_17:

    array = [v5 array];
    goto LABEL_20;
  }

  recipients = [(WLMessagesMigrator *)self _otherPartyAddressWithNonGroupMessage:messageCopy];
  if ([recipients length])
  {
    [v5 addObject:recipients];
    goto LABEL_17;
  }

LABEL_18:
  _WLLog();

LABEL_19:
  array = 0;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];

  return array;
}

- (int64_t)_senderHandleIDFromReceivedGroupMessageHandleIDs:(id)ds
{
  v3 = [ds objectAtIndexedSubscript:0];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int64_t)_handleIDFromNonGroupMessageHandleIDs:(id)ds
{
  v3 = [ds objectAtIndexedSubscript:0];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int64_t)_chatIDForHandleIDs:(id)ds groupRoomName:(id)name groupID:(id)d message:(id)message
{
  v77 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  nameCopy = name;
  dCopy = d;
  messageCopy = message;
  if ([messageCopy isGroupMessage])
  {
    v14 = "SELECT rowid FROM chat WHERE room_name=?";
  }

  else
  {
    v14 = "SELECT rowid FROM chat WHERE chat_identifier=?";
  }

  ppStmt = 0;
  if (sqlite3_prepare(self->_database, v14, -1, &ppStmt, 0))
  {
    goto LABEL_5;
  }

  isGroupMessage = [messageCopy isGroupMessage];
  v17 = ppStmt;
  if (isGroupMessage)
  {
    sqlite3_bind_text(ppStmt, 1, [nameCopy UTF8String], -1, 0);
  }

  else
  {
    v18 = [(WLMessagesMigrator *)self _chatIdentifierWithNonGroupMessage:messageCopy];
    sqlite3_bind_text(v17, 1, [v18 UTF8String], -1, 0);
  }

  if (sqlite3_step(ppStmt) == 100)
  {
    do
    {
      insert_rowid = sqlite3_column_int64(ppStmt, 0);
    }

    while (sqlite3_step(ppStmt) == 100);
  }

  else
  {
    insert_rowid = -1;
  }

  if (sqlite3_errcode(self->_database) != 101 && sqlite3_errcode(self->_database) >= 1)
  {
    v57 = sqlite3_errcode(self->_database);
    v59 = sqlite3_errmsg(self->_database);
    selfCopy = self;
    v55 = v14;
    _WLLog();
  }

  sqlite3_finalize(ppStmt);
  if (insert_rowid == -1)
  {
LABEL_5:
    pStmt = 0;
    if (sqlite3_prepare(self->_database, "INSERT INTO chat (guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, last_addressed_handle, display_name, group_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, &pStmt, 0))
    {
      sqlite3_errcode(self->_database);
      sqlite3_errmsg(self->_database);
      _WLLog();
      insert_rowid = -1;
    }

    else
    {
      if ([messageCopy isGroupMessage])
      {
        [(WLMessagesMigrator *)self _chatGUIDWithGroupRoomName:nameCopy];
      }

      else
      {
        [(WLMessagesMigrator *)self _chatGUIDWithNonGroupMessage:messageCopy];
      }
      v26 = ;
      sqlite3_bind_text(pStmt, 1, [v26 UTF8String], -1, 0);
      sqlite3_bind_int(pStmt, 2, [(WLMessagesMigrator *)self _chatStyleWithMessage:messageCopy]);
      sqlite3_bind_int(pStmt, 3, [(WLMessagesMigrator *)self _chatStateWithMessage:messageCopy]);
      v27 = pStmt;
      v28 = [(WLMessagesMigrator *)self _chatAccountIDWithMessage:messageCopy];
      sqlite3_bind_text(v27, 4, [v28 UTF8String], -1, 0);

      v64 = [(WLMessagesMigrator *)self _chatPropertiesDataWithMessage:messageCopy];
      sqlite3_bind_blob(pStmt, 5, [v64 bytes], objc_msgSend(v64, "length"), 0);
      isGroupMessage2 = [messageCopy isGroupMessage];
      v30 = pStmt;
      if (isGroupMessage2)
      {
        sqlite3_bind_text(pStmt, 6, [nameCopy UTF8String], -1, 0);
      }

      else
      {
        v31 = [(WLMessagesMigrator *)self _chatIdentifierWithNonGroupMessage:messageCopy];
        sqlite3_bind_text(v30, 6, [v31 UTF8String], -1, 0);
      }

      v32 = pStmt;
      v33 = [(WLMessagesMigrator *)self _chatServiceWithMessage:messageCopy, selfCopy, v55, v57, v59];
      sqlite3_bind_text(v32, 7, [v33 UTF8String], -1, 0);

      if ([messageCopy isGroupMessage])
      {
        sqlite3_bind_text(pStmt, 8, [nameCopy UTF8String], -1, 0);
      }

      else
      {
        sqlite3_bind_null(pStmt, 8);
      }

      v34 = pStmt;
      v35 = [(WLMessagesMigrator *)self _chatAccountLoginWithMessage:messageCopy];
      sqlite3_bind_text(v34, 9, [v35 UTF8String], -1, 0);

      v36 = pStmt;
      v37 = [(WLMessagesMigrator *)self _chatLastAddressedHandleWithMessage:messageCopy];
      sqlite3_bind_text(v36, 10, [v37 UTF8String], -1, 0);

      v38 = pStmt;
      v39 = [(WLMessagesMigrator *)self _chatDisplayNameWithMessage:messageCopy];
      sqlite3_bind_text(v38, 11, [v39 UTF8String], -1, 0);

      isGroupMessage3 = [messageCopy isGroupMessage];
      v41 = pStmt;
      if (isGroupMessage3)
      {
        sqlite3_bind_text(pStmt, 12, [dCopy UTF8String], -1, 0);
      }

      else
      {
        v42 = [(WLMessagesMigrator *)self _chatGroupIDWithNonGroupMessage:messageCopy];
        sqlite3_bind_text(v41, 12, [v42 UTF8String], -1, 0);
      }

      if (sqlite3_step(pStmt) == 101)
      {
        insert_rowid = sqlite3_last_insert_rowid(self->_database);
      }

      else
      {
        v56 = sqlite3_errcode(self->_database);
        v58 = sqlite3_errmsg(self->_database);
        selfCopy2 = self;
        _WLLog();
        insert_rowid = -1;
      }

      sqlite3_finalize(pStmt);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v43 = dsCopy;
      v44 = [v43 countByEnumeratingWithState:&v69 objects:v76 count:16];
      if (v44)
      {
        v45 = v44;
        v60 = v26;
        v62 = nameCopy;
        v46 = dCopy;
        v47 = dsCopy;
        v48 = *v70;
        while (2)
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v70 != v48)
            {
              objc_enumerationMutation(v43);
            }

            v50 = *(*(&v69 + 1) + 8 * i);
            if (!-[WLMessagesMigrator _insertChatHandleJoinRowWithChatID:handleID:duplicateMightExist:](self, "_insertChatHandleJoinRowWithChatID:handleID:duplicateMightExist:", insert_rowid, [v50 longLongValue], 0))
            {
              [v50 longLongValue];
              _WLLog();
              insert_rowid = -1;
              goto LABEL_53;
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v69 objects:v76 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }

LABEL_53:
        dsCopy = v47;
        dCopy = v46;
        nameCopy = v62;
        v26 = v60;
      }
    }
  }

  else if ([messageCopy isGroupMessage])
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v19 = dsCopy;
    v20 = [v19 countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v20)
    {
      v21 = v20;
      v61 = nameCopy;
      v63 = dCopy;
      v22 = dsCopy;
      v23 = *v66;
      while (2)
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v66 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v65 + 1) + 8 * j);
          if (!-[WLMessagesMigrator _insertChatHandleJoinRowWithChatID:handleID:duplicateMightExist:](self, "_insertChatHandleJoinRowWithChatID:handleID:duplicateMightExist:", insert_rowid, [v25 longLongValue], 1))
          {
            [v25 longLongValue];
            _WLLog();
            insert_rowid = -1;
            goto LABEL_56;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

LABEL_56:
      dsCopy = v22;
      nameCopy = v61;
      dCopy = v63;
    }
  }

  v51 = *MEMORY[0x277D85DE8];
  return insert_rowid;
}

- (id)_chatGUIDWithNonGroupMessage:(id)message
{
  v3 = [(WLMessagesMigrator *)self _otherPartyAddressWithNonGroupMessage:message];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SMS-;%@", v3];;

  return v4;
}

- (int64_t)_chatStyleWithMessage:(id)message
{
  if ([message isGroupMessage])
  {
    return 43;
  }

  else
  {
    return 45;
  }
}

- (id)_chatAccountLoginWithMessage:(id)message
{
  v3 = [(WLMessagesMigrator *)self _ourAddressWithMessage:message];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"P:%@", v3];

  return v4;
}

- (int64_t)_insertMessageRowWithMessage:(id)message handleIDs:(id)ds groupRoomName:(id)name
{
  messageCopy = message;
  dsCopy = ds;
  nameCopy = name;
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, "INSERT INTO message (guid, text, service_center, handle_id, subject, country, attributedBody, version, service, account, account_guid, error, date, date_read, date_delivered, is_finished, is_from_me, cache_roomnames, was_data_detected, date_played, group_title, is_read, is_sent) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
    insert_rowid = -1;
    goto LABEL_15;
  }

  wl_uniqueIdentifier = [MEMORY[0x277CCACA8] wl_uniqueIdentifier];
  sqlite3_bind_text(ppStmt, 1, [wl_uniqueIdentifier UTF8String], -1, 0);
  v13 = ppStmt;
  messageText = [messageCopy messageText];
  sqlite3_bind_text(v13, 2, [messageText UTF8String], -1, 0);

  v15 = ppStmt;
  v16 = [(WLMessagesMigrator *)self _messageServiceCenterWithMessage:messageCopy];
  sqlite3_bind_text(v15, 3, [v16 UTF8String], -1, 0);

  if ([messageCopy isGroupMessage])
  {
    if (![messageCopy messageDirection])
    {
      v18 = 0;
      goto LABEL_8;
    }

    v17 = [(WLMessagesMigrator *)self _senderHandleIDFromReceivedGroupMessageHandleIDs:dsCopy];
  }

  else
  {
    v17 = [(WLMessagesMigrator *)self _handleIDFromNonGroupMessageHandleIDs:dsCopy];
  }

  v18 = v17;
LABEL_8:
  sqlite3_bind_int64(ppStmt, 4, v18);
  v19 = ppStmt;
  v20 = [(WLMessagesMigrator *)self _messageSubjectWithMessage:messageCopy];
  sqlite3_bind_text(v19, 5, [v20 UTF8String], -1, 0);

  sqlite3_bind_null(ppStmt, 6);
  v21 = [(WLMessagesMigrator *)self _messageAttributedBodyDataWithMessage:messageCopy];
  sqlite3_bind_blob(ppStmt, 7, [v21 bytes], objc_msgSend(v21, "length"), 0);
  sqlite3_bind_int(ppStmt, 8, [(WLMessagesMigrator *)self _messageVersionWithMessage:messageCopy]);
  v22 = ppStmt;
  v23 = [(WLMessagesMigrator *)self _messageServiceWithMessage:messageCopy];
  sqlite3_bind_text(v22, 9, [v23 UTF8String], -1, 0);

  v24 = ppStmt;
  v25 = [(WLMessagesMigrator *)self _messageAccountWithMessage:messageCopy];
  sqlite3_bind_text(v24, 10, [v25 UTF8String], -1, 0);

  v26 = ppStmt;
  v27 = [(WLMessagesMigrator *)self _messageAccountGUIDWithMessage:messageCopy];
  sqlite3_bind_text(v26, 11, [v27 UTF8String], -1, 0);

  sqlite3_bind_int(ppStmt, 12, [(WLMessagesMigrator *)self _messageErrorWithMessage:messageCopy]);
  sqlite3_bind_int64(ppStmt, 13, [(WLMessagesMigrator *)self _messageDateWithMessage:messageCopy]);
  sqlite3_bind_int64(ppStmt, 14, [(WLMessagesMigrator *)self _messageDateReadWithMessage:messageCopy]);
  sqlite3_bind_int64(ppStmt, 15, [(WLMessagesMigrator *)self _messageDateDeliveredWithMessage:messageCopy]);
  sqlite3_bind_int(ppStmt, 16, 1);
  sqlite3_bind_int(ppStmt, 17, [(WLMessagesMigrator *)self _messageIsFromMeWithMessage:messageCopy]);
  if ([messageCopy isGroupMessage])
  {
    sqlite3_bind_text(ppStmt, 18, [nameCopy UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(ppStmt, 18);
  }

  sqlite3_bind_int(ppStmt, 19, 1);
  sqlite3_bind_int(ppStmt, 20, 0);
  v28 = ppStmt;
  v29 = [(WLMessagesMigrator *)self _messageGroupTitleWithMessage:messageCopy];
  sqlite3_bind_text(v28, 21, [v29 UTF8String], -1, 0);

  sqlite3_bind_int(ppStmt, 22, 1);
  sqlite3_bind_int(ppStmt, 23, 1);
  if (sqlite3_step(ppStmt) == 101)
  {
    insert_rowid = sqlite3_last_insert_rowid(self->_database);
  }

  else
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
    insert_rowid = -1;
  }

  sqlite3_finalize(ppStmt);

LABEL_15:
  return insert_rowid;
}

- (id)_messageAttributedBodyDataWithMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = objc_alloc(MEMORY[0x277CCA898]);
  messageText = [messageCopy messageText];
  v6 = [v4 initWithString:messageText];

  attachments = [messageCopy attachments];
  v8 = [attachments count];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    attachments2 = [messageCopy attachments];
    v11 = [v9 initWithCapacity:{objc_msgSend(attachments2, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    attachments3 = [messageCopy attachments];
    v13 = [attachments3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(attachments3);
          }

          guid = [*(*(&v23 + 1) + 8 * i) guid];
          [v11 addObject:guid];
        }

        v14 = [attachments3 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    v18 = IMCreateSuperFormatStringWithAppendedFileTransfers();
    v6 = v18;
  }

  v19 = [MEMORY[0x277CCA880] archivedDataWithRootObject:v6];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
  _WLLog();

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_messageAccountWithMessage:(id)message
{
  v3 = [(WLMessagesMigrator *)self _ourAddressWithMessage:message];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"p:%@", v3];

  return v4;
}

- (int64_t)_messageDateWithMessage:(id)message
{
  date = [message date];
  [date timeIntervalSinceReferenceDate];
  v5 = (v4 * 1000000000.0);

  return v5;
}

- (int64_t)_messageDateReadWithMessage:(id)message
{
  date = [message date];
  [date timeIntervalSinceReferenceDate];
  v5 = (v4 * 1000000000.0);

  return v5;
}

- (int64_t)_messageDateDeliveredWithMessage:(id)message
{
  date = [message date];
  [date timeIntervalSinceReferenceDate];
  v5 = (v4 * 1000000000.0);

  return v5;
}

- (int64_t)_attachmentDateWithMessage:(id)message
{
  date = [message date];
  [date timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (BOOL)_insertChatMessageJoinRowWithChatID:(int64_t)d messageID:(int64_t)iD date:(int64_t)date
{
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, "INSERT INTO chat_message_join (chat_id, message_id, message_date) VALUES (?, ?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
    return 0;
  }

  else
  {
    sqlite3_bind_int64(ppStmt, 1, d);
    sqlite3_bind_int64(ppStmt, 2, iD);
    sqlite3_bind_int64(ppStmt, 3, date);
    v10 = sqlite3_step(ppStmt);
    v9 = v10 == 101;
    if (v10 != 101)
    {
      sqlite3_errcode(self->_database);
      sqlite3_errmsg(self->_database);
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }

  return v9;
}

- (BOOL)_insertChatHandleJoinRowWithChatID:(int64_t)d handleID:(int64_t)iD duplicateMightExist:(BOOL)exist
{
  if (exist)
  {
    v8 = "INSERT OR IGNORE INTO chat_handle_join (chat_id, handle_id) VALUES (?, ?)";
  }

  else
  {
    v8 = "INSERT INTO chat_handle_join (chat_id, handle_id) VALUES (?, ?)";
  }

  ppStmt = 0;
  if (sqlite3_prepare(self->_database, v8, -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
    return 0;
  }

  else
  {
    sqlite3_bind_int64(ppStmt, 1, d);
    sqlite3_bind_int64(ppStmt, 2, iD);
    v10 = sqlite3_step(ppStmt);
    v9 = v10 == 101;
    if (v10 != 101)
    {
      sqlite3_errcode(self->_database);
      sqlite3_errmsg(self->_database);
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }

  return v9;
}

- (void)_updateClient
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE _SqliteDatabaseProperties SET value = ? WHERE key = ?"];
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [v3 UTF8String], -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
  }

  else
  {
    sqlite3_bind_int(ppStmt, 1, 16199);
    sqlite3_bind_text(ppStmt, 2, [@"_ClientVersion" UTF8String], -1, 0);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(self->_database);
      sqlite3_errmsg(self->_database);
    }

    _WLLog();
    sqlite3_finalize(ppStmt);
  }
}

- (BOOL)isValidTableName:(id)name
{
  v3 = [name stringByReplacingOccurrencesOfString:@"_" withString:&stru_2882CBB40];
  alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];

  if ([v3 length])
  {
    v6 = [v3 length];
    v7 = v6 == [v5 length];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)deleteFromTable:(id)table
{
  tableCopy = table;
  if (![(WLMessagesMigrator *)self isValidTableName:tableCopy])
  {
    goto LABEL_4;
  }

  tableCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@", tableCopy];

  ppStmt = 0;
  tableCopy = tableCopy;
  if (sqlite3_prepare(self->_database, [tableCopy UTF8String], -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
LABEL_4:
    _WLLog();
    goto LABEL_5;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
  }

  sqlite3_finalize(ppStmt);
LABEL_5:
}

- (void)deleteData
{
  if ([MEMORY[0x277D7B890] isInternal])
  {
    [(WLMessagesMigrator *)self _openDatabase];
    [(WLMessagesMigrator *)self deleteFromTable:@"message_attachment_join"];
    [(WLMessagesMigrator *)self deleteFromTable:@"chat_message_join"];
    [(WLMessagesMigrator *)self deleteFromTable:@"chat_handle_join"];
    [(WLMessagesMigrator *)self deleteFromTable:@"attachment"];
    [(WLMessagesMigrator *)self deleteFromTable:@"message"];
    [(WLMessagesMigrator *)self deleteFromTable:@"chat"];
    [(WLMessagesMigrator *)self deleteFromTable:@"handle"];

    [(WLMessagesMigrator *)self _closeDatabase];
  }
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end