@interface TITypologyRecord
+ (id)recordClasses;
- (TITypologyRecord)init;
- (TITypologyRecord)initWithCoder:(id)coder;
- (id)textSummaryForAutocorrection:(id)autocorrection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TITypologyRecord

- (TITypologyRecord)init
{
  v8.receiver = self;
  v8.super_class = TITypologyRecord;
  v2 = [(TITypologyRecord *)&v8 init];
  if (v2)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v2->_timestamp = v4;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    recordID = v2->_recordID;
    v2->_recordID = uUID;
  }

  return v2;
}

- (id)textSummaryForAutocorrection:(id)autocorrection
{
  autocorrectionCopy = autocorrection;
  input = [autocorrectionCopy input];
  candidate = [autocorrectionCopy candidate];

  if ([input length] && (objc_msgSend(MEMORY[0x1E696AB08], "alphanumericCharacterSet"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "invertedSet"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(input, "rangeOfCharacterFromSet:", v7), v7, v6, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@→%@}", input, candidate];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}", candidate, v11];
  }
  v9 = ;

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timestamp];
  [coderCopy encodeObject:self->_recordID forKey:@"recordID"];
}

- (TITypologyRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TITypologyRecord;
  v5 = [(TITypologyRecord *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
    recordID = v5->_recordID;
    v5->_recordID = v7;
  }

  return v5;
}

+ (id)recordClasses
{
  v4[16] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v4[11] = objc_opt_class();
  v4[12] = objc_opt_class();
  v4[13] = objc_opt_class();
  v4[14] = objc_opt_class();
  v4[15] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:16];

  return v2;
}

@end