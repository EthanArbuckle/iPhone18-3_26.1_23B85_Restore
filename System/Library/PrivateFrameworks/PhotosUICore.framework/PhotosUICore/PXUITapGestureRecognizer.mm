@interface PXUITapGestureRecognizer
- (CGPoint)locationInView:(id)view;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
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

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = PXUITapGestureRecognizer;
  [(PXUITapGestureRecognizer *)&v16 locationInView:viewCopy];
  v6 = v5;
  v8 = v7;
  if ([(NSNumber *)self->_initialEventType integerValue]== 3)
  {
    v9 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:viewCopy];
    focusedItem = [v9 focusedItem];

    parentFocusEnvironment = [focusedItem parentFocusEnvironment];
    focusItemContainer = [parentFocusEnvironment focusItemContainer];
    coordinateSpace = [focusItemContainer coordinateSpace];

    if (coordinateSpace)
    {
      [focusedItem frame];
      PXRectGetCenter();
    }
  }

  v14 = v6;
  v15 = v8;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v8 = eventCopy;
  if (!self->_initialEventType)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(eventCopy, "type")}];
    initialEventType = self->_initialEventType;
    self->_initialEventType = v9;
  }

  v11.receiver = self;
  v11.super_class = PXUITapGestureRecognizer;
  [(PXUITapGestureRecognizer *)&v11 pressesBegan:beganCopy withEvent:v8];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v8 = eventCopy;
  if (!self->_initialEventType)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(eventCopy, "type")}];
    initialEventType = self->_initialEventType;
    self->_initialEventType = v9;
  }

  v11.receiver = self;
  v11.super_class = PXUITapGestureRecognizer;
  [(PXUITapGestureRecognizer *)&v11 touchesBegan:beganCopy withEvent:v8];
}

@end