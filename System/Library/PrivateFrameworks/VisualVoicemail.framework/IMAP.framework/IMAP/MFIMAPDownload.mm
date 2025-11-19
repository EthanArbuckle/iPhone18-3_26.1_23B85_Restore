@interface MFIMAPDownload
- (MFIMAPDownload)initWithUid:(unsigned int)a3;
- (void)dealloc;
@end

@implementation MFIMAPDownload

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPDownload;
  [(MFIMAPDownload *)&v2 dealloc];
}

- (MFIMAPDownload)initWithUid:(unsigned int)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = MFIMAPDownload;
    v4 = [(MFIMAPDownload *)&v7 init];
    if (v4)
    {
      v4->_uid = a3;
    }

    self = v4;
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end