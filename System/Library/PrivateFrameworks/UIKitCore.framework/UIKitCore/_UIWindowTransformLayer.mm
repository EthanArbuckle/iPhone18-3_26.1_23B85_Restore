@interface _UIWindowTransformLayer
- (void)addAnimation:(id)animation forKey:(id)key;
@end

@implementation _UIWindowTransformLayer

- (void)addAnimation:(id)animation forKey:(id)key
{
  animationCopy = animation;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [keyCopy isEqualToString:@"transform"])
  {
    v8 = animationCopy;
    window = self->super._window;
    previousSceneOrientationForCounterRotation = window->_previousSceneOrientationForCounterRotation;
    _toWindowOrientation = [(UIWindow *)window _toWindowOrientation];
    _fromWindowOrientation = [(UIWindow *)self->super._window _fromWindowOrientation];
    if (previousSceneOrientationForCounterRotation)
    {
      v13 = self->super._window;
      v14 = v13->_previousSceneOrientationForCounterRotation;
      _orientationForRootTransform = [(UIWindow *)v13 _orientationForRootTransform];
      v16 = 0.0;
      v17 = 0.0;
      if (_fromWindowOrientation != 1)
      {
        if (_fromWindowOrientation == 3)
        {
          v17 = 1.57079633;
        }

        else if (_fromWindowOrientation == 4)
        {
          v17 = -1.57079633;
        }

        else
        {
          v17 = 3.14159265;
          if (_fromWindowOrientation != 2)
          {
            v17 = 0.0;
          }
        }
      }

      if (v14 != 1)
      {
        if (v14 == 3)
        {
          v16 = 1.57079633;
        }

        else if (v14 == 4)
        {
          v16 = -1.57079633;
        }

        else
        {
          v16 = 3.14159265;
          if (v14 != 2)
          {
            v16 = 0.0;
          }
        }
      }

      v18 = 0.0;
      v19 = 0.0;
      if (_toWindowOrientation != 1)
      {
        if (_toWindowOrientation == 3)
        {
          v19 = 1.57079633;
        }

        else if (_toWindowOrientation == 4)
        {
          v19 = -1.57079633;
        }

        else
        {
          v19 = 3.14159265;
          if (_toWindowOrientation != 2)
          {
            v19 = 0.0;
          }
        }
      }

      v20 = v17 - v16;
      if (_orientationForRootTransform != 1)
      {
        switch(_orientationForRootTransform)
        {
          case 3:
            v18 = 1.57079633;
            break;
          case 4:
            v18 = -1.57079633;
            break;
          case 2:
            v18 = 3.14159265;
            break;
        }
      }

      _UIMakeBasicTransformAnimationUnambiguousWithAngles(v8, 1, 0, v20, v19 - v18);
    }

    else
    {
      _UIMakeBasicTransformAnimationUnambiguousWithOrientations(v8, _fromWindowOrientation, _toWindowOrientation, 0, 0);
    }
  }

  v21.receiver = self;
  v21.super_class = _UIWindowTransformLayer;
  [(_UIWindowTransformLayer *)&v21 addAnimation:animationCopy forKey:keyCopy];
}

@end