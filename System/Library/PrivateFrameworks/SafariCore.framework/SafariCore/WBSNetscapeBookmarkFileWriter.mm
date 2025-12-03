@interface WBSNetscapeBookmarkFileWriter
- (BOOL)_writeString:(id)string error:(id *)error;
- (BOOL)appendURLString:(id)string title:(id)title dateOfLastVisitIfReadingListItem:(id)item error:(id *)error;
- (BOOL)closeFolderWithError:(id *)error;
- (BOOL)openFolder:(id)folder identifier:(id)identifier error:(id *)error;
- (WBSNetscapeBookmarkFileWriter)initWithFileHandle:(id)handle error:(id *)error;
- (WBSNetscapeBookmarkFileWriter)initWithURL:(id)l error:(id *)error;
@end

@implementation WBSNetscapeBookmarkFileWriter

- (WBSNetscapeBookmarkFileWriter)initWithURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:l options:1537 createMode:416 error:error];
  if (v6)
  {
    self = [(WBSNetscapeBookmarkFileWriter *)self initWithFileHandle:v6 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WBSNetscapeBookmarkFileWriter)initWithFileHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  v25.receiver = self;
  v25.super_class = WBSNetscapeBookmarkFileWriter;
  v8 = [(WBSNetscapeBookmarkFileWriter *)&v25 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&v8->_fileHandle, handle);
  v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
  indentation = v9->_indentation;
  v9->_indentation = v10;

  if (![(WBSNetscapeBookmarkFileWriter *)v9 _writeString:@"<!DOCTYPE NETSCAPE-Bookmark-file-1>\n" error:error])
  {
    goto LABEL_11;
  }

  v12 = MEMORY[0x1E695DF58];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageCode = [currentLocale languageCode];
  v15 = [v12 characterDirectionForLanguage:languageCode];

  v16 = v15 == 2 ? @"<HTML dir=rtl>\n" : @"<HTML>\n";
  if ([(WBSNetscapeBookmarkFileWriter *)v9 _writeString:v16 error:error]&& [(WBSNetscapeBookmarkFileWriter *)v9 _writeString:@"<META HTTP-EQUIV=Content-Type CONTENT=text/html; charset=UTF-8>\n" error:error])
  {
    v17 = _WBSLocalizedString(@"Bookmarks (exported bookmarks HTML title)", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<TITLE>%@</TITLE>\n", v17];
    v19 = [(WBSNetscapeBookmarkFileWriter *)v9 _writeString:v18 error:error];

    if (v19)
    {
      v20 = _WBSLocalizedString(@"Bookmarks (exported bookmarks displayed title)", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<H1>%@</H1>\n", v20];
      v22 = [(WBSNetscapeBookmarkFileWriter *)v9 _writeString:v21 error:error];

      if (v22)
      {
        v23 = v9;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
LABEL_11:
    v23 = 0;
  }

  return v23;
}

- (BOOL)openFolder:(id)folder identifier:(id)identifier error:(id *)error
{
  folderCopy = folder;
  identifierCopy = identifier;
  if (folderCopy)
  {
    if (![(WBSNetscapeBookmarkFileWriter *)self _writeString:self->_indentation error:error])
    {
      goto LABEL_10;
    }

    if (![(WBSNetscapeBookmarkFileWriter *)self _writeString:@"<DT><H3" error:error])
    {
      goto LABEL_10;
    }

    if (identifierCopy)
    {
      identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@" id=%@", identifierCopy];
      v11 = [(WBSNetscapeBookmarkFileWriter *)self _writeString:identifierCopy error:error];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = escapeHTML(folderCopy);
    v14 = [v12 stringWithFormat:@">%@</H3>\n", v13];
    v15 = [(WBSNetscapeBookmarkFileWriter *)self _writeString:v14 error:error];

    if (!v15)
    {
      goto LABEL_10;
    }
  }

  if ([(WBSNetscapeBookmarkFileWriter *)self _writeString:self->_indentation error:error]&& [(WBSNetscapeBookmarkFileWriter *)self _writeString:@"<DL><p>\n" error:error])
  {
    [(NSMutableString *)self->_indentation appendString:@"\t"];
    v16 = 1;
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  return v16;
}

- (BOOL)appendURLString:(id)string title:(id)title dateOfLastVisitIfReadingListItem:(id)item error:(id *)error
{
  stringCopy = string;
  titleCopy = title;
  itemCopy = item;
  if ([(WBSNetscapeBookmarkFileWriter *)self _writeString:self->_indentation error:error])
  {
    v13 = MEMORY[0x1E696AEC0];
    if (itemCopy)
    {
      [itemCopy timeIntervalSince1970];
      v15 = v14;
      v16 = escapeHTML(titleCopy);
      [v13 stringWithFormat:@"<DT><A LAST_VISIT=%f HREF=%@>%@</A>\n", v15, stringCopy, v16];
    }

    else
    {
      v16 = escapeHTML(titleCopy);
      [v13 stringWithFormat:@"<DT><A HREF=%@>%@</A>\n", stringCopy, v16];
    }
    v17 = ;
    v18 = [(WBSNetscapeBookmarkFileWriter *)self _writeString:v17 error:error];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)closeFolderWithError:(id *)error
{
  if (![(NSMutableString *)self->_indentation length])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    }

    return 0;
  }

  [(NSMutableString *)self->_indentation deleteCharactersInRange:[(NSMutableString *)self->_indentation length]- 1, 1];
  if (![(WBSNetscapeBookmarkFileWriter *)self _writeString:self->_indentation error:error])
  {
    return 0;
  }

  return [(WBSNetscapeBookmarkFileWriter *)self _writeString:@"</DL><p>\n" error:error];
}

- (BOOL)_writeString:(id)string error:(id *)error
{
  v6 = [string dataUsingEncoding:4];
  LOBYTE(error) = [(WBSNetscapeBookmarkFileWriter *)self _writeData:v6 error:error];

  return error;
}

@end