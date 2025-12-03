@interface CNVCardActivityAlertScanner
+ (id)scanAlertValueFromString:(id)string;
+ (id)scannerWithString:(id)string;
- (BOOL)scanPastCharacter:(unsigned __int16)character;
- (CNVCardActivityAlertScanner)initWithString:(id)string;
- (id)scanAlertValue;
- (id)scanKeyValuePair;
- (id)scanQuotedStringValue;
- (id)scanStringValue;
- (id)scanUnquotedStringValue;
- (unsigned)nextCharacter;
- (unsigned)nextUnescapedCharacter;
- (unsigned)scanCharacterWithEscaping:(BOOL)escaping;
- (void)scanPastWhitespace;
@end

@implementation CNVCardActivityAlertScanner

+ (id)scanAlertValueFromString:(id)string
{
  v3 = [self scannerWithString:string];
  scanAlertValue = [v3 scanAlertValue];

  return scanAlertValue;
}

+ (id)scannerWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

- (CNVCardActivityAlertScanner)initWithString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = CNVCardActivityAlertScanner;
  v5 = [(CNVCardActivityAlertScanner *)&v10 init];
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

- (id)scanAlertValue
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  do
  {
    scanKeyValuePair = [(CNVCardActivityAlertScanner *)self scanKeyValuePair];
    [dictionary addEntriesFromDictionary:scanKeyValuePair];
  }

  while ([(CNVCardActivityAlertScanner *)self scanPastItemDelimiter]);

  return dictionary;
}

- (id)scanKeyValuePair
{
  v10[1] = *MEMORY[0x277D85DE8];
  scanStringValue = [(CNVCardActivityAlertScanner *)self scanStringValue];
  [(CNVCardActivityAlertScanner *)self scanPastKeyValueSeparator];
  scanStringValue2 = [(CNVCardActivityAlertScanner *)self scanStringValue];
  v5 = *MEMORY[0x277CFBD30];
  if ((*(*MEMORY[0x277CFBD30] + 16))(*MEMORY[0x277CFBD30], scanStringValue) & 1) != 0 || ((*(v5 + 16))(v5, scanStringValue2))
  {
    v6 = 0;
  }

  else
  {
    v9 = scanStringValue;
    v10[0] = scanStringValue2;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)scanStringValue
{
  if ([(CNVCardActivityAlertScanner *)self atEnd])
  {
    v3 = 0;
  }

  else
  {
    if ([(CNVCardActivityAlertScanner *)self nextUnescapedCharacter]== 34)
    {
      [(CNVCardActivityAlertScanner *)self scanQuotedStringValue];
    }

    else
    {
      [(CNVCardActivityAlertScanner *)self scanUnquotedStringValue];
    }
    v3 = ;
  }

  return v3;
}

- (id)scanUnquotedStringValue
{
  string = [MEMORY[0x277CCAB68] string];
  if (![(CNVCardActivityAlertScanner *)self atEnd])
  {
    do
    {
      if (![objc_opt_class() characterIsStringValueCharacter:{-[CNVCardActivityAlertScanner nextCharacter](self, "nextCharacter")}])
      {
        break;
      }

      [string appendFormat:@"%C", -[CNVCardActivityAlertScanner scanCharacter](self, "scanCharacter")];
    }

    while (![(CNVCardActivityAlertScanner *)self atEnd]);
  }

  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v4 = string;
  }

  v5 = v4;

  return v4;
}

- (id)scanQuotedStringValue
{
  [(CNVCardActivityAlertScanner *)self scanCharacter];
  string = [MEMORY[0x277CCAB68] string];
  if (![(CNVCardActivityAlertScanner *)self atEnd])
  {
    do
    {
      if ([(CNVCardActivityAlertScanner *)self nextUnescapedCharacter]== 34)
      {
        break;
      }

      [string appendFormat:@"%C", -[CNVCardActivityAlertScanner scanCharacter](self, "scanCharacter")];
    }

    while (![(CNVCardActivityAlertScanner *)self atEnd]);
  }

  [(CNVCardActivityAlertScanner *)self scanCharacter];

  return string;
}

- (unsigned)scanCharacterWithEscaping:(BOOL)escaping
{
  escapingCopy = escaping;
  if ([(CNVCardActivityAlertScanner *)self atEnd])
  {
    LOWORD(v5) = 0;
  }

  else
  {
    string = self->_string;
    ++self->_position;
    v5 = [(NSString *)string characterAtIndex:?];
    if (v5 == 92 && escapingCopy)
    {

      LOWORD(v5) = [(CNVCardActivityAlertScanner *)self scanCharacterWithEscaping:0];
    }
  }

  return v5;
}

- (BOOL)scanPastCharacter:(unsigned __int16)character
{
  characterCopy = character;
  [(CNVCardActivityAlertScanner *)self scanPastWhitespace];
  position = self->_position;
  scanCharacter = [(CNVCardActivityAlertScanner *)self scanCharacter];
  if (scanCharacter == characterCopy)
  {
    [(CNVCardActivityAlertScanner *)self scanPastWhitespace];
  }

  else
  {
    self->_position = position;
  }

  return scanCharacter == characterCopy;
}

- (void)scanPastWhitespace
{
  nextCharacter = [(CNVCardActivityAlertScanner *)self nextCharacter];
  if (nextCharacter)
  {
    v4 = nextCharacter;
    do
    {
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v6 = [whitespaceCharacterSet characterIsMember:v4];

      if (!v6)
      {
        break;
      }

      [(CNVCardActivityAlertScanner *)self scanCharacter];
      nextCharacter2 = [(CNVCardActivityAlertScanner *)self nextCharacter];
      v4 = nextCharacter2;
    }

    while (nextCharacter2);
  }
}

- (unsigned)nextCharacter
{
  position = self->_position;
  result = [(CNVCardActivityAlertScanner *)self scanCharacter];
  self->_position = position;
  return result;
}

- (unsigned)nextUnescapedCharacter
{
  position = self->_position;
  result = [(CNVCardActivityAlertScanner *)self scanCharacterWithEscaping:0];
  self->_position = position;
  return result;
}

@end