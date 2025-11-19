@interface SXFormattedText
+ (id)valueClassBlockForPropertyWithName:(id)a3;
- (SXFormattedText)initWithText:(id)a3;
- (SXFormattedText)textWithValue:(id)a3 withType:(int)a4;
- (id)description;
@end

@implementation SXFormattedText

- (SXFormattedText)initWithText:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = @"text";
    v12[0] = a3;
    v4 = MEMORY[0x1E695DF20];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10.receiver = self;
    v10.super_class = SXFormattedText;
    v7 = [(SXJSONObject *)&v10 initWithJSONObject:v6 andVersion:0];

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SXFormattedText)textWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  v7 = &stru_1F532F6C0;
  if (v5 && a4 == 3)
  {
    v7 = v5;
  }

  return v7;
}

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"inlineTextStyles"])
  {
    v5 = &__block_literal_global_3;
  }

  else
  {
    if ([v4 isEqualToString:@"additions"])
    {
      v6 = [SXClassFactory valueClassBlockForBaseClass:objc_opt_class()];
    }

    else
    {
      v8.receiver = a1;
      v8.super_class = &OBJC_METACLASS___SXFormattedText;
      v6 = objc_msgSendSuper2(&v8, sel_valueClassBlockForPropertyWithName_, v4);
    }

    v5 = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [(SXFormattedText *)self text];
  v6 = [v3 stringWithFormat:@"<%@: %p text: %@", v4, self, v5];;

  v7 = [(SXFormattedText *)self textStyle];

  if (v7)
  {
    v8 = [(SXFormattedText *)self textStyle];
    [v6 appendFormat:@"; textStyle: %@", v8];
  }

  v9 = [(SXFormattedText *)self inlineTextStyles];

  if (v9)
  {
    v10 = [(SXFormattedText *)self inlineTextStyles];
    [v6 appendFormat:@"; inlineTextStyles: %lu", objc_msgSend(v10, "count")];
  }

  v11 = [(SXFormattedText *)self additions];

  if (v11)
  {
    v12 = [(SXFormattedText *)self additions];
    [v6 appendFormat:@"; additions: %lu", objc_msgSend(v12, "count")];
  }

  if ([(SXFormattedText *)self shouldWrapText])
  {
    [v6 appendFormat:@"; wrap text"];
  }

  [v6 appendString:@">"];

  return v6;
}

@end