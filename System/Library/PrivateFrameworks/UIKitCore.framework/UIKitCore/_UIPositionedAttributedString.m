@interface _UIPositionedAttributedString
+ (id)attributedString:(id)a3 atPosition:(id)a4;
- (id)description;
@end

@implementation _UIPositionedAttributedString

+ (id)attributedString:(id)a3 atPosition:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    v9 = a3;
    v8 = objc_opt_new();
    v10 = [v9 copy];

    v11 = *(v8 + 8);
    *(v8 + 8) = v10;

    objc_storeStrong((v8 + 16), a4);
  }

  return v8;
}

- (id)description
{
  v3 = [(_UIPositionedAttributedString *)self string];
  v4 = [v3 string];

  if ([(__CFString *)v4 length]>= 0x33)
  {
    v5 = [(__CFString *)v4 substringToIndex:47];
    v6 = [v5 stringByAppendingString:@"..."];

    v4 = v6;
  }

  v7 = [(_UIPositionedAttributedString *)self position];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 description];
  }

  else
  {
    v9 = @"nil";
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = v12;
  v14 = @"(nil)";
  if (v4)
  {
    v14 = v4;
  }

  v15 = [v10 stringWithFormat:@"<%@:%p %@ @%@>", v12, self, v14, v9];

  return v15;
}

@end