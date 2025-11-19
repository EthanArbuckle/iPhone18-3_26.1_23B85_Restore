@interface UILibArchiveAppleDoublePathSet
@end

@implementation UILibArchiveAppleDoublePathSet

void __111___UILibArchiveAppleDoublePathSet_confirmExactAppleDoubleFilesAppearingAfterRealFilesByPrescanningArchivePath___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 pathInArchive];
  v4 = *(*(a1 + 32) + 16);
  v5 = _appleDoublePathForRealPath_DotUnderscore(v3);
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = _appleDoublePathForRealPath_DotUnderscore(v3);
  }

  else
  {
    if (_isPossibleAppleDoublePath_MACOSX(v3))
    {
      v8 = [v14 fileType];
      v9 = [v8 isEqualToString:*MEMORY[0x1E696A3E8]];

      v10 = [v14 pathInArchive];
      v11 = [v10 lastPathComponent];
      v12 = [v11 isEqualToString:@"__MACOSX"];

      if ((_isPossibleAppleDoublePath_DotUnderscore(v3) & 1) == 0 && v9 && (v12 & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        goto LABEL_13;
      }

      v6 = *(*(a1 + 32) + 8);
    }

    else
    {
      if (!_isPossibleAppleDoublePath_DotUnderscore(v3))
      {
        goto LABEL_13;
      }

      v6 = *(*(a1 + 32) + 16);
    }

    v7 = [v14 pathInArchive];
  }

  v13 = v7;
  [v6 addObject:v7];

LABEL_13:
}

@end