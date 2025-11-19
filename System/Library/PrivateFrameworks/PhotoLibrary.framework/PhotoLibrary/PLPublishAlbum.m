@interface PLPublishAlbum
- (void)dealloc;
@end

@implementation PLPublishAlbum

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLPublishAlbum;
  [(PLPublishAlbum *)&v3 dealloc];
}

@end