@interface _UILibArchiveStreamingReader
- (BOOL)_openArchive;
- (BOOL)_readItemsWithShouldVisitBlock:(id)a3 visitorBlock:(id)a4 error:(id *)a5;
- (BOOL)_shouldReportAsAppleDoubleItem:(id)a3 withConfirmedAppleDoubleFiles:(id)a4;
- (BOOL)_shouldReportAsLogicalItem:(id)a3 withConfirmedAppleDoubleFiles:(id)a4;
- (BOOL)readLogicalItemsWithBlock:(id)a3 error:(id *)a4;
- (id)_debugLoadAndPrintAllRemainingItems;
- (id)_loadItemByReadingAttributesFromUnderlyingArchiveEntry:(ui_archive_entry *)a3;
- (id)_nextSimpleItemFromPendingQueueOrLibArchiveRead;
- (id)initForReadingArchivePath:(id)a3;
- (void)_closeArchive;
@end

@implementation _UILibArchiveStreamingReader

- (id)initForReadingArchivePath:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _UILibArchiveStreamingReader;
  v6 = [(_UILibArchiveStreamingReader *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archivePath, a3);
    v7->_state = 0;
    v7->_laProcessingState = 0;
    v8 = [MEMORY[0x1E695DF70] array];
    readableLoadedItemEntryQueue = v7->_readableLoadedItemEntryQueue;
    v7->_readableLoadedItemEntryQueue = v8;

    v7->_appleDoubleIdentificationType = 1;
    v7->_laArchiveType = -1;
    laArchiveTypeName = v7->_laArchiveTypeName;
    v7->_laArchiveTypeName = @"** Unknown **";
  }

  return v7;
}

- (BOOL)readLogicalItemsWithBlock:(id)a3 error:(id *)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64___UILibArchiveStreamingReader_readLogicalItemsWithBlock_error___block_invoke;
  v5[3] = &unk_1E7105928;
  v5[4] = self;
  return [(_UILibArchiveStreamingReader *)self _readItemsWithShouldVisitBlock:v5 visitorBlock:a3 error:a4];
}

- (BOOL)_readItemsWithShouldVisitBlock:(id)a3 visitorBlock:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UILibArchiveStreamingReader.m" lineNumber:94 description:@"Invalid parameter"];
  }

  readError = self->_readError;
  self->_readError = 0;

  v12 = objc_opt_new();
  v13 = v12;
  if (self->_appleDoubleIdentificationType == 1)
  {
    [v12 confirmExactAppleDoubleFilesAppearingAfterRealFilesByPrescanningArchivePath:self->_archivePath];
  }

  v14 = self->_readError;
  if (!v14)
  {
    v15 = 0;
    do
    {
      v16 = v15;
      v15 = [(_UILibArchiveStreamingReader *)self _nextSimpleItemFromPendingQueueOrLibArchiveRead];

      if (!v15)
      {
        break;
      }

      if (self->_appleDoubleIdentificationType == 1)
      {
        [v13 confirmExactAppleDoubleFilesForItem:v15];
      }

      v17 = [v13 pathToRealFileIfConfirmedAppleDoubleItem:v15];
      [v15 setPathToAppleDoubleRealFileCounterpart:v17];

      v18 = [v15 pathToAppleDoubleRealFileCounterpart];
      [v15 setIsAppleDoubleFile:{objc_msgSend(v18, "length") != 0}];

      if (v9[2](v9, v15, v13))
      {
        v22 = 0;
        v10[2](v10, v15, &v22);
        if (v22)
        {
          break;
        }
      }
    }

    while (!self->_readError);
    v14 = self->_readError;
  }

  if (a5)
  {
    v19 = v14;
    *a5 = v14;
    v14 = self->_readError;
  }

  return v14 == 0;
}

- (BOOL)_shouldReportAsLogicalItem:(id)a3 withConfirmedAppleDoubleFiles:(id)a4
{
  v6 = a3;
  if ([(_UILibArchiveStreamingReader *)self _shouldReportAsAppleDoubleItem:v6 withConfirmedAppleDoubleFiles:a4])
  {
    v7 = 0;
  }

  else
  {
    if (qword_1ED49DA30 != -1)
    {
      dispatch_once(&qword_1ED49DA30, &__block_literal_global_26);
    }

    v8 = _MergedGlobals_1065;
    v9 = [v6 pathInArchive];
    LOBYTE(v8) = [v8 containsObject:v9];

    v7 = v8 ^ 1;
  }

  return v7;
}

- (BOOL)_shouldReportAsAppleDoubleItem:(id)a3 withConfirmedAppleDoubleFiles:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  appleDoubleIdentificationType = self->_appleDoubleIdentificationType;
  if (appleDoubleIdentificationType == 2)
  {
    v10 = [_UILibArchiveAppleDoublePathSet isPossibleAppleDoubleByApplyingMatchingHeuristicToItem:v6];
  }

  else
  {
    if (appleDoubleIdentificationType != 1)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v10 = [v7 isConfirmedExactAppleDoubleItem:v6];
  }

  v11 = v10;
LABEL_7:

  return v11;
}

- (BOOL)_openArchive
{
  if (self->_state < 1)
  {
    ui_archive_read_new();
    self->_laArchive = v5;
    p_laArchive = &self->_laArchive;
    self->_laProcessingState = 0;
    self->_state = 1;
    if (v5)
    {
      ui_archive_read_support_compression_all(v5);
      if (v6 || (ui_archive_read_support_format_all(*p_laArchive), v7))
      {
        [(_UILibArchiveStreamingReader *)self _closeArchive];
      }

      if (*p_laArchive)
      {
        ui_archive_read_open_filename(*p_laArchive, self->_archivePath, 0x2000);
        if (v8)
        {
          [(_UILibArchiveStreamingReader *)self _closeArchive];
        }

        if (*p_laArchive)
        {
          v9 = [(_UILibArchiveStreamingReader *)self _nextSimpleItemFromPendingQueueOrLibArchiveRead];
          if (v9)
          {
            v10 = [MEMORY[0x1E695DF70] arrayWithObject:v9];
            readableLoadedItemEntryQueue = self->_readableLoadedItemEntryQueue;
            self->_readableLoadedItemEntryQueue = v10;
          }

          if (self->_readError)
          {
            self->_laArchiveType = -1;
            laArchiveTypeName = self->_laArchiveTypeName;
            self->_laArchiveTypeName = @"** Invalid **";

            [(_UILibArchiveStreamingReader *)self _closeArchive];
          }

          else
          {
            ui_archive_format(self->_laArchive);
            self->_laArchiveType = v13;
            v14 = ui_archive_format_name(self->_laArchive);
            v15 = self->_laArchiveTypeName;
            self->_laArchiveTypeName = v14;
          }
        }
      }
    }
  }

  else
  {
    p_laArchive = &self->_laArchive;
  }

  return *p_laArchive != 0;
}

- (void)_closeArchive
{
  laArchive = self->_laArchive;
  if (laArchive)
  {
    ui_archive_read_close(laArchive);
    ui_archive_read_finish(self->_laArchive);
    self->_laProcessingState = 1;
    self->_state = 2;
    self->_laArchive = 0;
  }
}

- (id)_nextSimpleItemFromPendingQueueOrLibArchiveRead
{
  v3 = [(NSMutableArray *)self->_readableLoadedItemEntryQueue firstObject];
  if (v3)
  {
    [(NSMutableArray *)self->_readableLoadedItemEntryQueue removeObjectAtIndex:0];
    v4 = v3;
LABEL_3:
    v5 = v4;
    goto LABEL_6;
  }

  if (!self->_laProcessingState)
  {
    v10 = 0;
    ui_archive_read_next_header(self->_laArchive, &v10);
    self->_laProcessingState = v7;
    if (!v7)
    {
      v4 = [(_UILibArchiveStreamingReader *)self _loadItemByReadingAttributesFromUnderlyingArchiveEntry:v10];
      goto LABEL_3;
    }

    if (v7 != 1)
    {
      v8 = ui_archive_error(self->_laArchive, @"_UIArchiveExtractorErrorDomain", v7, @"Unable to read archive header");
      readError = self->_readError;
      self->_readError = v8;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (id)_loadItemByReadingAttributesFromUnderlyingArchiveEntry:(ui_archive_entry *)a3
{
  v4 = [(_UILibArchiveItem *)_UILibArchiveReaderLoadedItem itemByReadingAttributesFromUnderlyingArchiveEntry:a3 archive:self->_laArchive];
  [v4 setSequenceIndex:self->_nextLoadedItemEntrySequenceIndex++];

  return v4;
}

- (id)_debugLoadAndPrintAllRemainingItems
{
  v3 = [[_UILibArchiveStreamingReader alloc] initForReadingArchivePath:self->_archivePath];
  v4 = [MEMORY[0x1E695DF70] array];
  [v3 open];
  v5 = [v3 _nextSimpleItemFromPendingQueueOrLibArchiveRead];
  if (v5)
  {
    v6 = v5;
    do
    {
      if ([v6 sequenceIndex] >= self->_nextLoadedItemEntrySequenceIndex)
      {
        [v4 addObject:v6];
      }

      v7 = [v3 _nextSimpleItemFromPendingQueueOrLibArchiveRead];

      v6 = v7;
    }

    while (v7);
  }

  [v3 close];
  NSLog(&cfstr_Remainingitems.isa, 0);

  return v4;
}

@end