@interface _UIArchiveExtractionController
- (BOOL)_createDestinationRoot:(id *)root;
- (BOOL)extractArchiveContent:(id *)content;
- (_UIArchiveExtractionController)initWithSourceArchivePath:(id)path destinationExtractionRootPath:(id)rootPath;
- (id)extractedContentAbsolutePathsMatchingPredicate:(id)predicate;
@end

@implementation _UIArchiveExtractionController

- (_UIArchiveExtractionController)initWithSourceArchivePath:(id)path destinationExtractionRootPath:(id)rootPath
{
  pathCopy = path;
  rootPathCopy = rootPath;
  v13.receiver = self;
  v13.super_class = _UIArchiveExtractionController;
  v9 = [(_UIArchiveExtractionController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceArchivePath, path);
    sourceArchiveExtractionRootPath = v10->_sourceArchiveExtractionRootPath;
    v10->_sourceArchiveExtractionRootPath = @".";

    objc_storeStrong(&v10->_destinationExtractionRootPath, rootPath);
    objc_storeStrong(&v10->_destinationContentProtectionType, *MEMORY[0x1E696A380]);
  }

  return v10;
}

- (BOOL)extractArchiveContent:(id *)content
{
  if ([(_UIArchiveExtractionController *)self _createDestinationRoot:?])
  {
    v5 = [[_UILibArchiveStreamingExtractor alloc] initForExtractingArchivePath:self->_sourceArchivePath];
    v6 = [v5 extractArchivePath:self->_sourceArchiveExtractionRootPath toDirectory:self->_destinationExtractionRootPath error:content];
    if (v6)
    {
      extractedContentAbsolutePaths = [v5 extractedContentAbsolutePaths];
      extractedContentAbsolutePaths = self->_extractedContentAbsolutePaths;
      self->_extractedContentAbsolutePaths = extractedContentAbsolutePaths;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)extractedContentAbsolutePathsMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = predicateCopy;
  extractedContentAbsolutePaths = self->_extractedContentAbsolutePaths;
  if (predicateCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81___UIArchiveExtractionController_extractedContentAbsolutePathsMatchingPredicate___block_invoke;
    v10[3] = &unk_1E7105998;
    v11 = predicateCopy;
    v7 = [(NSArray *)extractedContentAbsolutePaths indexesOfObjectsPassingTest:v10];
    v8 = [(NSArray *)extractedContentAbsolutePaths objectsAtIndexes:v7];
  }

  else
  {
    v8 = extractedContentAbsolutePaths;
  }

  return v8;
}

- (BOOL)_createDestinationRoot:(id *)root
{
  v22[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  destinationContentProtectionType = self->_destinationContentProtectionType;
  v21 = *MEMORY[0x1E696A3A0];
  v22[0] = destinationContentProtectionType;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v20 = 0;
  v8 = [defaultManager fileExistsAtPath:self->_destinationExtractionRootPath isDirectory:&v20];
  destinationExtractionRootPath = self->_destinationExtractionRootPath;
  if (v8)
  {
    v19 = 0;
    v10 = [defaultManager setAttributes:v7 ofItemAtPath:destinationExtractionRootPath error:&v19];
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
    v13 = [defaultManager createDirectoryAtPath:destinationExtractionRootPath withIntermediateDirectories:1 attributes:v7 error:&v18];
    v11 = v18;
    if (v13)
    {
      goto LABEL_8;
    }

    v14 = @"Failed to create extraction root - %@";
  }

  localizedDescription = [v11 localizedDescription];
  NSLog(&v14->isa, localizedDescription);

  v12 = 0;
LABEL_8:
  if (root)
  {
    v16 = v11;
    *root = v11;
  }

  return v12;
}

@end