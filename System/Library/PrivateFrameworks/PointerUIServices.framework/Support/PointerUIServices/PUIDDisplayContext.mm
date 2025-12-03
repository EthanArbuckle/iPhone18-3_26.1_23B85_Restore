@interface PUIDDisplayContext
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)invalidate;
@end

@implementation PUIDDisplayContext

- (void)invalidate
{
  [(BSInvalidatable *)self->_pointerEventStream invalidate];
  touchStream = self->_touchStream;

  [(BKSTouchStream *)touchStream invalidate];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100010590;
  v5[3] = &unk_100048A28;
  formatterCopy = formatter;
  selfCopy = self;
  v4 = formatterCopy;
  [v4 appendProem:self block:v5];
}

@end