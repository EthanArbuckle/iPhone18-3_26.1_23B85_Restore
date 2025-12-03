@interface CNVCardDataStorage
+ (id)storageWithData:(id)data;
- (CNVCardDataStorage)initWithData:(id)data;
- (id)insertionMarker;
- (void)appendFormat:(id)format;
- (void)appendString:(id)string;
- (void)appendString:(id)string usingEncoding:(unint64_t)encoding;
- (void)insertString:(id)string atMarker:(id)marker;
@end

@implementation CNVCardDataStorage

+ (id)storageWithData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] initWithData:dataCopy];

  return v5;
}

- (CNVCardDataStorage)initWithData:(id)data
{
  dataCopy = data;
  v6 = [(CNVCardDataStorage *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    v8 = v7;
  }

  return v7;
}

- (void)appendString:(id)string
{
  stringCopy = string;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    [(CNVCardDataStorage *)self appendString:stringCopy usingEncoding:4];
  }
}

- (void)appendString:(id)string usingEncoding:(unint64_t)encoding
{
  data = self->_data;
  v5 = [string dataUsingEncoding:encoding];
  [(NSMutableData *)data appendData:v5];
}

- (void)appendFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [(CNVCardDataStorage *)self appendString:v6];
}

- (id)insertionMarker
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(NSMutableData *)self->_data length];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)insertString:(id)string atMarker:(id)marker
{
  stringCopy = string;
  markerCopy = marker;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v7 = [stringCopy dataUsingEncoding:4];
    -[NSMutableData replaceBytesInRange:withBytes:length:](self->_data, "replaceBytesInRange:withBytes:length:", [markerCopy unsignedIntegerValue], 0, objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"));
  }
}

@end