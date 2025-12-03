@interface SCLMutableContact
- (void)setContactIdentifier:(id)identifier;
- (void)setValue:(id)value;
@end

@implementation SCLMutableContact

- (void)setContactIdentifier:(id)identifier
{
  v4 = [identifier copy];
  contactIdentifier = self->super._contactIdentifier;
  self->super._contactIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setValue:(id)value
{
  v4 = [value copy];
  value = self->super._value;
  self->super._value = v4;

  MEMORY[0x2821F96F8]();
}

@end