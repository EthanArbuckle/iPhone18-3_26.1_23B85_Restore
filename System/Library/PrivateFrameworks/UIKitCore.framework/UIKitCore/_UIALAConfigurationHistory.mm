@interface _UIALAConfigurationHistory
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIALAConfigurationHistory

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIALAConfigurationHistory;
  v4 = [(_UILAConfigurationHistory *)&v6 copyWithZone:zone];
  [v4 setAlignment:self->_alignment];
  [v4 setHasEstablishedAlignmentValues:self->_hasEstablishedAlignmentValues];
  [v4 setInAlignmentLayoutUpdateSection:self->_inAlignmentLayoutUpdateSection];
  return v4;
}

@end