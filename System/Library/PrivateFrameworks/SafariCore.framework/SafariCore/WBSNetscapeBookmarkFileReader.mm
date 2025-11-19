@interface WBSNetscapeBookmarkFileReader
+ (BOOL)looksLikeBookmarkFile:(id)a3;
+ (BOOL)looksLikeChromeBookmarksBarTitle:(id)a3;
+ (id)chromeBookmarksBarTitles;
- (BOOL)readFromFileHandle:(id)a3 error:(id *)a4;
- (BOOL)readFromURL:(id)a3 error:(id *)a4;
- (WBSNetscapeBookmarkFileReaderDelegate)delegate;
- (void)_handleDoctype:(id)a3;
- (void)_handleEndElement:(id)a3;
- (void)_handleStartElement:(id)a3 attributes:(id)a4;
- (void)_handleText:(id)a3;
@end

@implementation WBSNetscapeBookmarkFileReader

+ (BOOL)looksLikeBookmarkFile:(id)a3
{
  v3 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:a3 error:0];
  v4 = [v3 readDataOfLength:128];

  if ([v4 length])
  {
    v5 = memmem([v4 bytes], objc_msgSend(v4, "length"), objc_msgSend(@"NETSCAPE-Bookmark-file-1", "UTF8String"), objc_msgSend(@"NETSCAPE-Bookmark-file-1", "length")) != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)chromeBookmarksBarTitles
{
  if (+[WBSNetscapeBookmarkFileReader chromeBookmarksBarTitles]::onceToken != -1)
  {
    +[WBSNetscapeBookmarkFileReader chromeBookmarksBarTitles];
  }

  v3 = +[WBSNetscapeBookmarkFileReader chromeBookmarksBarTitles]::bookmarksBarTitles;

  return v3;
}

void __57__WBSNetscapeBookmarkFileReader_chromeBookmarksBarTitles__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F308E760];
  v1 = +[WBSNetscapeBookmarkFileReader chromeBookmarksBarTitles]::bookmarksBarTitles;
  +[WBSNetscapeBookmarkFileReader chromeBookmarksBarTitles]::bookmarksBarTitles = v0;
}

+ (BOOL)looksLikeChromeBookmarksBarTitle:(id)a3
{
  v4 = a3;
  v5 = [a1 chromeBookmarksBarTitles];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)readFromURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:a3 options:0 createMode:0 error:a4];
  if (v6)
  {
    v7 = [(WBSNetscapeBookmarkFileReader *)self readFromFileHandle:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)readFromFileHandle:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  sax = *byte_1F305FC30;
  v7 = htmlCreatePushParserCtxt(&sax, self, 0, 0, 0, XML_CHAR_ENCODING_NONE);
  v8 = v7;
  if (v7)
  {
    htmlCtxtUseOptions(v7, 2112);
    error = self->_error;
    p_error = &self->_error;
    *p_error = 0;

    do
    {
      if (*p_error)
      {
        break;
      }

      v11 = objc_autoreleasePoolPush();
      v21 = 0;
      v12 = [v6 readDataUpToLength:4096 error:&v21];
      v13 = v21;
      v14 = v21;
      v15 = [v12 length];
      if (v15)
      {
        v16 = v12;
        htmlParseChunk(v8, [v12 bytes], objc_msgSend(v12, "length"), 0);
      }

      else
      {
        htmlParseChunk(v8, 0, 0, 1);
        objc_storeStrong(p_error, v13);
      }

      objc_autoreleasePoolPop(v11);
    }

    while (v15);
    xmlFreeParserCtxt(v8);
    if (a4)
    {
      *a4 = *p_error;
    }

    LOBYTE(a4) = *p_error == 0;
  }

  else if (a4)
  {
    v17 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"Failed to create parser context";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *a4 = [v17 errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:v18];

    LOBYTE(a4) = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return a4;
}

- (void)_handleDoctype:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 caseInsensitiveCompare:@"NETSCAPE-Bookmark-file-1"])
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid document type. Expected 'NETSCAPE-Bookmark-file-1'. Got '%@'", v4, *MEMORY[0x1E696A578]];
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v5 errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v7];
    error = self->_error;
    self->_error = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleStartElement:(id)a3 attributes:(id)a4
{
  v22 = a3;
  v6 = a4;
  if ([v22 isEqualToString:@"h3"])
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    accumulatedText = self->_accumulatedText;
    self->_accumulatedText = v7;

    v9 = [v6 objectForKeyedSubscript:@"id"];
    bookmarkListIdentifier = self->_bookmarkListIdentifier;
    self->_bookmarkListIdentifier = v9;
  }

  else if ([v22 isEqualToString:@"h1"])
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
    bookmarkListIdentifier = self->_accumulatedText;
    self->_accumulatedText = v11;
  }

  else if ([v22 isEqualToString:@"dl"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained beginAddingFolder:self->_bookmarkListTitle identifier:self->_bookmarkListIdentifier];

    bookmarkListTitle = self->_bookmarkListTitle;
    self->_bookmarkListTitle = 0;

    bookmarkListIdentifier = self->_bookmarkListIdentifier;
    self->_bookmarkListIdentifier = 0;
  }

  else
  {
    if (![v22 isEqualToString:@"a"])
    {
      goto LABEL_13;
    }

    v14 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v15 = self->_accumulatedText;
    self->_accumulatedText = v14;

    v16 = [v6 objectForKeyedSubscript:@"href"];
    bookmarkLeafURL = self->_bookmarkLeafURL;
    self->_bookmarkLeafURL = v16;

    bookmarkListIdentifier = [v6 objectForKeyedSubscript:@"last_visit"];
    if (bookmarkListIdentifier)
    {
      v18 = MEMORY[0x1E695DF00];
      v19 = [v6 objectForKeyedSubscript:@"last_visit"];
      [v19 doubleValue];
      v20 = [v18 dateWithTimeIntervalSince1970:?];
      dateOfLastVisitOfReadingListItem = self->_dateOfLastVisitOfReadingListItem;
      self->_dateOfLastVisitOfReadingListItem = v20;
    }

    else
    {
      v19 = self->_dateOfLastVisitOfReadingListItem;
      self->_dateOfLastVisitOfReadingListItem = 0;
    }
  }

LABEL_13:
}

- (void)_handleEndElement:(id)a3
{
  v9 = a3;
  if ([v9 isEqualToString:@"h3"])
  {
    objc_storeStrong(&self->_bookmarkListTitle, self->_accumulatedText);
LABEL_3:
    accumulatedText = self->_accumulatedText;
    self->_accumulatedText = 0;
    goto LABEL_4;
  }

  if ([v9 isEqualToString:@"h1"])
  {
    if ([(NSMutableString *)self->_accumulatedText isEqualToString:@"Reading List"])
    {
      bookmarkListIdentifier = self->_bookmarkListIdentifier;
      self->_bookmarkListIdentifier = @"com.apple.ReadingList";
    }

    goto LABEL_3;
  }

  accumulatedText = objc_loadWeakRetained(&self->_delegate);
  if ([v9 isEqualToString:@"dl"])
  {
    [accumulatedText endAddingFolder];
  }

  else if ([v9 isEqualToString:@"a"])
  {
    [accumulatedText appendBookmarkWithTitle:self->_accumulatedText urlString:self->_bookmarkLeafURL dateOfLastVisitIfReadingListItem:self->_dateOfLastVisitOfReadingListItem];
    v6 = self->_accumulatedText;
    self->_accumulatedText = 0;

    bookmarkLeafURL = self->_bookmarkLeafURL;
    self->_bookmarkLeafURL = 0;

    dateOfLastVisitOfReadingListItem = self->_dateOfLastVisitOfReadingListItem;
    self->_dateOfLastVisitOfReadingListItem = 0;
  }

LABEL_4:
}

- (void)_handleText:(id)a3
{
  v5 = a3;
  accumulatedText = self->_accumulatedText;
  if (accumulatedText)
  {
    [(NSMutableString *)accumulatedText appendString:v5];
  }
}

- (WBSNetscapeBookmarkFileReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end