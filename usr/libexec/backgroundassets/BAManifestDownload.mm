@interface BAManifestDownload
- (BAManifestDownload)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BAManifestDownload

- (BAManifestDownload)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BAManifestDownload;
  v5 = [(BAURLDownload *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_applicationEvent = [v4 decodeIntegerForKey:@"applicationEvent"];
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

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    applicationEvent = self->_applicationEvent;
  }

  else
  {
    applicationEvent = 0;
  }

  v5 = a3;
  [v5 encodeInteger:applicationEvent forKey:@"applicationEvent"];
  v6.receiver = self;
  v6.super_class = BAManifestDownload;
  [(BAURLDownload *)&v6 encodeWithCoder:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = BAManifestDownload;
  result = [(BAURLDownload *)&v6 copyWithZone:a3];
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