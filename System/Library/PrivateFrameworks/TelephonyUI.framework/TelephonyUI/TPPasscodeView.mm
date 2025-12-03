@interface TPPasscodeView
- (CGSize)intrinsicContentSize;
- (NSString)passcodeString;
- (TPPasscodeView)initWithFrame:(CGRect)frame;
- (void)appendCharacter:(id)character;
- (void)clear;
- (void)deleteLastCharacter;
- (void)drawRect:(CGRect)rect;
@end

@implementation TPPasscodeView

- (TPPasscodeView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = TPPasscodeView;
  v3 = [(TPPasscodeView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TPPasscodeView *)v3 setBackgroundColor:clearColor];

    string = [MEMORY[0x1E696AD60] string];
    [(TPPasscodeView *)v3 setPasscodeMutableString:string];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  [(TPPasscodeView *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dynamicBackgroundColor = [MEMORY[0x1E69DC888] dynamicBackgroundColor];
  [dynamicBackgroundColor setFill];

  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  UIRectFill(v35);
  v33 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v5 + 0.5 cornerRadius:{v7 + 0.5, v9 + -1.0, v11 + -1.0, 4.0}];
  [v33 setLineWidth:1.0];
  dynamicLabelColor = [MEMORY[0x1E69DC888] dynamicLabelColor];
  [dynamicLabelColor setStroke];

  [v33 stroke];
  dynamicLabelColor2 = [MEMORY[0x1E69DC888] dynamicLabelColor];
  [dynamicLabelColor2 setFill];

  passcodeMutableString = [(TPPasscodeView *)self passcodeMutableString];
  v16 = [passcodeMutableString length];

  passcodeMutableString2 = [(TPPasscodeView *)self passcodeMutableString];
  v18 = [passcodeMutableString2 length];
  if (v16 > 8)
  {

    passcodeMutableString3 = [(TPPasscodeView *)self passcodeMutableString];
    v25 = [passcodeMutableString3 length];

    if (v25)
    {
      v26 = 0;
      v27 = 112.0 / v18 * 0.5;
      v28 = (v11 + -2.0 - v27) * 0.5;
      v29 = 22.0;
      do
      {
        v30 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v29, v28, v27, v27}];
        [v30 fill];
        v29 = v27 + v27 + v29;

        ++v26;
        passcodeMutableString4 = [(TPPasscodeView *)self passcodeMutableString];
        v32 = [passcodeMutableString4 length];
      }

      while (v26 < v32);
    }
  }

  else
  {

    if (v18)
    {
      v19 = 0;
      v20 = 22.0;
      do
      {
        v21 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v20, 15.0, 7.0, 7.0}];
        [v21 fill];
        v20 = v20 + 14.0;

        ++v19;
        passcodeMutableString5 = [(TPPasscodeView *)self passcodeMutableString];
        v23 = [passcodeMutableString5 length];
      }

      while (v19 < v23);
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 150.0;
  v3 = 38.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)passcodeString
{
  v2 = MEMORY[0x1E696AEC0];
  passcodeMutableString = [(TPPasscodeView *)self passcodeMutableString];
  v4 = [v2 stringWithString:passcodeMutableString];

  return v4;
}

- (void)appendCharacter:(id)character
{
  characterCopy = character;
  passcodeMutableString = [(TPPasscodeView *)self passcodeMutableString];
  [passcodeMutableString appendString:characterCopy];

  [(TPPasscodeView *)self setNeedsDisplay];
}

- (void)deleteLastCharacter
{
  passcodeMutableString = [(TPPasscodeView *)self passcodeMutableString];
  v4 = [passcodeMutableString length];

  if (v4)
  {
    passcodeMutableString2 = [(TPPasscodeView *)self passcodeMutableString];
    passcodeMutableString3 = [(TPPasscodeView *)self passcodeMutableString];
    [passcodeMutableString2 deleteCharactersInRange:{objc_msgSend(passcodeMutableString3, "length") - 1, 1}];

    [(TPPasscodeView *)self setNeedsDisplay];
  }
}

- (void)clear
{
  passcodeMutableString = [(TPPasscodeView *)self passcodeMutableString];
  v4 = [passcodeMutableString length];

  if (v4)
  {
    passcodeMutableString2 = [(TPPasscodeView *)self passcodeMutableString];
    passcodeMutableString3 = [(TPPasscodeView *)self passcodeMutableString];
    [passcodeMutableString2 deleteCharactersInRange:{0, objc_msgSend(passcodeMutableString3, "length")}];

    [(TPPasscodeView *)self setNeedsDisplay];
  }
}

@end