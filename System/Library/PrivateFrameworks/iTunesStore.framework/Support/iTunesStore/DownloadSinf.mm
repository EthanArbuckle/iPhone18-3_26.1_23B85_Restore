@interface DownloadSinf
- (DownloadSinf)initWithDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation DownloadSinf

- (DownloadSinf)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = DownloadSinf;
  v4 = [(DownloadSinf *)&v6 init];
  if (v4)
  {
    v4->_info = [dictionary copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadSinf;
  [(DownloadSinf *)&v3 dealloc];
}

@end