@interface SiriLongPressButtonConfiguration
- (SiriLongPressButtonConfiguration)initWithButtonIdentifier:(int64_t)a3;
- (double)longPressInterval;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SiriLongPressButtonConfiguration

- (SiriLongPressButtonConfiguration)initWithButtonIdentifier:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = SiriLongPressButtonConfiguration;
  v4 = [(SiriLongPressButtonConfiguration *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_buttonIdentifer = a3;
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v7;

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SiriLongPressButtonConfiguration alloc] initWithButtonIdentifier:self->_buttonIdentifer];
  [(SiriLongPressButtonConfiguration *)v4 setLongPressBehavior:[(SiriLongPressButtonConfiguration *)self longPressBehavior]];
  v5 = self;

  return v5;
}

@end