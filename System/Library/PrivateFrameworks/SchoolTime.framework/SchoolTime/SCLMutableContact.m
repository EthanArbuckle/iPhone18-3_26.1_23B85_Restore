@interface SCLMutableContact
- (void)setContactIdentifier:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation SCLMutableContact

- (void)setContactIdentifier:(id)a3
{
  v4 = [a3 copy];
  contactIdentifier = self->super._contactIdentifier;
  self->super._contactIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setValue:(id)a3
{
  v4 = [a3 copy];
  value = self->super._value;
  self->super._value = v4;

  MEMORY[0x2821F96F8]();
}

@end