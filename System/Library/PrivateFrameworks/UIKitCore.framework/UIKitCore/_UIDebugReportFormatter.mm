@interface _UIDebugReportFormatter
+ (id)defaultFormatter;
- (_UIDebugReportFormatter)init;
- (id)stringFromReportComponents:(id)a3;
@end

@implementation _UIDebugReportFormatter

+ (id)defaultFormatter
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (_UIDebugReportFormatter)init
{
  v6.receiver = self;
  v6.super_class = _UIDebugReportFormatter;
  v2 = [(_UIDebugReportFormatter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    indentString = v2->_indentString;
    v2->_indentString = @"\t";
  }

  return v3;
}

- (id)stringFromReportComponents:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UIDebugReport.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"components"}];
  }

  v6 = [MEMORY[0x1E696AD60] string];
  v7 = [v5 header];
  if (([v7 isEqualToString:&stru_1EFB14550] & 1) == 0)
  {
    [v6 appendFormat:@"%@\n", v7];
  }

  v8 = [v5 body];
  if (([v8 isEqualToString:&stru_1EFB14550] & 1) == 0)
  {
    extraBodyIndentLevel = self->_extraBodyIndentLevel;
    if (extraBodyIndentLevel)
    {
      v10 = [v8 mutableCopy];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", extraBodyIndentLevel, "\t"];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v11];
      [v10 replaceOccurrencesOfString:@"\n" withString:v12 options:0 range:{0, objc_msgSend(v8, "length")}];

      [v10 insertString:v11 atIndex:0];
      v8 = v10;
    }

    [v6 appendString:v8];
  }

  v13 = [v5 footer];
  if (([v13 isEqualToString:&stru_1EFB14550] & 1) == 0)
  {
    [v6 appendFormat:@"\n%@", v13];
  }

  indentLevel = self->_indentLevel;
  if (indentLevel)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", indentLevel, -[NSString UTF8String](self->_indentString, "UTF8String")];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v15];
    [v6 replaceOccurrencesOfString:@"\n" withString:v16 options:0 range:{0, objc_msgSend(v6, "length")}];

    [v6 insertString:v15 atIndex:0];
  }

  return v6;
}

@end