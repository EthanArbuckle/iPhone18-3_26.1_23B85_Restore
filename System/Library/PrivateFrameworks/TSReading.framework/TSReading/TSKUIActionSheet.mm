@interface TSKUIActionSheet
+ (id)alertWithTitle:(id)title cancelButtonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle otherButtonTitle:(id)otherButtonTitle targetView:(id)view;
- (TSKUIActionSheet)initWithTitle:(id)title cancelButtonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle otherButtonTitle:(id)otherButtonTitle targetView:(id)view;
- (void)actionSheet:(id)sheet clickedButtonAtIndex:(int64_t)index;
- (void)actionSheet:(id)sheet didDismissWithButtonIndex:(int64_t)index;
- (void)actionSheet:(id)sheet willDismissWithButtonIndex:(int64_t)index;
- (void)dealloc;
- (void)didPresentActionSheet:(id)sheet;
- (void)willPresentActionSheet:(id)sheet;
@end

@implementation TSKUIActionSheet

+ (id)alertWithTitle:(id)title cancelButtonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle otherButtonTitle:(id)otherButtonTitle targetView:(id)view
{
  v7 = [[TSKUIActionSheet alloc] initWithTitle:title cancelButtonTitle:buttonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitle:otherButtonTitle targetView:view];

  return v7;
}

- (TSKUIActionSheet)initWithTitle:(id)title cancelButtonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle otherButtonTitle:(id)otherButtonTitle targetView:(id)view
{
  v14.receiver = self;
  v14.super_class = TSKUIActionSheet;
  v12 = [(TSKAbstractAlert *)&v14 init];
  if (v12)
  {
    v12->_actionSheet = [objc_alloc(MEMORY[0x277D750D0]) initWithTitle:title delegate:v12 cancelButtonTitle:buttonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:{otherButtonTitle, 0}];
    v12->_targetView = view;
  }

  return v12;
}

- (void)dealloc
{
  [(UIActionSheet *)self->_actionSheet setDelegate:0];

  v3.receiver = self;
  v3.super_class = TSKUIActionSheet;
  [(TSKAbstractAlert *)&v3 dealloc];
}

- (void)actionSheet:(id)sheet clickedButtonAtIndex:(int64_t)index
{
  if (self->_actionSheet != sheet)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIActionSheet actionSheet:clickedButtonAtIndex:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 590, @"Wrong action sheet"}];
  }

  [(TSKAbstractAlert *)self clickedButtonAtIndex:index];
}

- (void)actionSheet:(id)sheet didDismissWithButtonIndex:(int64_t)index
{
  if (self->_actionSheet != sheet)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIActionSheet actionSheet:didDismissWithButtonIndex:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 596, @"Wrong action sheet"}];
  }

  [(TSKAbstractAlert *)self didDismissWithButtonIndex:index];
}

- (void)actionSheet:(id)sheet willDismissWithButtonIndex:(int64_t)index
{
  if (self->_actionSheet != sheet)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIActionSheet actionSheet:willDismissWithButtonIndex:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 606, @"Wrong action sheet"}];
  }

  [(TSKAbstractAlert *)self willDismissWithButtonIndex:index];
}

- (void)didPresentActionSheet:(id)sheet
{
  if (self->_actionSheet != sheet)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIActionSheet didPresentActionSheet:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 613, @"Wrong action sheet"}];
  }

  [(TSKAbstractAlert *)self _didPresentAlertView:sheet];
}

- (void)willPresentActionSheet:(id)sheet
{
  if (self->_actionSheet != sheet)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIActionSheet willPresentActionSheet:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 620, @"Wrong action sheet"}];
  }

  [(TSKAbstractAlert *)self willPresentAlertView];
}

@end