@interface _PXSharedLibraryMenuConfiguration
- (_PXSharedLibraryMenuConfiguration)initWithMenuBuilder:(id)builder;
@end

@implementation _PXSharedLibraryMenuConfiguration

- (_PXSharedLibraryMenuConfiguration)initWithMenuBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUtilities.m" lineNumber:2039 description:{@"Invalid parameter not satisfying: %@", @"menuBuilder != nil"}];
  }

  v11.receiver = self;
  v11.super_class = _PXSharedLibraryMenuConfiguration;
  v7 = [(_PXSharedLibraryMenuConfiguration *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_extraItemsMenuBuilder, builder);
  }

  return v8;
}

@end