@interface SRUIFLatencyInformation
- (SRUIFLatencyInformation)initWithCoder:(id)coder;
- (SRUIFLatencyInformation)initWithLatencySummary:(id)summary taskIdentifier:(id)identifier shouldShow:(BOOL)show;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRUIFLatencyInformation

- (SRUIFLatencyInformation)initWithLatencySummary:(id)summary taskIdentifier:(id)identifier shouldShow:(BOOL)show
{
  summaryCopy = summary;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = SRUIFLatencyInformation;
  v10 = [(SRUIFLatencyInformation *)&v16 init];
  if (v10)
  {
    v11 = [summaryCopy copy];
    latencySummary = v10->_latencySummary;
    v10->_latencySummary = v11;

    v13 = [identifierCopy copy];
    taskIdentifier = v10->_taskIdentifier;
    v10->_taskIdentifier = v13;

    v10->_shouldShow = show;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  latencySummary = self->_latencySummary;
  coderCopy = coder;
  [coderCopy encodeObject:latencySummary forKey:@"_latencySummary"];
  [coderCopy encodeObject:self->_taskIdentifier forKey:@"_taskIdentifier"];
  [coderCopy encodeBool:self->_shouldShow forKey:@"_shouldShow"];
}

- (SRUIFLatencyInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_latencySummary"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_taskIdentifier"];
  v7 = [coderCopy decodeBoolForKey:@"_shouldShow"];

  v8 = [(SRUIFLatencyInformation *)self initWithLatencySummary:v5 taskIdentifier:v6 shouldShow:v7];
  return v8;
}

@end