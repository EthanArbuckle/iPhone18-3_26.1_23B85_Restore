@interface REMReminderServiceViewController
- (REMReminderCreationViewServiceViewController)viewServiceViewController;
- (void)setChildViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation REMReminderServiceViewController

- (void)viewDidLoad
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_261ADC000, v0, OS_LOG_TYPE_ERROR, "Extension lookup of REMReminderCreationViewServiceBundleID failed %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __47__REMReminderServiceViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D446D8] ui];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __47__REMReminderServiceViewController_viewDidLoad__block_invoke_cold_1();
  }

  if (v7)
  {
    v9 = [MEMORY[0x277D446D8] ui];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __47__REMReminderServiceViewController_viewDidLoad__block_invoke_cold_2(a1, v7, v9);
    }

    [*(*(*(a1 + 40) + 8) + 40) endDelayingDisplayOfRemoteController];
    [*(a1 + 32) setDeferredErrorDuringPresentation:v7];
  }

  else
  {
    [v6 setPublicViewController:*(a1 + 32)];
    v10 = [v6 serviceViewControllerProxy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__REMReminderServiceViewController_viewDidLoad__block_invoke_3;
    v11[3] = &unk_279AF7ED8;
    v12 = *(a1 + 32);
    [v12 remoteViewControllerDidLoad:v10 setupCompletion:v11];
  }
}

void __47__REMReminderServiceViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2, double a3, double a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) traitCollection];
  v8 = [v7 _presentationSemanticContext];

  if (v8 != 3)
  {
    [*(a1 + 32) setPreferredContentSize:{a3, a4}];
  }

  [*(*(*(a1 + 40) + 8) + 40) endDelayingDisplayOfRemoteController];
  v9 = v10;
  if (v10)
  {
    [*(a1 + 32) setDeferredErrorDuringPresentation:v10];
    v9 = v10;
  }
}

- (void)setChildViewController:(id)a3
{
  v24[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_childViewController)
  {
    [REMReminderServiceViewController setChildViewController:];
  }

  childViewController = self->_childViewController;
  self->_childViewController = v4;
  v6 = v4;

  v7 = [(REMReminderServiceViewController *)self view];
  v8 = [(_UIResilientRemoteViewContainerViewController *)v6 view];
  [(_UIResilientRemoteViewContainerViewController *)v6 beginAppearanceTransition:1 animated:0];
  [(REMReminderServiceViewController *)self addChildViewController:v6];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:v8];
  v18 = MEMORY[0x277CCAAD0];
  v23 = [v8 leadingAnchor];
  v22 = [v7 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v24[0] = v21;
  v20 = [v8 trailingAnchor];
  v19 = [v7 trailingAnchor];
  v17 = [v20 constraintEqualToAnchor:v19];
  v24[1] = v17;
  v16 = [v8 topAnchor];
  v9 = [v7 topAnchor];
  v10 = [v16 constraintEqualToAnchor:v9];
  v24[2] = v10;
  v11 = [v8 bottomAnchor];
  v12 = [v7 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v24[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  [v18 activateConstraints:v14];

  [(_UIResilientRemoteViewContainerViewController *)v6 didMoveToParentViewController:self];
  [(_UIResilientRemoteViewContainerViewController *)v6 endAppearanceTransition];

  v15 = *MEMORY[0x277D85DE8];
}

- (REMReminderCreationViewServiceViewController)viewServiceViewController
{
  v2 = [(REMReminderServiceViewController *)self remoteViewController];
  v3 = [v2 viewServiceViewController];

  return v3;
}

void __47__REMReminderServiceViewController_viewDidLoad__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_261ADC000, v0, OS_LOG_TYPE_DEBUG, "_UIResilientRemoteViewContainerViewController initialized (%@)", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __47__REMReminderServiceViewController_viewDidLoad__block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v10 = 2112;
  v11 = a2;
  v7 = v6;
  _os_log_error_impl(&dword_261ADC000, a3, OS_LOG_TYPE_ERROR, "Remote view controller error while displaying %@: %@", v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)viewDidAppear:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_261ADC000, v0, OS_LOG_TYPE_ERROR, "REMReminderServiceViewController: encountered error during presentation {error: %{public}@}", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setChildViewController:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D446D8] ui];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v2 = 136315138;
    v3 = "[REMReminderServiceViewController setChildViewController:]";
    _os_log_fault_impl(&dword_261ADC000, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (_childViewController != nil) -- %s: remote view controller can only be set once", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

@end