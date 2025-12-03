@interface WLSocketVersionMessage
- (WLSocketVersionMessage)initWithVersion:(unint64_t)version;
@end

@implementation WLSocketVersionMessage

- (WLSocketVersionMessage)initWithVersion:(unint64_t)version
{
  v7.receiver = self;
  v7.super_class = WLSocketVersionMessage;
  v4 = [(WLSocketMessage *)&v7 initWithType:2];
  v5 = v4;
  if (v4)
  {
    [(WLSocketVersionMessage *)v4 setVersion:version];
  }

  return v5;
}

@end