@interface _UIArchiveExtractionController
- (BOOL)_createDestinationRoot:(id *)a3;
- (BOOL)extractArchiveContent:(id *)a3;
- (_UIArchiveExtractionController)initWithSourceArchivePath:(id)a3 destinationExtractionRootPath:(id)a4;
- (id)extractedContentAbsolutePathsMatchingPredicate:(id)a3;
@end

@implementation _UIArchiveExtractionController

- (_UIArchiveExtractionController)initWithSourceArchivePath:(id)a3 destinationExtractionRootPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _UIArchiveExtractionController;
  v9 = [(_UIArchiveExtractionController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceArchivePath, a3);
    sourceArchiveExtractionRootPath = v10->_sourceArchiveExtractionRootPath;
    v10->_sourceArchiveExtractionRootPath = @".";

    objc_storeStrong(&v10->_destinationExtractionRootPath, a4);
    objc_storeStrong(&v10->_destinationContentProtectionType, *MEMORY[0x1E696A380]);
  }

  return v10;
}

- (BOOL)extractArchiveContent:(id *)a3
{
  if ([(_UIArchiveExtractionController *)self _createDestinationRoot:?])
  {
    v5 = [[_UILibArchiveStreamingExtractor alloc] initForExtractingArchivePath:self->_sourceArchivePath];
    v6 = [v5 extractArchivePath:self->_sourceArchiveExtractionRootPath toDirectory:self->_destinationExtractionRootPath error:a3];
    if (v6)
    {
      v7 = [v5 extractedContentAbsolutePaths];
      extractedContentAbsolutePaths = self->_extractedContentAbsolutePaths;
      self->_extractedContentAbsolutePaths = v7;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)extractedContentAbsolutePathsMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = v4;
  extractedContentAbsolutePaths = self->_extractedContentAbsolutePaths;
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81___UIArchiveExtractionController_extractedContentAbsolutePathsMatchingPredicate___block_invoke;
    v10[3] = &unk_1E7105998;
    v11 = v4;
    v7 = [(NSArray *)extractedContentAbsolutePaths indexesOfObjectsPassingTest:v10];
    v8 = [(NSArray *)extractedContentAbsolutePaths objectsAtIndexes:v7];
  }

  else
  {
    v8 = extractedContentAbsolutePaths;
  }

  return v8;
}

- (BOOL)_createDestinationRoot:(id *)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  destinationContentProtectionType = self->_destinationContentProtectionType;
  v21 = *MEMORY[0x1E696A3A0];
  v22[0] = destinationContentProtectionType;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v20 = 0;
  v8 = [v5 fileExistsAtPath:self->_destinationExtractionRootPath isDirectory:&v20];
  destinationExtractionRootPath = self->_destinationExtractionRootPath;
  if (v8)
  {
    v19 = 0;
    v10 = [v5 setAttributes:v7 ofItemAtPath:destinationExtractionRootPath error:&v19];
    v11 = v19;
    if (v10)
    {
      v12 = 1;
      goto LABEL_8;
    }

    v14 = @"Failed setting data protection on extraction root - %@";
  }

  else
  {
    v18 = 0;
    v12 = 1;
    v13 = [v5 createDirectoryAtPath:destinationExtractionRootPath withIntermediateDirectories:1 attributes:v7 error:&v18];
    v11 = v18;
    if (v13)
    {
      goto LABEL_8;
    }

    v14 = @"Failed to create extraction root - %@";
  }

  v15 = [v11 localizedDescription];
  NSLog(&v14->isa, v15);

  v12 = 0;
LABEL_8:
  if (a3)
  {
    v16 = v11;
    *a3 = v11;
  }

  return v12;
}

@end