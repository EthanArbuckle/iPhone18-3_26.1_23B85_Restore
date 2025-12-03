@interface BKMouseDestination
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKMouseDestination

- (void)appendDescriptionToFormatter:(id)formatter
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001AC7C;
  v5[3] = &unk_1000FD128;
  formatterCopy = formatter;
  selfCopy = self;
  v4 = formatterCopy;
  [v4 appendProem:0 block:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = BKMouseDestination;
  v4 = [(BKCAContextDestination *)&v6 copyWithZone:zone];
  sub_10001ADD4(v4, self->_displayUUID);
  sub_10001ADEC(v4, self->_senderInfo);
  if (v4)
  {
    v4[5] = self->_hitTestPoint;
  }

  return v4;
}

@end