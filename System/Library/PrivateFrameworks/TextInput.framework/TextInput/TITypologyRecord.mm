@interface TITypologyRecord
+ (id)recordClasses;
- (TITypologyRecord)init;
- (TITypologyRecord)initWithCoder:(id)a3;
- (id)textSummaryForAutocorrection:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TITypologyRecord

- (TITypologyRecord)init
{
  v8.receiver = self;
  v8.super_class = TITypologyRecord;
  v2 = [(TITypologyRecord *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    [v3 systemUptime];
    v2->_timestamp = v4;

    v5 = [MEMORY[0x1E696AFB0] UUID];
    recordID = v2->_recordID;
    v2->_recordID = v5;
  }

  return v2;
}

- (id)textSummaryForAutocorrection:(id)a3
{
  v3 = a3;
  v4 = [v3 input];
  v5 = [v3 candidate];

  if ([v4 length] && (objc_msgSend(MEMORY[0x1E696AB08], "alphanumericCharacterSet"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "invertedSet"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v4, "rangeOfCharacterFromSet:", v7), v7, v6, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@→%@}", v4, v5];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}", v5, v11];
  }
  v9 = ;

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"timestamp" forKey:timestamp];
  [v5 encodeObject:self->_recordID forKey:@"recordID"];
}

- (TITypologyRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TITypologyRecord;
  v5 = [(TITypologyRecord *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
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