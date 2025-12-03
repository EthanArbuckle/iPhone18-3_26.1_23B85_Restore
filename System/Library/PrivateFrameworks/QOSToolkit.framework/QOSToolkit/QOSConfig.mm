@interface QOSConfig
- (QOSConfig)initWithAppTarget:(int64_t)target locale:(id)locale;
- (id)locale;
- (int64_t)appTarget;
@end

@implementation QOSConfig

- (QOSConfig)initWithAppTarget:(int64_t)target locale:(id)locale
{
  v11.receiver = self;
  v11.super_class = QOSConfig;
  localeCopy = locale;
  v6 = [(QOSConfig *)&v11 init];
  v7 = [QOSConfigInternal alloc];
  v8 = [(QOSConfigInternal *)v7 initWithAppTarget:target locale:localeCopy, v11.receiver, v11.super_class];

  underlyingObject = v6->_underlyingObject;
  v6->_underlyingObject = v8;

  return v6;
}

- (id)locale
{
  underlyingObject = [(QOSConfig *)self underlyingObject];
  locale = [underlyingObject locale];

  return locale;
}

- (int64_t)appTarget
{
  underlyingObject = [(QOSConfig *)self underlyingObject];
  appTarget = [underlyingObject appTarget];

  return appTarget;
}

@end