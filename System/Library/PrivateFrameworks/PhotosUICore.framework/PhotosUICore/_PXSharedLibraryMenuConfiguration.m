@interface _PXSharedLibraryMenuConfiguration
- (_PXSharedLibraryMenuConfiguration)initWithMenuBuilder:(id)a3;
@end

@implementation _PXSharedLibraryMenuConfiguration

- (_PXSharedLibraryMenuConfiguration)initWithMenuBuilder:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUtilities.m" lineNumber:2039 description:{@"Invalid parameter not satisfying: %@", @"menuBuilder != nil"}];
  }

  v11.receiver = self;
  v11.super_class = _PXSharedLibraryMenuConfiguration;
  v7 = [(_PXSharedLibraryMenuConfiguration *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_extraItemsMenuBuilder, a3);
  }

  return v8;
}

@end