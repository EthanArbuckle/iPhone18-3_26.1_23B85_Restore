@interface BRCBounceIncident
- (id)description;
@end

@implementation BRCBounceIncident

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  itemID = self->_itemID;
  bounceReason = self->_bounceReason;
  if (bounceReason > 299)
  {
    if (bounceReason <= 402)
    {
      if (bounceReason > 400)
      {
        if (bounceReason == 401)
        {
          v6 = @"FPFS_MIGRATION_FINISHED";
        }

        else
        {
          v6 = @"FPFS_MIGRATION_STATUS_REPORT";
        }
      }

      else if (bounceReason == 300)
      {
        v6 = @"INITIAL_SCAN_REJECTED_MISMATCH_TYPE";
      }

      else if (bounceReason == 400)
      {
        v6 = @"FPFS_MIGRATION_STARTED";
      }

      else
      {
LABEL_40:
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_bounceReason];
      }
    }

    else
    {
      switch(bounceReason)
      {
        case 500:
          v6 = @"ITEM_BOUNCE_APPLY_NEW_WITH_EXISTING";
          break;
        case 501:
          v6 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_NEW";
          break;
        case 502:
          v6 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_EXISTING";
          break;
        case 503:
          v6 = @"ITEM_BOUNCE_BY_SERVER";
          break;
        case 504:
          v6 = @"ITEM_BOUNCE_CREATE_ITEM_WITH_EXISTING";
          break;
        case 505:
          v6 = @"ITEM_BOUNCE_CHANGE_ITEM_WITH_EXISTING";
          break;
        case 506:
          v6 = @"ITEM_BOUNCE_SHARE_ACCEPT_EXISTING_WITH_NEW";
          break;
        case 507:
          v6 = @"ITEM_BOUNCE_SHARE_ACCEPT_NEW_WITH_EXISTING";
          break;
        case 508:
          v6 = @"ITEM_BOUNCE_TRASHED_ITEM";
          break;
        case 509:
          v6 = @"ITEM_BOUNCE_ITEM_DIRECTORY_MERGE";
          break;
        case 510:
          v6 = @"ITEM_BOUNCE_NEW_DIRECTORY_WITH_EXISTING";
          break;
        case 511:
          v6 = @"ITEM_BOUNCE_EXISTING_WITH_NEW_DIRECTORY";
          break;
        case 512:
          v6 = @"ITEM_BOUNCE_ITEM_WITH_DOCUMENTS_FOLDER";
          break;
        case 513:
          v6 = @"ITEM_BOUNCE_APPLY_DEAD_EXISTING_WITH_NEW";
          break;
        case 514:
          v6 = @"ITEM_BOUNCE_APPLY_NOT_KNOWN_BY_SERVER_WITH_NEW";
          break;
        case 515:
          v6 = @"ITEM_BOUNCE_APPLY_LOCAL_DIFF_REPARENT_WITH_NEW";
          break;
        case 516:
          v6 = @"ITEM_BOUNCE_APPLY_LOCAL_DIFF_FILE_NAME_WITH_NEW";
          break;
        case 517:
          v6 = @"ITEM_BOUNCE_APPLY_INITIAL_SCAN_WITH_NEW";
          break;
        case 518:
          v6 = @"ITEM_BOUNCE_APPLY_SHARED_ITEM_WITH_NEW_SHARED_ITEM_UNTITLED_FILE_NAME";
          break;
        case 519:
          v6 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_NEW_UNTITLED_FILE_NAME";
          break;
        default:
          if (bounceReason == 403)
          {
            v6 = @"FPFS_MIGRATION_NON_MIGRATED_ITEM_REPORT";
          }

          else
          {
            if (bounceReason != 404)
            {
              goto LABEL_40;
            }

            v6 = @"FPFS_MIGRATION_STUCK_STATUS";
          }

          break;
      }
    }
  }

  else
  {
    v6 = @"UNKNOWN";
    v7 = self->_bounceReason;
    switch(bounceReason)
    {
      case 0:
        break;
      case 1:
        v6 = @"_UNUSED_SYNC_UP_BACKOFF_RATIO";
        break;
      case 2:
        v6 = @"FOLDER_SHARING_ITEM_COUNT_MISMATCH";
        break;
      case 3:
        v6 = @"MISSING_PUSH";
        break;
      case 4:
        v6 = @"PERMANENTLY_INCONSISTENT";
        break;
      case 5:
        v6 = @"DROPPED_EVENTS";
        break;
      case 6:
        v6 = @"TEST_METRIC";
        break;
      case 7:
        v6 = @"SHARE_ALIAS_IN_SHARED_FOLDER";
        break;
      case 8:
        v6 = @"MALIGNANT_ZONE_RESET";
        break;
      case 9:
        v6 = @"BENIGN_ZONE_RESET";
        break;
      case 10:
        v6 = @"DB_RESET";
        break;
      case 11:
        v6 = @"APPLY_SCHEDULER_MISSING_JOBS";
        break;
      case 12:
        v6 = @"SYNC_UP_MISSING_JOBS";
        break;
      case 13:
        v6 = @"READER_MISSING_JOBS";
        break;
      case 14:
        v6 = @"UPLOADER_MISSING_JOBS";
        break;
      case 15:
        v6 = @"DOWNLOADER_MISSING_JOBS";
        break;
      case 16:
        v6 = @"_UNUSED_SYNC_UP_BACKOFF_DELAY";
        break;
      case 17:
        v6 = @"FOLDER_SHARING_PCS_CHAINING";
        break;
      case 18:
        v6 = @"NEW_SHARE_ACCEPTATION";
        break;
      case 19:
        v6 = @"FS_EVENT_TO_SYNC_UP";
        break;
      case 20:
        v6 = @"USER_DOWNLOAD";
        break;
      case 21:
        v6 = @"CORRUPT_PACKAGE_DOWNLOAD";
        break;
      case 22:
        v6 = @"DIRECTORY_MISSING_CHAINPCS";
        break;
      case 23:
        v6 = @"SYNC_BOOSTING_PROBLEM_COUNT";
        break;
      case 24:
        v6 = @"DEEP_SCAN";
        break;
      case 25:
        v6 = @"OPERATION_TIMED_OUT";
        break;
      case 26:
        v6 = @"MISSING_SHARE_ALIAS";
        break;
      case 27:
        v6 = @"ASSET_CONTENT_NOT_FOUND";
        break;
      case 28:
        v6 = @"QBS_DIR_FAULT_COUNT";
        break;
      case 29:
        v6 = @"FILE_BOUNCED_MANY_TIMES";
        break;
      case 30:
        v6 = @"SYNC_UP_BACKOFF_RATIO_SUMMARY";
        break;
      case 31:
        v6 = @"SYNC_UP_BACKOFF_DELAY_SUMMARY";
        break;
      case 32:
        v6 = @"QBS_PERFORMANCE";
        break;
      case 33:
        v6 = @"ACCOUNT_SESSION_OPEN_ERROR";
        break;
      case 34:
        v6 = @"CORRUPT_SHARING_OPTIONS";
        break;
      case 35:
        v6 = @"INCORRECT_CONTENT_POLICY_COUNT";
        break;
      case 36:
        v6 = @"CORRUPT_BASEHASH_SALT_COUNT";
        break;
      case 37:
        v6 = @"EDP_KEYS_MISMATCH";
        break;
      case 38:
        v6 = @"DATABASE_ID_MISMATCH";
        break;
      case 39:
        v6 = @"COLLABORATION_UPLOAD";
        break;
      case 40:
        v6 = @"DANGLING_ZOMBIE_DIRECTORY_COUNT";
        break;
      case 41:
        v6 = @"RECORD_VALUE_ERROR";
        break;
      case 42:
        v6 = @"AGGRESSIVE_SALTING";
        break;
      case 43:
        v6 = @"REIMPORT_DOMAIN_FAILED_ON_STARTUP";
        break;
      case 44:
        v6 = @"EXCEEDED_UPLOADS_ON_CELLULAR";
        break;
      case 45:
        v6 = @"PRECENTAGE_OF_BYTES_UPLOADED_FOR_BATCH";
        break;
      case 46:
        v6 = @"BOUNCED_DOCUMENTS_DIRECTORY_COUNT";
        break;
      case 47:
        v6 = @"SAVE_SHARE_ERROR";
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
        goto LABEL_40;
      case 49:
        v6 = @"MISSING_PUSH_V2";
        break;
      case 100:
        v6 = @"FULLY_CONSISTENT";
        break;
      case 101:
        v6 = @"FILE_CHECKSUM_MISMATCH";
        break;
      case 102:
        v6 = @"PACKAGE_CHECKSUM_MISMATCH";
        break;
      case 103:
        v6 = @"CHILD_COUNT_MISMATCH";
        break;
      case 104:
        v6 = @"RECURSIVE_ITEM_COUNT_MISMATCH";
        break;
      case 105:
        v6 = @"SHARE_ALIAS_COUNT_MISMATCH";
        break;
      case 106:
        v6 = @"SHARE_COUNT_MISMATCH";
        break;
      case 107:
        v6 = @"CONSISTENCY_CHECKER_FAILED";
        break;
      case 108:
        v6 = @"FILE_READ_ERROR";
        break;
      default:
        switch(bounceReason)
        {
          case 200:
            v6 = @"CA_TOTAL_ERROR_COUNT";
            break;
          case 201:
            v6 = @"CA_UPLOAD_ERROR_COUNT";
            break;
          case 202:
            v6 = @"CA_DOWNLOAD_ERROR_COUNT";
            break;
          case 203:
            v6 = @"CA_SYNC_UP_ITEM_ERROR_COUNT";
            break;
          case 204:
            v6 = @"CA_SYNC_UP_ZONE_ERROR_COUNT";
            break;
          case 205:
            v6 = @"CA_SYNC_DOWN_ERROR_COUNT";
            break;
          case 210:
            v6 = @"CA_UPLOAD_ERROR";
            break;
          case 211:
            v6 = @"CA_DOWNLOAD_ERROR";
            break;
          case 212:
            v6 = @"CA_SYNC_UP_ITEM_ERROR";
            break;
          case 213:
            v6 = @"CA_SYNC_UP_ZONE_ERROR";
            break;
          case 214:
            v6 = @"CA_SYNC_DOWN_ERROR";
            break;
          case 215:
            v6 = @"CA_DAMAGED_FILE_UPLOAD_ERROR";
            break;
          case 216:
            v6 = @"CA_NIL_APP_LIBRARY";
            break;
          case 217:
            v6 = @"DANGLING_SHARE_REQUESTERS";
            break;
          default:
            goto LABEL_40;
        }

        break;
    }
  }

  v8 = [v3 stringWithFormat:@"Item ID: %@, Bounce reason: %@, Last Editor Device Name: %@", itemID, v6, self->_lastEditorDeviceName];

  return v8;
}

@end