@interface SCRO2DBrailleData
- (SCRO2DBrailleData)initWithCoder:(id)coder;
- (SCRO2DBrailleData)initWithImageData:(id)data;
- (SCRO2DBrailleData)initWithStrings:(id)strings focusedIndex:(int64_t)index truncateStrings:(BOOL)truncateStrings alignAtTop:(BOOL)top;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCRO2DBrailleData

- (SCRO2DBrailleData)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SCRO2DBrailleData;
  v5 = [(SCRO2DBrailleData *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"strings"];
    strings = v5->_strings;
    v5->_strings = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"focusedIndex"];
    v5->_focusedIndex = [v11 integerValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v12;

    v5->_truncateStrings = [coderCopy decodeBoolForKey:@"truncateStrings"];
    v5->_alignAtTop = [coderCopy decodeBoolForKey:@"alignAtTop"];
    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  strings = self->_strings;
  coderCopy = coder;
  [coderCopy encodeObject:strings forKey:@"strings"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_focusedIndex];
  [coderCopy encodeObject:v5 forKey:@"focusedIndex"];

  [coderCopy encodeObject:self->_imageData forKey:@"imageData"];
  [coderCopy encodeBool:self->_truncateStrings forKey:@"truncateStrings"];
  [coderCopy encodeBool:self->_alignAtTop forKey:@"alignAtTop"];
}

- (SCRO2DBrailleData)initWithStrings:(id)strings focusedIndex:(int64_t)index truncateStrings:(BOOL)truncateStrings alignAtTop:(BOOL)top
{
  stringsCopy = strings;
  v17.receiver = self;
  v17.super_class = SCRO2DBrailleData;
  v12 = [(SCRO2DBrailleData *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_strings, strings);
    indexCopy = 0x7FFFFFFFFFFFFFFFLL;
    if ((index & 0x8000000000000000) == 0 && [stringsCopy count] > index)
    {
      indexCopy = index;
    }

    v13->_focusedIndex = indexCopy;
    v13->_truncateStrings = truncateStrings;
    v13->_alignAtTop = top;
    v15 = v13;
  }

  return v13;
}

- (SCRO2DBrailleData)initWithImageData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = SCRO2DBrailleData;
  v6 = [(SCRO2DBrailleData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, data);
    v8 = v7;
  }

  return v7;
}

@end