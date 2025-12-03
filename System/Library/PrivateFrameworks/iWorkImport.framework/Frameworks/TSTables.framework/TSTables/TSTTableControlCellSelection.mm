@interface TSTTableControlCellSelection
+ (id)controlCellSelection;
- (TSTTableControlCellSelection)initWithKeyboardShown:(BOOL)shown;
- (id)copy;
@end

@implementation TSTTableControlCellSelection

- (TSTTableControlCellSelection)initWithKeyboardShown:(BOOL)shown
{
  v5.receiver = self;
  v5.super_class = TSTTableControlCellSelection;
  result = [(TSTTableControlCellSelection *)&v5 init];
  if (result)
  {
    result->_keyboardShown = shown;
  }

  return result;
}

+ (id)controlCellSelection
{
  v2 = [self alloc];
  v6 = objc_msgSend_initWithKeyboardShown_(v2, v3, 0, v4, v5);

  return v6;
}

- (id)copy
{
  v3 = objc_alloc(objc_opt_class());
  keyboardShown = self->_keyboardShown;

  return objc_msgSend_initWithKeyboardShown_(v3, v4, keyboardShown, v5, v6);
}

@end