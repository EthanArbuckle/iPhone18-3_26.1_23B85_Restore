@interface TSKUIAlert
+ (id)alertWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle;
- (TSKUIAlert)initWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle;
- (TSKUIAlert)initWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle otherOtherButtonTitle:(id)otherOtherButtonTitle;
- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index;
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)alertView:(id)view willDismissWithButtonIndex:(int64_t)index;
- (void)dealloc;
- (void)didPresentAlertView:(id)view;
- (void)dismissWithClickedButtonIndex:(int64_t)index animated:(BOOL)animated;
- (void)willPresentAlertView:(id)view;
@end

@implementation TSKUIAlert

+ (id)alertWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle
{
  if (gUseMockUIAlert)
  {
    v6 = off_279D45048;
  }

  else
  {
    v6 = off_279D45118;
  }

  v7 = [objc_alloc(*v6) initWithTitle:title message:message cancelButtonTitle:buttonTitle otherButtonTitle:otherButtonTitle];

  return v7;
}

- (TSKUIAlert)initWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle
{
  v12.receiver = self;
  v12.super_class = TSKUIAlert;
  v10 = [(TSKAbstractAlert *)&v12 init];
  if (v10)
  {
    v10->_alertView = [objc_alloc(MEMORY[0x277D75118]) initWithTitle:title message:message delegate:v10 cancelButtonTitle:buttonTitle otherButtonTitles:{otherButtonTitle, 0}];
  }

  return v10;
}

- (TSKUIAlert)initWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle otherOtherButtonTitle:(id)otherOtherButtonTitle
{
  v14.receiver = self;
  v14.super_class = TSKUIAlert;
  v12 = [(TSKAbstractAlert *)&v14 init];
  if (v12)
  {
    v12->_alertView = [objc_alloc(MEMORY[0x277D75118]) initWithTitle:title message:message delegate:v12 cancelButtonTitle:buttonTitle otherButtonTitles:{otherButtonTitle, otherOtherButtonTitle, 0}];
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

- (void)dismissWithClickedButtonIndex:(int64_t)index animated:(BOOL)animated
{
  [(UIAlertView *)self->_alertView dismissWithClickedButtonIndex:index animated:animated];
  if (self->super._inBackground)
  {
    [(TSKUIAlert *)self alertView:self->_alertView willDismissWithButtonIndex:index];
    alertView = self->_alertView;

    [(TSKUIAlert *)self alertView:alertView didDismissWithButtonIndex:index];
  }
}

- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index
{
  if (self->_alertView != view)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIAlert alertView:clickedButtonAtIndex:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 465, @"Wrong alert view"}];
  }

  [(TSKAbstractAlert *)self clickedButtonAtIndex:index];
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  if (self->_alertView != view)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIAlert alertView:didDismissWithButtonIndex:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 471, @"Wrong alert view"}];
  }

  [(TSKAbstractAlert *)self didDismissWithButtonIndex:index];
}

- (void)alertView:(id)view willDismissWithButtonIndex:(int64_t)index
{
  if (self->_alertView != view)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIAlert alertView:willDismissWithButtonIndex:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 481, @"Wrong alert view"}];
  }

  [(TSKAbstractAlert *)self willDismissWithButtonIndex:index];
}

- (void)didPresentAlertView:(id)view
{
  if (self->_alertView != view)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIAlert didPresentAlertView:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 488, @"Wrong alert view"}];
  }

  [(TSKAbstractAlert *)self _didPresentAlertView:view];
}

- (void)willPresentAlertView:(id)view
{
  if (self->_alertView != view)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKUIAlert willPresentAlertView:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 495, @"Wrong alert view"}];
  }

  [(TSKAbstractAlert *)self willPresentAlertView];
}

@end