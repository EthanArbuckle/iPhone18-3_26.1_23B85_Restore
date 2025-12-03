@interface VUIMediaLibraryOperation
- (VUIMediaLibraryOperation)init;
- (VUIMediaLibraryOperation)initWithMediaLibrary:(id)library;
- (void)cancel;
@end

@implementation VUIMediaLibraryOperation

- (VUIMediaLibraryOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaLibraryOperation)initWithMediaLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  }

  v9.receiver = self;
  v9.super_class = VUIMediaLibraryOperation;
  v6 = [(VUIMediaLibraryOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaLibrary, library);
  }

  return v7;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VUIMediaLibraryOperation;
  [(VUIMediaLibraryOperation *)&v4 cancel];
  asyncWorkToken = [(VUIMediaLibraryOperation *)self asyncWorkToken];
  [asyncWorkToken cancel];

  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

@end