@interface PPSSignpostServiceRequest
- (PPSSignpostServiceRequest)init;
- (PPSSignpostServiceRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSSignpostServiceRequest

- (PPSSignpostServiceRequest)init
{
  v6.receiver = self;
  v6.super_class = PPSSignpostServiceRequest;
  v2 = [(PPSSignpostServiceRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PPSSignpostServiceRequest *)self type];
  v5 = [(PPSSignpostServiceRequest *)self sourceURL];
  v6 = [(PPSSignpostServiceRequest *)self startDate];
  v7 = [(PPSSignpostServiceRequest *)self endDate];
  v8 = [(PPSSignpostServiceRequest *)self uuid];
  v9 = [v8 UUIDString];
  v10 = [v3 stringWithFormat:@"requestType=%d, sourceURL=%@, startDate=%@, endDate=%@, uuid=%@", v4, v5, v6, v7, v9];

  return v10;
}

- (PPSSignpostServiceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PPSSignpostServiceRequest;
  v5 = [(PPSSignpostServiceRequest *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v6;

    v8 = [v4 decodeObjectForKey:@"sourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v10;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PPSSignpostServiceRequest *)self endDate];
  [v4 encodeObject:v5 forKey:@"endDate"];

  v6 = [(PPSSignpostServiceRequest *)self sourceURL];
  [v4 encodeObject:v6 forKey:@"sourceURL"];

  v7 = [(PPSSignpostServiceRequest *)self startDate];
  [v4 encodeObject:v7 forKey:@"startDate"];

  [v4 encodeInteger:-[PPSSignpostServiceRequest type](self forKey:{"type"), @"type"}];
  v8 = [(PPSSignpostServiceRequest *)self uuid];
  [v4 encodeObject:v8 forKey:@"uuid"];
}

@end