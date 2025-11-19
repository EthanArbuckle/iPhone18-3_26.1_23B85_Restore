@interface UIActivityUserDefaults
@end

@implementation UIActivityUserDefaults

void __47___UIActivityUserDefaults_builtinActivityOrder__block_invoke()
{
  v2[17] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.UIKit.activity.AirDrop";
  v2[1] = @"com.apple.UIKit.activity.Message";
  v2[2] = @"com.apple.UIKit.activity.Mail";
  v2[3] = @"com.apple.UIKit.activity.SharePlay";
  v2[4] = @"com.apple.UIKit.activity.CollaborationInviteWithLink";
  v2[5] = @"com.apple.reminders.sharingextension";
  v2[6] = @"com.apple.mobilenotes.SharingExtension";
  v2[7] = @"com.apple.UIKit.activity.OpenInIBooks";
  v2[8] = @"com.apple.UIKit.activity.CollaborationCopyLink";
  v2[9] = @"com.apple.UIKit.activity.CopyToPasteboard";
  v2[10] = @"com.apple.UIKit.activity.Share";
  v2[11] = @"com.apple.UIKit.activity.AddToReadingList";
  v2[12] = @"com.apple.UIKit.activity.SaveToCameraRoll";
  v2[13] = @"com.apple.UIKit.activity.AssignToContact";
  v2[14] = @"com.apple.UIKit.activity.MarkupAsPDF";
  v2[15] = @"com.apple.UIKit.activity.Print";
  v2[16] = @"com.apple.UIKit.activity.AddToHomeScreen";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:17];
  v1 = builtinActivityOrder_builtinActivityOrder;
  builtinActivityOrder_builtinActivityOrder = v0;
}

void __110___UIActivityUserDefaults_updatedActivityIdentifiersUserOrderWithPreviousOrder_someSortedActivityIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) addIndex:a3];
    [*(a1 + 32) removeObject:v7];
    if (![*(a1 + 32) count])
    {
      *a4 = 1;
    }
  }
}

void __110___UIActivityUserDefaults_updatedActivityIdentifiersUserOrderWithPreviousOrder_someSortedActivityIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  ++*(*(*(a1 + 48) + 8) + 24);
  v5 = [v4 objectAtIndexedSubscript:?];
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a2];

  *(*(*(a1 + 56) + 8) + 24) = a2 + 1;
}

@end