@interface _UIArchiveItem
- (void)setPathInArchive:(id)a3;
@end

@implementation _UIArchiveItem

- (void)setPathInArchive:(id)a3
{
  v4 = [a3 stringByStandardizingPath];
  pathInArchive = self->_pathInArchive;
  self->_pathInArchive = v4;
}

@end