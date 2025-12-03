@interface _UIFocusSoundGenerator
+ (id)defaultGenerator;
+ (void)_uiktest_unregisterURLForIdentifier:(id)identifier;
+ (void)registerURL:(id)l forIdentifier:(id)identifier;
- (_UIFocusSoundGenerator)initWithFocusSoundPlayer:(id)player;
- (void)playSoundForFocusUpdateInContext:(id)context;
@end

@implementation _UIFocusSoundGenerator

+ (id)defaultGenerator
{
  v2 = [_UIFocusSoundGenerator alloc];
  v3 = +[_UIDefaultFocusSoundPlayer sharedInstance];
  v4 = [(_UIFocusSoundGenerator *)v2 initWithFocusSoundPlayer:v3];

  return v4;
}

- (_UIFocusSoundGenerator)initWithFocusSoundPlayer:(id)player
{
  playerCopy = player;
  v9.receiver = self;
  v9.super_class = _UIFocusSoundGenerator;
  v6 = [(_UIFocusSoundGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_focusSoundPlayer, player);
  }

  return v7;
}

- (void)playSoundForFocusUpdateInContext:(id)context
{
  contextCopy = context;
  _request = [contextCopy _request];
  shouldPlayFocusSound = [_request shouldPlayFocusSound];

  if (shouldPlayFocusSound)
  {
    v7 = @"UIFocusSoundIdentifierDefault";
  }

  else
  {
    v7 = @"UIFocusSoundIdentifierNone";
  }

  v8 = v7;
  if (([v8 isEqualToString:0x1EFB4F1D0] & 1) == 0)
  {
    v9 = contextCopy;
    [v9 _focusVelocity];
    v11 = v10;
    v13 = v12;
    _focusMovement = [v9 _focusMovement];

    _isVelocityBased = [_focusMovement _isVelocityBased];
    v16 = 1.0;
    if (_isVelocityBased)
    {
      v16 = fmin(fmax(_UIFocusVelocityBasedInterpolationFactor(v11, v13), 0.1), 1.0) * 0.6 + 0.4;
    }

    nextFocusedItem = [v9 nextFocusedItem];
    if (nextFocusedItem)
    {
      v18 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:nextFocusedItem];
      coordinateSpace = [v18 coordinateSpace];

      v20 = _UIParentCoordinateSpaceForFocusItem(nextFocusedItem);
      v21 = v20;
      v22 = 0.0;
      if (coordinateSpace && v20)
      {
        v23 = _UIFocusItemFrameInCoordinateSpace(nextFocusedItem, coordinateSpace);
        v25 = v23 + v24 * 0.5;
        [coordinateSpace bounds];
        Width = CGRectGetWidth(v34);
        v22 = (v25 - Width * 0.5) / (Width * 0.375);
      }
    }

    else
    {
      v22 = 0.0;
    }

    if ([v8 isEqualToString:0x1EFB4F1F0])
    {
      nextFocusedItem2 = [v9 nextFocusedItem];
      v28 = _UIFocusedSoundForItem(nextFocusedItem2);

      [(_UIFocusSoundPlayer *)self->_focusSoundPlayer playSoundWithFocusSound:v28 volume:v16 pan:v22];
    }

    else
    {
      v29 = _UIFocusSoundRegistry();
      v30 = [v29 objectForKeyedSubscript:v8];

      if (!v30)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusSoundGenerator.m" lineNumber:166 description:{@"Attempted to play sound for identifier '%@', which has not been registered.", v8}];
      }

      [(_UIFocusSoundPlayer *)self->_focusSoundPlayer playSoundWithURL:v30 volume:v16 pan:v22];
    }
  }
}

+ (void)registerURL:(id)l forIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  if (lCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusSoundGenerator.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"soundFileURL"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusSoundGenerator.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:
  v8 = _UIFocusSoundRegistry();
  v9 = [v8 objectForKeyedSubscript:identifierCopy];

  if (v9)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIFocusSoundGenerator.m" lineNumber:185 description:{@"A URL is already registered with the identifier '%@'. Identifiers can only be registered once.", identifierCopy}];
  }

  v10 = _UIFocusSoundRegistry();
  [v10 setObject:lCopy forKeyedSubscript:identifierCopy];
}

+ (void)_uiktest_unregisterURLForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusSoundGenerator.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v5 = _UIFocusSoundRegistry();
  [v5 setObject:0 forKeyedSubscript:identifierCopy];
}

@end