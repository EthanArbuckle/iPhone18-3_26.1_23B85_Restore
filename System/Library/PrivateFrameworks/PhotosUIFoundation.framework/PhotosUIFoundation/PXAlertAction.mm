@interface PXAlertAction
- (PXAlertAction)init;
- (PXAlertAction)initWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5;
@end

@implementation PXAlertAction

- (PXAlertAction)initWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXAlert.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"title != nil"}];
  }

  v18.receiver = self;
  v18.super_class = PXAlertAction;
  v11 = [(PXAlertAction *)&v18 init];
  if (v11)
  {
    v12 = [v9 copy];
    title = v11->_title;
    v11->_title = v12;

    v11->_style = a4;
    v14 = [v10 copy];
    action = v11->_action;
    v11->_action = v14;
  }

  return v11;
}

- (PXAlertAction)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAlert.m" lineNumber:371 description:{@"%s is not available as initializer", "-[PXAlertAction init]"}];

  abort();
}

@end