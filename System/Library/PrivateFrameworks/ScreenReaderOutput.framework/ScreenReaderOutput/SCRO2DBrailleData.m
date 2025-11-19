@interface SCRO2DBrailleData
- (SCRO2DBrailleData)initWithCoder:(id)a3;
- (SCRO2DBrailleData)initWithImageData:(id)a3;
- (SCRO2DBrailleData)initWithStrings:(id)a3 focusedIndex:(int64_t)a4 truncateStrings:(BOOL)a5 alignAtTop:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCRO2DBrailleData

- (SCRO2DBrailleData)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"strings"];
    strings = v5->_strings;
    v5->_strings = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"focusedIndex"];
    v5->_focusedIndex = [v11 integerValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v12;

    v5->_truncateStrings = [v4 decodeBoolForKey:@"truncateStrings"];
    v5->_alignAtTop = [v4 decodeBoolForKey:@"alignAtTop"];
    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  strings = self->_strings;
  v6 = a3;
  [v6 encodeObject:strings forKey:@"strings"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_focusedIndex];
  [v6 encodeObject:v5 forKey:@"focusedIndex"];

  [v6 encodeObject:self->_imageData forKey:@"imageData"];
  [v6 encodeBool:self->_truncateStrings forKey:@"truncateStrings"];
  [v6 encodeBool:self->_alignAtTop forKey:@"alignAtTop"];
}

- (SCRO2DBrailleData)initWithStrings:(id)a3 focusedIndex:(int64_t)a4 truncateStrings:(BOOL)a5 alignAtTop:(BOOL)a6
{
  v11 = a3;
  v17.receiver = self;
  v17.super_class = SCRO2DBrailleData;
  v12 = [(SCRO2DBrailleData *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_strings, a3);
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if ((a4 & 0x8000000000000000) == 0 && [v11 count] > a4)
    {
      v14 = a4;
    }

    v13->_focusedIndex = v14;
    v13->_truncateStrings = a5;
    v13->_alignAtTop = a6;
    v15 = v13;
  }

  return v13;
}

- (SCRO2DBrailleData)initWithImageData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SCRO2DBrailleData;
  v6 = [(SCRO2DBrailleData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, a3);
    v8 = v7;
  }

  return v7;
}

@end