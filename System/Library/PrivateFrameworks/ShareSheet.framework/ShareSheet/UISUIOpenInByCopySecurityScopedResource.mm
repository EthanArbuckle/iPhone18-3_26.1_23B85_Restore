@interface UISUIOpenInByCopySecurityScopedResource
- (UISUIOpenInByCopySecurityScopedResource)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISUIOpenInByCopySecurityScopedResource

- (UISUIOpenInByCopySecurityScopedResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = UISUIOpenInByCopySecurityScopedResource;
  v5 = [(UISUISecurityScopedResource *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkExportDataEncodedAsString"];
    [(UISUIOpenInByCopySecurityScopedResource *)v5 setBookmarkExportDataEncodedAsString:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UISUIOpenInByCopySecurityScopedResource;
  coderCopy = coder;
  [(UISUISecurityScopedResource *)&v6 encodeWithCoder:coderCopy];
  v5 = [(UISUIOpenInByCopySecurityScopedResource *)self bookmarkExportDataEncodedAsString:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"bookmarkExportDataEncodedAsString"];
}

@end