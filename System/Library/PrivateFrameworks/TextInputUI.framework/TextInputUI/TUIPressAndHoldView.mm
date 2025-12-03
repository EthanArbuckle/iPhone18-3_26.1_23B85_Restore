@interface TUIPressAndHoldView
+ (CGSize)requiredPopoverSizeForKeyString:(id)string;
+ (id)accentedCharactersForKeyString:(id)string;
- (BOOL)handleNumberKey:(unint64_t)key;
- (BOOL)handleSelection;
- (BOOL)hasAccentVariantInForwardDirection:(BOOL)direction;
- (BOOL)pressAndHoldGridHasSelectedIndexPath;
- (NSString)selectedAccentVariant;
- (TUIPressAndHoldView)initWithFrame:(CGRect)frame keyString:(id)string;
- (TUIPressAndHoldViewDelegate)delegate;
- (void)pressAndHoldGridDidAcceptAccentVariant:(id)variant atIndexPath:(id)path;
- (void)setSelectedIndexPath:(id)path;
- (void)showAccentVariantInForwardDirection:(BOOL)direction;
@end

@implementation TUIPressAndHoldView

- (TUIPressAndHoldViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pressAndHoldGridDidAcceptAccentVariant:(id)variant atIndexPath:(id)path
{
  variantCopy = variant;
  pathCopy = path;
  delegate = [(TUIPressAndHoldView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(TUIPressAndHoldView *)self delegate];
    [delegate2 pressAndHoldViewDidAcceptAccentVariant:variantCopy atIndexPath:pathCopy];
  }
}

- (NSString)selectedAccentVariant
{
  pressAndHoldGrid = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  selectedAccentVariant = [pressAndHoldGrid selectedAccentVariant];

  return selectedAccentVariant;
}

- (BOOL)handleSelection
{
  pressAndHoldGrid = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  handleSelection = [pressAndHoldGrid handleSelection];

  return handleSelection;
}

- (BOOL)pressAndHoldGridHasSelectedIndexPath
{
  pressAndHoldGrid = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  selectedIndexPath = [pressAndHoldGrid selectedIndexPath];
  v4 = selectedIndexPath != 0;

  return v4;
}

- (void)setSelectedIndexPath:(id)path
{
  pathCopy = path;
  pressAndHoldGrid = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  [pressAndHoldGrid setSelectedIndexPath:pathCopy];
}

- (BOOL)handleNumberKey:(unint64_t)key
{
  pressAndHoldGrid = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  LOBYTE(key) = [pressAndHoldGrid handleNumberKey:key];

  return key;
}

- (void)showAccentVariantInForwardDirection:(BOOL)direction
{
  directionCopy = direction;
  pressAndHoldGrid = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  v4 = [pressAndHoldGrid showAccentVariantInForwardDirection:directionCopy];
}

- (BOOL)hasAccentVariantInForwardDirection:(BOOL)direction
{
  directionCopy = direction;
  pressAndHoldGrid = [(TUIPressAndHoldView *)self pressAndHoldGrid];
  LOBYTE(directionCopy) = [pressAndHoldGrid hasAccentVariantInForwardDirection:directionCopy];

  return directionCopy;
}

- (TUIPressAndHoldView)initWithFrame:(CGRect)frame keyString:(id)string
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stringCopy = string;
  v20.receiver = self;
  v20.super_class = TUIPressAndHoldView;
  height = [(TUIPressAndHoldView *)&v20 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_currentKeyString, string);
    v13 = [TUIPressAndHoldView accentedCharactersForKeyString:stringCopy];
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

+ (CGSize)requiredPopoverSizeForKeyString:(id)string
{
  v3 = [self accentedCharactersForKeyString:string];
  [v3 count];
  v4 = [v3 count];
  v5 = ([v3 count] + 1) * 5.0 + v4 * 30.0 + 0.0;

  v6 = 56.0;
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

+ (id)accentedCharactersForKeyString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = UIKeyboardGetCurrentInputMode();
    v5 = [@"Roman-Accent-" stringByAppendingString:stringCopy];
    v6 = UIKeyboardLocalizedObject();

    objc_opt_class();
    v7 = 0;
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 objectForKey:*MEMORY[0x1E69DE050]];
      if (v8)
      {
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v10 = [v8 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

        v7 = [v10 mutableCopy];
        [v7 removeObject:stringCopy];
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