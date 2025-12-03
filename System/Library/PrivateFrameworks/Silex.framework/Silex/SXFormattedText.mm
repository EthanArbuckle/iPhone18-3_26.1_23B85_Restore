@interface SXFormattedText
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (SXFormattedText)initWithText:(id)text;
- (SXFormattedText)textWithValue:(id)value withType:(int)type;
- (id)description;
@end

@implementation SXFormattedText

- (SXFormattedText)initWithText:(id)text
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (text)
  {
    v11 = @"text";
    v12[0] = text;
    v4 = MEMORY[0x1E695DF20];
    textCopy = text;
    v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10.receiver = self;
    v10.super_class = SXFormattedText;
    v7 = [(SXJSONObject *)&v10 initWithJSONObject:v6 andVersion:0];

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SXFormattedText)textWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  v7 = &stru_1F532F6C0;
  if (valueCopy && type == 3)
  {
    v7 = valueCopy;
  }

  return v7;
}

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"inlineTextStyles"])
  {
    v5 = &__block_literal_global_3;
  }

  else
  {
    if ([nameCopy isEqualToString:@"additions"])
    {
      v6 = [SXClassFactory valueClassBlockForBaseClass:objc_opt_class()];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = &OBJC_METACLASS___SXFormattedText;
      v6 = objc_msgSendSuper2(&v8, sel_valueClassBlockForPropertyWithName_, nameCopy);
    }

    v5 = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  text = [(SXFormattedText *)self text];
  v6 = [v3 stringWithFormat:@"<%@: %p text: %@", v4, self, text];;

  textStyle = [(SXFormattedText *)self textStyle];

  if (textStyle)
  {
    textStyle2 = [(SXFormattedText *)self textStyle];
    [v6 appendFormat:@"; textStyle: %@", textStyle2];
  }

  inlineTextStyles = [(SXFormattedText *)self inlineTextStyles];

  if (inlineTextStyles)
  {
    inlineTextStyles2 = [(SXFormattedText *)self inlineTextStyles];
    [v6 appendFormat:@"; inlineTextStyles: %lu", objc_msgSend(inlineTextStyles2, "count")];
  }

  additions = [(SXFormattedText *)self additions];

  if (additions)
  {
    additions2 = [(SXFormattedText *)self additions];
    [v6 appendFormat:@"; additions: %lu", objc_msgSend(additions2, "count")];
  }

  if ([(SXFormattedText *)self shouldWrapText])
  {
    [v6 appendFormat:@"; wrap text"];
  }

  [v6 appendString:@">"];

  return v6;
}

@end