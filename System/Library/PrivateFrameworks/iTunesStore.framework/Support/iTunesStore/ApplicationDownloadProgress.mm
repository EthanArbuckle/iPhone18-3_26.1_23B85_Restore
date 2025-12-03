@interface ApplicationDownloadProgress
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ApplicationDownloadProgress

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DownloadHandle *)self->_applicationHandle copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_completedUnitCount;
  v5[3] = self->_totalUnitCount;
  return v5;
}

@end