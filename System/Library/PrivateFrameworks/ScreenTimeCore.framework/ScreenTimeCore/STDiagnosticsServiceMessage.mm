@interface STDiagnosticsServiceMessage
+ (id)nameForMessageCategory:(int64_t)category;
- (STDiagnosticsServiceMessage)initWithCoder:(id)coder;
- (STDiagnosticsServiceMessage)initWithMessageType:(int64_t)type withUserInfo:(id)info;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STDiagnosticsServiceMessage

- (STDiagnosticsServiceMessage)initWithMessageType:(int64_t)type withUserInfo:(id)info
{
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = STDiagnosticsServiceMessage;
  v7 = [(STDiagnosticsServiceMessage *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_messageCategory = type;
    v9 = [infoCopy copy];
    userInfo = v8->_userInfo;
    v8->_userInfo = v9;
  }

  return v8;
}

+ (id)nameForMessageCategory:(int64_t)category
{
  if (category > 2)
  {
    return @"Undefined Message Category";
  }

  else
  {
    return off_1E7CE7D88[category];
  }
}

- (id)description
{
  v3 = [STDiagnosticsServiceMessage nameForMessageCategory:[(STDiagnosticsServiceMessage *)self messageCategory]];
  v4 = MEMORY[0x1E696AEC0];
  userInfo = [(STDiagnosticsServiceMessage *)self userInfo];
  v6 = [v4 stringWithFormat:@"Category: %@\nUserInfo: %@", v3, userInfo];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  messageCategory = self->_messageCategory;
  coderCopy = coder;
  [coderCopy encodeInteger:messageCategory forKey:@"messageCategory"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
}

- (STDiagnosticsServiceMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STDiagnosticsServiceMessage;
  v5 = [(STDiagnosticsServiceMessage *)&v13 init];
  if (v5)
  {
    v5->_messageCategory = [coderCopy decodeIntegerForKey:@"messageCategory"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v10;
  }

  return v5;
}

@end