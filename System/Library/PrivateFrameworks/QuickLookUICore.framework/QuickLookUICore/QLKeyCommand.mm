@interface QLKeyCommand
+ (id)keyCommandWithKeyCommand:(id)a3 identifier:(unint64_t)a4;
- (QLKeyCommand)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLKeyCommand

+ (id)keyCommandWithKeyCommand:(id)a3 identifier:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setKeyCommand:v5];

  [v6 setKeyCommandIdentifier:a4];

  return v6;
}

- (QLKeyCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(QLKeyCommand *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyCommand"];
    keyCommand = v5->_keyCommand;
    v5->_keyCommand = v6;

    v5->_keyCommandIdentifier = [v4 decodeIntegerForKey:@"keyCommandIdentifier"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  keyCommand = self->_keyCommand;
  v5 = a3;
  [v5 encodeObject:keyCommand forKey:@"keyCommand"];
  [v5 encodeInteger:self->_keyCommandIdentifier forKey:@"keyCommandIdentifier"];
}

@end