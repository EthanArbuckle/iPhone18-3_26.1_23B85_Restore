@interface CNVCardDataStorage
+ (id)storageWithData:(id)a3;
- (CNVCardDataStorage)initWithData:(id)a3;
- (id)insertionMarker;
- (void)appendFormat:(id)a3;
- (void)appendString:(id)a3;
- (void)appendString:(id)a3 usingEncoding:(unint64_t)a4;
- (void)insertString:(id)a3 atMarker:(id)a4;
@end

@implementation CNVCardDataStorage

+ (id)storageWithData:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithData:v4];

  return v5;
}

- (CNVCardDataStorage)initWithData:(id)a3
{
  v5 = a3;
  v6 = [(CNVCardDataStorage *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v8 = v7;
  }

  return v7;
}

- (void)appendString:(id)a3
{
  v4 = a3;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    [(CNVCardDataStorage *)self appendString:v4 usingEncoding:4];
  }
}

- (void)appendString:(id)a3 usingEncoding:(unint64_t)a4
{
  data = self->_data;
  v5 = [a3 dataUsingEncoding:a4];
  [(NSMutableData *)data appendData:v5];
}

- (void)appendFormat:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(CNVCardDataStorage *)self appendString:v6];
}

- (id)insertionMarker
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(NSMutableData *)self->_data length];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)insertString:(id)a3 atMarker:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v7 = [v8 dataUsingEncoding:4];
    -[NSMutableData replaceBytesInRange:withBytes:length:](self->_data, "replaceBytesInRange:withBytes:length:", [v6 unsignedIntegerValue], 0, objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"));
  }
}

@end