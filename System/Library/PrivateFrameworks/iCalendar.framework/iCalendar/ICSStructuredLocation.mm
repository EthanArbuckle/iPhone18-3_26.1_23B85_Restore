@interface ICSStructuredLocation
- (BOOL)shouldObscureParameter:(id)a3;
- (NSString)address;
- (NSString)title;
- (double)radius;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
- (void)setAddress:(id)a3;
- (void)setRadius:(double)a3;
- (void)setTitle:(id)a3;
@end

@implementation ICSStructuredLocation

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v9 = a4;
  v6 = [(ICSProperty *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 absoluteString];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithObject:@"URI" forKey:@"VALUE"];
  [(ICSProperty *)self _ICSStringWithOptions:a3 appendingToString:v9 additionalParameters:v8];
  [v9 appendString:@":"];
  if ((a3 & 0x10) != 0 && [(ICSStructuredLocation *)self shouldObscureValue])
  {
    a3 |= 0x20uLL;
  }

  [v7 _ICSStringWithOptions:a3 appendingToString:v9];
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

- (void)setTitle:(id)a3
{
  if (a3)
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

- (void)setRadius:(double)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v4 = [v5 stringValue];
  [(ICSProperty *)self setParameterValue:v4 forName:@"X-APPLE-RADIUS"];
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

- (void)setAddress:(id)a3
{
  if (a3)
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

- (BOOL)shouldObscureParameter:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"X-FMTTYPE", @"X-TYPE", @"X-APPLE-ABUID", @"X-APPLE-RADIUS", 0}];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1;
}

@end