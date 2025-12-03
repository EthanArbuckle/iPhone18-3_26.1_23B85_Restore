@interface STDelta
- (STDelta)initWithUniqueIdentifier:(id)identifier;
- (void)deleted;
@end

@implementation STDelta

- (STDelta)initWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = STDelta;
  v5 = [(STDelta *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;
  }

  return v5;
}

- (void)deleted
{
  dictionary = self->_dictionary;
  self->_changeType = 2;
  self->_dictionary = 0;
  MEMORY[0x1EEE66BB8]();
}

@end