@interface BAManifestDownload
- (BAManifestDownload)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BAManifestDownload

- (BAManifestDownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BAManifestDownload;
  v5 = [(BAURLDownload *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_applicationEvent = [coderCopy decodeIntegerForKey:@"applicationEvent"];
  }

  return v5;
}

- (id)debugDescription
{
  v5.receiver = self;
  v5.super_class = BAManifestDownload;
  v2 = [(BAURLDownload *)&v5 debugDescription];
  v3 = [v2 mutableCopy];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    applicationEvent = self->_applicationEvent;
  }

  else
  {
    applicationEvent = 0;
  }

  coderCopy = coder;
  [coderCopy encodeInteger:applicationEvent forKey:@"applicationEvent"];
  v6.receiver = self;
  v6.super_class = BAManifestDownload;
  [(BAURLDownload *)&v6 encodeWithCoder:coderCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = BAManifestDownload;
  result = [(BAURLDownload *)&v6 copyWithZone:zone];
  if (self)
  {
    applicationEvent = self->_applicationEvent;
  }

  else
  {
    applicationEvent = 0;
  }

  *(result + 24) = applicationEvent;
  return result;
}

@end