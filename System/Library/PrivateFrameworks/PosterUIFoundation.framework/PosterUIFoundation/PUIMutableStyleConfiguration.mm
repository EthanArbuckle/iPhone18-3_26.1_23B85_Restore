@interface PUIMutableStyleConfiguration
- (PUIMutableStyleConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIMutableStyleConfiguration

- (PUIMutableStyleConfiguration)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PUIMutableStyleConfiguration;
  return [(PUIStyleConfiguration *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PUIMutableStyleConfiguration;
  [(PUIStyleConfiguration *)&v3 encodeWithCoder:coder];
}

@end