@interface CNVCardDateScanner
+ (id)scannerWithString:(id)a3;
- (BOOL)scanLeapMarker;
- (CNVCardDateScanner)initWithString:(id)a3;
- (int64_t)scanCalendarUnit:(unint64_t)a3;
- (int64_t)scanComponentValueOfLength:(unint64_t)a3;
- (unint64_t)lengthOfCalendarUnit:(unint64_t)a3;
@end

@implementation CNVCardDateScanner

+ (id)scannerWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

- (CNVCardDateScanner)initWithString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNVCardDateScanner;
  v5 = [(CNVCardDateScanner *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    string = v5->_string;
    v5->_string = v6;

    v5->_position = 0;
    v8 = v5;
  }

  return v5;
}

- (int64_t)scanComponentValueOfLength:(unint64_t)a3
{
  if ([(CNVCardDateScanner *)self isAtEnd])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(CNVCardDateScanner *)self nextCharacter];
  position = self->_position;
  if (v5 == 45)
  {
    self->_position = position + 1;
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = a3 + 1;
  do
  {
    --v8;
  }

  while (position + v8 > [(NSString *)self->_string length]);
  v9 = [(NSString *)self->_string substringWithRange:position, v8];
  self->_position += v8;
  v10 = [v9 integerValue];

  return v10;
}

- (int64_t)scanCalendarUnit:(unint64_t)a3
{
  v4 = [(CNVCardDateScanner *)self lengthOfCalendarUnit:a3];

  return [(CNVCardDateScanner *)self scanComponentValueOfLength:v4];
}

- (unint64_t)lengthOfCalendarUnit:(unint64_t)a3
{
  v3 = __ROR8__(a3 - 2, 1);
  if (v3 > 7)
  {
    return 0;
  }

  else
  {
    return qword_27721EF18[v3];
  }
}

- (BOOL)scanLeapMarker
{
  if ([(CNVCardDateScanner *)self isAtEnd]|| [(CNVCardDateScanner *)self nextCharacter]!= 76)
  {
    return 0;
  }

  ++self->_position;
  return 1;
}

@end