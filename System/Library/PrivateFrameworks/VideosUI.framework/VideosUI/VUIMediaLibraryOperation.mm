@interface VUIMediaLibraryOperation
- (VUIMediaLibraryOperation)init;
- (VUIMediaLibraryOperation)initWithMediaLibrary:(id)a3;
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

- (VUIMediaLibraryOperation)initWithMediaLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  }

  v9.receiver = self;
  v9.super_class = VUIMediaLibraryOperation;
  v6 = [(VUIMediaLibraryOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaLibrary, a3);
  }

  return v7;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VUIMediaLibraryOperation;
  [(VUIMediaLibraryOperation *)&v4 cancel];
  v3 = [(VUIMediaLibraryOperation *)self asyncWorkToken];
  [v3 cancel];

  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

@end