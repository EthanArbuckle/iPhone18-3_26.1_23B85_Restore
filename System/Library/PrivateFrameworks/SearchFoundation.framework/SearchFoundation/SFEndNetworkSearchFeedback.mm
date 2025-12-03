@interface SFEndNetworkSearchFeedback
- (SFEndNetworkSearchFeedback)initWithCoder:(id)coder;
- (SFEndNetworkSearchFeedback)initWithStartSearch:(id)search responseSize:(int64_t)size statusCode:(int64_t)code networkTimingData:(id)data;
- (SFEndNetworkSearchFeedback)initWithStartSearch:(id)search responseSize:(int64_t)size statusCode:(int64_t)code networkTimingData:(id)data edge:(id)edge;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFEndNetworkSearchFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFEndNetworkSearchFeedback;
  coderCopy = coder;
  [(SFEndSearchFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_responseSize forKey:{@"response_size", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_statusCode forKey:@"status_code"];
  [coderCopy encodeObject:self->_networkTimingData forKey:@"network_timing_data"];
  [coderCopy encodeObject:self->_edge forKey:@"edge"];
}

- (SFEndNetworkSearchFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SFEndNetworkSearchFeedback;
  v5 = [(SFEndSearchFeedback *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_responseSize = [coderCopy decodeInt64ForKey:@"response_size"];
    v5->_statusCode = [coderCopy decodeIntegerForKey:@"status_code"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"network_timing_data"];
    networkTimingData = v5->_networkTimingData;
    v5->_networkTimingData = v10;

    v12 = [coderCopy decodeObjectForKey:@"edge"];
    edge = v5->_edge;
    v5->_edge = v12;
  }

  return v5;
}

- (SFEndNetworkSearchFeedback)initWithStartSearch:(id)search responseSize:(int64_t)size statusCode:(int64_t)code networkTimingData:(id)data edge:(id)edge
{
  dataCopy = data;
  edgeCopy = edge;
  v19.receiver = self;
  v19.super_class = SFEndNetworkSearchFeedback;
  v14 = [(SFEndSearchFeedback *)&v19 initWithStartSearch:search];
  v15 = v14;
  if (v14)
  {
    v14->_responseSize = size;
    v14->_statusCode = code;
    v16 = [dataCopy copy];
    networkTimingData = v15->_networkTimingData;
    v15->_networkTimingData = v16;

    objc_storeStrong(&v15->_edge, edge);
  }

  return v15;
}

- (SFEndNetworkSearchFeedback)initWithStartSearch:(id)search responseSize:(int64_t)size statusCode:(int64_t)code networkTimingData:(id)data
{
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = SFEndNetworkSearchFeedback;
  v11 = [(SFEndSearchFeedback *)&v16 initWithStartSearch:search];
  v12 = v11;
  if (v11)
  {
    v11->_responseSize = size;
    v11->_statusCode = code;
    v13 = [dataCopy copy];
    networkTimingData = v12->_networkTimingData;
    v12->_networkTimingData = v13;
  }

  return v12;
}

@end