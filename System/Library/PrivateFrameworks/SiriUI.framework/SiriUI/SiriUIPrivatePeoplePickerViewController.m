@interface SiriUIPrivatePeoplePickerViewController
- (SiriUIPrivatePeoplePickerViewController)initWithSnippet:(id)a3;
- (double)desiredHeightForWidth:(double)a3;
- (id)_pickerController;
- (void)_showPicker:(id)a3;
- (void)loadView;
- (void)pickerViewController:(id)a3 didSelectObject:(id)a4 fromPicker:(id)a5;
- (void)pickerViewController:(id)a3 willDismissPicker:(id)a4;
- (void)pickerViewController:(id)a3 willPresentPicker:(id)a4;
@end

@implementation SiriUIPrivatePeoplePickerViewController

- (SiriUIPrivatePeoplePickerViewController)initWithSnippet:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriUIPrivatePeoplePickerViewController;
  v6 = [(SiriUISnippetViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_picker, a3);
    [(SiriUISnippetViewController *)v7 setDefaultViewInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  return v7;
}

- (void)loadView
{
  v4 = objc_alloc_init(SiriUIObjectPickerButtonView);
  v3 = [(SiriUIObjectPickerButtonView *)v4 button];
  [v3 addTarget:self action:sel__showPicker_ forControlEvents:64];

  [(SiriUIPrivatePeoplePickerViewController *)self setView:v4];
}

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(SiriUIPrivatePeoplePickerViewController *)self view];
  [v4 sizeThatFits:{a3, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (id)_pickerController
{
  pickerController = self->_pickerController;
  if (!pickerController)
  {
    v4 = [SiriUIObjectPickerViewController pickerControllerWithPicker:self->_picker];
    v5 = self->_pickerController;
    self->_pickerController = v4;

    [(SiriUIObjectPickerViewController *)self->_pickerController setPickerDelegate:self];
    pickerController = self->_pickerController;
  }

  return pickerController;
}

- (void)_showPicker:(id)a3
{
  v3 = [(SiriUIPrivatePeoplePickerViewController *)self _pickerController];
  [v3 showPicker:0];
}

- (void)pickerViewController:(id)a3 willPresentPicker:(id)a4
{
  v5 = a4;
  v6 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v6 cancelRequestForSiriSnippetViewController:self];

  v7 = [(SiriUISnippetViewController *)self _privateDelegate];
  [v7 siriSnippetViewController:self willPresentViewController:v5];

  v8 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v8 siriSnippetViewController:self setStatusViewHidden:1];
}

- (void)pickerViewController:(id)a3 didSelectObject:(id)a4 fromPicker:(id)a5
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SiriUIBaseSnippetViewController *)self delegate];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [v7 siriViewController:self performAceCommands:v8];
}

- (void)pickerViewController:(id)a3 willDismissPicker:(id)a4
{
  v5 = a4;
  v6 = [(SiriUISnippetViewController *)self _privateDelegate];
  [v6 siriSnippetViewController:self willDismissViewController:v5];

  v7 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v7 siriSnippetViewController:self setStatusViewHidden:0];
}

@end