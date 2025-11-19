@interface CNVCardStringStorage
+ (id)storageWithString:(id)a3;
- (CNVCardStringStorage)initWithString:(id)a3;
- (id)insertionMarker;
- (unint64_t)estimatedDataLength;
- (void)appendData:(id)a3;
- (void)appendFormat:(id)a3;
- (void)appendString:(id)a3;
- (void)insertString:(id)a3 atMarker:(id)a4;
@end

@implementation CNVCardStringStorage

+ (id)storageWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

- (CNVCardStringStorage)initWithString:(id)a3
{
  v5 = a3;
  v6 = [(CNVCardStringStorage *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, a3);
    v8 = v7;
  }

  return v7;
}

- (void)appendString:(id)a3
{
  v4 = a3;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    [(NSMutableString *)self->_string appendString:v4];
  }
}

- (void)appendFormat:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(CNVCardStringStorage *)self appendString:v6];
}

- (void)appendData:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5 encoding:4];

  [(CNVCardStringStorage *)self appendString:v6];
}

- (id)insertionMarker
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(NSMutableString *)self->_string length];

  return [v2 numberWithUnsignedInteger:v3];
}

- (unint64_t)estimatedDataLength
{
  v2 = [(NSMutableString *)self->_string dataUsingEncoding:4];
  v3 = [v2 length];

  return v3;
}

- (void)insertString:(id)a3 atMarker:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    -[NSMutableString insertString:atIndex:](self->_string, "insertString:atIndex:", v7, [v6 unsignedIntegerValue]);
  }
}

@end