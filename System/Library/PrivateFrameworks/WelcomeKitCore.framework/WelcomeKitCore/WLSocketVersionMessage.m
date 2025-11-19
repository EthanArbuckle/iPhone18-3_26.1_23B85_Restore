@interface WLSocketVersionMessage
- (WLSocketVersionMessage)initWithVersion:(unint64_t)a3;
@end

@implementation WLSocketVersionMessage

- (WLSocketVersionMessage)initWithVersion:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = WLSocketVersionMessage;
  v4 = [(WLSocketMessage *)&v7 initWithType:2];
  v5 = v4;
  if (v4)
  {
    [(WLSocketVersionMessage *)v4 setVersion:a3];
  }

  return v5;
}

@end