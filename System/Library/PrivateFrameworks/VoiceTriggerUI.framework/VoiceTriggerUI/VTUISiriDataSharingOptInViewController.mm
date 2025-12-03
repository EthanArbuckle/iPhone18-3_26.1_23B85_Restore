@interface VTUISiriDataSharingOptInViewController
- (VTUISiriDataSharingOptInViewController)initWithViewStyle:(int64_t)style;
- (VTUISiriDataSharingOptInViewControllerDelegate)delegate;
@end

@implementation VTUISiriDataSharingOptInViewController

- (VTUISiriDataSharingOptInViewController)initWithViewStyle:(int64_t)style
{
  if (!style)
  {
    v4 = @"DATA_SHARING_TITLE_SIRI";
    goto LABEL_9;
  }

  if (style != 1)
  {
    if (style != 2)
    {
      v8 = 0;
      goto LABEL_11;
    }

    v4 = @"DATA_SHARING_TITLE_DICTATION";
LABEL_9:
    v7 = +[VTUIStringsHelper sharedStringsHelper];
    v8 = [v7 uiLocalizedStringForKey:v4];

LABEL_11:
    v9 = [MEMORY[0x277D755B8] _systemImageNamed:@"chart.bar.xaxis"];
    v12.receiver = self;
    v12.super_class = VTUISiriDataSharingOptInViewController;
    v10 = [(VTUISiriDataSharingOptInViewController *)&v12 initWithTitle:v8 detailText:0 icon:v9];

    self = v10;
    selfCopy = self;
    goto LABEL_12;
  }

  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_ERROR))
  {
    [VTUISiriDataSharingOptInViewController initWithViewStyle:v5];
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (VTUISiriDataSharingOptInViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithViewStyle:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[VTUISiriDataSharingOptInViewController initWithViewStyle:]";
  _os_log_error_impl(&dword_2728BC000, log, OS_LOG_TYPE_ERROR, "%s #SiriDataSharingOptIn: Passing VTUISiriDataSharingOptInViewStyleSiriProx to VTUISiriDataSharingViewController", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end