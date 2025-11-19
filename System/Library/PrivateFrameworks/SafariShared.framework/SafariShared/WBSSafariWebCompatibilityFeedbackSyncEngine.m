@interface WBSSafariWebCompatibilityFeedbackSyncEngine
+ (id)stringForCategory:(int64_t)a3;
+ (id)stringForSubCategory:(int64_t)a3;
+ (id)subCategoriesForIssueCategory:(int64_t)a3;
+ (id)telemetryStringForCategory:(int64_t)a3;
+ (id)telemetryStringForSubCategory:(int64_t)a3;
- (WBSSafariWebCompatibilityFeedbackSyncEngine)init;
- (void)saveWebCompatibilityFeedback:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSSafariWebCompatibilityFeedbackSyncEngine

- (WBSSafariWebCompatibilityFeedbackSyncEngine)init
{
  v7.receiver = self;
  v7.super_class = WBSSafariWebCompatibilityFeedbackSyncEngine;
  v2 = [(WBSSafariWebCompatibilityFeedbackSyncEngine *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WBSSafariWebCompatibilityFeedbackSyncEngine.internalQueue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)stringForCategory:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (a3 > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a3 == 2 || a3 == 3)
  {
LABEL_6:
    a1 = _WBSLocalizedString();
  }

LABEL_7:

  return a1;
}

+ (id)telemetryStringForCategory:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Site is not usable";
  }

  else
  {
    return off_1E7FC46D8[a3 - 1];
  }
}

+ (id)subCategoriesForIssueCategory:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1E7FC46F0[a3];
  }
}

+ (id)stringForSubCategory:(int64_t)a3
{
  switch(a3)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
      v4 = _WBSLocalizedString();

      break;
    default:
      v4 = 0;

      break;
  }

  return v4;
}

+ (id)telemetryStringForSubCategory:(int64_t)a3
{
  if ((a3 - 1) > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E7FC4708[a3 - 1];
  }
}

- (void)saveWebCompatibilityFeedback:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__WBSSafariWebCompatibilityFeedbackSyncEngine_saveWebCompatibilityFeedback_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB6F08;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, v11);
}

void __94__WBSSafariWebCompatibilityFeedbackSyncEngine_saveWebCompatibilityFeedback_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncWebCompatibilityFeedbackUp:*(a1 + 32) withCompletion:*(a1 + 40)];
}

@end