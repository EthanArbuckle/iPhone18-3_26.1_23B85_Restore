@interface WBSNetscapeBookmarkFileReader
+ (BOOL)looksLikeBookmarkFile:(id)file;
+ (BOOL)looksLikeChromeBookmarksBarTitle:(id)title;
+ (id)chromeBookmarksBarTitles;
- (BOOL)readFromFileHandle:(id)handle error:(id *)error;
- (BOOL)readFromURL:(id)l error:(id *)error;
- (WBSNetscapeBookmarkFileReaderDelegate)delegate;
- (void)_handleDoctype:(id)doctype;
- (void)_handleEndElement:(id)element;
- (void)_handleStartElement:(id)element attributes:(id)attributes;
- (void)_handleText:(id)text;
@end

@implementation WBSNetscapeBookmarkFileReader

+ (BOOL)looksLikeBookmarkFile:(id)file
{
  v3 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:file error:0];
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

+ (BOOL)looksLikeChromeBookmarksBarTitle:(id)title
{
  titleCopy = title;
  chromeBookmarksBarTitles = [self chromeBookmarksBarTitles];
  v6 = [chromeBookmarksBarTitles containsObject:titleCopy];

  return v6;
}

- (BOOL)readFromURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:l options:0 createMode:0 error:error];
  if (v6)
  {
    v7 = [(WBSNetscapeBookmarkFileReader *)self readFromFileHandle:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)readFromFileHandle:(id)handle error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
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
      v12 = [handleCopy readDataUpToLength:4096 error:&v21];
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
    if (error)
    {
      *error = *p_error;
    }

    LOBYTE(error) = *p_error == 0;
  }

  else if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"Failed to create parser context";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *error = [v17 errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:v18];

    LOBYTE(error) = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return error;
}

- (void)_handleDoctype:(id)doctype
{
  v12[1] = *MEMORY[0x1E69E9840];
  doctypeCopy = doctype;
  if ([doctypeCopy caseInsensitiveCompare:@"NETSCAPE-Bookmark-file-1"])
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid document type. Expected 'NETSCAPE-Bookmark-file-1'. Got '%@'", doctypeCopy, *MEMORY[0x1E696A578]];
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v5 errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v7];
    error = self->_error;
    self->_error = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleStartElement:(id)element attributes:(id)attributes
{
  elementCopy = element;
  attributesCopy = attributes;
  if ([elementCopy isEqualToString:@"h3"])
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    accumulatedText = self->_accumulatedText;
    self->_accumulatedText = v7;

    v9 = [attributesCopy objectForKeyedSubscript:@"id"];
    bookmarkListIdentifier = self->_bookmarkListIdentifier;
    self->_bookmarkListIdentifier = v9;
  }

  else if ([elementCopy isEqualToString:@"h1"])
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
    bookmarkListIdentifier = self->_accumulatedText;
    self->_accumulatedText = v11;
  }

  else if ([elementCopy isEqualToString:@"dl"])
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
    if (![elementCopy isEqualToString:@"a"])
    {
      goto LABEL_13;
    }

    v14 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v15 = self->_accumulatedText;
    self->_accumulatedText = v14;

    v16 = [attributesCopy objectForKeyedSubscript:@"href"];
    bookmarkLeafURL = self->_bookmarkLeafURL;
    self->_bookmarkLeafURL = v16;

    bookmarkListIdentifier = [attributesCopy objectForKeyedSubscript:@"last_visit"];
    if (bookmarkListIdentifier)
    {
      v18 = MEMORY[0x1E695DF00];
      v19 = [attributesCopy objectForKeyedSubscript:@"last_visit"];
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

- (void)_handleEndElement:(id)element
{
  elementCopy = element;
  if ([elementCopy isEqualToString:@"h3"])
  {
    objc_storeStrong(&self->_bookmarkListTitle, self->_accumulatedText);
LABEL_3:
    accumulatedText = self->_accumulatedText;
    self->_accumulatedText = 0;
    goto LABEL_4;
  }

  if ([elementCopy isEqualToString:@"h1"])
  {
    if ([(NSMutableString *)self->_accumulatedText isEqualToString:@"Reading List"])
    {
      bookmarkListIdentifier = self->_bookmarkListIdentifier;
      self->_bookmarkListIdentifier = @"com.apple.ReadingList";
    }

    goto LABEL_3;
  }

  accumulatedText = objc_loadWeakRetained(&self->_delegate);
  if ([elementCopy isEqualToString:@"dl"])
  {
    [accumulatedText endAddingFolder];
  }

  else if ([elementCopy isEqualToString:@"a"])
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

- (void)_handleText:(id)text
{
  textCopy = text;
  accumulatedText = self->_accumulatedText;
  if (accumulatedText)
  {
    [(NSMutableString *)accumulatedText appendString:textCopy];
  }
}

- (WBSNetscapeBookmarkFileReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end