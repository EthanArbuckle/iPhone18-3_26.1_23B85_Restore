@interface VTKFileReferenceItemsSource
- (id)referenceImageWithID:(id)d testCase:(id)case error:(id *)error;
- (void)setItemsDirectory:(id)directory;
@end

@implementation VTKFileReferenceItemsSource

- (void)setItemsDirectory:(id)directory
{
  directoryCopy = directory;
  if (self->_itemsDirectory != directoryCopy)
  {
    v10 = directoryCopy;
    v5 = directoryCopy;
    if ([(NSString *)v5 length])
    {
      stringByStandardizingPath = [(NSString *)v5 stringByStandardizingPath];

      v7 = [NSURL URLWithString:stringByStandardizingPath];
      if (!v7)
      {
        [NSException raise:NSInvalidArgumentException format:@"given itemsDirectory:%@ is not valid", stringByStandardizingPath];
      }
    }

    else
    {
      stringByStandardizingPath = v5;
    }

    v8 = [stringByStandardizingPath copy];

    itemsDirectory = self->_itemsDirectory;
    self->_itemsDirectory = v8;

    directoryCopy = v10;
  }
}

- (id)referenceImageWithID:(id)d testCase:(id)case error:(id *)error
{
  dCopy = d;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = NSStringFromVTKAssertID(dCopy);

  itemsDirectory = [(VTKFileReferenceItemsSource *)self itemsDirectory];
  v10 = [v7 URLForResource:v8 withExtension:@"PNG" subdirectory:itemsDirectory];

  v11 = [NSData dataWithContentsOfURL:v10];
  v12 = [UIImage imageWithData:v11];

  return v12;
}

@end