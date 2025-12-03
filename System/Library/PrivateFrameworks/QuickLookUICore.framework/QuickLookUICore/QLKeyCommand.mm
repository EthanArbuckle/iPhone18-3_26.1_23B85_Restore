@interface QLKeyCommand
+ (id)keyCommandWithKeyCommand:(id)command identifier:(unint64_t)identifier;
- (QLKeyCommand)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLKeyCommand

+ (id)keyCommandWithKeyCommand:(id)command identifier:(unint64_t)identifier
{
  commandCopy = command;
  v6 = objc_opt_new();
  [v6 setKeyCommand:commandCopy];

  [v6 setKeyCommandIdentifier:identifier];

  return v6;
}

- (QLKeyCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(QLKeyCommand *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyCommand"];
    keyCommand = v5->_keyCommand;
    v5->_keyCommand = v6;

    v5->_keyCommandIdentifier = [coderCopy decodeIntegerForKey:@"keyCommandIdentifier"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  keyCommand = self->_keyCommand;
  coderCopy = coder;
  [coderCopy encodeObject:keyCommand forKey:@"keyCommand"];
  [coderCopy encodeInteger:self->_keyCommandIdentifier forKey:@"keyCommandIdentifier"];
}

@end