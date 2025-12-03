@interface ICSStringWriter
- (ICSStringWriter)init;
- (ICSStringWriter)initWithString:(id)string;
- (NSString)description;
- (void)appendFormat:(id)format;
@end

@implementation ICSStringWriter

- (ICSStringWriter)init
{
  v6.receiver = self;
  v6.super_class = ICSStringWriter;
  v2 = [(ICSStringWriter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v4 = v2->_result;
    v2->_result = v3;
  }

  return v2;
}

- (ICSStringWriter)initWithString:(id)string
{
  stringCopy = string;
  v5 = [(ICSStringWriter *)self init];
  v6 = v5;
  if (v5)
  {
    [(ICSStringWriter *)v5 appendString:stringCopy];
  }

  return v6;
}

- (void)appendFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy locale:0 arguments:&v7];

  [(NSMutableString *)self->_result appendString:v6];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  result = [(ICSStringWriter *)self result];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, result];

  return v7;
}

@end