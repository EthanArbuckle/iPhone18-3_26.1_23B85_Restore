@interface SiriLongPressButtonConfiguration
- (SiriLongPressButtonConfiguration)initWithButtonIdentifier:(int64_t)identifier;
- (double)longPressInterval;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SiriLongPressButtonConfiguration

- (SiriLongPressButtonConfiguration)initWithButtonIdentifier:(int64_t)identifier
{
  v10.receiver = self;
  v10.super_class = SiriLongPressButtonConfiguration;
  v4 = [(SiriLongPressButtonConfiguration *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_buttonIdentifer = identifier;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = uUIDString;

    v5->_longPressBehavior = 0;
  }

  return v5;
}

- (double)longPressInterval
{
  if (self->_longPressBehavior == 1)
  {
    return 0.65;
  }

  result = 0.4;
  if (self->_buttonIdentifer == 9)
  {
    return 0.25;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SiriLongPressButtonConfiguration alloc] initWithButtonIdentifier:self->_buttonIdentifer];
  [(SiriLongPressButtonConfiguration *)v4 setLongPressBehavior:[(SiriLongPressButtonConfiguration *)self longPressBehavior]];
  selfCopy = self;

  return selfCopy;
}

@end