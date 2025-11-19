@interface QOSConfig
- (QOSConfig)initWithAppTarget:(int64_t)a3 locale:(id)a4;
- (id)locale;
- (int64_t)appTarget;
@end

@implementation QOSConfig

- (QOSConfig)initWithAppTarget:(int64_t)a3 locale:(id)a4
{
  v11.receiver = self;
  v11.super_class = QOSConfig;
  v5 = a4;
  v6 = [(QOSConfig *)&v11 init];
  v7 = [QOSConfigInternal alloc];
  v8 = [(QOSConfigInternal *)v7 initWithAppTarget:a3 locale:v5, v11.receiver, v11.super_class];

  underlyingObject = v6->_underlyingObject;
  v6->_underlyingObject = v8;

  return v6;
}

- (id)locale
{
  v2 = [(QOSConfig *)self underlyingObject];
  v3 = [v2 locale];

  return v3;
}

- (int64_t)appTarget
{
  v2 = [(QOSConfig *)self underlyingObject];
  v3 = [v2 appTarget];

  return v3;
}

@end