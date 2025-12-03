@interface W5PingResult
- (BOOL)conformsToProtocol:(id)protocol;
- (W5PingResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5PingResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5PingResult;
  [(W5PingResult *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"Address: %@\n", self->_address];
  [v3 appendFormat:@"Interface Name: %@\n", self->_interfaceName];
  [v3 appendFormat:@"Count: %ld\n", self->_count];
  [v3 appendFormat:@"Timeout: %f\n", *&self->_timeout];
  [v3 appendFormat:@"Wait: %f\n", *&self->_wait];
  [v3 appendFormat:@"Interval: %f\n", *&self->_interval];
  [v3 appendFormat:@"Traffic Class: %@\n", W5DescriptionForPingTrafficClass(self->_trafficClass)];
  [v3 appendFormat:@"Data Length: %ldb\n", self->_dataLength + 64];
  [v3 appendFormat:@"Packet Loss: %.2f%%\n", *&self->_packetLoss];
  [v3 appendFormat:@"Min: %.2fms\n", *&self->_min];
  [v3 appendFormat:@"Max: %.2fms\n", *&self->_max];
  [v3 appendFormat:@"Avg: %.2fms\n", *&self->_avg];
  [v3 appendFormat:@"Std Dev: %.2fms\n", *&self->_stddev];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:0];
  [v4 setTimeStyle:2];
  [v4 setLocale:{objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}];
  [v3 appendFormat:@"StartedAt: %@\n", objc_msgSend(v4, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", self->_startedAt))];
  [v3 appendFormat:@"EndedAt: %@\n", objc_msgSend(v4, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", self->_endedAt))];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5PingResult;
  if (-[W5PingResult conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([protocol isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&unk_2883436F0];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5PingResult allocWithZone:?]];
  [(W5PingResult *)v4 setAddress:self->_address];
  [(W5PingResult *)v4 setInterfaceName:self->_interfaceName];
  [(W5PingResult *)v4 setCount:self->_count];
  [(W5PingResult *)v4 setTimeout:self->_timeout];
  [(W5PingResult *)v4 setWait:self->_wait];
  [(W5PingResult *)v4 setInterval:self->_interval];
  [(W5PingResult *)v4 setPacketLoss:self->_packetLoss];
  [(W5PingResult *)v4 setMin:self->_min];
  [(W5PingResult *)v4 setMax:self->_max];
  [(W5PingResult *)v4 setAvg:self->_avg];
  [(W5PingResult *)v4 setStddev:self->_stddev];
  [(W5PingResult *)v4 setStartedAt:self->_startedAt];
  [(W5PingResult *)v4 setEndedAt:self->_endedAt];
  [(W5PingResult *)v4 setTrafficClass:self->_trafficClass];
  [(W5PingResult *)v4 setDataLength:self->_dataLength];
  [(W5PingResult *)v4 setCommand:self->_command];
  [(W5PingResult *)v4 setOutput:self->_output];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_address forKey:@"_address"];
  [coder encodeObject:self->_interfaceName forKey:@"_interfaceName"];
  [coder encodeInteger:self->_count forKey:@"_count"];
  [coder encodeDouble:@"_timeout" forKey:self->_timeout];
  [coder encodeDouble:@"_wait" forKey:self->_wait];
  [coder encodeDouble:@"_interval" forKey:self->_interval];
  [coder encodeDouble:@"_packetLoss" forKey:self->_packetLoss];
  [coder encodeDouble:@"_min" forKey:self->_min];
  [coder encodeDouble:@"_max" forKey:self->_max];
  [coder encodeDouble:@"_avg" forKey:self->_avg];
  [coder encodeDouble:@"_stddev" forKey:self->_stddev];
  [coder encodeDouble:@"_startedAt" forKey:self->_startedAt];
  [coder encodeDouble:@"_endedAt" forKey:self->_endedAt];
  [coder encodeInteger:self->_trafficClass forKey:@"_trafficClass"];
  [coder encodeInteger:self->_dataLength forKey:@"_dataLength"];
  [coder encodeObject:self->_command forKey:@"_command"];
  output = self->_output;

  [coder encodeObject:output forKey:@"_output"];
}

- (W5PingResult)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = W5PingResult;
  v4 = [(W5PingResult *)&v16 init];
  if (v4)
  {
    v4->_address = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_address", "copy"}];
    v4->_interfaceName = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_interfaceName", "copy"}];
    v4->_count = [coder decodeIntegerForKey:@"_count"];
    [coder decodeDoubleForKey:@"_timeout"];
    v4->_timeout = v5;
    [coder decodeDoubleForKey:@"_wait"];
    v4->_wait = v6;
    [coder decodeDoubleForKey:@"_interval"];
    v4->_interval = v7;
    [coder decodeDoubleForKey:@"_packetLoss"];
    v4->_packetLoss = v8;
    [coder decodeDoubleForKey:@"_min"];
    v4->_min = v9;
    [coder decodeDoubleForKey:@"_max"];
    v4->_max = v10;
    [coder decodeDoubleForKey:@"_avg"];
    v4->_avg = v11;
    [coder decodeDoubleForKey:@"_stddev"];
    v4->_stddev = v12;
    [coder decodeDoubleForKey:@"_startedAt"];
    v4->_startedAt = v13;
    [coder decodeDoubleForKey:@"_endedAt"];
    v4->_endedAt = v14;
    v4->_trafficClass = [coder decodeIntegerForKey:@"_trafficClass"];
    v4->_dataLength = [coder decodeIntegerForKey:@"_dataLength"];
    v4->_command = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_command", "copy"}];
    v4->_output = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_output", "copy"}];
  }

  return v4;
}

@end