@interface _BKTouchSensitiveButtonKey
- (BOOL)isEqual:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation _BKTouchSensitiveButtonKey

- (void)appendDescriptionToStream:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002ACB4;
  v4[3] = &unk_1000FD128;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  [v3 appendProem:0 block:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v8 && self->_senderID == v8[2] && self->_page == *(v8 + 4) && self->_usage == *(v8 + 5);
  return v9;
}

@end