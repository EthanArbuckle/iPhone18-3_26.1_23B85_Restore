@interface PXStatusViewModel
- (id)description;
- (void)performChanges:(id)changes;
- (void)setAction:(id)action;
- (void)setActionConfirmationAlertButtonTitle:(id)title;
- (void)setActionConfirmationAlertSubtitle:(id)subtitle;
- (void)setActionConfirmationAlertTitle:(id)title;
- (void)setActionTitle:(id)title;
- (void)setAttributedMessage:(id)message;
- (void)setMessage:(id)message;
- (void)setSymbolName:(id)name;
- (void)setTitle:(id)title;
@end

@implementation PXStatusViewModel

- (void)setAction:(id)action
{
  if (self->_action != action)
  {
    v4 = [action copy];
    action = self->_action;
    self->_action = v4;

    [(PXObservable *)self signalChange:256];
  }
}

- (void)setActionConfirmationAlertButtonTitle:(id)title
{
  titleCopy = title;
  actionConfirmationAlertButtonTitle = self->_actionConfirmationAlertButtonTitle;
  if (actionConfirmationAlertButtonTitle != titleCopy)
  {
    v8 = titleCopy;
    actionConfirmationAlertButtonTitle = [actionConfirmationAlertButtonTitle isEqualToString:titleCopy];
    titleCopy = v8;
    if ((actionConfirmationAlertButtonTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertButtonTitle;
      self->_actionConfirmationAlertButtonTitle = v6;

      actionConfirmationAlertButtonTitle = [(PXObservable *)self signalChange:128];
      titleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertButtonTitle, titleCopy);
}

- (void)setActionConfirmationAlertSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  actionConfirmationAlertSubtitle = self->_actionConfirmationAlertSubtitle;
  if (actionConfirmationAlertSubtitle != subtitleCopy)
  {
    v8 = subtitleCopy;
    actionConfirmationAlertSubtitle = [actionConfirmationAlertSubtitle isEqualToString:subtitleCopy];
    subtitleCopy = v8;
    if ((actionConfirmationAlertSubtitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertSubtitle;
      self->_actionConfirmationAlertSubtitle = v6;

      actionConfirmationAlertSubtitle = [(PXObservable *)self signalChange:64];
      subtitleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertSubtitle, subtitleCopy);
}

- (void)setActionConfirmationAlertTitle:(id)title
{
  titleCopy = title;
  actionConfirmationAlertTitle = self->_actionConfirmationAlertTitle;
  if (actionConfirmationAlertTitle != titleCopy)
  {
    v8 = titleCopy;
    actionConfirmationAlertTitle = [actionConfirmationAlertTitle isEqualToString:titleCopy];
    titleCopy = v8;
    if ((actionConfirmationAlertTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertTitle;
      self->_actionConfirmationAlertTitle = v6;

      actionConfirmationAlertTitle = [(PXObservable *)self signalChange:32];
      titleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertTitle, titleCopy);
}

- (void)setActionTitle:(id)title
{
  titleCopy = title;
  actionTitle = self->_actionTitle;
  if (actionTitle != titleCopy)
  {
    v8 = titleCopy;
    actionTitle = [actionTitle isEqualToString:titleCopy];
    titleCopy = v8;
    if ((actionTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionTitle;
      self->_actionTitle = v6;

      actionTitle = [(PXObservable *)self signalChange:16];
      titleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionTitle, titleCopy);
}

- (void)setAttributedMessage:(id)message
{
  messageCopy = message;
  attributedMessage = self->_attributedMessage;
  if (attributedMessage != messageCopy)
  {
    v8 = messageCopy;
    attributedMessage = [attributedMessage isEqual:messageCopy];
    messageCopy = v8;
    if ((attributedMessage & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_attributedMessage;
      self->_attributedMessage = v6;

      attributedMessage = [(PXObservable *)self signalChange:8];
      messageCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](attributedMessage, messageCopy);
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  message = self->_message;
  if (message != messageCopy)
  {
    v8 = messageCopy;
    message = [message isEqualToString:messageCopy];
    messageCopy = v8;
    if ((message & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_message;
      self->_message = v6;

      message = [(PXObservable *)self signalChange:4];
      messageCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](message, messageCopy);
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  if (title != titleCopy)
  {
    v8 = titleCopy;
    title = [title isEqualToString:titleCopy];
    titleCopy = v8;
    if ((title & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_title;
      self->_title = v6;

      title = [(PXObservable *)self signalChange:2];
      titleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](title, titleCopy);
}

- (void)setSymbolName:(id)name
{
  nameCopy = name;
  symbolName = self->_symbolName;
  if (symbolName != nameCopy)
  {
    v8 = nameCopy;
    symbolName = [symbolName isEqualToString:nameCopy];
    nameCopy = v8;
    if ((symbolName & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_symbolName;
      self->_symbolName = v6;

      symbolName = [(PXObservable *)self signalChange:1];
      nameCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](symbolName, nameCopy);
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXStatusViewModel;
  [(PXObservable *)&v3 performChanges:changes];
}

- (id)description
{
  attributedMessage = self->_attributedMessage;
  if (attributedMessage)
  {
    string = [(NSAttributedString *)attributedMessage string];
  }

  else
  {
    message = self->_message;
    if (!message)
    {
      message = @"-";
    }

    string = message;
  }

  v6 = string;
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

  actionConfirmationAlertButtonTitle = [MEMORY[0x1E696AEC0] stringWithFormat:@"<symbolName:%@, title:%@, message:%@, action:%@, alert:%@/%@/%@>", symbolName, title, string, actionTitle, actionConfirmationAlertTitle, actionConfirmationAlertSubtitle, actionConfirmationAlertButtonTitle];

  return actionConfirmationAlertButtonTitle;
}

@end