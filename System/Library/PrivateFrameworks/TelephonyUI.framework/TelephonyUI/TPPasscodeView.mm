@interface TPPasscodeView
- (CGSize)intrinsicContentSize;
- (NSString)passcodeString;
- (TPPasscodeView)initWithFrame:(CGRect)a3;
- (void)appendCharacter:(id)a3;
- (void)clear;
- (void)deleteLastCharacter;
- (void)drawRect:(CGRect)a3;
@end

@implementation TPPasscodeView

- (TPPasscodeView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = TPPasscodeView;
  v3 = [(TPPasscodeView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(TPPasscodeView *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x1E696AD60] string];
    [(TPPasscodeView *)v3 setPasscodeMutableString:v5];
  }

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  [(TPPasscodeView *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E69DC888] dynamicBackgroundColor];
  [v12 setFill];

  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  UIRectFill(v35);
  v33 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v5 + 0.5 cornerRadius:{v7 + 0.5, v9 + -1.0, v11 + -1.0, 4.0}];
  [v33 setLineWidth:1.0];
  v13 = [MEMORY[0x1E69DC888] dynamicLabelColor];
  [v13 setStroke];

  [v33 stroke];
  v14 = [MEMORY[0x1E69DC888] dynamicLabelColor];
  [v14 setFill];

  v15 = [(TPPasscodeView *)self passcodeMutableString];
  v16 = [v15 length];

  v17 = [(TPPasscodeView *)self passcodeMutableString];
  v18 = [v17 length];
  if (v16 > 8)
  {

    v24 = [(TPPasscodeView *)self passcodeMutableString];
    v25 = [v24 length];

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
        v31 = [(TPPasscodeView *)self passcodeMutableString];
        v32 = [v31 length];
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
        v22 = [(TPPasscodeView *)self passcodeMutableString];
        v23 = [v22 length];
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
  v3 = [(TPPasscodeView *)self passcodeMutableString];
  v4 = [v2 stringWithString:v3];

  return v4;
}

- (void)appendCharacter:(id)a3
{
  v4 = a3;
  v5 = [(TPPasscodeView *)self passcodeMutableString];
  [v5 appendString:v4];

  [(TPPasscodeView *)self setNeedsDisplay];
}

- (void)deleteLastCharacter
{
  v3 = [(TPPasscodeView *)self passcodeMutableString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(TPPasscodeView *)self passcodeMutableString];
    v6 = [(TPPasscodeView *)self passcodeMutableString];
    [v5 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];

    [(TPPasscodeView *)self setNeedsDisplay];
  }
}

- (void)clear
{
  v3 = [(TPPasscodeView *)self passcodeMutableString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(TPPasscodeView *)self passcodeMutableString];
    v6 = [(TPPasscodeView *)self passcodeMutableString];
    [v5 deleteCharactersInRange:{0, objc_msgSend(v6, "length")}];

    [(TPPasscodeView *)self setNeedsDisplay];
  }
}

@end