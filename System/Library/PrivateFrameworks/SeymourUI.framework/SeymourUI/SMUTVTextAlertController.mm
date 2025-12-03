@interface SMUTVTextAlertController
- (SMUTVTextAlertController)initWithTitle:(id)title text:(id)text;
@end

@implementation SMUTVTextAlertController

- (SMUTVTextAlertController)initWithTitle:(id)title text:(id)text
{
  titleCopy = title;
  textCopy = text;
  v12.receiver = self;
  v12.super_class = SMUTVTextAlertController;
  v8 = [(SMUTVTextAlertController *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:textCopy preferredStyle:1];
    alertController = v8->_alertController;
    v8->_alertController = v9;
  }

  return v8;
}

@end