@interface BRCAppTelemetryConverter
- (id)dictionaryRepresentationFromEvent:(id)event;
- (id)fixupValue:(id)value forKey:(id)key;
- (void)_fixupEventDataWithEvent:(id)event;
- (void)_payloadFromEventDictionary:(id)dictionary dictionary:(id)a4;
@end

@implementation BRCAppTelemetryConverter

- (id)fixupValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![keyCopy isEqualToString:@"telemetrySchema"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:valueCopy encoding:4];
      if (v8)
      {
        goto LABEL_10;
      }
    }

    v9 = valueCopy;
LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  integerValue = [valueCopy integerValue];
  if (integerValue <= 299)
  {
    v8 = @"UNKNOWN";
    switch(integerValue)
    {
      case 0:
        goto LABEL_10;
      case 1:
        v8 = @"_UNUSED_SYNC_UP_BACKOFF_RATIO";
        break;
      case 2:
        v8 = @"FOLDER_SHARING_ITEM_COUNT_MISMATCH";
        break;
      case 3:
        v8 = @"MISSING_PUSH";
        break;
      case 4:
        v8 = @"PERMANENTLY_INCONSISTENT";
        break;
      case 5:
        v8 = @"DROPPED_EVENTS";
        break;
      case 6:
        v8 = @"TEST_METRIC";
        break;
      case 7:
        v8 = @"SHARE_ALIAS_IN_SHARED_FOLDER";
        break;
      case 8:
        v8 = @"MALIGNANT_ZONE_RESET";
        break;
      case 9:
        v8 = @"BENIGN_ZONE_RESET";
        break;
      case 10:
        v8 = @"DB_RESET";
        break;
      case 11:
        v8 = @"APPLY_SCHEDULER_MISSING_JOBS";
        break;
      case 12:
        v8 = @"SYNC_UP_MISSING_JOBS";
        break;
      case 13:
        v8 = @"READER_MISSING_JOBS";
        break;
      case 14:
        v8 = @"UPLOADER_MISSING_JOBS";
        break;
      case 15:
        v8 = @"DOWNLOADER_MISSING_JOBS";
        break;
      case 16:
        v8 = @"_UNUSED_SYNC_UP_BACKOFF_DELAY";
        break;
      case 17:
        v8 = @"FOLDER_SHARING_PCS_CHAINING";
        break;
      case 18:
        v8 = @"NEW_SHARE_ACCEPTATION";
        break;
      case 19:
        v8 = @"FS_EVENT_TO_SYNC_UP";
        break;
      case 20:
        v8 = @"USER_DOWNLOAD";
        break;
      case 21:
        v8 = @"CORRUPT_PACKAGE_DOWNLOAD";
        break;
      case 22:
        v8 = @"DIRECTORY_MISSING_CHAINPCS";
        break;
      case 23:
        v8 = @"SYNC_BOOSTING_PROBLEM_COUNT";
        break;
      case 24:
        v8 = @"DEEP_SCAN";
        break;
      case 25:
        v8 = @"OPERATION_TIMED_OUT";
        break;
      case 26:
        v8 = @"MISSING_SHARE_ALIAS";
        break;
      case 27:
        v8 = @"ASSET_CONTENT_NOT_FOUND";
        break;
      case 28:
        v8 = @"QBS_DIR_FAULT_COUNT";
        break;
      case 29:
        v8 = @"FILE_BOUNCED_MANY_TIMES";
        break;
      case 30:
        v8 = @"SYNC_UP_BACKOFF_RATIO_SUMMARY";
        break;
      case 31:
        v8 = @"SYNC_UP_BACKOFF_DELAY_SUMMARY";
        break;
      case 32:
        v8 = @"QBS_PERFORMANCE";
        break;
      case 33:
        v8 = @"ACCOUNT_SESSION_OPEN_ERROR";
        break;
      case 34:
        v8 = @"CORRUPT_SHARING_OPTIONS";
        break;
      case 35:
        v8 = @"INCORRECT_CONTENT_POLICY_COUNT";
        break;
      case 36:
        v8 = @"CORRUPT_BASEHASH_SALT_COUNT";
        break;
      case 37:
        v8 = @"EDP_KEYS_MISMATCH";
        break;
      case 38:
        v8 = @"DATABASE_ID_MISMATCH";
        break;
      case 39:
        v8 = @"COLLABORATION_UPLOAD";
        break;
      case 40:
        v8 = @"DANGLING_ZOMBIE_DIRECTORY_COUNT";
        break;
      case 41:
        v8 = @"RECORD_VALUE_ERROR";
        break;
      case 42:
        v8 = @"AGGRESSIVE_SALTING";
        break;
      case 43:
        v8 = @"REIMPORT_DOMAIN_FAILED_ON_STARTUP";
        break;
      case 44:
        v8 = @"EXCEEDED_UPLOADS_ON_CELLULAR";
        break;
      case 45:
        v8 = @"PRECENTAGE_OF_BYTES_UPLOADED_FOR_BATCH";
        break;
      case 46:
        v8 = @"BOUNCED_DOCUMENTS_DIRECTORY_COUNT";
        break;
      case 47:
        v8 = @"SAVE_SHARE_ERROR";
        break;
      case 48:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
        goto LABEL_49;
      case 49:
        v8 = @"MISSING_PUSH_V2";
        break;
      case 100:
        v8 = @"FULLY_CONSISTENT";
        break;
      case 101:
        v8 = @"FILE_CHECKSUM_MISMATCH";
        break;
      case 102:
        v8 = @"PACKAGE_CHECKSUM_MISMATCH";
        break;
      case 103:
        v8 = @"CHILD_COUNT_MISMATCH";
        break;
      case 104:
        v8 = @"RECURSIVE_ITEM_COUNT_MISMATCH";
        break;
      case 105:
        v8 = @"SHARE_ALIAS_COUNT_MISMATCH";
        break;
      case 106:
        v8 = @"SHARE_COUNT_MISMATCH";
        break;
      case 107:
        v8 = @"CONSISTENCY_CHECKER_FAILED";
        break;
      case 108:
        v8 = @"FILE_READ_ERROR";
        break;
      default:
        switch(integerValue)
        {
          case 200:
            v8 = @"CA_TOTAL_ERROR_COUNT";
            break;
          case 201:
            v8 = @"CA_UPLOAD_ERROR_COUNT";
            break;
          case 202:
            v8 = @"CA_DOWNLOAD_ERROR_COUNT";
            break;
          case 203:
            v8 = @"CA_SYNC_UP_ITEM_ERROR_COUNT";
            break;
          case 204:
            v8 = @"CA_SYNC_UP_ZONE_ERROR_COUNT";
            break;
          case 205:
            v8 = @"CA_SYNC_DOWN_ERROR_COUNT";
            break;
          case 210:
            v8 = @"CA_UPLOAD_ERROR";
            break;
          case 211:
            v8 = @"CA_DOWNLOAD_ERROR";
            break;
          case 212:
            v8 = @"CA_SYNC_UP_ITEM_ERROR";
            break;
          case 213:
            v8 = @"CA_SYNC_UP_ZONE_ERROR";
            break;
          case 214:
            v8 = @"CA_SYNC_DOWN_ERROR";
            break;
          case 215:
            v8 = @"CA_DAMAGED_FILE_UPLOAD_ERROR";
            break;
          case 216:
            v8 = @"CA_NIL_APP_LIBRARY";
            break;
          case 217:
            v8 = @"DANGLING_SHARE_REQUESTERS";
            break;
          default:
            goto LABEL_49;
        }

        break;
    }

    goto LABEL_10;
  }

  if (integerValue <= 402)
  {
    if (integerValue > 400)
    {
      if (integerValue == 401)
      {
        v8 = @"FPFS_MIGRATION_FINISHED";
      }

      else
      {
        v8 = @"FPFS_MIGRATION_STATUS_REPORT";
      }

      goto LABEL_10;
    }

    if (integerValue == 300)
    {
      v8 = @"INITIAL_SCAN_REJECTED_MISMATCH_TYPE";
      goto LABEL_10;
    }

    if (integerValue == 400)
    {
      v8 = @"FPFS_MIGRATION_STARTED";
      goto LABEL_10;
    }

LABEL_49:
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", integerValue];
    goto LABEL_9;
  }

  switch(integerValue)
  {
    case 500:
      v8 = @"ITEM_BOUNCE_APPLY_NEW_WITH_EXISTING";
      break;
    case 501:
      v8 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_NEW";
      break;
    case 502:
      v8 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_EXISTING";
      break;
    case 503:
      v8 = @"ITEM_BOUNCE_BY_SERVER";
      break;
    case 504:
      v8 = @"ITEM_BOUNCE_CREATE_ITEM_WITH_EXISTING";
      break;
    case 505:
      v8 = @"ITEM_BOUNCE_CHANGE_ITEM_WITH_EXISTING";
      break;
    case 506:
      v8 = @"ITEM_BOUNCE_SHARE_ACCEPT_EXISTING_WITH_NEW";
      break;
    case 507:
      v8 = @"ITEM_BOUNCE_SHARE_ACCEPT_NEW_WITH_EXISTING";
      break;
    case 508:
      v8 = @"ITEM_BOUNCE_TRASHED_ITEM";
      break;
    case 509:
      v8 = @"ITEM_BOUNCE_ITEM_DIRECTORY_MERGE";
      break;
    case 510:
      v8 = @"ITEM_BOUNCE_NEW_DIRECTORY_WITH_EXISTING";
      break;
    case 511:
      v8 = @"ITEM_BOUNCE_EXISTING_WITH_NEW_DIRECTORY";
      break;
    case 512:
      v8 = @"ITEM_BOUNCE_ITEM_WITH_DOCUMENTS_FOLDER";
      break;
    case 513:
      v8 = @"ITEM_BOUNCE_APPLY_DEAD_EXISTING_WITH_NEW";
      break;
    case 514:
      v8 = @"ITEM_BOUNCE_APPLY_NOT_KNOWN_BY_SERVER_WITH_NEW";
      break;
    case 515:
      v8 = @"ITEM_BOUNCE_APPLY_LOCAL_DIFF_REPARENT_WITH_NEW";
      break;
    case 516:
      v8 = @"ITEM_BOUNCE_APPLY_LOCAL_DIFF_FILE_NAME_WITH_NEW";
      break;
    case 517:
      v8 = @"ITEM_BOUNCE_APPLY_INITIAL_SCAN_WITH_NEW";
      break;
    case 518:
      v8 = @"ITEM_BOUNCE_APPLY_SHARED_ITEM_WITH_NEW_SHARED_ITEM_UNTITLED_FILE_NAME";
      break;
    case 519:
      v8 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_NEW_UNTITLED_FILE_NAME";
      break;
    default:
      if (integerValue == 403)
      {
        v8 = @"FPFS_MIGRATION_NON_MIGRATED_ITEM_REPORT";
      }

      else
      {
        if (integerValue != 404)
        {
          goto LABEL_49;
        }

        v8 = @"FPFS_MIGRATION_STUCK_STATUS";
      }

      break;
  }

LABEL_10:

  return v8;
}

- (void)_payloadFromEventDictionary:(id)dictionary dictionary:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__BRCAppTelemetryConverter__payloadFromEventDictionary_dictionary___block_invoke;
  v8[3] = &unk_2785062F8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [dictionary enumerateKeysAndObjectsUsingBlock:v8];
}

void __67__BRCAppTelemetryConverter__payloadFromEventDictionary_dictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    [v7 _payloadFromEventDictionary:v5 dictionary:*(a1 + 40)];
  }

  else
  {
    v8 = [v7 fixupValue:v5 forKey:v9];

    [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];
    v5 = v8;
  }
}

- (void)_fixupEventDataWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy hasTimestamp])
  {
    [eventCopy setTimestamp:{60 * (objc_msgSend(eventCopy, "timestamp") / 0x3CuLL)}];
  }
}

- (id)dictionaryRepresentationFromEvent:(id)event
{
  eventCopy = event;
  [(BRCAppTelemetryConverter *)self _fixupEventDataWithEvent:eventCopy];
  dictionaryRepresentation = [eventCopy dictionaryRepresentation];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(BRCAppTelemetryConverter *)self _payloadFromEventDictionary:dictionaryRepresentation dictionary:dictionary];

  return dictionary;
}

@end