@interface STDiagnosticsServiceMessage
+ (id)nameForMessageCategory:(int64_t)a3;
- (STDiagnosticsServiceMessage)initWithCoder:(id)a3;
- (STDiagnosticsServiceMessage)initWithMessageType:(int64_t)a3 withUserInfo:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STDiagnosticsServiceMessage

- (STDiagnosticsServiceMessage)initWithMessageType:(int64_t)a3 withUserInfo:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = STDiagnosticsServiceMessage;
  v7 = [(STDiagnosticsServiceMessage *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_messageCategory = a3;
    v9 = [v6 copy];
    userInfo = v8->_userInfo;
    v8->_userInfo = v9;
  }

  return v8;
}

+ (id)nameForMessageCategory:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Undefined Message Category";
  }

  else
  {
    return off_1E7CE7D88[a3];
  }
}

- (id)description
{
  v3 = [STDiagnosticsServiceMessage nameForMessageCategory:[(STDiagnosticsServiceMessage *)self messageCategory]];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(STDiagnosticsServiceMessage *)self userInfo];
  v6 = [v4 stringWithFormat:@"Category: %@\nUserInfo: %@", v3, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  messageCategory = self->_messageCategory;
  v5 = a3;
  [v5 encodeInteger:messageCategory forKey:@"messageCategory"];
  [v5 encodeObject:self->_userInfo forKey:@"userInfo"];
}

- (STDiagnosticsServiceMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STDiagnosticsServiceMessage;
  v5 = [(STDiagnosticsServiceMessage *)&v13 init];
  if (v5)
  {
    v5->_messageCategory = [v4 decodeIntegerForKey:@"messageCategory"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v10;
  }

  return v5;
}

@end