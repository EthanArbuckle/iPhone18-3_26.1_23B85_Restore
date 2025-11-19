@interface TIWordEntryAligned
- (NSArray)alignedTouches;
- (TIWordEntryAligned)init;
- (TIWordEntryAligned)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIWordEntryAligned

- (NSArray)alignedTouches
{
  v20 = *MEMORY[0x277D85DE8];
  alignedTouches = self->_alignedTouches;
  if (!alignedTouches)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(TIWordEntryAligned *)self alignedKeyboardInputs];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * v9) touchEvent];
          [(NSArray *)v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = self->_alignedTouches;
    self->_alignedTouches = v4;

    alignedTouches = self->_alignedTouches;
  }

  v12 = alignedTouches;
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (TIWordEntryAligned)init
{
  v3.receiver = self;
  v3.super_class = TIWordEntryAligned;
  return [(TIWordEntryAligned *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  alignedTouches = self->_alignedTouches;
  v5 = a3;
  [v5 encodeObject:alignedTouches forKey:@"alignedTouches"];
  [v5 encodeObject:self->_alignedKeyboardInputs forKey:@"alignedKeyboardInputs"];
  [v5 encodeObject:self->_expectedString forKey:@"expectedString"];
  [v5 encodeObject:self->_originalWord forKey:@"originalWord"];
  [v5 encodeBool:self->_isContinuousPathConversion forKey:@"isContinuousPathConversion"];
  [v5 encodeInt:self->_inSessionAlignmentConfidence forKey:@"inSessionAlignmentConfidence"];
}

- (TIWordEntryAligned)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TIWordEntryAligned;
  v5 = [(TIWordEntryAligned *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"alignedTouches"];
    alignedTouches = v5->_alignedTouches;
    v5->_alignedTouches = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"alignedKeyboardInputs"];
    alignedKeyboardInputs = v5->_alignedKeyboardInputs;
    v5->_alignedKeyboardInputs = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expectedString"];
    expectedString = v5->_expectedString;
    v5->_expectedString = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalWord"];
    originalWord = v5->_originalWord;
    v5->_originalWord = v18;

    v5->_isContinuousPathConversion = [v4 decodeBoolForKey:@"isContinuousPathConversion"];
    v5->_inSessionAlignmentConfidence = [v4 decodeIntForKey:@"inSessionAlignmentConfidence"];
  }

  return v5;
}

@end