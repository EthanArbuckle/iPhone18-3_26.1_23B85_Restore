@interface TPNumberPad
- (CGSize)intrinsicContentSize;
- (TPNumberPad)initWithButtons:(id)buttons;
- (void)_addButton:(id)button;
- (void)_layoutGrid;
- (void)buttonLongPressedViaGesture:(id)gesture;
- (void)dealloc;
- (void)reloadButtonImages;
- (void)replaceButton:(id)button atIndex:(unint64_t)index;
- (void)setButtons:(id)buttons;
@end

@implementation TPNumberPad

- (void)_layoutGrid
{
  v3 = [(NSMutableArray *)self->_buttons objectAtIndex:0];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  do
  {
    v12 = 3;
    v13 = v8;
    v14 = 0.0;
    do
    {
      v15 = v10;
      v16 = [(NSMutableArray *)self->_buttons objectAtIndex:v13];

      [v16 frame];
      [v16 setFrame:{v14, v11}];
      v10 = v16;
      v14 = v5 + v14;
      ++v13;
      --v12;
    }

    while (v12);
    ++v9;
    v11 = v7 + v11;
    v8 += 3;
  }

  while (v9 != 4);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TPNumberPad;
  [(TPNumberPad *)&v4 dealloc];
}

- (TPNumberPad)initWithButtons:(id)buttons
{
  v27 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  self->_numberButtonsEnabled = 1;
  if ([buttonsCopy count] <= 0xB)
  {
    [(TPNumberPad *)a2 initWithButtons:?];
  }

  v6 = [buttonsCopy objectAtIndex:0];
  [v6 frame];
  v8 = v7 * 3.0;
  [v6 frame];
  v25.receiver = self;
  v25.super_class = TPNumberPad;
  v10 = [(TPNumberPad *)&v25 initWithFrame:0.0, 0.0, v8, v9 * 4.0];
  v11 = v10;
  if (v10)
  {
    [(TPNumberPad *)v10 setButtons:buttonsCopy];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TPNumberPad *)v11 setBackgroundColor:clearColor];

    [(TPNumberPad *)v11 setOpaque:0];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = buttonsCopy;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(TPNumberPad *)v11 _addButton:*(*(&v21 + 1) + 8 * v17++), v21];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v15);
    }

    [(TPNumberPad *)v11 _layoutGrid];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel_handleCurrentLocaleDidChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)reloadButtonImages
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  buttons = [(TPNumberPad *)self buttons];
  v3 = [buttons countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(buttons);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 loadImagesForCurrentCharacter];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [buttons countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (CGSize)intrinsicContentSize
{
  buttons = [(TPNumberPad *)self buttons];
  v3 = [buttons objectAtIndex:0];

  [v3 frame];
  v5 = v4 * 3.0;
  [v3 frame];
  v7 = v6 * 4.0;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setButtons:(id)buttons
{
  buttonsCopy = buttons;
  buttons = self->_buttons;
  if (!buttons)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = self->_buttons;
    self->_buttons = v5;

    buttons = self->_buttons;
  }

  [(NSMutableArray *)buttons removeAllObjects];
  v7 = buttonsCopy;
  if (buttonsCopy)
  {
    [(NSMutableArray *)self->_buttons addObjectsFromArray:buttonsCopy];
    v7 = buttonsCopy;
  }
}

- (void)replaceButton:(id)button atIndex:(unint64_t)index
{
  buttonCopy = button;
  if (index >= 0xC)
  {
    [(TPNumberPad *)index replaceButton:a2 atIndex:self];
  }

  v7 = [(NSMutableArray *)self->_buttons objectAtIndex:index];
  [v7 removeFromSuperview];
  [(NSMutableArray *)self->_buttons replaceObjectAtIndex:index withObject:buttonCopy];
  [(TPNumberPad *)self _addButton:buttonCopy];
  [(TPNumberPad *)self _layoutGrid];
}

- (void)_addButton:(id)button
{
  buttonCopy = button;
  if ([buttonCopy conformsToProtocol:&unk_1F2CCAA30])
  {
    v4 = [buttonCopy character] == 13;
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v4)
  {
    [buttonCopy setExclusiveTouch:1];
    [buttonCopy addTarget:self action:sel_buttonTapped_ forControlEvents:64];
    [buttonCopy addTarget:self action:sel_buttonDown_ forControlEvents:1];
    [buttonCopy addTarget:self action:sel_buttonUp_ forControlEvents:64];
    [buttonCopy addTarget:self action:sel_buttonUpOutside_ forControlEvents:128];
    [buttonCopy addTarget:self action:sel_buttonCancelled_ forControlEvents:256];
  }

  v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_buttonLongPressedViaGesture_];
  [v5 setAllowableMovement:100.0];
  [v5 setMinimumPressDuration:1.0];
  [buttonCopy addGestureRecognizer:v5];
  [(TPNumberPad *)self addSubview:buttonCopy];
}

- (void)buttonLongPressedViaGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    view = [gestureCopy view];
    [(TPNumberPad *)self buttonLongPressed:view];
  }
}

- (void)initWithButtons:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TPNumberPad.m" lineNumber:29 description:@"Must have 12 buttons to use this class."];
}

- (void)replaceButton:(uint64_t)a3 atIndex:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"TPNumberPad.m" lineNumber:90 description:{@"Index out of bounds: %u", a1}];
}

@end