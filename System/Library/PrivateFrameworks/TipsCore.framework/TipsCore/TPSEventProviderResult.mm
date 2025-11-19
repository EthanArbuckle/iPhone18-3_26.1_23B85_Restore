@interface TPSEventProviderResult
- (id)debugDescription;
@end

@implementation TPSEventProviderResult

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@", self];
  [v3 appendFormat:@"%@ = %@\n", @"identifier", self->_identifier];
  [v3 appendFormat:@"%@ = %@\n", @"ResultDate", self->_resultDate];
  [v3 appendFormat:@"%@ = %@\n", @"ObservationMap", self->_observationMap];
  [v3 appendFormat:@"%@ = %@\n", @"bookmark", self->_bookmark];
  [v3 appendFormat:@"%@ = %@\n", @"userInfo", self->_userInfo];

  return v3;
}

@end