@interface TSKUIAlert
+ (id)alertWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6;
- (TSKUIAlert)initWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6;
- (TSKUIAlert)initWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 otherOtherButtonTitle:(id)a7;
- (void)alertView:(id)a3 clickedButtonAtIndex:(int64_t)a4;
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)alertView:(id)a3 willDismissWithButtonIndex:(int64_t)a4;
- (void)dealloc;
- (void)didPresentAlertView:(id)a3;
- (void)dismissWithClickedButtonIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)willPresentAlertView:(id)a3;
@end

@implementation TSKUIAlert

+ (id)alertWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6
{
  if (gUseMockUIAlert)
  {
    v6 = off_279D45048;
  }

  else
  {
    v6 = off_279D45118;
  }

  v7 = [objc_alloc(*v6) initWithTitle:a3 message:a4 cancelButtonTitle:a5 otherButtonTitle:a6];

  return v7;
}

- (TSKUIAlert)initWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6
{
  v12.receiver = self;
  v12.super_class = TSKUIAlert;
  v10 = [(TSKAbstractAlert *)&v12 init];
  if (v10)
  {
    v10->_alertView = [objc_alloc(MEMORY[0x277D75118]) initWithTitle:a3 message:a4 delegate:v10 cancelButtonTitle:a5 otherButtonTitles:{a6, 0}];
  }

  return v10;
}

- (TSKUIAlert)initWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 otherOtherButtonTitle:(id)a7
{
  v14.receiver = self;
  v14.super_class = TSKUIAlert;
  v12 = [(TSKAbstractAlert *)&v14 init];
  if (v12)
  {
    v12->_alertView = [objc_alloc(MEMORY[0x277D75118]) initWithTitle:a3 message:a4 delegate:v12 cancelButtonTitle:a5 otherButtonTitles:{a6, a7, 0}];
  }

  return v12;
}

- (void)dealloc
{
  [(UIAlertView *)self->_alertView setDelegate:0];

  v3.receiver = self;
  v3.super_class = TSKUIAlert;
  [(TSKAbstractAlert *)&v3 dealloc];
}

- (void)dismissWithClickedButtonIndex:(int64_t)a3 animated:(BOOL)a4
{
  [(UIAlertView *)self->_alertView dismissWithClickedButtonIndex:a3 animated:a4];
  if (self->super._inBackground)
  {
    [(TSKUIAlert *)self alertView:self->_alertView willDismissWithButtonIndex:a3];
    alertView = self->_alertView;

    [(TSKUIAlert *)self alertView:alertView didDismissWithButtonIndex:a3];
  }
}

- (void)alertView:(id)a3 clickedButtonAtIndex:(int64_t)a4
{
  if (self->_alertView != a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIAlert alertView:clickedButtonAtIndex:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 465, @"Wrong alert view"}];
  }

  [(TSKAbstractAlert *)self clickedButtonAtIndex:a4];
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  if (self->_alertView != a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIAlert alertView:didDismissWithButtonIndex:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 471, @"Wrong alert view"}];
  }

  [(TSKAbstractAlert *)self didDismissWithButtonIndex:a4];
}

- (void)alertView:(id)a3 willDismissWithButtonIndex:(int64_t)a4
{
  if (self->_alertView != a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIAlert alertView:willDismissWithButtonIndex:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 481, @"Wrong alert view"}];
  }

  [(TSKAbstractAlert *)self willDismissWithButtonIndex:a4];
}

- (void)didPresentAlertView:(id)a3
{
  if (self->_alertView != a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIAlert didPresentAlertView:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 488, @"Wrong alert view"}];
  }

  [(TSKAbstractAlert *)self _didPresentAlertView:a3];
}

- (void)willPresentAlertView:(id)a3
{
  if (self->_alertView != a3)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIAlert willPresentAlertView:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 495, @"Wrong alert view"}];
  }

  [(TSKAbstractAlert *)self willPresentAlertView];
}

@end