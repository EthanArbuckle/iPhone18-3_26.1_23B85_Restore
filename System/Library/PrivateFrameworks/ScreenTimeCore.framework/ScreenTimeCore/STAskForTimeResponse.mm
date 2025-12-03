@interface STAskForTimeResponse
- (NSDictionary)payload;
- (STAskForTimeResponse)init;
- (STAskForTimeResponse)initWithCoder:(id)coder;
- (STAskForTimeResponse)initWithPayload:(id)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAskForTimeResponse

- (STAskForTimeResponse)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [payloadCopy objectForKeyedSubscript:@"associatedRequestIdentifier"];
  v6 = [payloadCopy objectForKeyedSubscript:@"timeStamp"];
  v7 = v6;
  selfCopy = 0;
  if (v5)
  {
    if (v6)
    {
      selfCopy = [payloadCopy objectForKeyedSubscript:@"answer"];

      if (selfCopy)
      {
        v17.receiver = self;
        v17.super_class = STAskForTimeResponse;
        v9 = [(STAskForTimeResponse *)&v17 init];
        v10 = v9;
        if (v9)
        {
          objc_storeStrong(&v9->_associatedRequestIdentifier, v5);
          v11 = [payloadCopy objectForKeyedSubscript:@"answer"];
          v10->_answer = [v11 integerValue];

          v12 = [payloadCopy objectForKeyedSubscript:@"respondingUserDSID"];
          respondingUserDSID = v10->_respondingUserDSID;
          v10->_respondingUserDSID = v12;

          v14 = [payloadCopy objectForKeyedSubscript:@"amountGranted"];
          amountGranted = v10->_amountGranted;
          v10->_amountGranted = v14;

          objc_storeStrong(&v10->_timeStamp, v7);
        }

        self = v10;
        selfCopy = self;
      }
    }
  }

  return selfCopy;
}

- (STAskForTimeResponse)init
{
  v3.receiver = self;
  v3.super_class = STAskForTimeResponse;
  return [(STAskForTimeResponse *)&v3 init];
}

- (STAskForTimeResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedRequestIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeStamp"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ([coderCopy containsValueForKey:@"answer"] & 1) == 0)
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [coderCopy failWithError:v16];

    selfCopy = 0;
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
      v10->_answer = [coderCopy decodeIntegerForKey:@"answer"];
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"respondingUserDSID"];
      respondingUserDSID = v10->_respondingUserDSID;
      v10->_respondingUserDSID = v11;

      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amountGranted"];
      amountGranted = v10->_amountGranted;
      v10->_amountGranted = v13;

      objc_storeStrong(&v10->_timeStamp, v7);
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  associatedRequestIdentifier = self->_associatedRequestIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:associatedRequestIdentifier forKey:@"associatedRequestIdentifier"];
  [coderCopy encodeInteger:self->_answer forKey:@"answer"];
  [coderCopy encodeObject:self->_respondingUserDSID forKey:@"respondingUserDSID"];
  [coderCopy encodeObject:self->_amountGranted forKey:@"amountGranted"];
  [coderCopy encodeObject:self->_timeStamp forKey:@"timeStamp"];
}

- (NSDictionary)payload
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
  associatedRequestIdentifier = [(STAskForTimeResponse *)self associatedRequestIdentifier];
  [v3 setObject:associatedRequestIdentifier forKeyedSubscript:@"associatedRequestIdentifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STAskForTimeResponse answer](self, "answer")}];
  [v3 setObject:v5 forKeyedSubscript:@"answer"];

  respondingUserDSID = [(STAskForTimeResponse *)self respondingUserDSID];
  [v3 setObject:respondingUserDSID forKeyedSubscript:@"respondingUserDSID"];

  amountGranted = [(STAskForTimeResponse *)self amountGranted];
  [v3 setObject:amountGranted forKeyedSubscript:@"amountGranted"];

  timeStamp = [(STAskForTimeResponse *)self timeStamp];
  [v3 setObject:timeStamp forKeyedSubscript:@"timeStamp"];

  return v3;
}

@end