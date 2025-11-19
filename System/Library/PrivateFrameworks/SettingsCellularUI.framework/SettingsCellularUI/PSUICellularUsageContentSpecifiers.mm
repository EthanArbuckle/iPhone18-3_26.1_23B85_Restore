@interface PSUICellularUsageContentSpecifiers
- (id)specifiers;
@end

@implementation PSUICellularUsageContentSpecifiers

- (id)specifiers
{
  v3 = [(NSArray *)self->_leadingContentSpecifiers arrayByAddingObjectsFromArray:self->_appSpecifiers];
  v4 = [v3 arrayByAddingObjectsFromArray:self->_trailingContentSpecifiers];

  return v4;
}

@end