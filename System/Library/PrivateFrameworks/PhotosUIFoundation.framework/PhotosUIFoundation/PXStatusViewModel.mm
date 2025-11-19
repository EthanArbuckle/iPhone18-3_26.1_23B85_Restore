@interface PXStatusViewModel
- (id)description;
- (void)performChanges:(id)a3;
- (void)setAction:(id)a3;
- (void)setActionConfirmationAlertButtonTitle:(id)a3;
- (void)setActionConfirmationAlertSubtitle:(id)a3;
- (void)setActionConfirmationAlertTitle:(id)a3;
- (void)setActionTitle:(id)a3;
- (void)setAttributedMessage:(id)a3;
- (void)setMessage:(id)a3;
- (void)setSymbolName:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PXStatusViewModel

- (void)setAction:(id)a3
{
  if (self->_action != a3)
  {
    v4 = [a3 copy];
    action = self->_action;
    self->_action = v4;

    [(PXObservable *)self signalChange:256];
  }
}

- (void)setActionConfirmationAlertButtonTitle:(id)a3
{
  v4 = a3;
  actionConfirmationAlertButtonTitle = self->_actionConfirmationAlertButtonTitle;
  if (actionConfirmationAlertButtonTitle != v4)
  {
    v8 = v4;
    actionConfirmationAlertButtonTitle = [actionConfirmationAlertButtonTitle isEqualToString:v4];
    v4 = v8;
    if ((actionConfirmationAlertButtonTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertButtonTitle;
      self->_actionConfirmationAlertButtonTitle = v6;

      actionConfirmationAlertButtonTitle = [(PXObservable *)self signalChange:128];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertButtonTitle, v4);
}

- (void)setActionConfirmationAlertSubtitle:(id)a3
{
  v4 = a3;
  actionConfirmationAlertSubtitle = self->_actionConfirmationAlertSubtitle;
  if (actionConfirmationAlertSubtitle != v4)
  {
    v8 = v4;
    actionConfirmationAlertSubtitle = [actionConfirmationAlertSubtitle isEqualToString:v4];
    v4 = v8;
    if ((actionConfirmationAlertSubtitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertSubtitle;
      self->_actionConfirmationAlertSubtitle = v6;

      actionConfirmationAlertSubtitle = [(PXObservable *)self signalChange:64];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertSubtitle, v4);
}

- (void)setActionConfirmationAlertTitle:(id)a3
{
  v4 = a3;
  actionConfirmationAlertTitle = self->_actionConfirmationAlertTitle;
  if (actionConfirmationAlertTitle != v4)
  {
    v8 = v4;
    actionConfirmationAlertTitle = [actionConfirmationAlertTitle isEqualToString:v4];
    v4 = v8;
    if ((actionConfirmationAlertTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertTitle;
      self->_actionConfirmationAlertTitle = v6;

      actionConfirmationAlertTitle = [(PXObservable *)self signalChange:32];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertTitle, v4);
}

- (void)setActionTitle:(id)a3
{
  v4 = a3;
  actionTitle = self->_actionTitle;
  if (actionTitle != v4)
  {
    v8 = v4;
    actionTitle = [actionTitle isEqualToString:v4];
    v4 = v8;
    if ((actionTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionTitle;
      self->_actionTitle = v6;

      actionTitle = [(PXObservable *)self signalChange:16];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionTitle, v4);
}

- (void)setAttributedMessage:(id)a3
{
  v4 = a3;
  attributedMessage = self->_attributedMessage;
  if (attributedMessage != v4)
  {
    v8 = v4;
    attributedMessage = [attributedMessage isEqual:v4];
    v4 = v8;
    if ((attributedMessage & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_attributedMessage;
      self->_attributedMessage = v6;

      attributedMessage = [(PXObservable *)self signalChange:8];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](attributedMessage, v4);
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  message = self->_message;
  if (message != v4)
  {
    v8 = v4;
    message = [message isEqualToString:v4];
    v4 = v8;
    if ((message & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_message;
      self->_message = v6;

      message = [(PXObservable *)self signalChange:4];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](message, v4);
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  title = self->_title;
  if (title != v4)
  {
    v8 = v4;
    title = [title isEqualToString:v4];
    v4 = v8;
    if ((title & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_title;
      self->_title = v6;

      title = [(PXObservable *)self signalChange:2];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](title, v4);
}

- (void)setSymbolName:(id)a3
{
  v4 = a3;
  symbolName = self->_symbolName;
  if (symbolName != v4)
  {
    v8 = v4;
    symbolName = [symbolName isEqualToString:v4];
    v4 = v8;
    if ((symbolName & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_symbolName;
      self->_symbolName = v6;

      symbolName = [(PXObservable *)self signalChange:1];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](symbolName, v4);
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStatusViewModel;
  [(PXObservable *)&v3 performChanges:a3];
}

- (id)description
{
  attributedMessage = self->_attributedMessage;
  if (attributedMessage)
  {
    v4 = [(NSAttributedString *)attributedMessage string];
  }

  else
  {
    message = self->_message;
    if (!message)
    {
      message = @"-";
    }

    v4 = message;
  }

  v6 = v4;
  symbolName = self->_symbolName;
  if (!symbolName)
  {
    symbolName = @"-";
  }

  title = self->_title;
  if (!title)
  {
    title = @"-";
  }

  actionTitle = self->_actionTitle;
  if (!actionTitle)
  {
    actionTitle = @"-";
  }

  actionConfirmationAlertTitle = self->_actionConfirmationAlertTitle;
  if (!actionConfirmationAlertTitle)
  {
    actionConfirmationAlertTitle = @"-";
  }

  actionConfirmationAlertSubtitle = self->_actionConfirmationAlertSubtitle;
  if (!actionConfirmationAlertSubtitle)
  {
    actionConfirmationAlertSubtitle = @"-";
  }

  actionConfirmationAlertButtonTitle = self->_actionConfirmationAlertButtonTitle;
  if (!actionConfirmationAlertButtonTitle)
  {
    actionConfirmationAlertButtonTitle = @"-";
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<symbolName:%@, title:%@, message:%@, action:%@, alert:%@/%@/%@>", symbolName, title, v4, actionTitle, actionConfirmationAlertTitle, actionConfirmationAlertSubtitle, actionConfirmationAlertButtonTitle];

  return v13;
}

@end