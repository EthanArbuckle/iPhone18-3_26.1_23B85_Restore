@interface TUIPressAndHoldView
+ (CGSize)requiredPopoverSizeForKeyString:(id)a3;
+ (id)accentedCharactersForKeyString:(id)a3;
- (BOOL)handleNumberKey:(unint64_t)a3;
- (BOOL)handleSelection;
- (BOOL)hasAccentVariantInForwardDirection:(BOOL)a3;
- (BOOL)pressAndHoldGridHasSelectedIndexPath;
- (NSString)selectedAccentVariant;
- (TUIPressAndHoldView)initWithFrame:(CGRect)a3 keyString:(id)a4;
- (TUIPressAndHoldViewDelegate)delegate;
- (void)pressAndHoldGridDidAcceptAccentVariant:(id)a3 atIndexPath:(id)a4;
- (void)setSelectedIndexPath:(id)a3;
- (void)showAccentVariantInForwardDirection:(BOOL)a3;
@end

@implementation TUIPressAndHoldView

- (TUIPressAndHoldViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pressAndHoldGridDidAcceptAccentVariant:(id)a3 atIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(TUIPressAndHoldView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(TUIPressAndHoldView *)self delegate];
    [v9 pressAndHoldViewDidAcceptAccentVariant:v10 atIndexPath:v6];
  }
}

- (NSString)selectedAccentVariant
{
  v2 = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  v3 = [v2 selectedAccentVariant];

  return v3;
}

- (BOOL)handleSelection
{
  v2 = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  v3 = [v2 handleSelection];

  return v3;
}

- (BOOL)pressAndHoldGridHasSelectedIndexPath
{
  v2 = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  v3 = [v2 selectedIndexPath];
  v4 = v3 != 0;

  return v4;
}

- (void)setSelectedIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  [v5 setSelectedIndexPath:v4];
}

- (BOOL)handleNumberKey:(unint64_t)a3
{
  v4 = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  LOBYTE(a3) = [v4 handleNumberKey:a3];

  return a3;
}

- (void)showAccentVariantInForwardDirection:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  v4 = [v5 showAccentVariantInForwardDirection:v3];
}

- (BOOL)hasAccentVariantInForwardDirection:(BOOL)a3
{
  v3 = a3;
  v4 = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  LOBYTE(v3) = [v4 hasAccentVariantInForwardDirection:v3];

  return v3;
}

- (TUIPressAndHoldView)initWithFrame:(CGRect)a3 keyString:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = TUIPressAndHoldView;
  v11 = [(TUIPressAndHoldView *)&v20 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_currentKeyString, a4);
    v13 = [TUIPressAndHoldView accentedCharactersForKeyString:v10];
    accentVariants = v12->_accentVariants;
    v12->_accentVariants = v13;
    v15 = v13;

    v16 = [TUIPressAndHoldGrid alloc];
    [(TUIPressAndHoldView *)v12 bounds];
    v17 = [(TUIPressAndHoldGrid *)v16 initWithFrame:v15 accentVariants:?];
    pressAndHoldGrid = v12->_pressAndHoldGrid;
    v12->_pressAndHoldGrid = v17;

    [(TUIPressAndHoldGrid *)v12->_pressAndHoldGrid setDelegate:v12];
    [(TUIPressAndHoldView *)v12 addSubview:v12->_pressAndHoldGrid];
  }

  return v12;
}

+ (CGSize)requiredPopoverSizeForKeyString:(id)a3
{
  v3 = [a1 accentedCharactersForKeyString:a3];
  [v3 count];
  v4 = [v3 count];
  v5 = ([v3 count] + 1) * 5.0 + v4 * 30.0 + 0.0;

  v6 = 56.0;
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

+ (id)accentedCharactersForKeyString:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = UIKeyboardGetCurrentInputMode();
    v5 = [@"Roman-Accent-" stringByAppendingString:v3];
    v6 = UIKeyboardLocalizedObject();

    objc_opt_class();
    v7 = 0;
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 objectForKey:*MEMORY[0x1E69DE050]];
      if (v8)
      {
        v9 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v10 = [v8 componentsSeparatedByCharactersInSet:v9];

        v7 = [v10 mutableCopy];
        [v7 removeObject:v3];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end