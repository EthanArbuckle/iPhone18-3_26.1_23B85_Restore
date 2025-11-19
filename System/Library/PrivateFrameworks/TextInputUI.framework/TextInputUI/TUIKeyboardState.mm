@interface TUIKeyboardState
+ (id)compactFloatingAssistantStateForEdge:(unint64_t)a3;
+ (id)floatingAssistantFullState;
+ (id)floatingState;
+ (id)interactiveStateForState:(id)a3;
+ (id)offscreenState;
+ (id)onscreenState;
- (BOOL)accessoryOnscreenOnly;
- (BOOL)hasFloatingAssistantView;
- (BOOL)isEqual:(id)a3;
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
  v3 = [(TUIKeyboardState *)self hasAssistantView];
  if (v3)
  {
    if ([(TUIKeyboardState *)self hasInputView])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(TUIKeyboardState *)self isDocked];
    }
  }

  return v3;
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
      v7 = [(TUIKeyboardState *)self hasAssistantView];
      v6 = @" with assistant";
      if (!v7)
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

  v9 = [(TUIKeyboardState *)self isDocked];
  v10 = @"undocked +";
  if (v9)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyboardState *)self hasInputView];
  if (v5 == [v4 hasInputView] && (v6 = -[TUIKeyboardState hasAssistantView](self, "hasAssistantView"), v6 == objc_msgSend(v4, "hasAssistantView")) && (v7 = -[TUIKeyboardState hasFloatingAssistantView](self, "hasFloatingAssistantView"), v7 == objc_msgSend(v4, "hasFloatingAssistantView")) && (v8 = -[TUIKeyboardState isInteractive](self, "isInteractive"), v8 == objc_msgSend(v4, "isInteractive")) && (v9 = -[TUIKeyboardState isSplit](self, "isSplit"), v9 == objc_msgSend(v4, "isSplit")) && (v10 = -[TUIKeyboardState isFloating](self, "isFloating"), v10 == objc_msgSend(v4, "isFloating")) && (v11 = -[TUIKeyboardState isDocked](self, "isDocked"), v11 == objc_msgSend(v4, "isDocked")))
  {
    v14 = [(TUIKeyboardState *)self closeEdges];
    v12 = v14 == [v4 closeEdges];
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
  v3 = [(TUIKeyboardState *)self hasAccessoryView];
  if (v3)
  {
    if ([(TUIKeyboardState *)self hasInputView]|| [(TUIKeyboardState *)self hasFloatingAssistantView])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(TUIKeyboardState *)self isNonKeyboard];
    }
  }

  return v3;
}

+ (id)interactiveStateForState:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TUIKeyboardState);
  -[TUIKeyboardState setHasInputView:](v4, "setHasInputView:", [v3 hasInputView]);
  -[TUIKeyboardState setHasAssistantView:](v4, "setHasAssistantView:", [v3 hasAssistantView]);
  -[TUIKeyboardState setHasAccessoryView:](v4, "setHasAccessoryView:", [v3 hasAccessoryView]);
  -[TUIKeyboardState setIsDocked:](v4, "setIsDocked:", [v3 isDocked]);
  -[TUIKeyboardState setIsSplit:](v4, "setIsSplit:", [v3 isSplit]);
  -[TUIKeyboardState setIsFloating:](v4, "setIsFloating:", [v3 isFloating]);
  v5 = [v3 closeEdges];

  [(TUIKeyboardState *)v4 setCloseEdges:v5];
  [(TUIKeyboardState *)v4 setIsInteractive:1];

  return v4;
}

+ (id)compactFloatingAssistantStateForEdge:(unint64_t)a3
{
  v4 = objc_alloc_init(TUIKeyboardState);
  [(TUIKeyboardState *)v4 setHasInputView:0];
  [(TUIKeyboardState *)v4 setHasAssistantView:1];
  [(TUIKeyboardState *)v4 setIsDocked:0];
  [(TUIKeyboardState *)v4 setIsSplit:0];
  [(TUIKeyboardState *)v4 setIsFloating:1];
  [(TUIKeyboardState *)v4 setCloseEdges:a3];
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