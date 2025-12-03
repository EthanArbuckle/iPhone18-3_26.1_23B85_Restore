@interface BKDigitizerTouchStreamAggregate
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKDigitizerTouchStreamAggregate

- (void)appendDescriptionToFormatter:(id)formatter
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008C60C;
  v6[3] = &unk_1000FD128;
  v6[4] = formatter;
  v6[5] = self;
  [formatter appendProem:self block:v6];
  v5 = [formatter appendObject:self->_clients withName:@"clients"];
}

@end