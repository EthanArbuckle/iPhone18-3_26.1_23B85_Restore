@interface ZOTConfiguration
+ (id)configurationManager;
- (BOOL)didStartForFirstTime;
- (BOOL)perApplicationZoomLevelEnabled;
- (BOOL)zoomedForKey:(id)a3;
- (CGPoint)zoomLocationForKey:(id)a3 currentLocation:(CGPoint)a4;
- (ZOTConfiguration)init;
- (double)zoomLevelForKey:(id)a3 currentLevel:(double)a4;
- (id)valueForKey:(id)a3;
- (void)dealloc;
- (void)setValue:(id)a3 forKey:(id)a4;
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

- (id)valueForKey:(id)a3
{
  v3 = a3;
  if ([(__CFString *)v3 isEqualToString:@"ZoomLevel"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 zoomScale];
    v5 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v5 = CFPreferencesCopyAppValue(v3, @"com.apple.ZoomTouch");
  }

  return v5;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  key = a4;
  v6 = a3;
  if ([(__CFString *)key isEqualToString:@"ZoomLevel"])
  {
    [v6 floatValue];
    v8 = v7;

    v9 = +[AXSettings sharedInstance];
    [v9 setZoomScale:v8];
  }

  else
  {
    CFPreferencesSetAppValue(key, v6, @"com.apple.ZoomTouch");

    [(SCRCTargetSelectorTimer *)self->_syncTimer dispatchAfterDelay:1.0];
  }
}

- (double)zoomLevelForKey:(id)a3 currentLevel:(double)a4
{
  v6 = a3;
  v7 = [(ZOTConfiguration *)self perApplicationZoomLevelEnabled];
  if (v6 && (v7 & 1) != 0)
  {
    v8 = [(ZOTConfiguration *)self valueForKey:v6];
    v9 = [v8 objectForKey:@"ZoomLevel"];

    if (v9)
    {
LABEL_6:
      [v9 floatValue];
      a4 = v11;

      goto LABEL_9;
    }

    v10 = [(ZOTConfiguration *)self valueForKey:@"ZoomLevel"];
    if (v10)
    {
      v9 = v10;
      goto LABEL_6;
    }

    a4 = AXZoomDefaultZoomLevel;
  }

  else
  {
    v12 = [(ZOTConfiguration *)self valueForKey:@"ZoomLevel"];
    if (v12)
    {
      v13 = v12;
      [v12 floatValue];
      a4 = v14;
    }
  }

LABEL_9:
  if (a4 < AXZoomMinimumZoomLevel + 0.000001)
  {
    a4 = AXZoomDefaultZoomLevel;
  }

  return a4;
}

- (CGPoint)zoomLocationForKey:(id)a3 currentLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(ZOTConfiguration *)self perApplicationZoomLevelEnabled];
  if (v7 && (v8 & 1) != 0)
  {
    v9 = [(ZOTConfiguration *)self valueForKey:v7];
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

- (BOOL)zoomedForKey:(id)a3
{
  v4 = a3;
  v5 = [(ZOTConfiguration *)self perApplicationZoomLevelEnabled];
  if (v4 && (v5 & 1) != 0)
  {
    v6 = [(ZOTConfiguration *)self valueForKey:v4];
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

  v8 = [v7 BOOLValue];

  return v8;
}

- (BOOL)perApplicationZoomLevelEnabled
{
  v2 = [(ZOTConfiguration *)self valueForKey:@"ZoomPerApp"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end