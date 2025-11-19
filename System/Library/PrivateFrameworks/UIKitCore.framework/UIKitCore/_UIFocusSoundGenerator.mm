@interface _UIFocusSoundGenerator
+ (id)defaultGenerator;
+ (void)_uiktest_unregisterURLForIdentifier:(id)a3;
+ (void)registerURL:(id)a3 forIdentifier:(id)a4;
- (_UIFocusSoundGenerator)initWithFocusSoundPlayer:(id)a3;
- (void)playSoundForFocusUpdateInContext:(id)a3;
@end

@implementation _UIFocusSoundGenerator

+ (id)defaultGenerator
{
  v2 = [_UIFocusSoundGenerator alloc];
  v3 = +[_UIDefaultFocusSoundPlayer sharedInstance];
  v4 = [(_UIFocusSoundGenerator *)v2 initWithFocusSoundPlayer:v3];

  return v4;
}

- (_UIFocusSoundGenerator)initWithFocusSoundPlayer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIFocusSoundGenerator;
  v6 = [(_UIFocusSoundGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_focusSoundPlayer, a3);
  }

  return v7;
}

- (void)playSoundForFocusUpdateInContext:(id)a3
{
  v32 = a3;
  v5 = [v32 _request];
  v6 = [v5 shouldPlayFocusSound];

  if (v6)
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
    v9 = v32;
    [v9 _focusVelocity];
    v11 = v10;
    v13 = v12;
    v14 = [v9 _focusMovement];

    v15 = [v14 _isVelocityBased];
    v16 = 1.0;
    if (v15)
    {
      v16 = fmin(fmax(_UIFocusVelocityBasedInterpolationFactor(v11, v13), 0.1), 1.0) * 0.6 + 0.4;
    }

    v17 = [v9 nextFocusedItem];
    if (v17)
    {
      v18 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:v17];
      v19 = [v18 coordinateSpace];

      v20 = _UIParentCoordinateSpaceForFocusItem(v17);
      v21 = v20;
      v22 = 0.0;
      if (v19 && v20)
      {
        v23 = _UIFocusItemFrameInCoordinateSpace(v17, v19);
        v25 = v23 + v24 * 0.5;
        [v19 bounds];
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
      v27 = [v9 nextFocusedItem];
      v28 = _UIFocusedSoundForItem(v27);

      [(_UIFocusSoundPlayer *)self->_focusSoundPlayer playSoundWithFocusSound:v28 volume:v16 pan:v22];
    }

    else
    {
      v29 = _UIFocusSoundRegistry();
      v30 = [v29 objectForKeyedSubscript:v8];

      if (!v30)
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        [v31 handleFailureInMethod:a2 object:self file:@"_UIFocusSoundGenerator.m" lineNumber:166 description:{@"Attempted to play sound for identifier '%@', which has not been registered.", v8}];
      }

      [(_UIFocusSoundPlayer *)self->_focusSoundPlayer playSoundWithURL:v30 volume:v16 pan:v22];
    }
  }
}

+ (void)registerURL:(id)a3 forIdentifier:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (v14)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"_UIFocusSoundGenerator.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"soundFileURL"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:a1 file:@"_UIFocusSoundGenerator.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:
  v8 = _UIFocusSoundRegistry();
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"_UIFocusSoundGenerator.m" lineNumber:185 description:{@"A URL is already registered with the identifier '%@'. Identifiers can only be registered once.", v7}];
  }

  v10 = _UIFocusSoundRegistry();
  [v10 setObject:v14 forKeyedSubscript:v7];
}

+ (void)_uiktest_unregisterURLForIdentifier:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"_UIFocusSoundGenerator.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v5 = _UIFocusSoundRegistry();
  [v5 setObject:0 forKeyedSubscript:v7];
}

@end