@interface _PUIDSceneBag
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation _PUIDSceneBag

- (void)appendDescriptionToFormatter:(id)formatter
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019B34;
  v5[3] = &unk_100048A28;
  formatterCopy = formatter;
  selfCopy = self;
  v4 = formatterCopy;
  [v4 appendProem:self block:v5];
}

@end