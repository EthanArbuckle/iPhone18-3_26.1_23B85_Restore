@interface PXUITapGestureRecognizer
- (CGPoint)locationInView:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation PXUITapGestureRecognizer

- (void)reset
{
  initialEventType = self->_initialEventType;
  self->_initialEventType = 0;

  v4.receiver = self;
  v4.super_class = PXUITapGestureRecognizer;
  [(PXUITapGestureRecognizer *)&v4 reset];
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PXUITapGestureRecognizer;
  [(PXUITapGestureRecognizer *)&v16 locationInView:v4];
  v6 = v5;
  v8 = v7;
  if ([(NSNumber *)self->_initialEventType integerValue]== 3)
  {
    v9 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:v4];
    v10 = [v9 focusedItem];

    v11 = [v10 parentFocusEnvironment];
    v12 = [v11 focusItemContainer];
    v13 = [v12 coordinateSpace];

    if (v13)
    {
      [v10 frame];
      PXRectGetCenter();
    }
  }

  v14 = v6;
  v15 = v8;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_initialEventType)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "type")}];
    initialEventType = self->_initialEventType;
    self->_initialEventType = v9;
  }

  v11.receiver = self;
  v11.super_class = PXUITapGestureRecognizer;
  [(PXUITapGestureRecognizer *)&v11 pressesBegan:v6 withEvent:v8];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_initialEventType)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "type")}];
    initialEventType = self->_initialEventType;
    self->_initialEventType = v9;
  }

  v11.receiver = self;
  v11.super_class = PXUITapGestureRecognizer;
  [(PXUITapGestureRecognizer *)&v11 touchesBegan:v6 withEvent:v8];
}

@end