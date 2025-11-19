@interface WLMessagesMigrator
+ (id)_attachmentPersistentPathForGuid:(id)a3 fileName:(id)a4 mimeType:(id)a5 uti:(id)a6;
- (BOOL)_insertChatHandleJoinRowWithChatID:(int64_t)a3 handleID:(int64_t)a4 duplicateMightExist:(BOOL)a5;
- (BOOL)_insertChatMessageJoinRowWithChatID:(int64_t)a3 messageID:(int64_t)a4 date:(int64_t)a5;
- (BOOL)_insertMessage:(id)a3;
- (BOOL)_insertMessageAttachmentJoinRowWithMessageID:(int64_t)a3 attachmentID:(int64_t)a4;
- (BOOL)_openDatabase;
- (BOOL)_performSimpleQuery:(id)a3;
- (BOOL)isValidTableName:(id)a3;
- (WLFeaturePayload)featurePayload;
- (WLMessagesMigrator)initWithSQLController:(id)a3;
- (id)_chatAccountLoginWithMessage:(id)a3;
- (id)_chatGUIDWithNonGroupMessage:(id)a3;
- (id)_databaseFilename;
- (id)_handleIDsForMessage:(id)a3;
- (id)_messageAccountWithMessage:(id)a3;
- (id)_messageAttributedBodyDataWithMessage:(id)a3;
- (id)_otherPartyAddressWithNonGroupMessage:(id)a3;
- (id)_ourAddressWithMessage:(id)a3;
- (id)_uniqueHandleStringsWithMessage:(id)a3;
- (id)importDidEnd;
- (id)importWillBegin;
- (int64_t)_attachmentDateWithMessage:(id)a3;
- (int64_t)_chatIDForHandleIDs:(id)a3 groupRoomName:(id)a4 groupID:(id)a5 message:(id)a6;
- (int64_t)_chatStyleWithMessage:(id)a3;
- (int64_t)_handleIDFromNonGroupMessageHandleIDs:(id)a3;
- (int64_t)_insertMessageRowWithMessage:(id)a3 handleIDs:(id)a4 groupRoomName:(id)a5;
- (int64_t)_insertRowWithAttachment:(id)a3 filePath:(id)a4 forMessage:(id)a5;
- (int64_t)_messageDateDeliveredWithMessage:(id)a3;
- (int64_t)_messageDateReadWithMessage:(id)a3;
- (int64_t)_messageDateWithMessage:(id)a3;
- (int64_t)_senderHandleIDFromReceivedGroupMessageHandleIDs:(id)a3;
- (void)_closeDatabase;
- (void)_updateClient;
- (void)addWorkingTime:(unint64_t)a3;
- (void)deleteData;
- (void)deleteFromTable:(id)a3;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4;
- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6;
- (void)performPreImportPhaseForSummary:(id)a3 data:(id)a4;
- (void)setEstimatedDataSize:(unint64_t)a3;
- (void)setState:(id)a3;
@end

@implementation WLMessagesMigrator

- (WLMessagesMigrator)initWithSQLController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WLMessagesMigrator;
  v5 = [(WLMessagesMigrator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WLMessagesMigrator *)v5 setSqlController:v4];
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

- (void)setState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:v4];
}

- (void)setEstimatedDataSize:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:a3];
}

- (void)addWorkingTime:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + a3}];
}

- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4
{
  v4 = a3;
  if (![v4 itemSize])
  {
    [v4 setItemSize:20480];
  }
}

- (void)performPreImportPhaseForSummary:(id)a3 data:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _WLLog();
  v8 = [(WLMessagesMigrator *)self sqlController:self];
  v39 = v7;
  v9 = [WLMessage mimeHeadersFromMimeData:v7 sqlController:v8];

  _WLLog();
  v37 = [WLMessage dateFromMimeHeaders:v9, self, v9];
  [v6 setModifiedDate:?];
  v10 = [(WLMessagesMigrator *)self sqlController];
  v40 = v6;
  [v10 updateModifiedDateForSummary:v6];

  v11 = [WLMessage senderFromMimeHeaders:v9];
  _WLLog();
  v38 = v9;
  v12 = [WLMessage recipientsFromMimeHeaders:v9, self, v11];
  v31 = self;
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
        v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v22, "isPhoneNumber", v31, v32)}];
        v34 = [v22 icc];
        v31 = self;
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
            v31 = self;
            _WLLog();

            v27 = [(WLMessagesMigrator *)self sqlController];
            v28 = [v22 icc];
            v29 = [v22 ccAcNumber];
            [v27 insertMessagePhoneNumberWithIcc:v28 ccAcNumber:v29];
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

  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  accountGuid = self->_accountGuid;
  self->_accountGuid = v5;

  v7 = 0;
  if (![(WLMessagesMigrator *)self _openDatabase])
  {
    self->_database = 0;
    v13 = self;
    _WLLog();
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D7B8F8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"Messages migrator couldn't open messages database";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:{1, v13}];
    v7 = [v8 errorWithDomain:v9 code:1 userInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)importDidEnd
{
  [(WLMessagesMigrator *)self _updateClient];
  [(WLMessagesMigrator *)self _closeDatabase];
  v3 = [(WLMessagesMigrator *)self sqlController];
  [v3 deleteGroupMessageInfoForAllDevices];

  v4 = [(WLMessagesMigrator *)self sqlController];
  [v4 deleteMessagePhoneNumbersForAllDevices];

  _WLLog();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.imdpersistenceagent.notification.mergecompleted", 0, 0, 1u);
  return 0;
}

- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6
{
  v26[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

  v15 = objc_loadWeakRetained(&self->_featurePayload);
  [v15 setSize:{objc_msgSend(v15, "size") + objc_msgSend(v10, "length")}];

  v16 = objc_alloc_init(WLMessage);
  [(WLMessage *)v16 setSummary:v11];
  if (!v10)
  {
    _WLLog();
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = [(WLMessagesMigrator *)self sqlController];
  [(WLMessage *)v16 parseMIMEData:v10 sqlController:v18];

  v19 = [(WLMessagesMigrator *)self _insertMessage:v16];
  objc_autoreleasePoolPop(v17);
  if (v13)
  {
    if (!v19)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D7B8F8];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = @"Message import failed";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v23 = [v20 errorWithDomain:v21 code:1 userInfo:v22];
      v13[2](v13, 0, v23);

      goto LABEL_8;
    }

LABEL_4:
    v13[2](v13, 1, 0);
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
  v3 = [(WLMessagesMigrator *)self _databaseFilename];
  v4 = sqlite3_open([v3 UTF8String], &self->_database);
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

- (BOOL)_performSimpleQuery:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_database, [v4 UTF8String], -1, &ppStmt, 0))
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

- (id)_ourAddressWithMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 messageDirection];
  if (!v4)
  {
    v5 = [v3 sender];
    v7 = [v5 address];
LABEL_6:

    if (v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v4 == 1 && ([v3 isGroupMessage] & 1) == 0)
  {
    v5 = [v3 recipients];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 address];

    goto LABEL_6;
  }

LABEL_7:
  v7 = &stru_2882CBB40;
LABEL_8:

  return v7;
}

- (id)_otherPartyAddressWithNonGroupMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 messageDirection];
  if (!v4)
  {
    v5 = [v3 recipients];
    v7 = [v5 objectAtIndexedSubscript:0];
    v6 = [v7 address];

    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = [v3 sender];
    v6 = [v5 address];
LABEL_5:

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (BOOL)_insertMessage:(id)a3
{
  v101 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WLMessagesMigrator *)self _beginTransaction];
  if (v5)
  {
    v6 = [(WLMessagesMigrator *)self _handleIDsForMessage:v4];
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

  v63 = self;
  v65 = v4;
  _WLLog();
  v8 = 0;
  v7 = v5;
LABEL_6:
  if ([v4 isGroupMessage])
  {
    v9 = [v4 messageDirection] == 1;
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

  v89 = self;
  v82 = v7;
  v80 = v5;
  v75 = v9;
  if ([v4 isGroupMessage])
  {
    v13 = [(WLMessagesMigrator *)self _sortedHandleIDs:v6];
    v98 = 0;
    v14 = [v4 threadID];
    v15 = [v14 length];

    v16 = [(WLMessagesMigrator *)self sqlController];
    v17 = v16;
    if (v15)
    {
      v18 = [v4 threadID];
      v19 = [v17 groupMessageInfoMatchingSourceThreadID:v18];

      v98 = v19 != 0;
    }

    else
    {
      v19 = [v16 groupMessageInfoMatchingSortedHandleIDs:v13 handleIDsAreComplete:v9 didMatchExactly:&v98];
    }

    v81 = v13;
    if (v19)
    {
      v20 = [v19 roomName];
      v21 = [v19 groupID];
      v87 = v98;
      obja = [v4 threadID];
      v77 = v6;
      v22 = [v13 componentsJoinedByString:{@", "}];
      v23 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      v24 = [v19 sortedHandleIDs];
      v25 = [v24 componentsJoinedByString:{@", "}];
      v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v19, "handleIDsAreComplete")}];
      [MEMORY[0x277CCABB0] numberWithBool:v98];
      v74 = v73 = v26;
      v71 = v21;
      v72 = v25;
      v79 = v21;
      v83 = v20;
      v69 = v23;
      v70 = v20;
      v66 = obja;
      v67 = v22;
      v64 = v89;
      _WLLog();

      v6 = v77;
      self = v89;

      v27 = !v87;
    }

    else
    {
      v28 = [MEMORY[0x277CCACA8] generatedRoomNameForGroupChat];
      v29 = [MEMORY[0x277CCACA8] wl_uniqueIdentifier];
      v30 = [v4 threadID];
      v31 = [v13 componentsJoinedByString:{@", "}];
      [MEMORY[0x277CCABB0] numberWithBool:v9];
      v79 = v29;
      v70 = v28;
      v71 = v29;
      v83 = v28;
      v69 = v67 = v31;
      v64 = self;
      v66 = v30;
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
  v32 = [v4 attachments];
  v33 = [v32 countByEnumeratingWithState:&v94 objects:v100 count:16];
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
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v94 + 1) + 8 * i);
        v38 = [MEMORY[0x277CCACA8] wl_uniqueIdentifier];
        [v37 setGuid:v38];
      }

      v34 = [v32 countByEnumeratingWithState:&v94 objects:v100 count:16];
    }

    while (v34);
  }

  v39 = [v4 subject];
  [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isGroupMessage")}];
  v68 = v10 = v83;
  _WLLog();

  v88 = [(WLMessagesMigrator *)self _insertMessageRowWithMessage:v4 handleIDs:v6 groupRoomName:v83, self, v39, v68, v83];
  if (v88 < 0)
  {
    _WLLog();
LABEL_54:
    v7 = v82;
    v12 = v81;
    v5 = v80;
    v11 = v79;
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = [v4 attachments];
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
          v44 = [v43 guid];
          v45 = [v43 fileName];
          v46 = [v43 mimeType];
          v47 = [v43 uti];
          v48 = [WLMessagesMigrator _attachmentPersistentPathForGuid:v44 fileName:v45 mimeType:v46 uti:v47];

          if (!v48)
          {
            self = v89;
            _WLLog();
LABEL_53:

            v6 = v78;
            v10 = v83;
            goto LABEL_54;
          }

          v49 = objc_alloc_init(MEMORY[0x277CCAA00]);
          v50 = [v48 stringByDeletingLastPathComponent];
          self = v89;
          if (([v49 makeDirectoriesInPath:v50 mode:448] & 1) == 0 || (objc_msgSend(v43, "data"), v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "writeToFile:atomically:", v48, 1), v51, (v52 & 1) == 0) || (v53 = -[WLMessagesMigrator _insertRowWithAttachment:filePath:forMessage:](v89, "_insertRowWithAttachment:filePath:forMessage:", v43, v48, v4), v53 < 0) || !-[WLMessagesMigrator _insertMessageAttachmentJoinRowWithMessageID:attachmentID:](v89, "_insertMessageAttachmentJoinRowWithMessageID:attachmentID:", v88, v53))
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
    v54 = [(WLMessagesMigrator *)self _chatIDForHandleIDs:v6 groupRoomName:v10 groupID:v79 message:v4];
    if (v54 < 0)
    {
      _WLLog();
      v7 = v82;
      v12 = v81;
      v5 = v80;
    }

    else
    {
      v7 = v82;
      v12 = v81;
      v5 = v80;
      if ([(WLMessagesMigrator *)self _insertChatMessageJoinRowWithChatID:v54 messageID:v88 date:[(WLMessagesMigrator *)self _messageDateWithMessage:v4]])
      {
        if ([(WLMessagesMigrator *)self _commitTransaction])
        {
          if (v76)
          {
            v55 = [v4 threadID];
            v56 = [v55 length];

            v57 = [(WLMessagesMigrator *)self sqlController];
            v58 = v57;
            if (v56)
            {
              v59 = [v4 threadID];
              [v58 insertGroupMessageInfoWithSourceThreadID:v59 roomName:v10 groupID:v79];
            }

            else
            {
              [v57 insertGroupMessageInfoWithSortedHandleIDs:v81 handleIDsAreComplete:v75 roomName:v10 groupID:v79];
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
  if (v5 && ![(WLMessagesMigrator *)self _rollbackTransaction])
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

+ (id)_attachmentPersistentPathForGuid:(id)a3 fileName:(id)a4 mimeType:(id)a5 uti:(id)a6
{
  v10 = a3;
  v11 = a4;
  v34 = a5;
  v12 = a6;
  v13 = [v11 pathExtension];
  v14 = [v10 hash];
  if (![v13 length])
  {
    v15 = [MEMORY[0x277D19250] defaultHFSFileManager];
    v16 = [v15 pathExtensionForUTIType:v12];

    v13 = v16;
    if (![v16 length])
    {
      v17 = [MEMORY[0x277D19250] defaultHFSFileManager];
      v18 = [v17 pathExtensionForMIMEType:v34];

      v13 = v18;
    }

    if ([v13 length])
    {
      [v11 stringByAppendingPathExtension:v13];
      v20 = v19 = v13;

      v11 = v20;
      v13 = v19;
    }
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x", v14];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02d", v14 & 0xF];
  _WLLog();
  if ([v11 length] && objc_msgSend(v10, "length"))
  {
    v23 = [@"/var/mobile/Library/SMS/Attachments" stringByResolvingAndStandardizingPath];
    v24 = [v23 stringByAppendingPathComponent:v21];
    [v24 stringByAppendingPathComponent:v22];
    v33 = v11;
    v25 = v22;
    v26 = v21;
    v27 = v13;
    v29 = v28 = v12;
    v30 = [v29 stringByAppendingPathComponent:v10];

    v12 = v28;
    v13 = v27;
    v21 = v26;
    v22 = v25;
    v11 = v33;

    v31 = [v30 stringByAppendingPathComponent:v33];
  }

  else
  {
    v31 = 0;
  }

  _WLLog();

  return v31;
}

- (int64_t)_insertRowWithAttachment:(id)a3 filePath:(id)a4 forMessage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v13 = [v8 guid];
    sqlite3_bind_text(v12, 1, [v13 UTF8String], -1, 0);

    sqlite3_bind_int64(ppStmt, 2, [(WLMessagesMigrator *)self _attachmentDateWithMessage:v10]);
    sqlite3_bind_int64(ppStmt, 3, [(WLMessagesMigrator *)self _attachmentDateWithMessage:v10]);
    sqlite3_bind_text(ppStmt, 4, [v9 UTF8String], -1, 0);
    v14 = [v8 uti];

    v15 = ppStmt;
    if (v14)
    {
      v16 = [v8 uti];
      sqlite3_bind_text(v15, 5, [v16 UTF8String], -1, 0);
    }

    else
    {
      sqlite3_bind_null(ppStmt, 5);
    }

    v17 = ppStmt;
    v18 = [v8 mimeType];
    sqlite3_bind_text(v17, 6, [v18 UTF8String], -1, 0);

    sqlite3_bind_int(ppStmt, 7, 5);
    sqlite3_bind_int(ppStmt, 8, [(WLMessagesMigrator *)self _messageIsFromMeWithMessage:v10]);
    sqlite3_bind_null(ppStmt, 9);
    v19 = ppStmt;
    v20 = [v9 lastPathComponent];
    sqlite3_bind_text(v19, 10, [v20 UTF8String], -1, 0);

    v21 = ppStmt;
    v22 = [v8 data];
    sqlite3_bind_int(v21, 11, [v22 length]);

    v23 = ppStmt;
    v24 = [v8 guid];
    sqlite3_bind_text(v23, 12, [v24 UTF8String], -1, 0);

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

- (BOOL)_insertMessageAttachmentJoinRowWithMessageID:(int64_t)a3 attachmentID:(int64_t)a4
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
    sqlite3_bind_int64(ppStmt, 1, a3);
    sqlite3_bind_int64(ppStmt, 2, a4);
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

- (id)_handleIDsForMessage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WLMessagesMigrator *)self _uniqueHandleStringsWithMessage:v4];
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
        v20 = self;
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
          v12 = [(WLMessagesMigrator *)self _serviceStringWithMessage:v4];
          sqlite3_bind_text(v11, 3, [v12 UTF8String], -1, 0);

          v13 = pStmt;
          v14 = [(WLMessagesMigrator *)self _uncanonicalizedIDWithMessage:v4];
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
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{insert_rowid, v20, v21, v22, v23}];
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

- (id)_uniqueHandleStringsWithMessage:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ([v4 isGroupMessage])
  {
    if ([v4 messageDirection] == 1)
    {
      v6 = [v4 sender];

      if (v6)
      {
        v7 = [v4 sender];
        v8 = [v7 address];
        v9 = [v8 length];

        if (!v9)
        {
          _WLLog();
          goto LABEL_19;
        }

        v10 = [v4 sender];
        v11 = [v10 address];
        [v5 addObject:v11];
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [v4 recipients];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        v18 = [v17 address];
        v19 = [v18 length];

        if (!v19)
        {
          goto LABEL_18;
        }

        v20 = [v17 address];
        [v5 addObject:v20];

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v14)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

LABEL_17:

    v21 = [v5 array];
    goto LABEL_20;
  }

  v12 = [(WLMessagesMigrator *)self _otherPartyAddressWithNonGroupMessage:v4];
  if ([v12 length])
  {
    [v5 addObject:v12];
    goto LABEL_17;
  }

LABEL_18:
  _WLLog();

LABEL_19:
  v21 = 0;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (int64_t)_senderHandleIDFromReceivedGroupMessageHandleIDs:(id)a3
{
  v3 = [a3 objectAtIndexedSubscript:0];
  v4 = [v3 longLongValue];

  return v4;
}

- (int64_t)_handleIDFromNonGroupMessageHandleIDs:(id)a3
{
  v3 = [a3 objectAtIndexedSubscript:0];
  v4 = [v3 longLongValue];

  return v4;
}

- (int64_t)_chatIDForHandleIDs:(id)a3 groupRoomName:(id)a4 groupID:(id)a5 message:(id)a6
{
  v77 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v13 isGroupMessage])
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

  v16 = [v13 isGroupMessage];
  v17 = ppStmt;
  if (v16)
  {
    sqlite3_bind_text(ppStmt, 1, [v11 UTF8String], -1, 0);
  }

  else
  {
    v18 = [(WLMessagesMigrator *)self _chatIdentifierWithNonGroupMessage:v13];
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
    v53 = self;
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
      if ([v13 isGroupMessage])
      {
        [(WLMessagesMigrator *)self _chatGUIDWithGroupRoomName:v11];
      }

      else
      {
        [(WLMessagesMigrator *)self _chatGUIDWithNonGroupMessage:v13];
      }
      v26 = ;
      sqlite3_bind_text(pStmt, 1, [v26 UTF8String], -1, 0);
      sqlite3_bind_int(pStmt, 2, [(WLMessagesMigrator *)self _chatStyleWithMessage:v13]);
      sqlite3_bind_int(pStmt, 3, [(WLMessagesMigrator *)self _chatStateWithMessage:v13]);
      v27 = pStmt;
      v28 = [(WLMessagesMigrator *)self _chatAccountIDWithMessage:v13];
      sqlite3_bind_text(v27, 4, [v28 UTF8String], -1, 0);

      v64 = [(WLMessagesMigrator *)self _chatPropertiesDataWithMessage:v13];
      sqlite3_bind_blob(pStmt, 5, [v64 bytes], objc_msgSend(v64, "length"), 0);
      v29 = [v13 isGroupMessage];
      v30 = pStmt;
      if (v29)
      {
        sqlite3_bind_text(pStmt, 6, [v11 UTF8String], -1, 0);
      }

      else
      {
        v31 = [(WLMessagesMigrator *)self _chatIdentifierWithNonGroupMessage:v13];
        sqlite3_bind_text(v30, 6, [v31 UTF8String], -1, 0);
      }

      v32 = pStmt;
      v33 = [(WLMessagesMigrator *)self _chatServiceWithMessage:v13, v53, v55, v57, v59];
      sqlite3_bind_text(v32, 7, [v33 UTF8String], -1, 0);

      if ([v13 isGroupMessage])
      {
        sqlite3_bind_text(pStmt, 8, [v11 UTF8String], -1, 0);
      }

      else
      {
        sqlite3_bind_null(pStmt, 8);
      }

      v34 = pStmt;
      v35 = [(WLMessagesMigrator *)self _chatAccountLoginWithMessage:v13];
      sqlite3_bind_text(v34, 9, [v35 UTF8String], -1, 0);

      v36 = pStmt;
      v37 = [(WLMessagesMigrator *)self _chatLastAddressedHandleWithMessage:v13];
      sqlite3_bind_text(v36, 10, [v37 UTF8String], -1, 0);

      v38 = pStmt;
      v39 = [(WLMessagesMigrator *)self _chatDisplayNameWithMessage:v13];
      sqlite3_bind_text(v38, 11, [v39 UTF8String], -1, 0);

      v40 = [v13 isGroupMessage];
      v41 = pStmt;
      if (v40)
      {
        sqlite3_bind_text(pStmt, 12, [v12 UTF8String], -1, 0);
      }

      else
      {
        v42 = [(WLMessagesMigrator *)self _chatGroupIDWithNonGroupMessage:v13];
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
        v54 = self;
        _WLLog();
        insert_rowid = -1;
      }

      sqlite3_finalize(pStmt);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v43 = v10;
      v44 = [v43 countByEnumeratingWithState:&v69 objects:v76 count:16];
      if (v44)
      {
        v45 = v44;
        v60 = v26;
        v62 = v11;
        v46 = v12;
        v47 = v10;
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
        v10 = v47;
        v12 = v46;
        v11 = v62;
        v26 = v60;
      }
    }
  }

  else if ([v13 isGroupMessage])
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v20)
    {
      v21 = v20;
      v61 = v11;
      v63 = v12;
      v22 = v10;
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
      v10 = v22;
      v11 = v61;
      v12 = v63;
    }
  }

  v51 = *MEMORY[0x277D85DE8];
  return insert_rowid;
}

- (id)_chatGUIDWithNonGroupMessage:(id)a3
{
  v3 = [(WLMessagesMigrator *)self _otherPartyAddressWithNonGroupMessage:a3];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SMS-;%@", v3];;

  return v4;
}

- (int64_t)_chatStyleWithMessage:(id)a3
{
  if ([a3 isGroupMessage])
  {
    return 43;
  }

  else
  {
    return 45;
  }
}

- (id)_chatAccountLoginWithMessage:(id)a3
{
  v3 = [(WLMessagesMigrator *)self _ourAddressWithMessage:a3];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"P:%@", v3];

  return v4;
}

- (int64_t)_insertMessageRowWithMessage:(id)a3 handleIDs:(id)a4 groupRoomName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, "INSERT INTO message (guid, text, service_center, handle_id, subject, country, attributedBody, version, service, account, account_guid, error, date, date_read, date_delivered, is_finished, is_from_me, cache_roomnames, was_data_detected, date_played, group_title, is_read, is_sent) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
    insert_rowid = -1;
    goto LABEL_15;
  }

  v12 = [MEMORY[0x277CCACA8] wl_uniqueIdentifier];
  sqlite3_bind_text(ppStmt, 1, [v12 UTF8String], -1, 0);
  v13 = ppStmt;
  v14 = [v8 messageText];
  sqlite3_bind_text(v13, 2, [v14 UTF8String], -1, 0);

  v15 = ppStmt;
  v16 = [(WLMessagesMigrator *)self _messageServiceCenterWithMessage:v8];
  sqlite3_bind_text(v15, 3, [v16 UTF8String], -1, 0);

  if ([v8 isGroupMessage])
  {
    if (![v8 messageDirection])
    {
      v18 = 0;
      goto LABEL_8;
    }

    v17 = [(WLMessagesMigrator *)self _senderHandleIDFromReceivedGroupMessageHandleIDs:v9];
  }

  else
  {
    v17 = [(WLMessagesMigrator *)self _handleIDFromNonGroupMessageHandleIDs:v9];
  }

  v18 = v17;
LABEL_8:
  sqlite3_bind_int64(ppStmt, 4, v18);
  v19 = ppStmt;
  v20 = [(WLMessagesMigrator *)self _messageSubjectWithMessage:v8];
  sqlite3_bind_text(v19, 5, [v20 UTF8String], -1, 0);

  sqlite3_bind_null(ppStmt, 6);
  v21 = [(WLMessagesMigrator *)self _messageAttributedBodyDataWithMessage:v8];
  sqlite3_bind_blob(ppStmt, 7, [v21 bytes], objc_msgSend(v21, "length"), 0);
  sqlite3_bind_int(ppStmt, 8, [(WLMessagesMigrator *)self _messageVersionWithMessage:v8]);
  v22 = ppStmt;
  v23 = [(WLMessagesMigrator *)self _messageServiceWithMessage:v8];
  sqlite3_bind_text(v22, 9, [v23 UTF8String], -1, 0);

  v24 = ppStmt;
  v25 = [(WLMessagesMigrator *)self _messageAccountWithMessage:v8];
  sqlite3_bind_text(v24, 10, [v25 UTF8String], -1, 0);

  v26 = ppStmt;
  v27 = [(WLMessagesMigrator *)self _messageAccountGUIDWithMessage:v8];
  sqlite3_bind_text(v26, 11, [v27 UTF8String], -1, 0);

  sqlite3_bind_int(ppStmt, 12, [(WLMessagesMigrator *)self _messageErrorWithMessage:v8]);
  sqlite3_bind_int64(ppStmt, 13, [(WLMessagesMigrator *)self _messageDateWithMessage:v8]);
  sqlite3_bind_int64(ppStmt, 14, [(WLMessagesMigrator *)self _messageDateReadWithMessage:v8]);
  sqlite3_bind_int64(ppStmt, 15, [(WLMessagesMigrator *)self _messageDateDeliveredWithMessage:v8]);
  sqlite3_bind_int(ppStmt, 16, 1);
  sqlite3_bind_int(ppStmt, 17, [(WLMessagesMigrator *)self _messageIsFromMeWithMessage:v8]);
  if ([v8 isGroupMessage])
  {
    sqlite3_bind_text(ppStmt, 18, [v10 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(ppStmt, 18);
  }

  sqlite3_bind_int(ppStmt, 19, 1);
  sqlite3_bind_int(ppStmt, 20, 0);
  v28 = ppStmt;
  v29 = [(WLMessagesMigrator *)self _messageGroupTitleWithMessage:v8];
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

- (id)_messageAttributedBodyDataWithMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCA898]);
  v5 = [v3 messageText];
  v6 = [v4 initWithString:v5];

  v7 = [v3 attachments];
  v8 = [v7 count];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v10 = [v3 attachments];
    v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [v3 attachments];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v23 + 1) + 8 * i) guid];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (id)_messageAccountWithMessage:(id)a3
{
  v3 = [(WLMessagesMigrator *)self _ourAddressWithMessage:a3];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"p:%@", v3];

  return v4;
}

- (int64_t)_messageDateWithMessage:(id)a3
{
  v3 = [a3 date];
  [v3 timeIntervalSinceReferenceDate];
  v5 = (v4 * 1000000000.0);

  return v5;
}

- (int64_t)_messageDateReadWithMessage:(id)a3
{
  v3 = [a3 date];
  [v3 timeIntervalSinceReferenceDate];
  v5 = (v4 * 1000000000.0);

  return v5;
}

- (int64_t)_messageDateDeliveredWithMessage:(id)a3
{
  v3 = [a3 date];
  [v3 timeIntervalSinceReferenceDate];
  v5 = (v4 * 1000000000.0);

  return v5;
}

- (int64_t)_attachmentDateWithMessage:(id)a3
{
  v3 = [a3 date];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (BOOL)_insertChatMessageJoinRowWithChatID:(int64_t)a3 messageID:(int64_t)a4 date:(int64_t)a5
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
    sqlite3_bind_int64(ppStmt, 1, a3);
    sqlite3_bind_int64(ppStmt, 2, a4);
    sqlite3_bind_int64(ppStmt, 3, a5);
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

- (BOOL)_insertChatHandleJoinRowWithChatID:(int64_t)a3 handleID:(int64_t)a4 duplicateMightExist:(BOOL)a5
{
  if (a5)
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
    sqlite3_bind_int64(ppStmt, 1, a3);
    sqlite3_bind_int64(ppStmt, 2, a4);
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

- (BOOL)isValidTableName:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"_" withString:&stru_2882CBB40];
  v4 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v4];

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

- (void)deleteFromTable:(id)a3
{
  v4 = a3;
  if (![(WLMessagesMigrator *)self isValidTableName:v4])
  {
    goto LABEL_4;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@", v4];

  ppStmt = 0;
  v4 = v5;
  if (sqlite3_prepare(self->_database, [v5 UTF8String], -1, &ppStmt, 0))
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