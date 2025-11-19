@interface SRUIFLatencyInformation
- (SRUIFLatencyInformation)initWithCoder:(id)a3;
- (SRUIFLatencyInformation)initWithLatencySummary:(id)a3 taskIdentifier:(id)a4 shouldShow:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRUIFLatencyInformation

- (SRUIFLatencyInformation)initWithLatencySummary:(id)a3 taskIdentifier:(id)a4 shouldShow:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = SRUIFLatencyInformation;
  v10 = [(SRUIFLatencyInformation *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    latencySummary = v10->_latencySummary;
    v10->_latencySummary = v11;

    v13 = [v9 copy];
    taskIdentifier = v10->_taskIdentifier;
    v10->_taskIdentifier = v13;

    v10->_shouldShow = a5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  latencySummary = self->_latencySummary;
  v5 = a3;
  [v5 encodeObject:latencySummary forKey:@"_latencySummary"];
  [v5 encodeObject:self->_taskIdentifier forKey:@"_taskIdentifier"];
  [v5 encodeBool:self->_shouldShow forKey:@"_shouldShow"];
}

- (SRUIFLatencyInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_latencySummary"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_taskIdentifier"];
  v7 = [v4 decodeBoolForKey:@"_shouldShow"];

  v8 = [(SRUIFLatencyInformation *)self initWithLatencySummary:v5 taskIdentifier:v6 shouldShow:v7];
  return v8;
}

@end