@interface SMUTVTextAlertController
- (SMUTVTextAlertController)initWithTitle:(id)a3 text:(id)a4;
@end

@implementation SMUTVTextAlertController

- (SMUTVTextAlertController)initWithTitle:(id)a3 text:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SMUTVTextAlertController;
  v8 = [(SMUTVTextAlertController *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
    alertController = v8->_alertController;
    v8->_alertController = v9;
  }

  return v8;
}

@end