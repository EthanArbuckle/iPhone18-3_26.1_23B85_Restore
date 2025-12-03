@interface PBFClientTesterViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)modalController:(id)controller didDismissSheetWithResponse:(id)response;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PBFClientTesterViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PBFClientTesterViewController;
  [(PBFClientTesterViewController *)&v4 viewDidLoad];
  [(PBFClientTesterViewController *)self setTitle:@"Client Tester"];
  tableView = [(PBFClientTesterViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"api"];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view dequeueReusableCellWithIdentifier:@"api" forIndexPath:pathCopy];
  v7 = [pathCopy row];

  if (v7 <= 4)
  {
    v8 = off_2782C8F28[v7];
    textLabel = [v6 textLabel];
    [textLabel setText:v8];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = [pathCopy row];

  v8 = 0;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_18;
      }

LABEL_14:
      v9 = objc_opt_new();
      goto LABEL_15;
    }

    v14 = objc_alloc(MEMORY[0x277D3EAC8]);
    v10 = objc_opt_new();
    v8 = [v14 initWithActivityUUID:v10 activityIdentifier:&stru_282CD3858];
LABEL_17:

    goto LABEL_18;
  }

  switch(v7)
  {
    case 2:
      v10 = [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:*MEMORY[0x277D3EEF0]];
      [v10 setDisplayNameLocalizationKey:@"SAMPLE_POSTER_TITLE"];
      v20 = 0;
      v11 = [v10 storeUserInfo:&unk_282D0A448 error:&v20];
      v12 = v20;
      if ((v11 & 1) == 0)
      {
        v13 = PBFLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [PBFClientTesterViewController tableView:v12 didSelectRowAtIndexPath:v13];
        }
      }

      v8 = [objc_alloc(MEMORY[0x277D3EAC0]) initWithExtensionIdentifier:@"com.apple.PosterTester.SamplePoster" configuration:v10];

      goto LABEL_17;
    case 3:
      goto LABEL_14;
    case 4:
      v9 = [objc_alloc(MEMORY[0x277D3EAE0]) initWithAllowedConfigurationUUIDs:0];
LABEL_15:
      v8 = v9;
      break;
  }

LABEL_18:
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  connectedScenes = [mEMORY[0x277D75128] connectedScenes];
  anyObject = [connectedScenes anyObject];

  v18 = [objc_alloc(MEMORY[0x277D3EAA0]) initWithEntryPoint:v8];
  modalController = self->_modalController;
  self->_modalController = v18;

  [(PRUISModalController *)self->_modalController setDelegate:self];
  [(PRUISModalController *)self->_modalController presentFromWindowScene:anyObject];
}

- (void)modalController:(id)controller didDismissSheetWithResponse:(id)response
{
  modalController = self->_modalController;
  self->_modalController = 0;
}

- (void)tableView:(uint64_t)a1 didSelectRowAtIndexPath:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B526000, a2, OS_LOG_TYPE_ERROR, "Could not store user info: %@", &v2, 0xCu);
}

@end