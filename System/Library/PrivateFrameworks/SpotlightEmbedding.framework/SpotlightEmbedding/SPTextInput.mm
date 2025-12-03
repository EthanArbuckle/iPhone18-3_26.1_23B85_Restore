@interface SPTextInput
- (SPTextInput)initWithAttributedString:(id)string;
- (SPTextInput)initWithText:(id)text;
- (SPTextInput)initWithTokenIds:(id)ids;
- (unint64_t)tokenLength;
@end

@implementation SPTextInput

- (SPTextInput)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = SPTextInput;
  v6 = [(SPTextInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, text);
    v7->_type = 1;
  }

  return v7;
}

- (SPTextInput)initWithTokenIds:(id)ids
{
  idsCopy = ids;
  v9.receiver = self;
  v9.super_class = SPTextInput;
  v5 = [(SPTextInput *)&v9 init];
  if (v5)
  {
    v6 = [idsCopy copy];
    tokenIDs = v5->_tokenIDs;
    v5->_tokenIDs = v6;

    v5->_type = 2;
  }

  return v5;
}

- (SPTextInput)initWithAttributedString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = SPTextInput;
  v6 = [(SPTextInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributedString, string);
    v7->_type = 3;
  }

  return v7;
}

- (unint64_t)tokenLength
{
  if ([(SPTextInput *)self type]!= 2)
  {
    return 0;
  }

  tokenIDs = [(SPTextInput *)self tokenIDs];
  v4 = [tokenIDs count];

  if (v4)
  {
    tokenIDs2 = [(SPTextInput *)self tokenIDs];
    firstObject = [tokenIDs2 firstObject];
    v7 = [firstObject isEqualToNumber:&unk_287C3C928];

    v4 -= v7;
    tokenIDs3 = [(SPTextInput *)self tokenIDs];
    if ([tokenIDs3 count] <= 1)
    {
    }

    else
    {
      tokenIDs4 = [(SPTextInput *)self tokenIDs];
      lastObject = [tokenIDs4 lastObject];
      v11 = [lastObject isEqualToNumber:&unk_287C3C928];

      v4 -= v11 & 1;
    }
  }

  return v4;
}

@end