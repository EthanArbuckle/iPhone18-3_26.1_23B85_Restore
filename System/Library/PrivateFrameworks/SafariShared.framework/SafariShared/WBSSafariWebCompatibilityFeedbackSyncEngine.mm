@interface WBSSafariWebCompatibilityFeedbackSyncEngine
+ (id)stringForCategory:(int64_t)category;
+ (id)stringForSubCategory:(int64_t)category;
+ (id)subCategoriesForIssueCategory:(int64_t)category;
+ (id)telemetryStringForCategory:(int64_t)category;
+ (id)telemetryStringForSubCategory:(int64_t)category;
- (WBSSafariWebCompatibilityFeedbackSyncEngine)init;
- (void)saveWebCompatibilityFeedback:(id)feedback completionHandler:(id)handler;
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

+ (id)stringForCategory:(int64_t)category
{
  if (category <= 1)
  {
    if (category > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (category == 2 || category == 3)
  {
LABEL_6:
    self = _WBSLocalizedString();
  }

LABEL_7:

  return self;
}

+ (id)telemetryStringForCategory:(int64_t)category
{
  if ((category - 1) > 2)
  {
    return @"Site is not usable";
  }

  else
  {
    return off_1E7FC46D8[category - 1];
  }
}

+ (id)subCategoriesForIssueCategory:(int64_t)category
{
  if (category > 2)
  {
    return 0;
  }

  else
  {
    return qword_1E7FC46F0[category];
  }
}

+ (id)stringForSubCategory:(int64_t)category
{
  switch(category)
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

+ (id)telemetryStringForSubCategory:(int64_t)category
{
  if ((category - 1) > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E7FC4708[category - 1];
  }
}

- (void)saveWebCompatibilityFeedback:(id)feedback completionHandler:(id)handler
{
  feedbackCopy = feedback;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__WBSSafariWebCompatibilityFeedbackSyncEngine_saveWebCompatibilityFeedback_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB6F08;
  v12 = feedbackCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = feedbackCopy;
  dispatch_async(internalQueue, v11);
}

void __94__WBSSafariWebCompatibilityFeedbackSyncEngine_saveWebCompatibilityFeedback_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncWebCompatibilityFeedbackUp:*(a1 + 32) withCompletion:*(a1 + 40)];
}

@end