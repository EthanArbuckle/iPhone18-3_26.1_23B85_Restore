@interface _UIArchiveItem
- (void)setPathInArchive:(id)archive;
@end

@implementation _UIArchiveItem

- (void)setPathInArchive:(id)archive
{
  stringByStandardizingPath = [archive stringByStandardizingPath];
  pathInArchive = self->_pathInArchive;
  self->_pathInArchive = stringByStandardizingPath;
}

@end