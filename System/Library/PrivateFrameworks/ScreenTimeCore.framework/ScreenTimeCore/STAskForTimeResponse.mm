@interface STAskForTimeResponse
- (NSDictionary)payload;
- (STAskForTimeResponse)init;
- (STAskForTimeResponse)initWithCoder:(id)a3;
- (STAskForTimeResponse)initWithPayload:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAskForTimeResponse

- (STAskForTimeResponse)initWithPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"associatedRequestIdentifier"];
  v6 = [v4 objectForKeyedSubscript:@"timeStamp"];
  v7 = v6;
  v8 = 0;
  if (v5)
  {
    if (v6)
    {
      v8 = [v4 objectForKeyedSubscript:@"answer"];

      if (v8)
      {
        v17.receiver = self;
        v17.super_class = STAskForTimeResponse;
        v9 = [(STAskForTimeResponse *)&v17 init];
        v10 = v9;
        if (v9)
        {
          objc_storeStrong(&v9->_associatedRequestIdentifier, v5);
          v11 = [v4 objectForKeyedSubscript:@"answer"];
          v10->_answer = [v11 integerValue];

          v12 = [v4 objectForKeyedSubscript:@"respondingUserDSID"];
          respondingUserDSID = v10->_respondingUserDSID;
          v10->_respondingUserDSID = v12;

          v14 = [v4 objectForKeyedSubscript:@"amountGranted"];
          amountGranted = v10->_amountGranted;
          v10->_amountGranted = v14;

          objc_storeStrong(&v10->_timeStamp, v7);
        }

        self = v10;
        v8 = self;
      }
    }
  }

  return v8;
}

- (STAskForTimeResponse)init
{
  v3.receiver = self;
  v3.super_class = STAskForTimeResponse;
  return [(STAskForTimeResponse *)&v3 init];
}

- (STAskForTimeResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedRequestIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeStamp"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ([v4 containsValueForKey:@"answer"] & 1) == 0)
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [v4 failWithError:v16];

    v15 = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = STAskForTimeResponse;
    v9 = [(STAskForTimeResponse *)&v18 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_associatedRequestIdentifier, v5);
      v10->_answer = [v4 decodeIntegerForKey:@"answer"];
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"respondingUserDSID"];
      respondingUserDSID = v10->_respondingUserDSID;
      v10->_respondingUserDSID = v11;

      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amountGranted"];
      amountGranted = v10->_amountGranted;
      v10->_amountGranted = v13;

      objc_storeStrong(&v10->_timeStamp, v7);
    }

    self = v10;
    v15 = self;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  associatedRequestIdentifier = self->_associatedRequestIdentifier;
  v5 = a3;
  [v5 encodeObject:associatedRequestIdentifier forKey:@"associatedRequestIdentifier"];
  [v5 encodeInteger:self->_answer forKey:@"answer"];
  [v5 encodeObject:self->_respondingUserDSID forKey:@"respondingUserDSID"];
  [v5 encodeObject:self->_amountGranted forKey:@"amountGranted"];
  [v5 encodeObject:self->_timeStamp forKey:@"timeStamp"];
}

- (NSDictionary)payload
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
  v4 = [(STAskForTimeResponse *)self associatedRequestIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"associatedRequestIdentifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STAskForTimeResponse answer](self, "answer")}];
  [v3 setObject:v5 forKeyedSubscript:@"answer"];

  v6 = [(STAskForTimeResponse *)self respondingUserDSID];
  [v3 setObject:v6 forKeyedSubscript:@"respondingUserDSID"];

  v7 = [(STAskForTimeResponse *)self amountGranted];
  [v3 setObject:v7 forKeyedSubscript:@"amountGranted"];

  v8 = [(STAskForTimeResponse *)self timeStamp];
  [v3 setObject:v8 forKeyedSubscript:@"timeStamp"];

  return v3;
}

@end