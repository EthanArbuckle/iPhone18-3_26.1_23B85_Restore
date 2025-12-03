@interface WFLegacySerializedLSApplicationProxy
- (WFLegacySerializedLSApplicationProxy)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLegacySerializedLSApplicationProxy

- (WFLegacySerializedLSApplicationProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFLegacySerializedLSApplicationProxy;
  v5 = [(WFLegacySerializedLSApplicationProxy *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"WFLegacySerializedLSApplicationProxy.m" lineNumber:20 description:{@"Encoding is not supported, this object should only be used for legacy deserialization of LSApplicationProxy!"}];
}

@end