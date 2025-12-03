@interface CNVCardStringStorage
+ (id)storageWithString:(id)string;
- (CNVCardStringStorage)initWithString:(id)string;
- (id)insertionMarker;
- (unint64_t)estimatedDataLength;
- (void)appendData:(id)data;
- (void)appendFormat:(id)format;
- (void)appendString:(id)string;
- (void)insertString:(id)string atMarker:(id)marker;
@end

@implementation CNVCardStringStorage

+ (id)storageWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

- (CNVCardStringStorage)initWithString:(id)string
{
  stringCopy = string;
  v6 = [(CNVCardStringStorage *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, string);
    v8 = v7;
  }

  return v7;
}

- (void)appendString:(id)string
{
  stringCopy = string;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    [(NSMutableString *)self->_string appendString:stringCopy];
  }
}

- (void)appendFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [(CNVCardStringStorage *)self appendString:v6];
}

- (void)appendData:(id)data
{
  v4 = MEMORY[0x277CCACA8];
  dataCopy = data;
  v6 = [[v4 alloc] initWithData:dataCopy encoding:4];

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

- (void)insertString:(id)string atMarker:(id)marker
{
  stringCopy = string;
  markerCopy = marker;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    -[NSMutableString insertString:atIndex:](self->_string, "insertString:atIndex:", stringCopy, [markerCopy unsignedIntegerValue]);
  }
}

@end