@interface TUIKeyboardState
+ (id)compactFloatingAssistantStateForEdge:(unint64_t)edge;
+ (id)floatingAssistantFullState;
+ (id)floatingState;
+ (id)interactiveStateForState:(id)state;
+ (id)offscreenState;
+ (id)onscreenState;
- (BOOL)accessoryOnscreenOnly;
- (BOOL)hasFloatingAssistantView;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOffscreen;
- (BOOL)showsInputOrAssistantViews;
- (BOOL)showsInputViews;
- (TUIKeyboardState)init;
- (id)description;
@end

@implementation TUIKeyboardState

- (BOOL)isOffscreen
{
  if ([(TUIKeyboardState *)self hasInputView]|| [(TUIKeyboardState *)self hasAssistantView])
  {
    return 0;
  }

  else
  {
    return ![(TUIKeyboardState *)self hasFloatingAssistantView];
  }
}

+ (id)onscreenState
{
  v2 = objc_alloc_init(TUIKeyboardState);
  [(TUIKeyboardState *)v2 setHasInputView:1];
  [(TUIKeyboardState *)v2 setHasAssistantView:1];
  [(TUIKeyboardState *)v2 setIsDocked:1];
  [(TUIKeyboardState *)v2 setIsSplit:0];
  [(TUIKeyboardState *)v2 setIsFloating:0];

  return v2;
}

- (TUIKeyboardState)init
{
  v5.receiver = self;
  v5.super_class = TUIKeyboardState;
  v2 = [(TUIKeyboardState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TUIKeyboardState *)v2 setCloseEdges:0];
  }

  return v3;
}

- (BOOL)hasFloatingAssistantView
{
  hasAssistantView = [(TUIKeyboardState *)self hasAssistantView];
  if (hasAssistantView)
  {
    if ([(TUIKeyboardState *)self hasInputView])
    {
      LOBYTE(hasAssistantView) = 0;
    }

    else
    {
      LOBYTE(hasAssistantView) = ![(TUIKeyboardState *)self isDocked];
    }
  }

  return hasAssistantView;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  if ([(TUIKeyboardState *)self isOffscreen])
  {
    [v3 appendString:@" State: offscreen"];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    if ([(TUIKeyboardState *)self hasInputView])
    {
      v5 = @" input view";
    }

    else
    {
      v5 = &stru_1F03BA8F8;
    }

    if ([(TUIKeyboardState *)self hasFloatingAssistantView])
    {
      v6 = @" floating assistant";
    }

    else
    {
      hasAssistantView = [(TUIKeyboardState *)self hasAssistantView];
      v6 = @" with assistant";
      if (!hasAssistantView)
      {
        v6 = &stru_1F03BA8F8;
      }
    }

    v8 = [v4 stringWithFormat:@"%@%@", v5, v6];
    [v3 appendFormat:@" State: onscreen with%@", v8];
  }

  if ([(TUIKeyboardState *)self hasAccessoryView])
  {
    [v3 appendFormat:@"; has IAV"];
  }

  isDocked = [(TUIKeyboardState *)self isDocked];
  v10 = @"undocked +";
  if (isDocked)
  {
    v10 = @"docked";
  }

  [v3 appendFormat:@"; is %@", v10];
  if ([(TUIKeyboardState *)self isSplit])
  {
    v11 = @" split";
  }

  else
  {
    if (![(TUIKeyboardState *)self isFloating])
    {
      goto LABEL_20;
    }

    v11 = @" floating";
  }

  [v3 appendString:v11];
LABEL_20:
  if ([(TUIKeyboardState *)self isInteractive])
  {
    [v3 appendString:@"; is interactive"];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  hasInputView = [(TUIKeyboardState *)self hasInputView];
  if (hasInputView == [equalCopy hasInputView] && (v6 = -[TUIKeyboardState hasAssistantView](self, "hasAssistantView"), v6 == objc_msgSend(equalCopy, "hasAssistantView")) && (v7 = -[TUIKeyboardState hasFloatingAssistantView](self, "hasFloatingAssistantView"), v7 == objc_msgSend(equalCopy, "hasFloatingAssistantView")) && (v8 = -[TUIKeyboardState isInteractive](self, "isInteractive"), v8 == objc_msgSend(equalCopy, "isInteractive")) && (v9 = -[TUIKeyboardState isSplit](self, "isSplit"), v9 == objc_msgSend(equalCopy, "isSplit")) && (v10 = -[TUIKeyboardState isFloating](self, "isFloating"), v10 == objc_msgSend(equalCopy, "isFloating")) && (v11 = -[TUIKeyboardState isDocked](self, "isDocked"), v11 == objc_msgSend(equalCopy, "isDocked")))
  {
    closeEdges = [(TUIKeyboardState *)self closeEdges];
    v12 = closeEdges == [equalCopy closeEdges];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)showsInputViews
{
  if ([(TUIKeyboardState *)self isDocked]|| (v3 = [(TUIKeyboardState *)self hasFloatingAssistantView]))
  {
    if ([(TUIKeyboardState *)self hasAccessoryView]|| [(TUIKeyboardState *)self hasInputView])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(TUIKeyboardState *)self hasFloatingAssistantView];
    }
  }

  return v3;
}

- (BOOL)showsInputOrAssistantViews
{
  if ([(TUIKeyboardState *)self hasInputView]|| ![(TUIKeyboardState *)self isDocked])
  {
    return 1;
  }

  return [(TUIKeyboardState *)self hasFloatingAssistantView];
}

- (BOOL)accessoryOnscreenOnly
{
  hasAccessoryView = [(TUIKeyboardState *)self hasAccessoryView];
  if (hasAccessoryView)
  {
    if ([(TUIKeyboardState *)self hasInputView]|| [(TUIKeyboardState *)self hasFloatingAssistantView])
    {
      LOBYTE(hasAccessoryView) = 0;
    }

    else
    {
      LOBYTE(hasAccessoryView) = ![(TUIKeyboardState *)self isNonKeyboard];
    }
  }

  return hasAccessoryView;
}

+ (id)interactiveStateForState:(id)state
{
  stateCopy = state;
  v4 = objc_alloc_init(TUIKeyboardState);
  -[TUIKeyboardState setHasInputView:](v4, "setHasInputView:", [stateCopy hasInputView]);
  -[TUIKeyboardState setHasAssistantView:](v4, "setHasAssistantView:", [stateCopy hasAssistantView]);
  -[TUIKeyboardState setHasAccessoryView:](v4, "setHasAccessoryView:", [stateCopy hasAccessoryView]);
  -[TUIKeyboardState setIsDocked:](v4, "setIsDocked:", [stateCopy isDocked]);
  -[TUIKeyboardState setIsSplit:](v4, "setIsSplit:", [stateCopy isSplit]);
  -[TUIKeyboardState setIsFloating:](v4, "setIsFloating:", [stateCopy isFloating]);
  closeEdges = [stateCopy closeEdges];

  [(TUIKeyboardState *)v4 setCloseEdges:closeEdges];
  [(TUIKeyboardState *)v4 setIsInteractive:1];

  return v4;
}

+ (id)compactFloatingAssistantStateForEdge:(unint64_t)edge
{
  v4 = objc_alloc_init(TUIKeyboardState);
  [(TUIKeyboardState *)v4 setHasInputView:0];
  [(TUIKeyboardState *)v4 setHasAssistantView:1];
  [(TUIKeyboardState *)v4 setIsDocked:0];
  [(TUIKeyboardState *)v4 setIsSplit:0];
  [(TUIKeyboardState *)v4 setIsFloating:1];
  [(TUIKeyboardState *)v4 setCloseEdges:edge];
  [(TUIKeyboardState *)v4 setIsCompact:1];

  return v4;
}

+ (id)floatingAssistantFullState
{
  v2 = objc_alloc_init(TUIKeyboardState);
  [(TUIKeyboardState *)v2 setHasInputView:0];
  [(TUIKeyboardState *)v2 setHasAssistantView:1];
  [(TUIKeyboardState *)v2 setIsDocked:0];
  [(TUIKeyboardState *)v2 setIsSplit:0];
  [(TUIKeyboardState *)v2 setIsFloating:1];
  [(TUIKeyboardState *)v2 setCloseEdges:4];

  return v2;
}

+ (id)floatingState
{
  v2 = objc_alloc_init(TUIKeyboardState);
  [(TUIKeyboardState *)v2 setHasInputView:1];
  [(TUIKeyboardState *)v2 setHasAssistantView:1];
  [(TUIKeyboardState *)v2 setIsDocked:0];
  [(TUIKeyboardState *)v2 setIsSplit:0];
  [(TUIKeyboardState *)v2 setIsFloating:1];

  return v2;
}

+ (id)offscreenState
{
  v2 = objc_alloc_init(TUIKeyboardState);
  [(TUIKeyboardState *)v2 setHasInputView:0];
  [(TUIKeyboardState *)v2 setHasAssistantView:0];
  [(TUIKeyboardState *)v2 setIsInteractive:0];
  [(TUIKeyboardState *)v2 setIsDocked:1];
  [(TUIKeyboardState *)v2 setIsSplit:0];
  [(TUIKeyboardState *)v2 setIsFloating:0];

  return v2;
}

@end