@interface PPSSignpostServiceRequest
- (PPSSignpostServiceRequest)init;
- (PPSSignpostServiceRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSSignpostServiceRequest

- (PPSSignpostServiceRequest)init
{
  v6.receiver = self;
  v6.super_class = PPSSignpostServiceRequest;
  v2 = [(PPSSignpostServiceRequest *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = uUID;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  type = [(PPSSignpostServiceRequest *)self type];
  sourceURL = [(PPSSignpostServiceRequest *)self sourceURL];
  startDate = [(PPSSignpostServiceRequest *)self startDate];
  endDate = [(PPSSignpostServiceRequest *)self endDate];
  uuid = [(PPSSignpostServiceRequest *)self uuid];
  uUIDString = [uuid UUIDString];
  v10 = [v3 stringWithFormat:@"requestType=%d, sourceURL=%@, startDate=%@, endDate=%@, uuid=%@", type, sourceURL, startDate, endDate, uUIDString];

  return v10;
}

- (PPSSignpostServiceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PPSSignpostServiceRequest;
  v5 = [(PPSSignpostServiceRequest *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v6;

    v8 = [coderCopy decodeObjectForKey:@"sourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v10;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endDate = [(PPSSignpostServiceRequest *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  sourceURL = [(PPSSignpostServiceRequest *)self sourceURL];
  [coderCopy encodeObject:sourceURL forKey:@"sourceURL"];

  startDate = [(PPSSignpostServiceRequest *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];

  [coderCopy encodeInteger:-[PPSSignpostServiceRequest type](self forKey:{"type"), @"type"}];
  uuid = [(PPSSignpostServiceRequest *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];
}

@end