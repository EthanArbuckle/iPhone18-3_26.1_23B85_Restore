@interface SPTextInput
- (SPTextInput)initWithAttributedString:(id)a3;
- (SPTextInput)initWithText:(id)a3;
- (SPTextInput)initWithTokenIds:(id)a3;
- (unint64_t)tokenLength;
@end

@implementation SPTextInput

- (SPTextInput)initWithText:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPTextInput;
  v6 = [(SPTextInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, a3);
    v7->_type = 1;
  }

  return v7;
}

- (SPTextInput)initWithTokenIds:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SPTextInput;
  v5 = [(SPTextInput *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    tokenIDs = v5->_tokenIDs;
    v5->_tokenIDs = v6;

    v5->_type = 2;
  }

  return v5;
}

- (SPTextInput)initWithAttributedString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPTextInput;
  v6 = [(SPTextInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributedString, a3);
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

  v3 = [(SPTextInput *)self tokenIDs];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SPTextInput *)self tokenIDs];
    v6 = [v5 firstObject];
    v7 = [v6 isEqualToNumber:&unk_287C3C928];

    v4 -= v7;
    v8 = [(SPTextInput *)self tokenIDs];
    if ([v8 count] <= 1)
    {
    }

    else
    {
      v9 = [(SPTextInput *)self tokenIDs];
      v10 = [v9 lastObject];
      v11 = [v10 isEqualToNumber:&unk_287C3C928];

      v4 -= v11 & 1;
    }
  }

  return v4;
}

@end