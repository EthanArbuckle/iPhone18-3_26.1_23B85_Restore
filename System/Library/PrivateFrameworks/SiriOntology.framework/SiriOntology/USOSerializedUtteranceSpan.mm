@interface USOSerializedUtteranceSpan
- (USOSerializedUtteranceSpan)initWithCoder:(id)a3;
- (USOSerializedUtteranceSpan)initWithStartIndex:(unsigned int)a3 endIndex:(unsigned int)a4 startUnicodeScalarIndex:(unsigned int)a5 endUnicodeScalarIndex:(unsigned int)a6 startMilliSeconds:(int)a7 endMilliSeconds:(int)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOSerializedUtteranceSpan

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInt:{-[USOSerializedUtteranceSpan startIndex](self, "startIndex")}];
  [v5 encodeObject:v6 forKey:@"startIndex"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSerializedUtteranceSpan endIndex](self, "endIndex")}];
  [v5 encodeObject:v7 forKey:@"endIndex"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSerializedUtteranceSpan startUnicodeScalarIndex](self, "startUnicodeScalarIndex")}];
  [v5 encodeObject:v8 forKey:@"startUnicodeScalarIndex"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSerializedUtteranceSpan endUnicodeScalarIndex](self, "endUnicodeScalarIndex")}];
  [v5 encodeObject:v9 forKey:@"endUnicodeScalarIndex"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSerializedUtteranceSpan startMilliSeconds](self, "startMilliSeconds")}];
  [v5 encodeObject:v10 forKey:@"startMilliSeconds"];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSerializedUtteranceSpan endMilliSeconds](self, "endMilliSeconds")}];
  [v5 encodeObject:v11 forKey:@"endMilliSeconds"];
}

- (USOSerializedUtteranceSpan)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = USOSerializedUtteranceSpan;
  v5 = [(USOSerializedUtteranceSpan *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startIndex"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endIndex"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startUnicodeScalarIndex"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endUnicodeScalarIndex"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startMilliSeconds"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endMilliSeconds"];
    v5->_startIndex = [v6 unsignedIntValue];
    v5->_endIndex = [v7 unsignedIntValue];
    v5->_startUnicodeScalarIndex = [v8 unsignedIntValue];
    v5->_endUnicodeScalarIndex = [v9 unsignedIntValue];
    v5->_startMilliSeconds = [v10 intValue];
    v5->_endMilliSeconds = [v11 intValue];
  }

  return v5;
}

- (USOSerializedUtteranceSpan)initWithStartIndex:(unsigned int)a3 endIndex:(unsigned int)a4 startUnicodeScalarIndex:(unsigned int)a5 endUnicodeScalarIndex:(unsigned int)a6 startMilliSeconds:(int)a7 endMilliSeconds:(int)a8
{
  v15.receiver = self;
  v15.super_class = USOSerializedUtteranceSpan;
  result = [(USOSerializedUtteranceSpan *)&v15 init];
  if (result)
  {
    result->_startIndex = a3;
    result->_endIndex = a4;
    result->_startUnicodeScalarIndex = a5;
    result->_endUnicodeScalarIndex = a6;
    result->_startMilliSeconds = a7;
    result->_endMilliSeconds = a8;
  }

  return result;
}

@end