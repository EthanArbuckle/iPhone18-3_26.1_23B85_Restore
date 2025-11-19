@interface TPNumberPad
- (CGSize)intrinsicContentSize;
- (TPNumberPad)initWithButtons:(id)a3;
- (void)_addButton:(id)a3;
- (void)_layoutGrid;
- (void)buttonLongPressedViaGesture:(id)a3;
- (void)dealloc;
- (void)reloadButtonImages;
- (void)replaceButton:(id)a3 atIndex:(unint64_t)a4;
- (void)setButtons:(id)a3;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TPNumberPad;
  [(TPNumberPad *)&v4 dealloc];
}

- (TPNumberPad)initWithButtons:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  self->_numberButtonsEnabled = 1;
  if ([v5 count] <= 0xB)
  {
    [(TPNumberPad *)a2 initWithButtons:?];
  }

  v6 = [v5 objectAtIndex:0];
  [v6 frame];
  v8 = v7 * 3.0;
  [v6 frame];
  v25.receiver = self;
  v25.super_class = TPNumberPad;
  v10 = [(TPNumberPad *)&v25 initWithFrame:0.0, 0.0, v8, v9 * 4.0];
  v11 = v10;
  if (v10)
  {
    [(TPNumberPad *)v10 setButtons:v5];
    v12 = [MEMORY[0x1E69DC888] clearColor];
    [(TPNumberPad *)v11 setBackgroundColor:v12];

    [(TPNumberPad *)v11 setOpaque:0];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v5;
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
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v11 selector:sel_handleCurrentLocaleDidChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
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
  v2 = [(TPNumberPad *)self buttons];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 loadImagesForCurrentCharacter];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(TPNumberPad *)self buttons];
  v3 = [v2 objectAtIndex:0];

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

- (void)setButtons:(id)a3
{
  v8 = a3;
  buttons = self->_buttons;
  if (!buttons)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = self->_buttons;
    self->_buttons = v5;

    buttons = self->_buttons;
  }

  [(NSMutableArray *)buttons removeAllObjects];
  v7 = v8;
  if (v8)
  {
    [(NSMutableArray *)self->_buttons addObjectsFromArray:v8];
    v7 = v8;
  }
}

- (void)replaceButton:(id)a3 atIndex:(unint64_t)a4
{
  v8 = a3;
  if (a4 >= 0xC)
  {
    [(TPNumberPad *)a4 replaceButton:a2 atIndex:self];
  }

  v7 = [(NSMutableArray *)self->_buttons objectAtIndex:a4];
  [v7 removeFromSuperview];
  [(NSMutableArray *)self->_buttons replaceObjectAtIndex:a4 withObject:v8];
  [(TPNumberPad *)self _addButton:v8];
  [(TPNumberPad *)self _layoutGrid];
}

- (void)_addButton:(id)a3
{
  v6 = a3;
  if ([v6 conformsToProtocol:&unk_1F2CCAA30])
  {
    v4 = [v6 character] == 13;
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v4)
  {
    [v6 setExclusiveTouch:1];
    [v6 addTarget:self action:sel_buttonTapped_ forControlEvents:64];
    [v6 addTarget:self action:sel_buttonDown_ forControlEvents:1];
    [v6 addTarget:self action:sel_buttonUp_ forControlEvents:64];
    [v6 addTarget:self action:sel_buttonUpOutside_ forControlEvents:128];
    [v6 addTarget:self action:sel_buttonCancelled_ forControlEvents:256];
  }

  v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_buttonLongPressedViaGesture_];
  [v5 setAllowableMovement:100.0];
  [v5 setMinimumPressDuration:1.0];
  [v6 addGestureRecognizer:v5];
  [(TPNumberPad *)self addSubview:v6];
}

- (void)buttonLongPressedViaGesture:(id)a3
{
  v5 = a3;
  if ([v5 state] == 1)
  {
    v4 = [v5 view];
    [(TPNumberPad *)self buttonLongPressed:v4];
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