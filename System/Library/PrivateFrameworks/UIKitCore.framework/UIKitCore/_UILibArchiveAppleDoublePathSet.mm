@interface _UILibArchiveAppleDoublePathSet
+ (BOOL)isPossibleAppleDoubleByApplyingMatchingHeuristicToItem:(id)item;
- (BOOL)isConfirmedExactAppleDoubleItem:(id)item;
- (_UILibArchiveAppleDoublePathSet)init;
- (id)pathToRealFileIfConfirmedAppleDoubleItem:(id)item;
- (void)confirmExactAppleDoubleFilesAppearingAfterRealFilesByPrescanningArchivePath:(id)path;
- (void)confirmExactAppleDoubleFilesForItem:(id)item;
@end

@implementation _UILibArchiveAppleDoublePathSet

- (_UILibArchiveAppleDoublePathSet)init
{
  v8.receiver = self;
  v8.super_class = _UILibArchiveAppleDoublePathSet;
  v2 = [(_UILibArchiveAppleDoublePathSet *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    confirmAppleDoublePaths = v2->_confirmAppleDoublePaths;
    v2->_confirmAppleDoublePaths = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    pathsWithDotUnderscorePrefixedFilenames = v2->_pathsWithDotUnderscorePrefixedFilenames;
    v2->_pathsWithDotUnderscorePrefixedFilenames = v5;
  }

  return v2;
}

- (void)confirmExactAppleDoubleFilesAppearingAfterRealFilesByPrescanningArchivePath:(id)path
{
  pathCopy = path;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [[_UILibArchiveStreamingReader alloc] initForReadingArchivePath:pathCopy];
  [v5 setAppleDoubleIdentificationType:0];
  [v5 open];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111___UILibArchiveAppleDoublePathSet_confirmExactAppleDoubleFilesAppearingAfterRealFilesByPrescanningArchivePath___block_invoke;
  v6[3] = &unk_1E7105690;
  v6[4] = self;
  v6[5] = &v7;
  [v5 readAllItemsWithBlock:v6 error:0];
  [v5 close];
  if (*(v8 + 24) == 1)
  {
    [(NSMutableSet *)self->_confirmAppleDoublePaths removeObject:@"__MACOSX"];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)confirmExactAppleDoubleFilesForItem:(id)item
{
  pathInArchive = [item pathInArchive];
  v5 = _appleDoublePathForRealPath_DotUnderscore(pathInArchive);

  if ([(NSMutableSet *)self->_pathsWithDotUnderscorePrefixedFilenames containsObject:v5])
  {
    [(NSMutableSet *)self->_confirmAppleDoublePaths addObject:v5];
  }
}

- (id)pathToRealFileIfConfirmedAppleDoubleItem:(id)item
{
  itemCopy = item;
  if ([(_UILibArchiveAppleDoublePathSet *)self isConfirmedExactAppleDoubleItem:itemCopy])
  {
    pathInArchive = [itemCopy pathInArchive];
    pathComponents = [pathInArchive pathComponents];
    lastObject = [pathComponents lastObject];
    v8 = [lastObject hasPrefix:@"._"];

    if (v8)
    {
      v9 = [pathComponents indexOfObjectPassingTest:&__block_literal_global_174];
      v10 = [pathComponents mutableCopy];
      v11 = v10;
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v10 removeObjectAtIndex:v9];
      }

      lastObject2 = [v11 lastObject];
      v13 = [lastObject2 substringFromIndex:{objc_msgSend(@"._", "length")}];

      [v11 removeLastObject];
      [v11 addObject:v13];
      v14 = [v11 componentsJoinedByString:@"/"];
      stringByStandardizingPath = [v14 stringByStandardizingPath];
    }

    else
    {
      stringByStandardizingPath = 0;
    }
  }

  else
  {
    stringByStandardizingPath = 0;
  }

  return stringByStandardizingPath;
}

- (BOOL)isConfirmedExactAppleDoubleItem:(id)item
{
  confirmAppleDoublePaths = self->_confirmAppleDoublePaths;
  pathInArchive = [item pathInArchive];
  LOBYTE(confirmAppleDoublePaths) = [(NSMutableSet *)confirmAppleDoublePaths containsObject:pathInArchive];

  return confirmAppleDoublePaths;
}

+ (BOOL)isPossibleAppleDoubleByApplyingMatchingHeuristicToItem:(id)item
{
  pathInArchive = [item pathInArchive];
  if (_isPossibleAppleDoublePath_MACOSX(pathInArchive))
  {
    isPossibleAppleDoublePath_DotUnderscore = 1;
  }

  else
  {
    isPossibleAppleDoublePath_DotUnderscore = _isPossibleAppleDoublePath_DotUnderscore(pathInArchive);
  }

  return isPossibleAppleDoublePath_DotUnderscore;
}

@end