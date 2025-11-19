@interface ICURLBagMescalConfiguration
- (id)description;
@end

@implementation ICURLBagMescalConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = ICURLBagMescalConfiguration;
  v4 = [(ICURLBagMescalConfiguration *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ shouldSignBody=%d, shouldIncludePath=%d, fields=%@, headers=%@", v4, self->_shouldSignBody, self->_shouldIncludePath, self->_fields, self->_headers];;

  return v5;
}

@end