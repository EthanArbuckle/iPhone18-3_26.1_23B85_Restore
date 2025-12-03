@interface USOSerializedUtteranceSpan
- (USOSerializedUtteranceSpan)initWithCoder:(id)coder;
- (USOSerializedUtteranceSpan)initWithStartIndex:(unsigned int)index endIndex:(unsigned int)endIndex startUnicodeScalarIndex:(unsigned int)scalarIndex endUnicodeScalarIndex:(unsigned int)unicodeScalarIndex startMilliSeconds:(int)seconds endMilliSeconds:(int)milliSeconds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOSerializedUtteranceSpan

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInt:{-[USOSerializedUtteranceSpan startIndex](self, "startIndex")}];
  [coderCopy encodeObject:v6 forKey:@"startIndex"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSerializedUtteranceSpan endIndex](self, "endIndex")}];
  [coderCopy encodeObject:v7 forKey:@"endIndex"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSerializedUtteranceSpan startUnicodeScalarIndex](self, "startUnicodeScalarIndex")}];
  [coderCopy encodeObject:v8 forKey:@"startUnicodeScalarIndex"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSerializedUtteranceSpan endUnicodeScalarIndex](self, "endUnicodeScalarIndex")}];
  [coderCopy encodeObject:v9 forKey:@"endUnicodeScalarIndex"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSerializedUtteranceSpan startMilliSeconds](self, "startMilliSeconds")}];
  [coderCopy encodeObject:v10 forKey:@"startMilliSeconds"];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSerializedUtteranceSpan endMilliSeconds](self, "endMilliSeconds")}];
  [coderCopy encodeObject:v11 forKey:@"endMilliSeconds"];
}

- (USOSerializedUtteranceSpan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = USOSerializedUtteranceSpan;
  v5 = [(USOSerializedUtteranceSpan *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startIndex"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endIndex"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startUnicodeScalarIndex"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endUnicodeScalarIndex"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startMilliSeconds"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endMilliSeconds"];
    v5->_startIndex = [v6 unsignedIntValue];
    v5->_endIndex = [v7 unsignedIntValue];
    v5->_startUnicodeScalarIndex = [v8 unsignedIntValue];
    v5->_endUnicodeScalarIndex = [v9 unsignedIntValue];
    v5->_startMilliSeconds = [v10 intValue];
    v5->_endMilliSeconds = [v11 intValue];
  }

  return v5;
}

- (USOSerializedUtteranceSpan)initWithStartIndex:(unsigned int)index endIndex:(unsigned int)endIndex startUnicodeScalarIndex:(unsigned int)scalarIndex endUnicodeScalarIndex:(unsigned int)unicodeScalarIndex startMilliSeconds:(int)seconds endMilliSeconds:(int)milliSeconds
{
  v15.receiver = self;
  v15.super_class = USOSerializedUtteranceSpan;
  result = [(USOSerializedUtteranceSpan *)&v15 init];
  if (result)
  {
    result->_startIndex = index;
    result->_endIndex = endIndex;
    result->_startUnicodeScalarIndex = scalarIndex;
    result->_endUnicodeScalarIndex = unicodeScalarIndex;
    result->_startMilliSeconds = seconds;
    result->_endMilliSeconds = milliSeconds;
  }

  return result;
}

@end