@interface VUIPlistMediaLibraryIdentifier
- (VUIPlistMediaLibraryIdentifier)init;
- (VUIPlistMediaLibraryIdentifier)initWithURL:(id)l;
@end

@implementation VUIPlistMediaLibraryIdentifier

- (VUIPlistMediaLibraryIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIPlistMediaLibraryIdentifier)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = VUIPlistMediaLibraryIdentifier;
  v5 = [(VUIPlistMediaLibraryIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    libraryFileURL = v5->_libraryFileURL;
    v5->_libraryFileURL = v6;
  }

  return v5;
}

@end