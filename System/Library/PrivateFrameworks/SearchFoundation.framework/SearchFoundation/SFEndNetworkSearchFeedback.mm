@interface SFEndNetworkSearchFeedback
- (SFEndNetworkSearchFeedback)initWithCoder:(id)a3;
- (SFEndNetworkSearchFeedback)initWithStartSearch:(id)a3 responseSize:(int64_t)a4 statusCode:(int64_t)a5 networkTimingData:(id)a6;
- (SFEndNetworkSearchFeedback)initWithStartSearch:(id)a3 responseSize:(int64_t)a4 statusCode:(int64_t)a5 networkTimingData:(id)a6 edge:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFEndNetworkSearchFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFEndNetworkSearchFeedback;
  v4 = a3;
  [(SFEndSearchFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_responseSize forKey:{@"response_size", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_statusCode forKey:@"status_code"];
  [v4 encodeObject:self->_networkTimingData forKey:@"network_timing_data"];
  [v4 encodeObject:self->_edge forKey:@"edge"];
}

- (SFEndNetworkSearchFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFEndNetworkSearchFeedback;
  v5 = [(SFEndSearchFeedback *)&v15 initWithCoder:v4];
  if (v5)
  {
    v5->_responseSize = [v4 decodeInt64ForKey:@"response_size"];
    v5->_statusCode = [v4 decodeIntegerForKey:@"status_code"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"network_timing_data"];
    networkTimingData = v5->_networkTimingData;
    v5->_networkTimingData = v10;

    v12 = [v4 decodeObjectForKey:@"edge"];
    edge = v5->_edge;
    v5->_edge = v12;
  }

  return v5;
}

- (SFEndNetworkSearchFeedback)initWithStartSearch:(id)a3 responseSize:(int64_t)a4 statusCode:(int64_t)a5 networkTimingData:(id)a6 edge:(id)a7
{
  v12 = a6;
  v13 = a7;
  v19.receiver = self;
  v19.super_class = SFEndNetworkSearchFeedback;
  v14 = [(SFEndSearchFeedback *)&v19 initWithStartSearch:a3];
  v15 = v14;
  if (v14)
  {
    v14->_responseSize = a4;
    v14->_statusCode = a5;
    v16 = [v12 copy];
    networkTimingData = v15->_networkTimingData;
    v15->_networkTimingData = v16;

    objc_storeStrong(&v15->_edge, a7);
  }

  return v15;
}

- (SFEndNetworkSearchFeedback)initWithStartSearch:(id)a3 responseSize:(int64_t)a4 statusCode:(int64_t)a5 networkTimingData:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = SFEndNetworkSearchFeedback;
  v11 = [(SFEndSearchFeedback *)&v16 initWithStartSearch:a3];
  v12 = v11;
  if (v11)
  {
    v11->_responseSize = a4;
    v11->_statusCode = a5;
    v13 = [v10 copy];
    networkTimingData = v12->_networkTimingData;
    v12->_networkTimingData = v13;
  }

  return v12;
}

@end