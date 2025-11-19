@interface ICSStringWriter
- (ICSStringWriter)init;
- (ICSStringWriter)initWithString:(id)a3;
- (NSString)description;
- (void)appendFormat:(id)a3;
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

- (ICSStringWriter)initWithString:(id)a3
{
  v4 = a3;
  v5 = [(ICSStringWriter *)self init];
  v6 = v5;
  if (v5)
  {
    [(ICSStringWriter *)v5 appendString:v4];
  }

  return v6;
}

- (void)appendFormat:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 locale:0 arguments:&v7];

  [(NSMutableString *)self->_result appendString:v6];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICSStringWriter *)self result];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v6];

  return v7;
}

@end