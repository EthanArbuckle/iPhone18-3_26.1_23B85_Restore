@interface _PUIDSceneBag
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation _PUIDSceneBag

- (void)appendDescriptionToFormatter:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019B34;
  v5[3] = &unk_100048A28;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [v4 appendProem:self block:v5];
}

@end