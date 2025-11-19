@interface SUManualDownloadPolicy
- (BOOL)superIsDownloadable;
- (SUManualDownloadPolicy)init;
@end

@implementation SUManualDownloadPolicy

- (SUManualDownloadPolicy)init
{
  v7.receiver = self;
  v7.super_class = SUManualDownloadPolicy;
  v2 = [(SUManualDownloadPolicy *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(SUManualDownloadPolicy *)v2 setDownloadable:1];
    v4 = objc_opt_class();
    fakeClass = v3->_fakeClass;
    v3->_fakeClass = v4;
  }

  return v3;
}

- (BOOL)superIsDownloadable
{
  v3.receiver = self;
  v3.super_class = SUManualDownloadPolicy;
  return [(SUDefaultDownloadPolicy *)&v3 isDownloadable];
}

@end