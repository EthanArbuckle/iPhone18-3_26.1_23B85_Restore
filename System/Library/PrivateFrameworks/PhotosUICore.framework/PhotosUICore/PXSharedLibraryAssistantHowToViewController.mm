@interface PXSharedLibraryAssistantHowToViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantHowToViewController)initWithLibraryFilterState:(id)state;
- (void)doneButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantHowToViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)doneButtonTapped:(id)tapped
{
  v6 = *MEMORY[0x1E69E9840];
  assistantViewControllerDelegate = [(PXSharedLibraryAssistantHowToViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate completeAssistantForAssistantViewController:self];
  libraryFilterState = [(PXSharedLibraryAssistantHowToViewController *)self libraryFilterState];
  PXSharedLibraryNavigateToLibraryViewInSharedLibraryViewMode(0, libraryFilterState);
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PXSharedLibraryAssistantHowToViewController;
  [(OBBaseWelcomeController *)&v16 viewDidLoad];
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_HowTo_LibraryView_Title");
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_HowTo_LibraryView_Subtitle");
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle"];
  [(PXSharedLibraryAssistantHowToViewController *)self addBulletedListItemWithTitle:v3 description:v4 image:v5];

  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_HowTo_Suggestions_Title");
  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_HowTo_Suggestions_Subtitle");
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"heart.text.square.fill"];
  [(PXSharedLibraryAssistantHowToViewController *)self addBulletedListItemWithTitle:v6 description:v7 image:v8];

  v9 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_HowTo_Controls_Title");
  v10 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_HowTo_Controls_Subtitle");
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"slider.horizontal.3"];
  [(PXSharedLibraryAssistantHowToViewController *)self addBulletedListItemWithTitle:v9 description:v10 image:v11];

  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  v13 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Done");
  [boldButton setTitle:v13 forState:0];

  [boldButton addTarget:self action:sel_doneButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryAssistantHowToViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  v15 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_doneButtonTapped_];
  [(PXSharedLibraryAssistantHowToViewController *)self addKeyCommand:v15];
}

- (PXSharedLibraryAssistantHowToViewController)initWithLibraryFilterState:(id)state
{
  stateCopy = state;
  PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_HowTo_Title");
  objc_claimAutoreleasedReturnValue();
  PXSharedLibraryCreatePlatterImage(@"person.2.fill", 0);
}

@end