@interface WALQM
- (id)description;
@end

@implementation WALQM

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [WADeviceAnalyticsClient bandAsString:[(WALQM *)self band]];
  v5 = [v3 stringWithFormat:@"%@(%u) %lus", v4, -[WALQM band](self, "band"), -[WALQM duration](self, "duration")];

  return v5;
}

@end