@interface UIKBScreenTraits
+ (UIKBScreenTraits)traitsWithScreen:(id)a3 orientation:(int64_t)a4;
+ (UIKBScreenTraits)traitsWithScreen:(id)a3 orientation:(int64_t)a4 ignoreRemoteKeyboard:(BOOL)a5;
+ (id)_activeKeyboardWindowForScreen:(id)a3;
+ (id)_activeUCBWindowForScreen:(id)a3;
+ (id)fullScreenTraitsWithScreen:(id)a3 orientation:(int64_t)a4;
+ (id)traitsForInputModeWithScreen:(id)a3;
+ (id)traitsForPopoverEmulatingWidth:(double)a3 minorEdge:(BOOL)a4 orientation:(int64_t)a5 idiom:(int64_t)a6;
+ (id)traitsForRemoteEmojiKeyboardForHostWidth:(double)a3 clientWidth:(double)a4 minorEdge:(BOOL)a5 orientation:(int64_t)a6 idiom:(int64_t)a7 isPopover:(BOOL)a8;
- (CGRect)assistantViewWindowBounds;
- (CGRect)bounds;
- (CGSize)keyboardScreenReferenceSize;
- (CGSize)preferredContentSizeInPopover;
- (CGSize)stretchFactor;
- (UIKBScreenTraits)initWithScreen:(id)a3 orientation:(int64_t)a4 allowFloating:(BOOL)a5 ignoreRemoteKeyboard:(BOOL)a6;
- (id)description;
- (id)initForInputModeWithScreen:(id)a3;
- (int64_t)idiom;
- (void)updateForTextInputTraits:(id)a3 supportedInteractionModel:(unint64_t)a4;
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

+ (id)traitsForInputModeWithScreen:(id)a3
{
  v3 = a3;
  v4 = [[UIKBScreenTraits alloc] initForInputModeWithScreen:v3];

  return v4;
}

+ (UIKBScreenTraits)traitsWithScreen:(id)a3 orientation:(int64_t)a4
{
  v5 = a3;
  v6 = [[UIKBScreenTraits alloc] initWithScreen:v5 orientation:a4 allowFloating:1 ignoreRemoteKeyboard:0];

  return v6;
}

+ (UIKBScreenTraits)traitsWithScreen:(id)a3 orientation:(int64_t)a4 ignoreRemoteKeyboard:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [[UIKBScreenTraits alloc] initWithScreen:v7 orientation:a4 allowFloating:1 ignoreRemoteKeyboard:v5];

  return v8;
}

+ (id)fullScreenTraitsWithScreen:(id)a3 orientation:(int64_t)a4
{
  v5 = a3;
  v6 = [[UIKBScreenTraits alloc] initWithScreen:v5 orientation:a4 allowFloating:0 ignoreRemoteKeyboard:0];

  return v6;
}

+ (id)traitsForPopoverEmulatingWidth:(double)a3 minorEdge:(BOOL)a4 orientation:(int64_t)a5 idiom:(int64_t)a6
{
  v9 = [[UIKBScreenTraits alloc] initWithScreen:0 orientation:a5 allowFloating:0 ignoreRemoteKeyboard:0];
  v9->_keyboardWidth = a3;
  v9->_assistantViewWidth = a3;
  *&v9->_isKeyboardMinorEdgeWidth = 257;
  v9->_orientation = a5;
  v9->_isEmulatingIdiom = 1;
  v9->_idiomToEmulate = a6;

  return v9;
}

+ (id)traitsForRemoteEmojiKeyboardForHostWidth:(double)a3 clientWidth:(double)a4 minorEdge:(BOOL)a5 orientation:(int64_t)a6 idiom:(int64_t)a7 isPopover:(BOOL)a8
{
  v8 = a8;
  v14 = [[UIKBScreenTraits alloc] initWithScreen:0 orientation:a6 allowFloating:0 ignoreRemoteKeyboard:0];
  v14->_keyboardWidth = a4;
  v14->_assistantViewWidth = a4;
  v14->_hostKeyboardWidth = a3;
  v14->_isKeyboardMinorEdgeWidth = a5;
  v14->_orientation = a6;
  v14->_isEmulatingIdiom = 1;
  v14->_idiomToEmulate = a7;
  v14->_isInPopover = v8;
  if (v8)
  {
    v14->_preferredEmojiScrollingDirection = 1;
  }

  v14->_isStickerPickerServiceCollectionView = 1;

  return v14;
}

+ (id)_activeKeyboardWindowForScreen:(id)a3
{
  v3 = a3;
  v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v5 = [v4 oldPathForSnapshot];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v7 = v6;
  if (v5)
  {
    [v6 containerWindow];
  }

  else
  {
    [v6 keyboardWindow];
  }
  v8 = ;

  v9 = [v3 _userInterfaceIdiom];
  if (v9 == 3)
  {
    v10 = +[UIKeyboard activeKeyboard];
    v11 = [v10 window];

    v8 = v11;
  }

  return v8;
}

+ (id)_activeUCBWindowForScreen:(id)a3
{
  v3 = [a1 _activeKeyboardWindowForScreen:a3];
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 visualModeManager];
  v6 = [v5 shouldShowWithinAppWindow];

  if (v6)
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v8 = [v7 containerWindow];

    v3 = v8;
  }

  return v3;
}

- (id)initForInputModeWithScreen:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIKBScreenTraits;
  v5 = [(UIKBScreenTraits *)&v8 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = [objc_opt_self() mainScreen];
    }

    if ([v4 _userInterfaceIdiom] == -1)
    {
      v6 = [objc_opt_self() mainScreen];

      v4 = v6;
    }

    objc_storeStrong(&v5->_screen, v4);
  }

  return v5;
}

- (UIKBScreenTraits)initWithScreen:(id)a3 orientation:(int64_t)a4 allowFloating:(BOOL)a5 ignoreRemoteKeyboard:(BOOL)a6
{
  v7 = a5;
  v68 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v66.receiver = self;
  v66.super_class = UIKBScreenTraits;
  v11 = [(UIKBScreenTraits *)&v66 init];
  if (v11)
  {
    if (!v10 || [v10 _userInterfaceIdiom] == -1)
    {
      v12 = [objc_opt_self() mainScreen];

      v10 = v12;
    }

    v13 = [objc_opt_class() _activeKeyboardWindowForScreen:v10];
    v14 = [objc_opt_class() _activeUCBWindowForScreen:v10];
    objc_storeStrong(&v11->_screen, v10);
    v15 = [v13 _keyboardOrientation];
    if ((!a4 || v15 == a4) && v13)
    {
      [v13 bounds];
      v11->_bounds.origin.x = v16;
      v11->_bounds.origin.y = v17;
      v11->_bounds.size.width = v18;
      v11->_bounds.size.height = v19;
      v20 = [v13 _keyboardOrientation];
    }

    else
    {
      [(UIScreen *)v11->_screen _boundsForInterfaceOrientation:a4];
      v11->_bounds.origin.x = v21;
      v11->_bounds.origin.y = v22;
      v11->_bounds.size.width = v23;
      v11->_bounds.size.height = v24;
      v20 = a4;
    }

    v11->_orientation = v20;
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
    [v10 scale];
    v36 = v35;
    [v10 nativeScale];
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

    if (v7 && +[UIKeyboardImpl isFloating])
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

      v50 = [v40 rootViewController];
      v51 = [v50 view];
      [v51 bounds];
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
      if (!v13 || a6)
      {
        [(UIScreen *)v11->_screen _boundsForInterfaceOrientation:a4];
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
      if ([v10 _userInterfaceIdiom] == 2 || objc_msgSend(v10, "_userInterfaceIdiom") == 8)
      {
        v11->_isLinear = 1;
        if ([v10 _userInterfaceIdiom] == 8)
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

- (void)updateForTextInputTraits:(id)a3 supportedInteractionModel:(unint64_t)a4
{
  if ([(UIScreen *)self->_screen _userInterfaceIdiom]== 3)
  {
    if (UIKeyboardCarPlayRequiresTouch())
    {
      v6 = 1;
    }

    else
    {
      v6 = a4;
    }

    switch(v6)
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