@interface PUIDDisplayContext
- (void)appendDescriptionToFormatter:(id)a3;
- (void)invalidate;
@end

@implementation PUIDDisplayContext

- (void)invalidate
{
  [(BSInvalidatable *)self->_pointerEventStream invalidate];
  touchStream = self->_touchStream;

  [(BKSTouchStream *)touchStream invalidate];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100010590;
  v5[3] = &unk_100048A28;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [v4 appendProem:self block:v5];
}

@end