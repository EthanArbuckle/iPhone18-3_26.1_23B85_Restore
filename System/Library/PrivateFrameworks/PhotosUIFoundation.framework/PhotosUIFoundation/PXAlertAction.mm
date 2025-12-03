@interface PXAlertAction
- (PXAlertAction)init;
- (PXAlertAction)initWithTitle:(id)title style:(int64_t)style action:(id)action;
@end

@implementation PXAlertAction

- (PXAlertAction)initWithTitle:(id)title style:(int64_t)style action:(id)action
{
  titleCopy = title;
  actionCopy = action;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAlert.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"title != nil"}];
  }

  v18.receiver = self;
  v18.super_class = PXAlertAction;
  v11 = [(PXAlertAction *)&v18 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v11->_style = style;
    v14 = [actionCopy copy];
    action = v11->_action;
    v11->_action = v14;
  }

  return v11;
}

- (PXAlertAction)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAlert.m" lineNumber:371 description:{@"%s is not available as initializer", "-[PXAlertAction init]"}];

  abort();
}

@end