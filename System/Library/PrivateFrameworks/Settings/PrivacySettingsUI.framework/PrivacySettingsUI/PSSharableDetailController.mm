@interface PSSharableDetailController
- (void)shareLog;
@end

@implementation PSSharableDetailController

- (void)shareLog
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(PSSharableDetailController *)self specifier];
  v4 = [v3 propertyForKey:*MEMORY[0x277D3F908]];

  if ([v4 length])
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:0];
    v6 = objc_alloc(MEMORY[0x277D546D8]);
    v17[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v8 = [v6 initWithActivityItems:v7 applicationActivities:0];

    v9 = *MEMORY[0x277D54740];
    v16[0] = *MEMORY[0x277D54718];
    v16[1] = v9;
    v10 = *MEMORY[0x277D54780];
    v16[2] = *MEMORY[0x277D54708];
    v16[3] = v10;
    v16[4] = *MEMORY[0x277D54778];
    v16[5] = @"com.apple.mobilenotes.SharingExtension";
    v16[6] = @"com.apple.reminders.RemindersEditorExtension";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:7];
    [v8 setExcludedActivityTypes:v11];

    v12 = [(PSSharableDetailController *)self navigationItem];
    v13 = [v12 rightBarButtonItem];
    v14 = [v8 popoverPresentationController];
    [v14 setBarButtonItem:v13];

    [(PSSharableDetailController *)self presentViewController:v8 animated:1 completion:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end