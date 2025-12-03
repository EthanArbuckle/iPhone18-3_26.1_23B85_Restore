@interface TPPhonePad
+ (BOOL)launchFieldTestIfNeeded:(id)needed;
+ (BOOL)shouldStringAutoDial:(id)dial givenLastChar:(char)char;
+ (void)_delayedDeactivate;
- (BOOL)cancelTouchTracking;
- (CGPoint)_keypadOrigin;
- (CGRect)_rectForKey:(unint64_t)key;
- (CGRect)_updateRect:(CGRect)result withScale:(double)scale;
- (TPPhonePad)initWithFrame:(CGRect)frame;
- (id)_buttonForKeyAtIndex:(unint64_t)index;
- (id)_imageByCroppingImage:(id)image toRect:(CGRect)rect;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int)_keyForPoint:(CGPoint)point;
- (void)_activateSounds:(BOOL)sounds;
- (void)_appResumed;
- (void)_handleKey:(id)key forUIEvent:(id)event;
- (void)_handleKeyPressAndHoldForKey:(int64_t)key;
- (void)_notifySoundCompletionIfNecessary:(unsigned int)necessary;
- (void)_playSoundForKey:(unint64_t)key;
- (void)_stopAllSoundsForcingCallbacks:(BOOL)callbacks;
- (void)_stopSoundForKey:(unint64_t)key;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)highlightKeyAtIndex:(int64_t)index;
- (void)movedFromWindow:(id)window;
- (void)movedToWindow:(id)window;
- (void)performTapActionCancelForHighlightedKey;
- (void)performTapActionDownForHighlightedKey;
- (void)performTapActionEndForHighlightedKey;
- (void)removeFromSuperview;
- (void)setButton:(id)button forKeyAtIndex:(unint64_t)index;
- (void)setDelegate:(id)delegate;
@end

@implementation TPPhonePad

- (void)performTapActionDownForHighlightedKey
{
  if ((self->_highlightKey & 0x8000000000000000) == 0)
  {
    if (self->_playsSounds)
    {
      [(TPPhonePad *)self _playSoundForKey:?];
    }

    if (self->_delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [(TPDialerKeypadDelegate *)self->_delegate phonePad:self appendString:kKeyStrs[self->_highlightKey]];
      }

      if (self->_delegate)
      {
        if ((self->_highlightKey - 9) > 2 || ([(TPPhonePad *)self performSelector:sel__handleKeyPressAndHoldForHighlightedKey_ withObject:0 afterDelay:1.0], self->_delegate))
        {
          if (objc_opt_respondsToSelector())
          {
            delegate = self->_delegate;
            v4 = kKeyValues[self->_downKey];

            [(TPDialerKeypadDelegate *)delegate phonePad:self keyDown:v4];
          }
        }
      }
    }
  }
}

- (void)performTapActionEndForHighlightedKey
{
  highlightKey = self->_highlightKey;
  if ((highlightKey & 0x8000000000000000) == 0)
  {
    if (self->_delegate)
    {
      v4 = objc_opt_respondsToSelector();
      highlightKey = self->_highlightKey;
      if (v4)
      {
        [(TPDialerKeypadDelegate *)self->_delegate phonePad:self keyUp:kKeyValues[highlightKey]];
        highlightKey = self->_highlightKey;
      }
    }

    if (self->_playsSounds)
    {
      [(TPPhonePad *)self _stopSoundForKey:highlightKey];
      highlightKey = self->_highlightKey;
    }

    if ((highlightKey - 9) <= 2)
    {
      v5 = MEMORY[0x1E69E58C0];

      [v5 cancelPreviousPerformRequestsWithTarget:self selector:sel__handleKeyPressAndHoldForHighlightedKey_ object:0];
    }
  }
}

- (void)performTapActionCancelForHighlightedKey
{
  if ((self->_highlightKey & 0x8000000000000000) == 0)
  {
    if (self->_playsSounds)
    {
      [(TPPhonePad *)self _stopSoundForKey:?];
    }

    v3 = MEMORY[0x1E69E58C0];

    [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__handleKeyPressAndHoldForHighlightedKey_ object:0];
  }
}

- (void)highlightKeyAtIndex:(int64_t)index
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = TPDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    indexCopy = index;
    _os_log_impl(&dword_1B4894000, v5, OS_LOG_TYPE_DEFAULT, "highlightKeyAtIndex: %ld", &v7, 0xCu);
  }

  self->_highlightKey = index;
  [(TPPhonePad *)self setNeedsDisplayForKey:index];
  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldStringAutoDial:(id)dial givenLastChar:(char)char
{
  charCopy = char;
  dialCopy = dial;
  v6 = dialCopy;
  if (charCopy != 35)
  {
    goto LABEL_24;
  }

  v7 = [dialCopy rangeOfString:@"**0" options:8];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v6 isEqualToString:@"*#06#"])
    {
      LOBYTE(v9) = 1;
      goto LABEL_25;
    }

LABEL_24:
    LOBYTE(v9) = 0;
    goto LABEL_25;
  }

  v10 = v7 + v8;
  v11 = [v6 length];
  v12 = v10 + 1;
  if (v11 <= v10 + 1)
  {
    goto LABEL_24;
  }

  v13 = v11;
  if (([v6 characterAtIndex:v10] & 0xFFFE) != 0x34)
  {
    goto LABEL_24;
  }

  v14 = [v6 characterAtIndex:v10 + 1];
  if (v14 == 50)
  {
    v12 = v10 + 2;
    if (v13 <= v10 + 2)
    {
      goto LABEL_24;
    }

    v14 = [v6 characterAtIndex:v10 + 2];
  }

  if (v14 != 42 || v12 >= v13 - 2)
  {
    goto LABEL_24;
  }

  v15 = v13 - 1;
  do
  {
    v16 = [v6 characterAtIndex:v12];
    v9 = v16 == 42 || (v16 - 48) < 0xA;
    ++v12;
  }

  while (v9 && v12 < v15);
LABEL_25:

  return v9;
}

+ (BOOL)launchFieldTestIfNeeded:(id)needed
{
  v3 = [needed isEqualToString:@"*3001#12345#*"];
  if (v3)
  {
    [*MEMORY[0x1E69DDA98] launchApplicationWithIdentifier:@"com.apple.fieldtest" suspended:0];
  }

  return v3;
}

- (TPPhonePad)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TPPhonePad;
  v3 = [(TPPhonePad *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TPPhonePad *)v3 setOpaque:0];
    [(TPPhonePad *)v4 addTarget:v4 action:sel__handleKey_forUIEvent_ forEvents:193];
    v4->_downKey = -1;
    v4->_highlightKey = -1;
    v4->_topHeight = 58.0;
    v4->_midHeight = 56.0;
    v4->_bottomHeight = 68.0;
    v4->_leftWidth = 96.0;
    v4->_midWidth = 91.0;
    v4->_rightWidth = 96.0;
    [(TPPhonePad *)v4 setPlaysSounds:1];
  }

  return v4;
}

- (void)dealloc
{
  [(TPPhonePad *)self _activateSounds:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  keyToButtonMap = self->_keyToButtonMap;
  if (keyToButtonMap)
  {
    CFRelease(keyToButtonMap);
  }

  if (self->_inflightSounds)
  {
    [(TPPhonePad *)self _stopAllSoundsForcingCallbacks:1];
    CFRelease(self->_inflightSounds);
  }

  v5.receiver = self;
  v5.super_class = TPPhonePad;
  [(TPPhonePad *)&v5 dealloc];
}

+ (void)_delayedDeactivate
{
  v7 = *MEMORY[0x1E69E9840];
  if (!__SystemSoundActivationCount)
  {
    inPropertyData = 0;
    AudioServicesSetProperty(0x61637421u, 4u, &kSoundIDs, 4u, &inPropertyData);
    v2 = TPDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v6 = inPropertyData;
      _os_log_impl(&dword_1B4894000, v2, OS_LOG_TYPE_DEFAULT, "Called AudioServicesSetProperty() with kAudioServicesPropertyActivate and active=%d", buf, 8u);
    }

    __PendingDeactivate = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_activateSounds:(BOOL)sounds
{
  soundsCopy = sounds;
  v15 = *MEMORY[0x1E69E9840];
  v5 = (*(self + 556) >> 1) & 1;
  if (sounds && -[TPPhonePad _isInAWindow](self, "_isInAWindow") && (v6 = MEMORY[0x1E69DDA98], ([*MEMORY[0x1E69DDA98] isSuspended] & 1) == 0))
  {
    v7 = [*v6 isSuspendedEventsOnly] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v5)
  {
    if (soundsCopy)
    {
      v8 = __SystemSoundActivationCount + 1;
    }

    else
    {
      v8 = __SystemSoundActivationCount - 1;
    }

    __SystemSoundActivationCount = v8;
    if (soundsCopy && v8 == 1)
    {
      if ((__PendingDeactivate & 1) == 0)
      {
        inPropertyData = 1;
        AudioServicesSetProperty(0x61637421u, 4u, &kSoundIDs, 4u, &inPropertyData);
        v9 = TPDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v14 = inPropertyData;
          _os_log_impl(&dword_1B4894000, v9, OS_LOG_TYPE_DEFAULT, "Called AudioServicesSetProperty() with kAudioServicesPropertyActivate and active=%d", buf, 8u);
        }
      }
    }

    else if (!soundsCopy && !v8)
    {
      [objc_opt_class() performSelector:sel__delayedDeactivate withObject:0 afterDelay:0.0];
      __PendingDeactivate = 1;
    }

    if (soundsCopy)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    *(self + 556) = *(self + 556) & 0xFD | v10;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeFromSuperview
{
  [(TPPhonePad *)self _activateSounds:0];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = TPPhonePad;
  [(TPPhonePad *)&v3 removeFromSuperview];
}

- (void)_appResumed
{
  if (self->_playsSounds)
  {
    [(TPPhonePad *)self _activateSounds:1];
  }
}

- (void)movedFromWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = TPPhonePad;
  [(TPPhonePad *)&v4 movedFromWindow:window];
  [(TPPhonePad *)self _activateSounds:0];
}

- (void)movedToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = TPPhonePad;
  [(TPPhonePad *)&v4 movedToWindow:window];
  if (self->_playsSounds)
  {
    [(TPPhonePad *)self _activateSounds:1];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self->_delegate != delegateCopy)
  {
    v9 = delegateCopy;
    objc_storeStrong(&self->_delegate, delegate);
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v7 = self->_delegate;
      v8 = objc_opt_respondsToSelector();
    }

    else
    {
      v8 = 0;
    }

    *(self + 556) = *(self + 556) & 0xFE | v8 & 1;
    self->_incompleteSounds = 0;
    delegateCopy = v9;
  }
}

- (void)setButton:(id)button forKeyAtIndex:(unint64_t)index
{
  buttonCopy = button;
  keyToButtonMap = self->_keyToButtonMap;
  value = buttonCopy;
  if (keyToButtonMap || (keyToButtonMap = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]), buttonCopy = value, (self->_keyToButtonMap = keyToButtonMap) != 0))
  {
    if (buttonCopy)
    {
      [(TPPhonePad *)self _rectForKey:index];
      [value setFrame:?];
      [(TPPhonePad *)self addSubview:value];
      CFDictionarySetValue(self->_keyToButtonMap, index, value);
    }

    else
    {
      CFDictionaryRemoveValue(keyToButtonMap, index);
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (id)_buttonForKeyAtIndex:(unint64_t)index
{
  keyToButtonMap = self->_keyToButtonMap;
  if (keyToButtonMap)
  {
    keyToButtonMap = CFDictionaryGetValue(keyToButtonMap, index);
    v3 = vars8;
  }

  return keyToButtonMap;
}

- (CGPoint)_keypadOrigin
{
  _keypadImage = [(TPPhonePad *)self _keypadImage];
  [_keypadImage size];
  v5 = v4;
  v7 = v6;

  [(TPPhonePad *)self bounds];
  v9 = (v8 - v5) * 0.5;
  v10 = roundf(v9);
  v12 = (v11 - v7) * 0.5;
  v13 = roundf(v12);
  [(TPPhonePad *)self _yFudge];
  v15 = v14 + v13;
  v16 = v10;
  result.y = v15;
  result.x = v16;
  return result;
}

- (CGRect)_updateRect:(CGRect)result withScale:(double)scale
{
  if (scale != 1.0 && scale != 0.0)
  {
    result.origin.x = result.origin.x * scale;
    result.origin.y = result.origin.y * scale;
    if (result.size.width > 1.0)
    {
      result.size.width = result.size.width * scale;
    }

    if (result.size.height > 1.0)
    {
      result.size.height = result.size.height * scale;
    }
  }

  return result;
}

- (id)_imageByCroppingImage:(id)image toRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  [imageCopy scale];
  [(TPPhonePad *)self _updateRect:x withScale:y, width, height, v10];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  cGImage = [imageCopy CGImage];

  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  v20 = CGImageCreateWithImageInRect(cGImage, v24);
  v21 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v20];
  CGImageRelease(v20);

  return v21;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TPPhonePad *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  _keypadImage = [(TPPhonePad *)self _keypadImage];
  [_keypadImage size];
  [(TPPhonePad *)self _keypadOrigin];
  v42 = v17;
  v43 = v16;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v47.origin.x = v9;
  v47.origin.y = v11;
  v47.size.width = v13;
  v47.size.height = v15;
  v18 = CGRectEqualToRect(v45, v47);
  v19 = v18;
  if (v18)
  {
    [_keypadImage drawAtPoint:17 blendMode:v43 alpha:{v42, 1.0}];
  }

  if (self->_downKey < 0)
  {
    v21 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    v25 = *(MEMORY[0x1E695F058] + 16);
    v27 = *(MEMORY[0x1E695F058] + 24);
    if (v19)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [(TPPhonePad *)self _rectForKey:?];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    if (v19)
    {
      goto LABEL_10;
    }
  }

  if (self->_downKey < 0)
  {
    goto LABEL_9;
  }

  v46.origin.x = v21;
  v46.origin.y = v23;
  v46.size.width = v25;
  v46.size.height = v27;
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  if (!CGRectEqualToRect(v46, v48))
  {
LABEL_9:
    height = [(TPPhonePad *)self _imageByCroppingImage:_keypadImage toRect:x - v43, y - v42, width, height];
    [height drawInRect:17 blendMode:x alpha:{y, width, height, 1.0}];
  }

LABEL_10:
  if ((self->_downKey & 0x8000000000000000) == 0)
  {
    _pressedImage = [(TPPhonePad *)self _pressedImage];
    v30 = [(TPPhonePad *)self _imageByCroppingImage:_pressedImage toRect:v21 - v43, v23 - v42, v25, v27];
    [v30 drawInRect:17 blendMode:v21 alpha:{v23, v25, v27, 1.0}];
  }

  if ((self->_highlightKey & 0x8000000000000000) == 0)
  {
    [(TPPhonePad *)self _rectForKey:?];
    if ((self->_highlightKey & 0x8000000000000000) == 0)
    {
      v35 = v31;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      _highlightedImage = [(TPPhonePad *)self _highlightedImage];
      v40 = [(TPPhonePad *)self _imageByCroppingImage:_highlightedImage toRect:v35 - v43, v36 - v42, v37, v38];
      [v40 drawInRect:17 blendMode:v35 alpha:{v36, v37, v38, 1.0}];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = TPPhonePad;
  v5 = [(TPPhonePad *)&v8 hitTest:event withEvent:test.x, test.y];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;

      v5 = selfCopy;
    }
  }

  return v5;
}

- (BOOL)cancelTouchTracking
{
  downKey = self->_downKey;
  if ((downKey & 0x8000000000000000) == 0)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleKeyPressAndHoldForDownKey_ object:self];
    [(TPPhonePad *)self setHighlighted:self->_highlightKey >= 0];
    self->_downKey = -1;
    if (self->_delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [(TPDialerKeypadDelegate *)self->_delegate phonePad:self keyUp:kKeyValues[downKey]];
      }
    }
  }

  [(TPPhonePad *)self _stopAllSoundsForcingCallbacks:1];
  v5.receiver = self;
  v5.super_class = TPPhonePad;
  return [(TPPhonePad *)&v5 cancelTouchTracking];
}

- (void)_handleKey:(id)key forUIEvent:(id)event
{
  keyCopy = key;
  v6 = [event touchesForView:self];
  anyObject = [v6 anyObject];

  phase = [anyObject phase];
  if (phase == 3)
  {
    downKey = self->_downKey;
    if ((downKey & 0x8000000000000000) == 0)
    {
      if (self->_delegate)
      {
        v11 = objc_opt_respondsToSelector();
        downKey = self->_downKey;
        if (v11)
        {
          [(TPDialerKeypadDelegate *)self->_delegate phonePad:self keyUp:kKeyValues[downKey]];
          downKey = self->_downKey;
        }
      }

      if (self->_playsSounds)
      {
        [(TPPhonePad *)self _stopSoundForKey:downKey];
        downKey = self->_downKey;
      }

      if ((downKey - 9) <= 2)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleKeyPressAndHoldForDownKey_ object:keyCopy];
      }
    }
  }

  else if (!phase)
  {
    if ((self->_downKey & 0x8000000000000000) == 0)
    {
      [(TPPhonePad *)self setHighlighted:self->_highlightKey >= 0];
    }

    [anyObject locationInView:self];
    v9 = [(TPPhonePad *)self _keyForPoint:?];
    self->_downKey = v9;
    if ((v9 & 0x80000000) == 0)
    {
      if (self->_playsSounds)
      {
        [(TPPhonePad *)self _playSoundForKey:?];
      }

      if (self->_delegate)
      {
        if (objc_opt_respondsToSelector())
        {
          [(TPDialerKeypadDelegate *)self->_delegate phonePad:self appendString:kKeyStrs[self->_downKey]];
        }

        if (self->_delegate)
        {
          if ((self->_downKey - 9) > 2 || ([(TPPhonePad *)self performSelector:sel__handleKeyPressAndHoldForDownKey_ withObject:keyCopy afterDelay:1.0], self->_delegate))
          {
            if (objc_opt_respondsToSelector())
            {
              [(TPDialerKeypadDelegate *)self->_delegate phonePad:self keyDown:kKeyValues[self->_downKey]];
            }
          }
        }
      }

      [(TPPhonePad *)self setHighlighted:1];
    }
  }
}

- (void)_handleKeyPressAndHoldForKey:(int64_t)key
{
  if ((key - 9) <= 2 && self->_delegate)
  {
    v4 = off_1E7C0C560[key - 9];
    v5 = objc_opt_respondsToSelector();
    delegate = self->_delegate;
    if (v5)
    {

      [(TPDialerKeypadDelegate *)delegate phonePad:self replaceLastDigitWithString:v4];
    }

    else if (delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [(TPDialerKeypadDelegate *)self->_delegate phonePadDeleteLastDigit:self];
      }

      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v7 = self->_delegate;

        [(TPDialerKeypadDelegate *)v7 phonePad:self appendString:v4];
      }
    }
  }
}

- (int)_keyForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _keypadImage = [(TPPhonePad *)self _keypadImage];
  [_keypadImage size];
  v8 = v7;

  [(TPPhonePad *)self _keypadOrigin];
  v10 = x - v9;
  v12 = y - v11;
  leftWidth = self->_leftWidth;
  if (v10 >= leftWidth)
  {
    if (v10 >= leftWidth + self->_midWidth)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v12 < 0.0 || v12 > v8)
  {
    return -1;
  }

  topHeight = self->_topHeight;
  if (v12 < topHeight)
  {
    v18 = 0;
    return v18 + v14;
  }

  if (v12 >= v8 - self->_bottomHeight)
  {
    v18 = 9;
    return v18 + v14;
  }

  v19 = (v12 - topHeight) / self->_midHeight;
  v20 = (floorf(v19) + 1.0);
  if (v20 >= 4)
  {
    return -1;
  }

  return 3 * v20 + v14;
}

- (CGRect)_rectForKey:(unint64_t)key
{
  [(TPPhonePad *)self _keypadOrigin];
  v7 = key / 3;
  v8 = key % 3;
  p_leftWidth = &self->_leftWidth;
  leftWidth = self->_leftWidth;
  if (key % 3 < 2)
  {
    p_topHeight = &self->_topHeight;
    topHeight = self->_topHeight;
    p_midHeight = &self->_midHeight;
    midHeight = self->_midHeight;
    v11 = 0.0;
    if (!v8)
    {
      goto LABEL_6;
    }

    v16 = &OBJC_IVAR___TPPhonePad__midWidth;
  }

  else
  {
    v11 = self->_midWidth - leftWidth;
    p_topHeight = &self->_topHeight;
    topHeight = self->_topHeight;
    p_midHeight = &self->_midHeight;
    midHeight = self->_midHeight;
    v16 = &OBJC_IVAR___TPPhonePad__rightWidth;
  }

  p_leftWidth = (self + *v16);
LABEL_6:
  v17 = *p_leftWidth;
  if (v7)
  {
    if (v7 == 3)
    {
      p_topHeight = &self->_bottomHeight;
    }

    else
    {
      p_topHeight = p_midHeight;
    }
  }

  v18 = *p_topHeight;
  v19 = topHeight - midHeight;
  v20 = v7 - 1;
  if (v7 <= 0)
  {
    v20 = 0;
  }

  v21 = v6 + topHeight * v7 - v19 * v20;
  v22 = v5 + leftWidth * v8 + v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v21;
  result.origin.x = v22;
  return result;
}

- (void)_notifySoundCompletionIfNecessary:(unsigned int)necessary
{
  incompleteSounds = self->_incompleteSounds;
  if (incompleteSounds)
  {
    v5 = incompleteSounds - 1;
    self->_incompleteSounds = v5;
    if (!v5)
    {
      AudioServicesRemoveSystemSoundCompletion(necessary);
      if (*(self + 556))
      {
        delegate = self->_delegate;

        [(TPDialerKeypadDelegate *)delegate phonePadDidEndSounds:self];
      }
    }
  }
}

- (void)_playSoundForKey:(unint64_t)key
{
  if (key <= 0xB)
  {
    v4 = kSoundIDs[key];
    if (v4)
    {
      if (*(self + 556))
      {
        if (!self->_incompleteSounds)
        {
          [(TPDialerKeypadDelegate *)self->_delegate phonePadWillBeginSounds:self];
        }

        Current = CFRunLoopGetCurrent();
        AudioServicesAddSystemSoundCompletion(v4, Current, *MEMORY[0x1E695E8D0], _SoundCompletedPlaying, self);
        ++self->_incompleteSounds;
      }

      AudioServicesStartSystemSound();
      inflightSounds = self->_inflightSounds;

      CFSetAddValue(inflightSounds, key);
    }
  }
}

- (void)_stopSoundForKey:(unint64_t)key
{
  if (key <= 0xB && kSoundIDs[key])
  {
    AudioServicesStopSystemSound();
    inflightSounds = self->_inflightSounds;

    CFSetRemoveValue(inflightSounds, key);
  }
}

- (void)_stopAllSoundsForcingCallbacks:(BOOL)callbacks
{
  inflightSounds = self->_inflightSounds;
  if (inflightSounds)
  {
    callbacksCopy = callbacks;
    CFSetApplyFunction(inflightSounds, __TPStopSoundForKeyCallback, self);
    CFSetRemoveAllValues(self->_inflightSounds);
    if (callbacksCopy)
    {
      for (i = 0; i != 12; ++i)
      {
        AudioServicesRemoveSystemSoundCompletion(kSoundIDs[i]);
      }

      if (*(self + 556))
      {
        if (self->_incompleteSounds)
        {
          [(TPDialerKeypadDelegate *)self->_delegate phonePadDidEndSounds:self];
        }
      }

      self->_incompleteSounds = 0;
    }
  }
}

@end