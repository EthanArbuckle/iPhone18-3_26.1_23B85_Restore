@interface PXSharedLibraryAssistantHowToViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantHowToViewController)initWithLibraryFilterState:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantHowToViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)doneButtonTapped:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [(PXSharedLibraryAssistantHowToViewController *)self assistantViewControllerDelegate];
  if (!v4)
  {
    PXAssertGetLog();
  }

  [v4 completeAssistantForAssistantViewController:self];
  v5 = [(PXSharedLibraryAssistantHowToViewController *)self libraryFilterState];
  PXSharedLibraryNavigateToLibraryViewInSharedLibraryViewMode(0, v5);
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

  v12 = [MEMORY[0x1E69B7D00] boldButton];
  v13 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Done");
  [v12 setTitle:v13 forState:0];

  [v12 addTarget:self action:sel_doneButtonTapped_ forControlEvents:0x2000];
  v14 = [(PXSharedLibraryAssistantHowToViewController *)self buttonTray];
  [v14 addButton:v12];

  v15 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_doneButtonTapped_];
  [(PXSharedLibraryAssistantHowToViewController *)self addKeyCommand:v15];
}

- (PXSharedLibraryAssistantHowToViewController)initWithLibraryFilterState:(id)a3
{
  v3 = a3;
  PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_HowTo_Title");
  objc_claimAutoreleasedReturnValue();
  PXSharedLibraryCreatePlatterImage(@"person.2.fill", 0);
}

@end