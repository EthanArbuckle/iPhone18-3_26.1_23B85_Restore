@interface CNVCardDateScanner
+ (id)scannerWithString:(id)string;
- (BOOL)scanLeapMarker;
- (CNVCardDateScanner)initWithString:(id)string;
- (int64_t)scanCalendarUnit:(unint64_t)unit;
- (int64_t)scanComponentValueOfLength:(unint64_t)length;
- (unint64_t)lengthOfCalendarUnit:(unint64_t)unit;
@end

@implementation CNVCardDateScanner

+ (id)scannerWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

- (CNVCardDateScanner)initWithString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = CNVCardDateScanner;
  v5 = [(CNVCardDateScanner *)&v10 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    string = v5->_string;
    v5->_string = v6;

    v5->_position = 0;
    v8 = v5;
  }

  return v5;
}

- (int64_t)scanComponentValueOfLength:(unint64_t)length
{
  if ([(CNVCardDateScanner *)self isAtEnd])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  nextCharacter = [(CNVCardDateScanner *)self nextCharacter];
  position = self->_position;
  if (nextCharacter == 45)
  {
    self->_position = position + 1;
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = length + 1;
  do
  {
    --v8;
  }

  while (position + v8 > [(NSString *)self->_string length]);
  v9 = [(NSString *)self->_string substringWithRange:position, v8];
  self->_position += v8;
  integerValue = [v9 integerValue];

  return integerValue;
}

- (int64_t)scanCalendarUnit:(unint64_t)unit
{
  v4 = [(CNVCardDateScanner *)self lengthOfCalendarUnit:unit];

  return [(CNVCardDateScanner *)self scanComponentValueOfLength:v4];
}

- (unint64_t)lengthOfCalendarUnit:(unint64_t)unit
{
  v3 = __ROR8__(unit - 2, 1);
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