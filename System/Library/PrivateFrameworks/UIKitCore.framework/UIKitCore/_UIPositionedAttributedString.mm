@interface _UIPositionedAttributedString
+ (id)attributedString:(id)string atPosition:(id)position;
- (id)description;
@end

@implementation _UIPositionedAttributedString

+ (id)attributedString:(id)string atPosition:(id)position
{
  positionCopy = position;
  v7 = positionCopy;
  v8 = 0;
  if (string && positionCopy)
  {
    stringCopy = string;
    v8 = objc_opt_new();
    v10 = [stringCopy copy];

    v11 = *(v8 + 8);
    *(v8 + 8) = v10;

    objc_storeStrong((v8 + 16), position);
  }

  return v8;
}

- (id)description
{
  string = [(_UIPositionedAttributedString *)self string];
  v3String = [string string];

  if ([(__CFString *)v3String length]>= 0x33)
  {
    v5 = [(__CFString *)v3String substringToIndex:47];
    v6 = [v5 stringByAppendingString:@"..."];

    v3String = v6;
  }

  position = [(_UIPositionedAttributedString *)self position];
  v8 = position;
  if (position)
  {
    v9 = [position description];
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
  if (v3String)
  {
    v14 = v3String;
  }

  v15 = [v10 stringWithFormat:@"<%@:%p %@ @%@>", v12, self, v14, v9];

  return v15;
}

@end