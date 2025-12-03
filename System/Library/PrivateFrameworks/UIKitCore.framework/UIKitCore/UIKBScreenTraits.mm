@interface UIKBScreenTraits
+ (UIKBScreenTraits)traitsWithScreen:(id)screen orientation:(int64_t)orientation;
+ (UIKBScreenTraits)traitsWithScreen:(id)screen orientation:(int64_t)orientation ignoreRemoteKeyboard:(BOOL)keyboard;
+ (id)_activeKeyboardWindowForScreen:(id)screen;
+ (id)_activeUCBWindowForScreen:(id)screen;
+ (id)fullScreenTraitsWithScreen:(id)screen orientation:(int64_t)orientation;
+ (id)traitsForInputModeWithScreen:(id)screen;
+ (id)traitsForPopoverEmulatingWidth:(double)width minorEdge:(BOOL)edge orientation:(int64_t)orientation idiom:(int64_t)idiom;
+ (id)traitsForRemoteEmojiKeyboardForHostWidth:(double)width clientWidth:(double)clientWidth minorEdge:(BOOL)edge orientation:(int64_t)orientation idiom:(int64_t)idiom isPopover:(BOOL)popover;
- (CGRect)assistantViewWindowBounds;
- (CGRect)bounds;
- (CGSize)keyboardScreenReferenceSize;
- (CGSize)preferredContentSizeInPopover;
- (CGSize)stretchFactor;
- (UIKBScreenTraits)initWithScreen:(id)screen orientation:(int64_t)orientation allowFloating:(BOOL)floating ignoreRemoteKeyboard:(BOOL)keyboard;
- (id)description;
- (id)initForInputModeWithScreen:(id)screen;
- (int64_t)idiom;
- (void)updateForTextInputTraits:(id)traits supportedInteractionModel:(unint64_t)model;
@end

@implementation UIKBScreenTraits

- (int64_t)idiom
{
  result = _mockIdiom;
  if (_mockIdiom == -1)
  {
    if (self->_isEmulatingIdiom)
    {
      return self->_idiomToEmulate;
    }

    else
    {
      result = [(UIScreen *)self->_screen _userInterfaceIdiom];
      if (result == 1)
      {
        if (+[UIKeyboard isInputSystemUI])
        {
          [(UIScreen *)self->_screen bounds];
          if (v4 >= v5)
          {
            v6 = v5;
          }

          else
          {
            v6 = v4;
          }

          v7 = _UIScreenReferenceBoundsSizeForType(0xFuLL);
          return v6 >= (v7 + _UIScreenReferenceBoundsSizeForType(0x29uLL)) * 0.5;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (CGSize)keyboardScreenReferenceSize
{
  v3 = [objc_opt_class() _activeKeyboardWindowForScreen:self->_screen];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 keyboardScreenReferenceSize];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    [(UIScreen *)self->_screen _referenceBounds];
    v5 = v8;
    v7 = v9;
  }

  v10 = v5;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)assistantViewWindowBounds
{
  x = self->_assistantViewWindowBounds.origin.x;
  y = self->_assistantViewWindowBounds.origin.y;
  width = self->_assistantViewWindowBounds.size.width;
  height = self->_assistantViewWindowBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)stretchFactor
{
  width = self->_stretchFactor.width;
  height = self->_stretchFactor.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)traitsForInputModeWithScreen:(id)screen
{
  screenCopy = screen;
  v4 = [[UIKBScreenTraits alloc] initForInputModeWithScreen:screenCopy];

  return v4;
}

+ (UIKBScreenTraits)traitsWithScreen:(id)screen orientation:(int64_t)orientation
{
  screenCopy = screen;
  v6 = [[UIKBScreenTraits alloc] initWithScreen:screenCopy orientation:orientation allowFloating:1 ignoreRemoteKeyboard:0];

  return v6;
}

+ (UIKBScreenTraits)traitsWithScreen:(id)screen orientation:(int64_t)orientation ignoreRemoteKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  screenCopy = screen;
  v8 = [[UIKBScreenTraits alloc] initWithScreen:screenCopy orientation:orientation allowFloating:1 ignoreRemoteKeyboard:keyboardCopy];

  return v8;
}

+ (id)fullScreenTraitsWithScreen:(id)screen orientation:(int64_t)orientation
{
  screenCopy = screen;
  v6 = [[UIKBScreenTraits alloc] initWithScreen:screenCopy orientation:orientation allowFloating:0 ignoreRemoteKeyboard:0];

  return v6;
}

+ (id)traitsForPopoverEmulatingWidth:(double)width minorEdge:(BOOL)edge orientation:(int64_t)orientation idiom:(int64_t)idiom
{
  v9 = [[UIKBScreenTraits alloc] initWithScreen:0 orientation:orientation allowFloating:0 ignoreRemoteKeyboard:0];
  v9->_keyboardWidth = width;
  v9->_assistantViewWidth = width;
  *&v9->_isKeyboardMinorEdgeWidth = 257;
  v9->_orientation = orientation;
  v9->_isEmulatingIdiom = 1;
  v9->_idiomToEmulate = idiom;

  return v9;
}

+ (id)traitsForRemoteEmojiKeyboardForHostWidth:(double)width clientWidth:(double)clientWidth minorEdge:(BOOL)edge orientation:(int64_t)orientation idiom:(int64_t)idiom isPopover:(BOOL)popover
{
  popoverCopy = popover;
  v14 = [[UIKBScreenTraits alloc] initWithScreen:0 orientation:orientation allowFloating:0 ignoreRemoteKeyboard:0];
  v14->_keyboardWidth = clientWidth;
  v14->_assistantViewWidth = clientWidth;
  v14->_hostKeyboardWidth = width;
  v14->_isKeyboardMinorEdgeWidth = edge;
  v14->_orientation = orientation;
  v14->_isEmulatingIdiom = 1;
  v14->_idiomToEmulate = idiom;
  v14->_isInPopover = popoverCopy;
  if (popoverCopy)
  {
    v14->_preferredEmojiScrollingDirection = 1;
  }

  v14->_isStickerPickerServiceCollectionView = 1;

  return v14;
}

+ (id)_activeKeyboardWindowForScreen:(id)screen
{
  screenCopy = screen;
  v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  oldPathForSnapshot = [v4 oldPathForSnapshot];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v7 = v6;
  if (oldPathForSnapshot)
  {
    [v6 containerWindow];
  }

  else
  {
    [v6 keyboardWindow];
  }
  v8 = ;

  _userInterfaceIdiom = [screenCopy _userInterfaceIdiom];
  if (_userInterfaceIdiom == 3)
  {
    v10 = +[UIKeyboard activeKeyboard];
    window = [v10 window];

    v8 = window;
  }

  return v8;
}

+ (id)_activeUCBWindowForScreen:(id)screen
{
  v3 = [self _activeKeyboardWindowForScreen:screen];
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v4 visualModeManager];
  shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

  if (shouldShowWithinAppWindow)
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerWindow = [v7 containerWindow];

    v3 = containerWindow;
  }

  return v3;
}

- (id)initForInputModeWithScreen:(id)screen
{
  screenCopy = screen;
  v8.receiver = self;
  v8.super_class = UIKBScreenTraits;
  v5 = [(UIKBScreenTraits *)&v8 init];
  if (v5)
  {
    if (!screenCopy)
    {
      screenCopy = [objc_opt_self() mainScreen];
    }

    if ([screenCopy _userInterfaceIdiom] == -1)
    {
      mainScreen = [objc_opt_self() mainScreen];

      screenCopy = mainScreen;
    }

    objc_storeStrong(&v5->_screen, screenCopy);
  }

  return v5;
}

- (UIKBScreenTraits)initWithScreen:(id)screen orientation:(int64_t)orientation allowFloating:(BOOL)floating ignoreRemoteKeyboard:(BOOL)keyboard
{
  floatingCopy = floating;
  v68 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  v66.receiver = self;
  v66.super_class = UIKBScreenTraits;
  v11 = [(UIKBScreenTraits *)&v66 init];
  if (v11)
  {
    if (!screenCopy || [screenCopy _userInterfaceIdiom] == -1)
    {
      mainScreen = [objc_opt_self() mainScreen];

      screenCopy = mainScreen;
    }

    v13 = [objc_opt_class() _activeKeyboardWindowForScreen:screenCopy];
    v14 = [objc_opt_class() _activeUCBWindowForScreen:screenCopy];
    objc_storeStrong(&v11->_screen, screenCopy);
    _keyboardOrientation = [v13 _keyboardOrientation];
    if ((!orientation || _keyboardOrientation == orientation) && v13)
    {
      [v13 bounds];
      v11->_bounds.origin.x = v16;
      v11->_bounds.origin.y = v17;
      v11->_bounds.size.width = v18;
      v11->_bounds.size.height = v19;
      orientationCopy = [v13 _keyboardOrientation];
    }

    else
    {
      [(UIScreen *)v11->_screen _boundsForInterfaceOrientation:orientation];
      v11->_bounds.origin.x = v21;
      v11->_bounds.origin.y = v22;
      v11->_bounds.size.width = v23;
      v11->_bounds.size.height = v24;
      orientationCopy = orientation;
    }

    v11->_orientation = orientationCopy;
    [v14 bounds];
    v11->_assistantViewWindowBounds.origin.x = v25;
    v11->_assistantViewWindowBounds.origin.y = v26;
    v11->_assistantViewWindowBounds.size.width = v27;
    v11->_assistantViewWindowBounds.size.height = v28;
    v29 = +[UIKeyboardImpl activeInstance];
    v11->_touchInput = [v29 requestedInteractionModel] == 1;

    v30 = +[UIKeyboardImpl activeInstance];
    v11->_knobInput = [v30 requestedInteractionModel] == 2;

    v31 = +[UIKeyboardImpl activeInstance];
    v11->_touchpadInput = [v31 requestedInteractionModel] == 8;

    v11->_isLinear = 0;
    v11->_isFirstPartyStickers = _UIApplicationIsFirstPartyStickers();
    IsEmojiPoster = _UIApplicationIsEmojiPoster();
    v33 = 0;
    if (IsEmojiPoster)
    {
      v33 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
    }

    v11->_isEmojiPosterOniPad = v33;
    if (_UIApplicationIsStickerPickerService())
    {
      v34 = !+[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService];
    }

    else
    {
      LOBYTE(v34) = 0;
    }

    v11->_isStickerPickerService = v34;
    [screenCopy scale];
    v36 = v35;
    [screenCopy nativeScale];
    v11->_screenToNativeScaleRatio = v36 / v37;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__UIKBScreenTraits_initWithScreen_orientation_allowFloating_ignoreRemoteKeyboard___block_invoke;
    block[3] = &unk_1E70F3590;
    v38 = v11;
    v65 = v38;
    if (qword_1ED49F440 != -1)
    {
      dispatch_once(&qword_1ED49F440, block);
    }

    if (_MergedGlobals_1197 == 1)
    {
      *(v38 + 9) = 1;
    }

    if (floatingCopy && +[UIKeyboardImpl isFloating])
    {
      +[UIKeyboardImpl floatingScreenWidthToEmulate];
      *(v38 + 7) = v39;
      *(v38 + 10) = v39;
      *(v38 + 27) = 1;
      *(v38 + 32) = 1;
    }

    else if (v11->_isFirstPartyStickers)
    {
      v40 = +[UIWindow _applicationKeyWindow];
      if (!v40)
      {
        [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v41 = v63 = 0u;
        v40 = [v41 countByEnumeratingWithState:&v60 objects:v67 count:16];
        if (v40)
        {
          v42 = *v61;
          while (2)
          {
            for (i = 0; i != v40; i = i + 1)
            {
              if (*v61 != v42)
              {
                objc_enumerationMutation(v41);
              }

              v44 = *(*(&v60 + 1) + 8 * i);
              if (([v44 _isTextEffectsWindow] & 1) == 0)
              {
                v40 = v44;
                goto LABEL_48;
              }
            }

            v40 = [v41 countByEnumeratingWithState:&v60 objects:v67 count:16];
            if (v40)
            {
              continue;
            }

            break;
          }
        }

LABEL_48:
      }

      rootViewController = [v40 rootViewController];
      view = [rootViewController view];
      [view bounds];
      *(v38 + 7) = v52;

      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v53 = v38[7];
        if (v53 > 767.0)
        {
          v53 = 767.0;
        }

        v38[7] = v53;
      }

      *(v38 + 27) = 1;
      *(v38 + 8) = 1;
      v38[2] = 0.0;
    }

    else if (v11->_isEmojiPosterOniPad && !+[UIKeyboard isEmojiSearchEnabledInEmojiPoster])
    {
      *(v38 + 27) = 1;
      +[UIKeyboardImpl floatingScreenWidthToEmulate];
      *(v38 + 7) = v49;
      *(v38 + 10) = v49;
      *(v38 + 8) = 1;
      v38[2] = 0.0;
    }

    else
    {
      if (!v13 || keyboard)
      {
        [(UIScreen *)v11->_screen _boundsForInterfaceOrientation:orientation];
      }

      else
      {
        [v13 bounds];
      }

      *(v38 + 7) = v45;
      v38[10] = v11->_assistantViewWindowBounds.size.width;
      [(UIScreen *)v11->_screen _referenceBounds];
      if (v46 >= v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = v46;
      }

      *(v38 + 27) = v48 == v38[7];
      if ([screenCopy _userInterfaceIdiom] == 2 || objc_msgSend(screenCopy, "_userInterfaceIdiom") == 8)
      {
        v11->_isLinear = 1;
        if ([screenCopy _userInterfaceIdiom] == 8)
        {
          *(v38 + 8) = 1;
          *(v38 + 2) = 2;
        }
      }
    }

    __asm { FMOV            V0.2D, #1.0 }

    *(v38 + 7) = _Q0;
  }

  return v11;
}

void __82__UIKBScreenTraits_initWithScreen_orientation_allowFloating_ignoreRemoteKeyboard___block_invoke(uint64_t a1)
{
  if (qword_1ED49F448 != -1)
  {
    dispatch_once(&qword_1ED49F448, &__block_literal_global_388);
  }

  v2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v4 = [v2 valueForPreferenceKey:@"VerticalScrollingInEmojiKeyboard"];

  if ([v4 BOOLValue])
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*(a1 + 32) + 35);
  }

  _MergedGlobals_1197 = v3 & 1;
}

- (void)updateForTextInputTraits:(id)traits supportedInteractionModel:(unint64_t)model
{
  if ([(UIScreen *)self->_screen _userInterfaceIdiom]== 3)
  {
    if (UIKeyboardCarPlayRequiresTouch())
    {
      modelCopy = 1;
    }

    else
    {
      modelCopy = model;
    }

    switch(modelCopy)
    {
      case 1uLL:
        v7 = 26;
        v8 = 24;
        v9 = 25;
        break;
      case 8uLL:
        v7 = 24;
        v8 = 25;
        v9 = 26;
        break;
      case 2uLL:
        v7 = 26;
        v8 = 25;
        v9 = 24;
        break;
      default:
        return;
    }

    *(&self->super.isa + v9) = 1;
    *(&self->super.isa + v8) = 0;
    *(&self->super.isa + v7) = 0;
  }
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; idiom = %d", -[UIKBScreenTraits idiom](self, "idiom")];
  [v3 appendFormat:@"; isFloating = %d", -[UIKBScreenTraits isFloating](self, "isFloating")];
  [v3 appendFormat:@"; touchInput = %d", -[UIKBScreenTraits touchInput](self, "touchInput")];
  [v3 appendFormat:@"; knobInput = %d", -[UIKBScreenTraits knobInput](self, "knobInput")];
  [v3 appendFormat:@"; touchpadInput = %d", -[UIKBScreenTraits touchpadInput](self, "touchpadInput")];
  [(UIKBScreenTraits *)self keyboardWidth];
  [v3 appendFormat:@"; keyboardWidth = %f", v4];
  [v3 appendFormat:@"; isKeyboardMinorEdgeWidth = %d", -[UIKBScreenTraits isKeyboardMinorEdgeWidth](self, "isKeyboardMinorEdgeWidth")];
  if (self->_keyboardBarHeight > 0.0)
  {
    [(UIKBScreenTraits *)self keyboardBarHeight];
    [v3 appendFormat:@"; keyboardBarHeight = %f", v5];
  }

  [v3 appendString:@">"];

  return v3;
}

- (CGSize)preferredContentSizeInPopover
{
  width = self->_preferredContentSizeInPopover.width;
  height = self->_preferredContentSizeInPopover.height;
  result.height = height;
  result.width = width;
  return result;
}

@end