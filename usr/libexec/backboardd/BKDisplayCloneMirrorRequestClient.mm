@interface BKDisplayCloneMirrorRequestClient
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKDisplayCloneMirrorRequestClient

- (void)appendDescriptionToFormatter:(id)formatter
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000393C8;
  v4[3] = &unk_1000FD128;
  v4[4] = self;
  formatterCopy = formatter;
  v3 = formatterCopy;
  [v3 appendProem:0 block:v4];
}

@end