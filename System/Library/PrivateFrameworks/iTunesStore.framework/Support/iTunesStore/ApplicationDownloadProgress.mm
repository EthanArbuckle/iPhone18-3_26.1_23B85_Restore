@interface ApplicationDownloadProgress
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ApplicationDownloadProgress

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DownloadHandle *)self->_applicationHandle copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_completedUnitCount;
  v5[3] = self->_totalUnitCount;
  return v5;
}

@end