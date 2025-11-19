@interface TPPhonePad
+ (BOOL)launchFieldTestIfNeeded:(id)a3;
+ (BOOL)shouldStringAutoDial:(id)a3 givenLastChar:(char)a4;
+ (void)_delayedDeactivate;
- (BOOL)cancelTouchTracking;
- (CGPoint)_keypadOrigin;
- (CGRect)_rectForKey:(unint64_t)a3;
- (CGRect)_updateRect:(CGRect)result withScale:(double)a4;
- (TPPhonePad)initWithFrame:(CGRect)a3;
- (id)_buttonForKeyAtIndex:(unint64_t)a3;
- (id)_imageByCroppingImage:(id)a3 toRect:(CGRect)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int)_keyForPoint:(CGPoint)a3;
- (void)_activateSounds:(BOOL)a3;
- (void)_appResumed;
- (void)_handleKey:(id)a3 forUIEvent:(id)a4;
- (void)_handleKeyPressAndHoldForKey:(int64_t)a3;
- (void)_notifySoundCompletionIfNecessary:(unsigned int)a3;
- (void)_playSoundForKey:(unint64_t)a3;
- (void)_stopAllSoundsForcingCallbacks:(BOOL)a3;
- (void)_stopSoundForKey:(unint64_t)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)highlightKeyAtIndex:(int64_t)a3;
- (void)movedFromWindow:(id)a3;
- (void)movedToWindow:(id)a3;
- (void)performTapActionCancelForHighlightedKey;
- (void)performTapActionDownForHighlightedKey;
- (void)performTapActionEndForHighlightedKey;
- (void)removeFromSuperview;
- (void)setButton:(id)a3 forKeyAtIndex:(unint64_t)a4;
- (void)setDelegate:(id)a3;
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

- (void)highlightKeyAtIndex:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = TPDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1B4894000, v5, OS_LOG_TYPE_DEFAULT, "highlightKeyAtIndex: %ld", &v7, 0xCu);
  }

  self->_highlightKey = a3;
  [(TPPhonePad *)self setNeedsDisplayForKey:a3];
  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldStringAutoDial:(id)a3 givenLastChar:(char)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4 != 35)
  {
    goto LABEL_24;
  }

  v7 = [v5 rangeOfString:@"**0" options:8];
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

+ (BOOL)launchFieldTestIfNeeded:(id)a3
{
  v3 = [a3 isEqualToString:@"*3001#12345#*"];
  if (v3)
  {
    [*MEMORY[0x1E69DDA98] launchApplicationWithIdentifier:@"com.apple.fieldtest" suspended:0];
  }

  return v3;
}

- (TPPhonePad)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TPPhonePad;
  v3 = [(TPPhonePad *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

- (void)_activateSounds:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v5 = (*(self + 556) >> 1) & 1;
  if (a3 && -[TPPhonePad _isInAWindow](self, "_isInAWindow") && (v6 = MEMORY[0x1E69DDA98], ([*MEMORY[0x1E69DDA98] isSuspended] & 1) == 0))
  {
    v7 = [*v6 isSuspendedEventsOnly] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v5)
  {
    if (v3)
    {
      v8 = __SystemSoundActivationCount + 1;
    }

    else
    {
      v8 = __SystemSoundActivationCount - 1;
    }

    __SystemSoundActivationCount = v8;
    if (v3 && v8 == 1)
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

    else if (!v3 && !v8)
    {
      [objc_opt_class() performSelector:sel__delayedDeactivate withObject:0 afterDelay:0.0];
      __PendingDeactivate = 1;
    }

    if (v3)
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

- (void)movedFromWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = TPPhonePad;
  [(TPPhonePad *)&v4 movedFromWindow:a3];
  [(TPPhonePad *)self _activateSounds:0];
}

- (void)movedToWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = TPPhonePad;
  [(TPPhonePad *)&v4 movedToWindow:a3];
  if (self->_playsSounds)
  {
    [(TPPhonePad *)self _activateSounds:1];
  }
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  if (self->_delegate != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_delegate, a3);
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
    v5 = v9;
  }
}

- (void)setButton:(id)a3 forKeyAtIndex:(unint64_t)a4
{
  v6 = a3;
  keyToButtonMap = self->_keyToButtonMap;
  value = v6;
  if (keyToButtonMap || (keyToButtonMap = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]), v6 = value, (self->_keyToButtonMap = keyToButtonMap) != 0))
  {
    if (v6)
    {
      [(TPPhonePad *)self _rectForKey:a4];
      [value setFrame:?];
      [(TPPhonePad *)self addSubview:value];
      CFDictionarySetValue(self->_keyToButtonMap, a4, value);
    }

    else
    {
      CFDictionaryRemoveValue(keyToButtonMap, a4);
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (id)_buttonForKeyAtIndex:(unint64_t)a3
{
  keyToButtonMap = self->_keyToButtonMap;
  if (keyToButtonMap)
  {
    keyToButtonMap = CFDictionaryGetValue(keyToButtonMap, a3);
    v3 = vars8;
  }

  return keyToButtonMap;
}

- (CGPoint)_keypadOrigin
{
  v3 = [(TPPhonePad *)self _keypadImage];
  [v3 size];
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

- (CGRect)_updateRect:(CGRect)result withScale:(double)a4
{
  if (a4 != 1.0 && a4 != 0.0)
  {
    result.origin.x = result.origin.x * a4;
    result.origin.y = result.origin.y * a4;
    if (result.size.width > 1.0)
    {
      result.size.width = result.size.width * a4;
    }

    if (result.size.height > 1.0)
    {
      result.size.height = result.size.height * a4;
    }
  }

  return result;
}

- (id)_imageByCroppingImage:(id)a3 toRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 scale];
  [(TPPhonePad *)self _updateRect:x withScale:y, width, height, v10];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v9 CGImage];

  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  v20 = CGImageCreateWithImageInRect(v19, v24);
  v21 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v20];
  CGImageRelease(v20);

  return v21;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TPPhonePad *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v41 = [(TPPhonePad *)self _keypadImage];
  [v41 size];
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
    [v41 drawAtPoint:17 blendMode:v43 alpha:{v42, 1.0}];
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
    v28 = [(TPPhonePad *)self _imageByCroppingImage:v41 toRect:x - v43, y - v42, width, height];
    [v28 drawInRect:17 blendMode:x alpha:{y, width, height, 1.0}];
  }

LABEL_10:
  if ((self->_downKey & 0x8000000000000000) == 0)
  {
    v29 = [(TPPhonePad *)self _pressedImage];
    v30 = [(TPPhonePad *)self _imageByCroppingImage:v29 toRect:v21 - v43, v23 - v42, v25, v27];
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
      v39 = [(TPPhonePad *)self _highlightedImage];
      v40 = [(TPPhonePad *)self _imageByCroppingImage:v39 toRect:v35 - v43, v36 - v42, v37, v38];
      [v40 drawInRect:17 blendMode:v35 alpha:{v36, v37, v38, 1.0}];
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = TPPhonePad;
  v5 = [(TPPhonePad *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = self;

      v5 = v6;
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

- (void)_handleKey:(id)a3 forUIEvent:(id)a4
{
  v12 = a3;
  v6 = [a4 touchesForView:self];
  v7 = [v6 anyObject];

  v8 = [v7 phase];
  if (v8 == 3)
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
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleKeyPressAndHoldForDownKey_ object:v12];
      }
    }
  }

  else if (!v8)
  {
    if ((self->_downKey & 0x8000000000000000) == 0)
    {
      [(TPPhonePad *)self setHighlighted:self->_highlightKey >= 0];
    }

    [v7 locationInView:self];
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
          if ((self->_downKey - 9) > 2 || ([(TPPhonePad *)self performSelector:sel__handleKeyPressAndHoldForDownKey_ withObject:v12 afterDelay:1.0], self->_delegate))
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

- (void)_handleKeyPressAndHoldForKey:(int64_t)a3
{
  if ((a3 - 9) <= 2 && self->_delegate)
  {
    v4 = off_1E7C0C560[a3 - 9];
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

- (int)_keyForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TPPhonePad *)self _keypadImage];
  [v6 size];
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

- (CGRect)_rectForKey:(unint64_t)a3
{
  [(TPPhonePad *)self _keypadOrigin];
  v7 = a3 / 3;
  v8 = a3 % 3;
  p_leftWidth = &self->_leftWidth;
  leftWidth = self->_leftWidth;
  if (a3 % 3 < 2)
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

- (void)_notifySoundCompletionIfNecessary:(unsigned int)a3
{
  incompleteSounds = self->_incompleteSounds;
  if (incompleteSounds)
  {
    v5 = incompleteSounds - 1;
    self->_incompleteSounds = v5;
    if (!v5)
    {
      AudioServicesRemoveSystemSoundCompletion(a3);
      if (*(self + 556))
      {
        delegate = self->_delegate;

        [(TPDialerKeypadDelegate *)delegate phonePadDidEndSounds:self];
      }
    }
  }
}

- (void)_playSoundForKey:(unint64_t)a3
{
  if (a3 <= 0xB)
  {
    v4 = kSoundIDs[a3];
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

      CFSetAddValue(inflightSounds, a3);
    }
  }
}

- (void)_stopSoundForKey:(unint64_t)a3
{
  if (a3 <= 0xB && kSoundIDs[a3])
  {
    AudioServicesStopSystemSound();
    inflightSounds = self->_inflightSounds;

    CFSetRemoveValue(inflightSounds, a3);
  }
}

- (void)_stopAllSoundsForcingCallbacks:(BOOL)a3
{
  inflightSounds = self->_inflightSounds;
  if (inflightSounds)
  {
    v5 = a3;
    CFSetApplyFunction(inflightSounds, __TPStopSoundForKeyCallback, self);
    CFSetRemoveAllValues(self->_inflightSounds);
    if (v5)
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