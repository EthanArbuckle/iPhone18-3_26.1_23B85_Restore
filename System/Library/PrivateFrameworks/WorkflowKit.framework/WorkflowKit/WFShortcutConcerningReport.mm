@interface WFShortcutConcerningReport
+ (NSDictionary)properties;
- (WFShortcutConcerningReport)initWithReason:(id)reason shortcutContent:(id)content;
@end

@implementation WFShortcutConcerningReport

- (WFShortcutConcerningReport)initWithReason:(id)reason shortcutContent:(id)content
{
  reasonCopy = reason;
  contentCopy = content;
  v9 = contentCopy;
  if (reasonCopy)
  {
    if (contentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFGalleryPage.m" lineNumber:614 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFGalleryPage.m" lineNumber:615 description:{@"Invalid parameter not satisfying: %@", @"shortcutContent"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = WFShortcutConcerningReport;
  v10 = [(WFShortcutConcerningReport *)&v18 init];
  if (v10)
  {
    v11 = [reasonCopy copy];
    reportReason = v10->_reportReason;
    v10->_reportReason = v11;

    objc_storeStrong(&v10->_shortcutContent, content);
    status = v10->_status;
    v10->_status = @"screen";

    v14 = v10;
  }

  return v10;
}

+ (NSDictionary)properties
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"reportMessage";
  v2 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v12[0] = v2;
  v11[1] = @"reportReason";
  v3 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v12[1] = v3;
  v11[2] = @"shortcut";
  v4 = [WFCloudKitItemProperty itemReferencePropertyWithName:@"shortcut" itemClass:objc_opt_class()];
  v12[2] = v4;
  v11[3] = @"shortcutContent";
  v5 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcuts.workflow-file"];
  v6 = [WFCloudKitItemProperty assetPropertyWithName:@"shortcutContent" fileType:v5];
  v12[3] = v6;
  v11[4] = @"status";
  v7 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end