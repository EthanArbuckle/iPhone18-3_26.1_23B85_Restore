@interface _UILibArchiveAppleDoublePathSet
+ (BOOL)isPossibleAppleDoubleByApplyingMatchingHeuristicToItem:(id)a3;
- (BOOL)isConfirmedExactAppleDoubleItem:(id)a3;
- (_UILibArchiveAppleDoublePathSet)init;
- (id)pathToRealFileIfConfirmedAppleDoubleItem:(id)a3;
- (void)confirmExactAppleDoubleFilesAppearingAfterRealFilesByPrescanningArchivePath:(id)a3;
- (void)confirmExactAppleDoubleFilesForItem:(id)a3;
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

- (void)confirmExactAppleDoubleFilesAppearingAfterRealFilesByPrescanningArchivePath:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [[_UILibArchiveStreamingReader alloc] initForReadingArchivePath:v4];
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

- (void)confirmExactAppleDoubleFilesForItem:(id)a3
{
  v4 = [a3 pathInArchive];
  v5 = _appleDoublePathForRealPath_DotUnderscore(v4);

  if ([(NSMutableSet *)self->_pathsWithDotUnderscorePrefixedFilenames containsObject:v5])
  {
    [(NSMutableSet *)self->_confirmAppleDoublePaths addObject:v5];
  }
}

- (id)pathToRealFileIfConfirmedAppleDoubleItem:(id)a3
{
  v4 = a3;
  if ([(_UILibArchiveAppleDoublePathSet *)self isConfirmedExactAppleDoubleItem:v4])
  {
    v5 = [v4 pathInArchive];
    v6 = [v5 pathComponents];
    v7 = [v6 lastObject];
    v8 = [v7 hasPrefix:@"._"];

    if (v8)
    {
      v9 = [v6 indexOfObjectPassingTest:&__block_literal_global_174];
      v10 = [v6 mutableCopy];
      v11 = v10;
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v10 removeObjectAtIndex:v9];
      }

      v12 = [v11 lastObject];
      v13 = [v12 substringFromIndex:{objc_msgSend(@"._", "length")}];

      [v11 removeLastObject];
      [v11 addObject:v13];
      v14 = [v11 componentsJoinedByString:@"/"];
      v15 = [v14 stringByStandardizingPath];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isConfirmedExactAppleDoubleItem:(id)a3
{
  confirmAppleDoublePaths = self->_confirmAppleDoublePaths;
  v4 = [a3 pathInArchive];
  LOBYTE(confirmAppleDoublePaths) = [(NSMutableSet *)confirmAppleDoublePaths containsObject:v4];

  return confirmAppleDoublePaths;
}

+ (BOOL)isPossibleAppleDoubleByApplyingMatchingHeuristicToItem:(id)a3
{
  v3 = [a3 pathInArchive];
  if (_isPossibleAppleDoublePath_MACOSX(v3))
  {
    isPossibleAppleDoublePath_DotUnderscore = 1;
  }

  else
  {
    isPossibleAppleDoublePath_DotUnderscore = _isPossibleAppleDoublePath_DotUnderscore(v3);
  }

  return isPossibleAppleDoublePath_DotUnderscore;
}

@end