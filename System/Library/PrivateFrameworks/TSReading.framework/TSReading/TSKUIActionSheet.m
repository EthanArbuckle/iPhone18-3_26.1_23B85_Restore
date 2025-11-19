@interface TSKUIActionSheet
+ (id)alertWithTitle:(id)a3 cancelButtonTitle:(id)a4 destructiveButtonTitle:(id)a5 otherButtonTitle:(id)a6 targetView:(id)a7;
- (TSKUIActionSheet)initWithTitle:(id)a3 cancelButtonTitle:(id)a4 destructiveButtonTitle:(id)a5 otherButtonTitle:(id)a6 targetView:(id)a7;
- (void)actionSheet:(id)a3 clickedButtonAtIndex:(int64_t)a4;
- (void)actionSheet:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)actionSheet:(id)a3 willDismissWithButtonIndex:(int64_t)a4;
- (void)dealloc;
- (void)didPresentActionSheet:(id)a3;
- (void)willPresentActionSheet:(id)a3;
@end

@implementation TSKUIActionSheet

+ (id)alertWithTitle:(id)a3 cancelButtonTitle:(id)a4 destructiveButtonTitle:(id)a5 otherButtonTitle:(id)a6 targetView:(id)a7
{
  v7 = [[TSKUIActionSheet alloc] initWithTitle:a3 cancelButtonTitle:a4 destructiveButtonTitle:a5 otherButtonTitle:a6 targetView:a7];

  return v7;
}

- (TSKUIActionSheet)initWithTitle:(id)a3 cancelButtonTitle:(id)a4 destructiveButtonTitle:(id)a5 otherButtonTitle:(id)a6 targetView:(id)a7
{
  v14.receiver = self;
  v14.super_class = TSKUIActionSheet;
  v12 = [(TSKAbstractAlert *)&v14 init];
  if (v12)
  {
    v12->_actionSheet = [objc_alloc(MEMORY[0x277D750D0]) initWithTitle:a3 delegate:v12 cancelButtonTitle:a4 destructiveButtonTitle:a5 otherButtonTitles:{a6, 0}];
    v12->_targetView = a7;
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

- (void)actionSheet:(id)a3 clickedButtonAtIndex:(int64_t)a4
{
  if (self->_actionSheet != a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIActionSheet actionSheet:clickedButtonAtIndex:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 590, @"Wrong action sheet"}];
  }

  [(TSKAbstractAlert *)self clickedButtonAtIndex:a4];
}

- (void)actionSheet:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  if (self->_actionSheet != a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIActionSheet actionSheet:didDismissWithButtonIndex:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 596, @"Wrong action sheet"}];
  }

  [(TSKAbstractAlert *)self didDismissWithButtonIndex:a4];
}

- (void)actionSheet:(id)a3 willDismissWithButtonIndex:(int64_t)a4
{
  if (self->_actionSheet != a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIActionSheet actionSheet:willDismissWithButtonIndex:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 606, @"Wrong action sheet"}];
  }

  [(TSKAbstractAlert *)self willDismissWithButtonIndex:a4];
}

- (void)didPresentActionSheet:(id)a3
{
  if (self->_actionSheet != a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIActionSheet didPresentActionSheet:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 613, @"Wrong action sheet"}];
  }

  [(TSKAbstractAlert *)self _didPresentAlertView:a3];
}

- (void)willPresentActionSheet:(id)a3
{
  if (self->_actionSheet != a3)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIActionSheet willPresentActionSheet:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 620, @"Wrong action sheet"}];
  }

  [(TSKAbstractAlert *)self willPresentAlertView];
}

@end