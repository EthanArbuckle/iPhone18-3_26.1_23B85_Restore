@interface BKKeyboardInfo
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)dealloc;
@end

@implementation BKKeyboardInfo

- (void)appendDescriptionToFormatter:(id)formatter
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075BEC;
  v5[3] = &unk_1000FD128;
  formatterCopy = formatter;
  selfCopy = self;
  v4 = formatterCopy;
  [v4 appendProem:self block:v5];
}

- (void)dealloc
{
  if (self->_gsKeyboard)
  {
    GSKeyboardRelease();
  }

  v3.receiver = self;
  v3.super_class = BKKeyboardInfo;
  [(BKKeyboardInfo *)&v3 dealloc];
}

@end