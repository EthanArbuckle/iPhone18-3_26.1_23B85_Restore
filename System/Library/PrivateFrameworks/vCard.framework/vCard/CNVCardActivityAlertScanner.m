@interface CNVCardActivityAlertScanner
+ (id)scanAlertValueFromString:(id)a3;
+ (id)scannerWithString:(id)a3;
- (BOOL)scanPastCharacter:(unsigned __int16)a3;
- (CNVCardActivityAlertScanner)initWithString:(id)a3;
- (id)scanAlertValue;
- (id)scanKeyValuePair;
- (id)scanQuotedStringValue;
- (id)scanStringValue;
- (id)scanUnquotedStringValue;
- (unsigned)nextCharacter;
- (unsigned)nextUnescapedCharacter;
- (unsigned)scanCharacterWithEscaping:(BOOL)a3;
- (void)scanPastWhitespace;
@end

@implementation CNVCardActivityAlertScanner

+ (id)scanAlertValueFromString:(id)a3
{
  v3 = [a1 scannerWithString:a3];
  v4 = [v3 scanAlertValue];

  return v4;
}

+ (id)scannerWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

- (CNVCardActivityAlertScanner)initWithString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNVCardActivityAlertScanner;
  v5 = [(CNVCardActivityAlertScanner *)&v10 init];
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

- (id)scanAlertValue
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  do
  {
    v4 = [(CNVCardActivityAlertScanner *)self scanKeyValuePair];
    [v3 addEntriesFromDictionary:v4];
  }

  while ([(CNVCardActivityAlertScanner *)self scanPastItemDelimiter]);

  return v3;
}

- (id)scanKeyValuePair
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(CNVCardActivityAlertScanner *)self scanStringValue];
  [(CNVCardActivityAlertScanner *)self scanPastKeyValueSeparator];
  v4 = [(CNVCardActivityAlertScanner *)self scanStringValue];
  v5 = *MEMORY[0x277CFBD30];
  if ((*(*MEMORY[0x277CFBD30] + 16))(*MEMORY[0x277CFBD30], v3) & 1) != 0 || ((*(v5 + 16))(v5, v4))
  {
    v6 = 0;
  }

  else
  {
    v9 = v3;
    v10[0] = v4;
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
  v3 = [MEMORY[0x277CCAB68] string];
  if (![(CNVCardActivityAlertScanner *)self atEnd])
  {
    do
    {
      if (![objc_opt_class() characterIsStringValueCharacter:{-[CNVCardActivityAlertScanner nextCharacter](self, "nextCharacter")}])
      {
        break;
      }

      [v3 appendFormat:@"%C", -[CNVCardActivityAlertScanner scanCharacter](self, "scanCharacter")];
    }

    while (![(CNVCardActivityAlertScanner *)self atEnd]);
  }

  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (id)scanQuotedStringValue
{
  [(CNVCardActivityAlertScanner *)self scanCharacter];
  v3 = [MEMORY[0x277CCAB68] string];
  if (![(CNVCardActivityAlertScanner *)self atEnd])
  {
    do
    {
      if ([(CNVCardActivityAlertScanner *)self nextUnescapedCharacter]== 34)
      {
        break;
      }

      [v3 appendFormat:@"%C", -[CNVCardActivityAlertScanner scanCharacter](self, "scanCharacter")];
    }

    while (![(CNVCardActivityAlertScanner *)self atEnd]);
  }

  [(CNVCardActivityAlertScanner *)self scanCharacter];

  return v3;
}

- (unsigned)scanCharacterWithEscaping:(BOOL)a3
{
  v3 = a3;
  if ([(CNVCardActivityAlertScanner *)self atEnd])
  {
    LOWORD(v5) = 0;
  }

  else
  {
    string = self->_string;
    ++self->_position;
    v5 = [(NSString *)string characterAtIndex:?];
    if (v5 == 92 && v3)
    {

      LOWORD(v5) = [(CNVCardActivityAlertScanner *)self scanCharacterWithEscaping:0];
    }
  }

  return v5;
}

- (BOOL)scanPastCharacter:(unsigned __int16)a3
{
  v3 = a3;
  [(CNVCardActivityAlertScanner *)self scanPastWhitespace];
  position = self->_position;
  v6 = [(CNVCardActivityAlertScanner *)self scanCharacter];
  if (v6 == v3)
  {
    [(CNVCardActivityAlertScanner *)self scanPastWhitespace];
  }

  else
  {
    self->_position = position;
  }

  return v6 == v3;
}

- (void)scanPastWhitespace
{
  v3 = [(CNVCardActivityAlertScanner *)self nextCharacter];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v6 = [v5 characterIsMember:v4];

      if (!v6)
      {
        break;
      }

      [(CNVCardActivityAlertScanner *)self scanCharacter];
      v7 = [(CNVCardActivityAlertScanner *)self nextCharacter];
      v4 = v7;
    }

    while (v7);
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