@interface VTKFileReferenceItemsSource
- (id)referenceImageWithID:(id)a3 testCase:(id)a4 error:(id *)a5;
- (void)setItemsDirectory:(id)a3;
@end

@implementation VTKFileReferenceItemsSource

- (void)setItemsDirectory:(id)a3
{
  v4 = a3;
  if (self->_itemsDirectory != v4)
  {
    v10 = v4;
    v5 = v4;
    if ([(NSString *)v5 length])
    {
      v6 = [(NSString *)v5 stringByStandardizingPath];

      v7 = [NSURL URLWithString:v6];
      if (!v7)
      {
        [NSException raise:NSInvalidArgumentException format:@"given itemsDirectory:%@ is not valid", v6];
      }
    }

    else
    {
      v6 = v5;
    }

    v8 = [v6 copy];

    itemsDirectory = self->_itemsDirectory;
    self->_itemsDirectory = v8;

    v4 = v10;
  }
}

- (id)referenceImageWithID:(id)a3 testCase:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = NSStringFromVTKAssertID(v6);

  v9 = [(VTKFileReferenceItemsSource *)self itemsDirectory];
  v10 = [v7 URLForResource:v8 withExtension:@"PNG" subdirectory:v9];

  v11 = [NSData dataWithContentsOfURL:v10];
  v12 = [UIImage imageWithData:v11];

  return v12;
}

@end