@interface UIDictationLandingView
+ (double)widthForLineHeight:(double)a3;
+ (id)sharedInstance;
- (BOOL)canStopLanding;
- (BOOL)delegateWasEmpty;
- (UIDictationLandingView)initWithFrame:(CGRect)a3;
- (double)fadeOutDuration;
- (id)_currentTextInputView;
- (void)_invalidatDisplayLink;
- (void)advanceLanding:(id)a3;
- (void)clearRotation;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)errorShakeDidFinish;
- (void)hideCursor;
- (void)performRemoteSelector:(SEL)a3;
- (void)rotateBy:(double)a3;
- (void)showCursor;
- (void)shrinkWithCompletion:(id)a3;
- (void)startDisplayLinkIfNecessary;
- (void)startLandingIfNecessary;
- (void)stopLanding;
- (void)stopLandingForError;
- (void)updatePosition;
@end

@implementation UIDictationLandingView

+ (double)widthForLineHeight:(double)a3
{
  [a1 diameterForLineHeight:?];
  v6 = v5 * 0.5;
  [a1 diameterForLineHeight:a3];
  return ceil(v6 + v7 + v6);
}

+ (id)sharedInstance
{
  v2 = gSharedInstance_0;
  if (!gSharedInstance_0)
  {
    v3 = [[UIDictationLandingView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
    v4 = gSharedInstance_0;
    gSharedInstance_0 = v3;

    v2 = gSharedInstance_0;
  }

  return v2;
}

- (UIDictationLandingView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = UIDictationLandingView;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    displayLink = v3->_displayLink;
    v3->_displayLink = 0;

    range = v4->_range;
    v4->_range = 0;

    placeholder = v4->_placeholder;
    v4->_placeholder = 0;

    v4->_willInsertResult = 0;
    [(UIView *)v4 setOpaque:0];
    [(UIView *)v4 setUserInteractionEnabled:0];
    v4->_angle = 0.0;
  }

  return v4;
}

- (void)dealloc
{
  [(UIDictationLandingView *)self stopLanding];
  v3.receiver = self;
  v3.super_class = UIDictationLandingView;
  [(UIView *)&v3 dealloc];
}

- (void)clearRotation
{
  self->_angle = 0.0;
  CGAffineTransformMakeRotation(&v4, 0.0);
  v3 = v4;
  [(UIView *)self setTransform:&v3];
}

- (void)rotateBy:(double)a3
{
  v4 = self->_angle + a3;
  self->_angle = v4;
  CGAffineTransformMakeRotation(&v6, v4 * 0.0174532925);
  v5 = v6;
  [(UIView *)self setTransform:&v5];
}

- (void)shrinkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s dictation landing view is shrinking", "-[UIDictationLandingView shrinkWithCompletion:]"];
  [UIDictationController logDictationString:v5];

  self->_shrinking = 1;
  [(CADisplayLink *)self->_displayLink timestamp];
  self->_shrinkStartTime = v6;
  afterShrinkCompletionInvocation = self->_afterShrinkCompletionInvocation;
  self->_afterShrinkCompletionInvocation = v4;
  v8 = v4;

  v9 = +[UIDictationLandingViewSettings sharedInstance];
  [v9 fadeOutDuration];
  v11 = v10;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__UIDictationLandingView_shrinkWithCompletion___block_invoke;
  v12[3] = &unk_1E70F3590;
  v12[4] = self;
  [UIView animateWithDuration:393216 delay:v12 options:0 animations:v11 completion:0.0];
}

- (void)advanceLanding:(id)a3
{
  [(CADisplayLink *)self->_displayLink timestamp];
  v5 = v4 - self->_startTime;
  v6 = +[UIDictationLandingViewSettings sharedInstance];
  [v6 circleRPM];
  v8 = v5 * v7 / 60.0;

  self->_angle = v8 * 360.0;
  if (self->_shrinking)
  {
    v9 = +[UIDictationLandingViewSettings sharedInstance];
    [v9 shrinkDuration];
    v11 = v10;

    [(CADisplayLink *)self->_displayLink timestamp];
    v13 = v12 - self->_shrinkStartTime;
    CGAffineTransformMakeRotation(&t1, self->_angle * 0.0174532925);
    CGAffineTransformMakeScale(&t2, 1.0 - v13 / v11, 1.0 - v13 / v11);
    CGAffineTransformConcat(&v18, &t1, &t2);
    t1 = v18;
    [(UIView *)self setTransform:&t1];
    if (v13 > v11)
    {
      self->_shrinking = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__UIDictationLandingView_advanceLanding___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    CGAffineTransformMakeRotation(&v14, v8 * 360.0 * 0.0174532925);
    t1 = v14;
    [(UIView *)self setTransform:&t1];
  }

  [(UIView *)self setNeedsDisplay];
}

void __41__UIDictationLandingView_advanceLanding___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 480) start];
  v2 = *(a1 + 32);
  v3 = *(v2 + 480);
  *(v2 + 480) = 0;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v54 = *MEMORY[0x1E69E9840];
  v5 = self->_diameter * 0.5;
  if (+[UIDictationController viewMode]== 6)
  {
    v6 = [objc_opt_self() mainScreen];
  }

  else
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v8 = [v7 containerWindow];
    v6 = [v8 screen];
  }

  [v6 scale];
  v10 = ceil(width * 0.5 * v9) / v9;
  v11 = ceil(height * 0.5 * v9) / v9;
  v12 = v9 <= 1.0;
  v13 = 2.0;
  if (!v12)
  {
    v13 = 1.5;
  }

  v14 = v5 - v13;
  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  x = v10 - v15;
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeScale(&v39, 1.0, -1.0);
  CGAffineTransformTranslate(&transform, &v39, 0.0, -height);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CGContextSaveGState(v17);
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, v10, v11, v15, 3.14159265, 0.0, 1);
  CGPathMoveToPoint(Mutable, 0, v10 + v15, v11);
  CGPathAddLineToPoint(Mutable, 0, v5 + v10, v11);
  CGPathAddArc(Mutable, 0, v10, v11, v5, 0.0, 3.14159265, 0);
  CGPathMoveToPoint(Mutable, 0, v10 - v5, v11);
  CGPathAddLineToPoint(Mutable, 0, x, v11);
  v20 = CGPathCreateMutableCopyByTransformingPath(Mutable, &transform);
  CGContextAddPath(v17, v20);
  CGPathRelease(v20);
  CGPathRelease(Mutable);
  CGContextClip(v17);
  v38 = 0.0;
  v39.a = 0.0;
  v36 = 0.0;
  v37 = 0;
  v21 = +[UIKeyboardImpl activeInstance];
  v22 = [v21 textInteractionAssistant];
  v23 = [v22 _selectionViewManager];
  v24 = [v23 _cursorTintColor];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = +[UIColor insertionPointColor];
  }

  v27 = v26;

  if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
  {
    v28 = +[UIColor tertiaryLabelColor];
  }

  else
  {
    v28 = v27;
  }

  v29 = v28;
  [v28 getRed:&v39 green:&v38 blue:&v37 alpha:{&v36, *&x}];
  components = v39.a;
  v48 = v38;
  *&v49 = v37;
  *(&v49 + 1) = v36;
  a = v39.a;
  v51 = v38;
  v52 = v37;
  v53 = v36 * 0.9;
  v30 = CGGradientCreateWithColorComponents(DeviceRGB, &components, 0, 2uLL);
  v55.x = v10 - v5;
  v55.y = v11;
  v57.x = v5 + v10;
  v57.y = v11;
  CGContextDrawLinearGradient(v17, v30, v55, v57, 0);
  CGGradientRelease(v30);
  CGContextRestoreGState(v17);
  CGContextSaveGState(v17);
  v31 = CGPathCreateMutable();
  CGPathAddArc(v31, 0, v10, v11, v15, 3.14159265, 0.0, 0);
  CGPathMoveToPoint(v31, 0, v10 + v15, v11);
  CGPathAddLineToPoint(v31, 0, v5 + v10, v11);
  CGPathAddArc(v31, 0, v10, v11, v5, 0.0, 3.14159265, 1);
  CGPathMoveToPoint(v31, 0, v10 - v5, v11);
  CGPathAddLineToPoint(v31, 0, xa, v11);
  v32 = CGPathCreateMutableCopyByTransformingPath(v31, &transform);
  CGContextAddPath(v17, v32);
  CGPathRelease(v32);
  CGPathRelease(v31);
  CGContextClip(v17);
  v41[0] = components;
  v41[1] = v48;
  v42 = v49;
  v43 = components;
  v44 = v48;
  v45 = v49;
  v46 = 0;
  v33 = CGGradientCreateWithColorComponents(DeviceRGB, v41, 0, 2uLL);
  v56.x = v10 - v5;
  v56.y = v11;
  v58.x = v5 + v10;
  v58.y = v11;
  CGContextDrawLinearGradient(v17, v33, v56, v58, 0);
  CGGradientRelease(v33);
  CGContextRestoreGState(v17);
  CGColorSpaceRelease(DeviceRGB);
}

- (id)_currentTextInputView
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 textInteractionAssistant];
  v4 = [v3 view];
  v5 = [v4 textInputView];

  return v5;
}

- (void)updatePosition
{
  v3 = +[UIKeyboardImpl sharedInstance];
  v21 = [v3 delegate];

  v4 = [v21 _textSelectingContainer];
  if (self->_placeholder && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 frameForDictationResultPlaceholder:self->_placeholder];
    v24 = CGRectIntegral(v23);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    [UIDictationLandingView diameterForLineHeight:v24.size.height];
    self->_diameter = v9;
    v10 = [(UIDictationLandingView *)self _currentTextInputView];
    v11 = [v21 textInputView];
    [v10 convertRect:v11 fromView:{x, y, width, height}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    angle = self->_angle;
    [(UIDictationLandingView *)self clearRotation];
    [(UIView *)self setFrame:v13, v15, v17, v19];
    [(UIView *)self setNeedsDisplay];
    [(UIDictationLandingView *)self rotateBy:angle];
  }
}

- (BOOL)delegateWasEmpty
{
  placeholder = self->_placeholder;
  if (placeholder)
  {
    LOBYTE(placeholder) = !self->_didHaveText;
  }

  return placeholder & 1;
}

- (void)hideCursor
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Landing view hideCursor", "-[UIDictationLandingView hideCursor]"];
  [UIDictationController logDictationString:v3];

  v4 = [(UIDictationLandingView *)self hideCursorAssertion];
  [v4 invalidate];

  [(UIDictationLandingView *)self setHideCursorAssertion:0];
  v5 = +[UIKeyboardImpl sharedInstance];
  v6 = [v5 _activeAssertionController];
  v7 = [v6 nonVisibleAssertionWithReason:@"Dictation Landing View"];
  [(UIDictationLandingView *)self setHideCursorAssertion:v7];

  if (!+[UIKeyboard isRedesignedTextCursorEnabled])
  {
    v9 = +[UIKeyboardImpl sharedInstance];
    v8 = [v9 textInteractionAssistant];
    [v8 setSelectionHighlightMode:1];
  }
}

- (void)showCursor
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Landing view showCursor", "-[UIDictationLandingView showCursor]"];
  [UIDictationController logDictationString:v3];

  if (!+[UIKeyboard isRedesignedTextCursorEnabled])
  {
    v4 = +[UIKeyboardImpl sharedInstance];
    v5 = [v4 textInteractionAssistant];
    [v5 setSelectionHighlightMode:1];
  }

  v6 = [(UIDictationLandingView *)self hideCursorAssertion];
  [v6 invalidate];

  [(UIDictationLandingView *)self setHideCursorAssertion:0];
}

- (void)startDisplayLinkIfNecessary
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_displayLink)
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v4 = [v3 containerWindow];

    v5 = [MEMORY[0x1E6979328] mainDisplay];
    if (v4)
    {
      v6 = [v4 screen];
      v7 = [v6 _userInterfaceIdiom];

      if (v7 == 3)
      {
        v21 = v4;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [MEMORY[0x1E6979328] displays];
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v23;
          do
          {
            v12 = 0;
            do
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v22 + 1) + 8 * v12);
              v14 = [MEMORY[0x1E6979328] mainDisplay];

              if (v13 != v14)
              {
                v15 = v13;

                v5 = v15;
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v10);
        }

        v4 = v21;
      }
    }

    v16 = [MEMORY[0x1E6979330] displayLinkWithDisplay:v5 target:self selector:sel_advanceLanding_];
    displayLink = self->_displayLink;
    self->_displayLink = v16;

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:60];
    v18 = self->_displayLink;
    v19 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v18 addToRunLoop:v19 forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->_displayLink timestamp];
    self->_startTime = v20;
  }
}

- (void)performRemoteSelector:(SEL)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard isKeyboardProcess])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v5 = [v4 inputDelegateManager];
    v6 = [v5 inputSystemSourceSession];

    if (v6)
    {
      v7 = [v6 textOperations];
      [v7 setCustomInfoType:0x1EFB7C8F0];
      v10 = @"selector";
      v8 = NSStringFromSelector(a3);
      v11[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      [v7 setCustomInfo:v9];

      [v6 flushOperations];
    }
  }
}

- (void)_invalidatDisplayLink
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)startLandingIfNecessary
{
  [(UIDictationLandingView *)self performRemoteSelector:a2];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Trying to start the dictation landing view", "-[UIDictationLandingView startLandingIfNecessary]"];
  [UIDictationController logDictationString:v3];

  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 inputDelegate];
  v6 = [v5 selectedTextRange];
  v7 = [v6 isEmpty];

  if (v7)
  {
    self->_didSkipLanding = 0;
    displayLink = self->_displayLink;
    placeholder = self->_placeholder;
    if (displayLink)
    {
      if (placeholder)
      {
        return;
      }

      goto LABEL_10;
    }

    if (placeholder)
    {
LABEL_10:
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s The landing view was in an unexpected state. _displayLink: %@, _placeholder: %@", "-[UIDictationLandingView startLandingIfNecessary]", displayLink, placeholder];
      [UIDictationController logDictationString:v23];

      return;
    }

    [(UIDictationLandingView *)self startDisplayLinkIfNecessary];
    range = self->_range;
    if (range)
    {
      self->_range = 0;
    }

    v12 = +[UIKeyboardImpl activeInstance];
    v13 = [v12 inputDelegate];

    v14 = +[UIKeyboardImpl activeInstance];
    v15 = [v14 inputDelegateManager];
    v16 = [v15 hasAsyncCapableInputDelegate];

    if ((v16 & 1) == 0)
    {
      v17 = [v13 _textSelectingContainer];
      [(UIDictationLandingView *)self hideCursor];
      self->_didHaveText = [v13 hasText];
      v18 = +[UIDictationController activeInstance];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __49__UIDictationLandingView_startLandingIfNecessary__block_invoke;
      v27[3] = &unk_1E70F6228;
      v28 = v17;
      v29 = self;
      v19 = v13;
      v30 = v19;
      v20 = v17;
      [v18 performIgnoringDocumentChanges:v27];

      [(UIDictationLandingView *)self updatePosition];
      if (v19 && [(UIDictationLandingView *)self hasActivePlaceholder])
      {
        v21 = [(UIDictationLandingView *)self _currentTextInputView];
        [v21 addSubview:self];
      }

      [(UIView *)self setAlpha:0.0];
      CGAffineTransformMakeScale(&v26, 0.0, 0.0);
      v25 = v26;
      [(UIView *)self setTransform:&v25];
      v22 = +[UIDictationLandingViewSettings sharedInstance];
      [v22 fadeInDuration];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __49__UIDictationLandingView_startLandingIfNecessary__block_invoke_2;
      v24[3] = &unk_1E70F3590;
      v24[4] = self;
      [UIView _animateWithDuration:"_animateWithDuration:delay:options:factory:animations:completion:" delay:393216 options:self factory:v24 animations:&__block_literal_global_366 completion:?];

      [(UIView *)self setNeedsDisplay];
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Skipping start the dictation landing view", "-[UIDictationLandingView startLandingIfNecessary]"];
    [UIDictationController logDictationString:v10];

    if (!self->_didSkipLanding)
    {
      self->_didSkipLanding = 1;
      [(UIDictationLandingView *)self hideCursor];

      [(UIDictationLandingView *)self startDisplayLinkIfNecessary];
    }
  }
}

void __49__UIDictationLandingView_startLandingIfNecessary__block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) insertDictationResultPlaceholder];
    v3 = *(a1 + 40);
    v4 = *(v3 + 416);
    *(v3 + 416) = v2;
  }

  else
  {
    [*(a1 + 48) insertText:@"          "];
    v5 = [*(a1 + 32) selectedTextRange];
    v10 = [v5 start];

    v6 = [*(a1 + 48) positionFromPosition:v10 offset:{-objc_msgSend(@"          ", "length")}];
    v7 = [*(a1 + 48) textRangeFromPosition:v6 toPosition:v10];
    v8 = *(a1 + 40);
    v9 = *(v8 + 408);
    *(v8 + 408) = v7;

    v4 = v10;
  }
}

uint64_t __49__UIDictationLandingView_startLandingIfNecessary__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

- (void)stopLanding
{
  [(UIDictationLandingView *)self performRemoteSelector:a2];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Dictation is removing the landing view", "-[UIDictationLandingView stopLanding]"];
  [UIDictationController logDictationString:v3];

  if (self->_didSkipLanding)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Skipping removing the landing view for modeless", "-[UIDictationLandingView stopLanding]"];
    [UIDictationController logDictationString:v4];

    self->_didSkipLanding = 0;
    [(UIDictationLandingView *)self showCursor];

    [(UIDictationLandingView *)self _invalidatDisplayLink];
  }

  else
  {
    [(UIView *)self removeFromSuperview];
    v5 = +[UIDictationController activeInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__UIDictationLandingView_stopLanding__block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [v5 performIgnoringDocumentChanges:v6];

    self->_willInsertResult = 0;
    [(UIDictationLandingView *)self showCursor];
    [(UIDictationLandingView *)self _invalidatDisplayLink];
  }
}

void __37__UIDictationLandingView_stopLanding__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 416))
  {
    v3 = +[UIKeyboardImpl sharedInstance];
    v11 = [v3 delegate];

    v4 = [v11 _textSelectingContainer];
    if (objc_opt_respondsToSelector())
    {
      [v4 removeDictationResultPlaceholder:*(*(a1 + 32) + 416) willInsertResult:*(*(a1 + 32) + 425)];
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 416);
    *(v5 + 416) = 0;

    v7 = v11;
  }

  else
  {
    if (!*(v2 + 408))
    {
      return;
    }

    v8 = +[UIKeyboardImpl sharedInstance];
    v9 = [v8 inputDelegate];
    [v9 replaceRange:*(*(a1 + 32) + 408) withText:&stru_1EFB14550];

    v10 = *(a1 + 32);
    v7 = *(v10 + 408);
    *(v10 + 408) = 0;
  }
}

- (BOOL)canStopLanding
{
  v3 = [(UIView *)self superview];
  v4 = v3 || [(UIDictationLandingView *)self hasActivePlaceholder]|| self->_didSkipLanding;

  return v4;
}

- (void)errorShakeDidFinish
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__UIDictationLandingView_errorShakeDidFinish__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  v3 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:v4];
  [(UIDictationLandingView *)self shrinkWithCompletion:v3];
}

uint64_t __45__UIDictationLandingView_errorShakeDidFinish__block_invoke(uint64_t a1)
{
  v2 = +[UIDictationController sharedInstance];
  [v2 errorAnimationDidFinish];

  v3 = *(a1 + 32);

  return [v3 showCursor];
}

- (void)stopLandingForError
{
  [(UIDictationLandingView *)self performRemoteSelector:a2];
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 textInteractionAssistant];
  v5 = [v4 isValid];

  if (v5)
  {
    [(UIDictationLandingView *)self startLandingIfNecessary];
    v37 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.translation.x"];
    [v37 setDuration:0.6];
    v6 = MEMORY[0x1E695DEC8];
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    LODWORD(v8) = 1041865114;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    LODWORD(v10) = 1047904911;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    LODWORD(v12) = 1052266988;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    LODWORD(v14) = 1055622431;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    LODWORD(v16) = 1058642330;
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    LODWORD(v18) = 1061997773;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    v20 = [v6 arrayWithObjects:{v7, v9, v11, v13, v15, v17, v19, 0}];
    [v37 setKeyTimes:v20];

    v21 = MEMORY[0x1E695DEC8];
    LODWORD(v22) = -4.0;
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
    LODWORD(v24) = 4.0;
    v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
    LODWORD(v26) = -4.0;
    v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
    LODWORD(v28) = 4.0;
    v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
    LODWORD(v30) = -4.0;
    v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
    LODWORD(v32) = 4.0;
    v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
    v34 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    v35 = [v21 arrayWithObjects:{v23, v25, v27, v29, v31, v33, v34, 0}];
    [v37 setValues:v35];

    v36 = [(UIView *)self layer];
    [v36 addAnimation:v37 forKey:@"shake"];

    [(UIDictationLandingView *)self performSelector:sel_errorShakeDidFinish withObject:0 afterDelay:0.9];
  }

  else
  {

    [(UIDictationLandingView *)self errorShakeDidFinish];
  }
}

- (double)fadeOutDuration
{
  v2 = +[UIDictationLandingViewSettings sharedInstance];
  [v2 fadeOutDuration];
  v4 = v3;

  return v4;
}

@end