@interface WFLegacySerializedLSApplicationProxy
- (WFLegacySerializedLSApplicationProxy)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLegacySerializedLSApplicationProxy

- (WFLegacySerializedLSApplicationProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLegacySerializedLSApplicationProxy;
  v5 = [(WFLegacySerializedLSApplicationProxy *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"WFLegacySerializedLSApplicationProxy.m" lineNumber:20 description:{@"Encoding is not supported, this object should only be used for legacy deserialization of LSApplicationProxy!"}];
}

@end