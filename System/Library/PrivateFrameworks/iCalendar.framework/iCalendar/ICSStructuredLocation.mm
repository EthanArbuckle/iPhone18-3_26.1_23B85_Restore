@interface ICSStructuredLocation
- (BOOL)shouldObscureParameter:(id)parameter;
- (NSString)address;
- (NSString)title;
- (double)radius;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)setAddress:(id)address;
- (void)setRadius:(double)radius;
- (void)setTitle:(id)title;
@end

@implementation ICSStructuredLocation

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  value = [(ICSProperty *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [value absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithObject:@"URI" forKey:@"VALUE"];
  [(ICSProperty *)self _ICSStringWithOptions:options appendingToString:stringCopy additionalParameters:v8];
  [stringCopy appendString:@":"];
  if ((options & 0x10) != 0 && [(ICSStructuredLocation *)self shouldObscureValue])
  {
    options |= 0x20uLL;
  }

  [absoluteString _ICSStringWithOptions:options appendingToString:stringCopy];
}

- (NSString)title
{
  v2 = [(ICSProperty *)self parameterValueForName:@"X-TITLE"];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB68] stringWithString:v2];
    [v3 replaceOccurrencesOfString:@"\\n" withString:@"\n" options:0 range:{0, objc_msgSend(v3, "length")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = [MEMORY[0x277CCAB68] stringWithString:?];
    [v4 replaceOccurrencesOfString:@"\n" withString:@"\\n" options:0 range:{0, objc_msgSend(v4, "length")}];
    [(ICSProperty *)self setParameterValue:v4 forName:@"X-TITLE"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"X-TITLE"];
  }
}

- (double)radius
{
  v2 = [(ICSProperty *)self parameterValueForName:@"X-APPLE-RADIUS"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setRadius:(double)radius
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  stringValue = [v5 stringValue];
  [(ICSProperty *)self setParameterValue:stringValue forName:@"X-APPLE-RADIUS"];
}

- (NSString)address
{
  v2 = [(ICSProperty *)self parameterValueForName:@"X-ADDRESS"];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB68] stringWithString:v2];
    [v3 replaceOccurrencesOfString:@"\\n" withString:@"\n" options:0 range:{0, objc_msgSend(v3, "length")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAddress:(id)address
{
  if (address)
  {
    v4 = [MEMORY[0x277CCAB68] stringWithString:?];
    [v4 replaceOccurrencesOfString:@"\n" withString:@"\\n" options:0 range:{0, objc_msgSend(v4, "length")}];
    [(ICSProperty *)self setParameterValue:v4 forName:@"X-ADDRESS"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"X-ADDRESS"];
  }
}

- (BOOL)shouldObscureParameter:(id)parameter
{
  v3 = MEMORY[0x277CBEB98];
  parameterCopy = parameter;
  v5 = [v3 setWithObjects:{@"X-FMTTYPE", @"X-TYPE", @"X-APPLE-ABUID", @"X-APPLE-RADIUS", 0}];
  v6 = [v5 containsObject:parameterCopy];

  return v6 ^ 1;
}

@end