@interface ZOTConfiguration
+ (id)configurationManager;
- (BOOL)didStartForFirstTime;
- (BOOL)perApplicationZoomLevelEnabled;
- (BOOL)zoomedForKey:(id)key;
- (CGPoint)zoomLocationForKey:(id)key currentLocation:(CGPoint)location;
- (ZOTConfiguration)init;
- (double)zoomLevelForKey:(id)key currentLevel:(double)level;
- (id)valueForKey:(id)key;
- (void)dealloc;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation ZOTConfiguration

+ (id)configurationManager
{
  v2 = _ZOTConfiguration;
  if (!_ZOTConfiguration)
  {
    v3 = [objc_allocWithZone(ZOTConfiguration) init];
    v4 = _ZOTConfiguration;
    _ZOTConfiguration = v3;

    v2 = _ZOTConfiguration;
  }

  return v2;
}

- (ZOTConfiguration)init
{
  v9.receiver = self;
  v9.super_class = ZOTConfiguration;
  v2 = [(ZOTConfiguration *)&v9 init];
  if (v2)
  {
    v3 = [[SCRCThreadKey alloc] initWithObject:v2];
    threadKey = v2->_threadKey;
    v2->_threadKey = v3;

    v5 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_synchronizePrefs" threadKey:v2->_threadKey];
    syncTimer = v2->_syncTimer;
    v2->_syncTimer = v5;

    v7 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(SCRCTargetSelectorTimer *)self->_syncTimer invalidate];
  v3.receiver = self;
  v3.super_class = ZOTConfiguration;
  [(ZOTConfiguration *)&v3 dealloc];
}

- (BOOL)didStartForFirstTime
{
  v2 = [(ZOTConfiguration *)self valueForKey:@"Zoomed"];
  v3 = v2 == 0;

  return v3;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  if ([(__CFString *)keyCopy isEqualToString:@"ZoomLevel"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 zoomScale];
    v5 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v5 = CFPreferencesCopyAppValue(keyCopy, @"com.apple.ZoomTouch");
  }

  return v5;
}

- (void)setValue:(id)value forKey:(id)key
{
  key = key;
  valueCopy = value;
  if ([(__CFString *)key isEqualToString:@"ZoomLevel"])
  {
    [valueCopy floatValue];
    v8 = v7;

    v9 = +[AXSettings sharedInstance];
    [v9 setZoomScale:v8];
  }

  else
  {
    CFPreferencesSetAppValue(key, valueCopy, @"com.apple.ZoomTouch");

    [(SCRCTargetSelectorTimer *)self->_syncTimer dispatchAfterDelay:1.0];
  }
}

- (double)zoomLevelForKey:(id)key currentLevel:(double)level
{
  keyCopy = key;
  perApplicationZoomLevelEnabled = [(ZOTConfiguration *)self perApplicationZoomLevelEnabled];
  if (keyCopy && (perApplicationZoomLevelEnabled & 1) != 0)
  {
    v8 = [(ZOTConfiguration *)self valueForKey:keyCopy];
    v9 = [v8 objectForKey:@"ZoomLevel"];

    if (v9)
    {
LABEL_6:
      [v9 floatValue];
      level = v11;

      goto LABEL_9;
    }

    v10 = [(ZOTConfiguration *)self valueForKey:@"ZoomLevel"];
    if (v10)
    {
      v9 = v10;
      goto LABEL_6;
    }

    level = AXZoomDefaultZoomLevel;
  }

  else
  {
    v12 = [(ZOTConfiguration *)self valueForKey:@"ZoomLevel"];
    if (v12)
    {
      v13 = v12;
      [v12 floatValue];
      level = v14;
    }
  }

LABEL_9:
  if (level < AXZoomMinimumZoomLevel + 0.000001)
  {
    level = AXZoomDefaultZoomLevel;
  }

  return level;
}

- (CGPoint)zoomLocationForKey:(id)key currentLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  keyCopy = key;
  perApplicationZoomLevelEnabled = [(ZOTConfiguration *)self perApplicationZoomLevelEnabled];
  if (keyCopy && (perApplicationZoomLevelEnabled & 1) != 0)
  {
    v9 = [(ZOTConfiguration *)self valueForKey:keyCopy];
    v10 = [v9 objectForKey:@"ZoomLocationX"];
    v11 = [v9 objectForKey:@"ZoomLocationY"];
    v12 = v11;
    if (!v10 || !v11)
    {
      v13 = [(ZOTConfiguration *)self valueForKey:@"ZoomLocationX"];

      v14 = [(ZOTConfiguration *)self valueForKey:@"ZoomLocationY"];

      v10 = v13;
      v12 = v14;
    }

    if (v10 && v12)
    {
      [v10 floatValue];
      x = v15;
      [v12 floatValue];
      y = v16;
    }

    else
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
    }
  }

  else
  {
    v10 = [(ZOTConfiguration *)self valueForKey:@"ZoomLocationX"];
    v17 = [(ZOTConfiguration *)self valueForKey:@"ZoomLocationY"];
    v12 = v17;
    if (v10 && v17)
    {
      [v10 floatValue];
      x = v18;
      [v12 floatValue];
      y = v19;
    }
  }

  v20 = x;
  v21 = y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (BOOL)zoomedForKey:(id)key
{
  keyCopy = key;
  perApplicationZoomLevelEnabled = [(ZOTConfiguration *)self perApplicationZoomLevelEnabled];
  if (keyCopy && (perApplicationZoomLevelEnabled & 1) != 0)
  {
    v6 = [(ZOTConfiguration *)self valueForKey:keyCopy];
    v7 = [v6 objectForKey:@"Zoomed"];
  }

  else
  {
    v7 = [(ZOTConfiguration *)self valueForKey:@"Zoomed"];
    if (!v7)
    {
      v7 = [NSNumber numberWithBool:1];
    }
  }

  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (BOOL)perApplicationZoomLevelEnabled
{
  v2 = [(ZOTConfiguration *)self valueForKey:@"ZoomPerApp"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end