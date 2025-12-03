@interface SiriUIPrivatePeoplePickerViewController
- (SiriUIPrivatePeoplePickerViewController)initWithSnippet:(id)snippet;
- (double)desiredHeightForWidth:(double)width;
- (id)_pickerController;
- (void)_showPicker:(id)picker;
- (void)loadView;
- (void)pickerViewController:(id)controller didSelectObject:(id)object fromPicker:(id)picker;
- (void)pickerViewController:(id)controller willDismissPicker:(id)picker;
- (void)pickerViewController:(id)controller willPresentPicker:(id)picker;
@end

@implementation SiriUIPrivatePeoplePickerViewController

- (SiriUIPrivatePeoplePickerViewController)initWithSnippet:(id)snippet
{
  snippetCopy = snippet;
  v9.receiver = self;
  v9.super_class = SiriUIPrivatePeoplePickerViewController;
  v6 = [(SiriUISnippetViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_picker, snippet);
    [(SiriUISnippetViewController *)v7 setDefaultViewInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  return v7;
}

- (void)loadView
{
  v4 = objc_alloc_init(SiriUIObjectPickerButtonView);
  button = [(SiriUIObjectPickerButtonView *)v4 button];
  [button addTarget:self action:sel__showPicker_ forControlEvents:64];

  [(SiriUIPrivatePeoplePickerViewController *)self setView:v4];
}

- (double)desiredHeightForWidth:(double)width
{
  view = [(SiriUIPrivatePeoplePickerViewController *)self view];
  [view sizeThatFits:{width, 1.79769313e308}];
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

- (void)_showPicker:(id)picker
{
  _pickerController = [(SiriUIPrivatePeoplePickerViewController *)self _pickerController];
  [_pickerController showPicker:0];
}

- (void)pickerViewController:(id)controller willPresentPicker:(id)picker
{
  pickerCopy = picker;
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate cancelRequestForSiriSnippetViewController:self];

  _privateDelegate = [(SiriUISnippetViewController *)self _privateDelegate];
  [_privateDelegate siriSnippetViewController:self willPresentViewController:pickerCopy];

  delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate2 siriSnippetViewController:self setStatusViewHidden:1];
}

- (void)pickerViewController:(id)controller didSelectObject:(id)object fromPicker:(id)picker
{
  v9[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  v9[0] = objectCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [delegate siriViewController:self performAceCommands:v8];
}

- (void)pickerViewController:(id)controller willDismissPicker:(id)picker
{
  pickerCopy = picker;
  _privateDelegate = [(SiriUISnippetViewController *)self _privateDelegate];
  [_privateDelegate siriSnippetViewController:self willDismissViewController:pickerCopy];

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriSnippetViewController:self setStatusViewHidden:0];
}

@end