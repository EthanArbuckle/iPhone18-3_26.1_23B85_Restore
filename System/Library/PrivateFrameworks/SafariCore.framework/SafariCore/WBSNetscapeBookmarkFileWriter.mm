@interface WBSNetscapeBookmarkFileWriter
- (BOOL)_writeString:(id)a3 error:(id *)a4;
- (BOOL)appendURLString:(id)a3 title:(id)a4 dateOfLastVisitIfReadingListItem:(id)a5 error:(id *)a6;
- (BOOL)closeFolderWithError:(id *)a3;
- (BOOL)openFolder:(id)a3 identifier:(id)a4 error:(id *)a5;
- (WBSNetscapeBookmarkFileWriter)initWithFileHandle:(id)a3 error:(id *)a4;
- (WBSNetscapeBookmarkFileWriter)initWithURL:(id)a3 error:(id *)a4;
@end

@implementation WBSNetscapeBookmarkFileWriter

- (WBSNetscapeBookmarkFileWriter)initWithURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:a3 options:1537 createMode:416 error:a4];
  if (v6)
  {
    self = [(WBSNetscapeBookmarkFileWriter *)self initWithFileHandle:v6 error:a4];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WBSNetscapeBookmarkFileWriter)initWithFileHandle:(id)a3 error:(id *)a4
{
  v7 = a3;
  v25.receiver = self;
  v25.super_class = WBSNetscapeBookmarkFileWriter;
  v8 = [(WBSNetscapeBookmarkFileWriter *)&v25 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&v8->_fileHandle, a3);
  v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
  indentation = v9->_indentation;
  v9->_indentation = v10;

  if (![(WBSNetscapeBookmarkFileWriter *)v9 _writeString:@"<!DOCTYPE NETSCAPE-Bookmark-file-1>\n" error:a4])
  {
    goto LABEL_11;
  }

  v12 = MEMORY[0x1E695DF58];
  v13 = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v13 languageCode];
  v15 = [v12 characterDirectionForLanguage:v14];

  v16 = v15 == 2 ? @"<HTML dir=rtl>\n" : @"<HTML>\n";
  if ([(WBSNetscapeBookmarkFileWriter *)v9 _writeString:v16 error:a4]&& [(WBSNetscapeBookmarkFileWriter *)v9 _writeString:@"<META HTTP-EQUIV=Content-Type CONTENT=text/html; charset=UTF-8>\n" error:a4])
  {
    v17 = _WBSLocalizedString(@"Bookmarks (exported bookmarks HTML title)", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<TITLE>%@</TITLE>\n", v17];
    v19 = [(WBSNetscapeBookmarkFileWriter *)v9 _writeString:v18 error:a4];

    if (v19)
    {
      v20 = _WBSLocalizedString(@"Bookmarks (exported bookmarks displayed title)", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<H1>%@</H1>\n", v20];
      v22 = [(WBSNetscapeBookmarkFileWriter *)v9 _writeString:v21 error:a4];

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

- (BOOL)openFolder:(id)a3 identifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    if (![(WBSNetscapeBookmarkFileWriter *)self _writeString:self->_indentation error:a5])
    {
      goto LABEL_10;
    }

    if (![(WBSNetscapeBookmarkFileWriter *)self _writeString:@"<DT><H3" error:a5])
    {
      goto LABEL_10;
    }

    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" id=%@", v9];
      v11 = [(WBSNetscapeBookmarkFileWriter *)self _writeString:v10 error:a5];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = escapeHTML(v8);
    v14 = [v12 stringWithFormat:@">%@</H3>\n", v13];
    v15 = [(WBSNetscapeBookmarkFileWriter *)self _writeString:v14 error:a5];

    if (!v15)
    {
      goto LABEL_10;
    }
  }

  if ([(WBSNetscapeBookmarkFileWriter *)self _writeString:self->_indentation error:a5]&& [(WBSNetscapeBookmarkFileWriter *)self _writeString:@"<DL><p>\n" error:a5])
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

- (BOOL)appendURLString:(id)a3 title:(id)a4 dateOfLastVisitIfReadingListItem:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(WBSNetscapeBookmarkFileWriter *)self _writeString:self->_indentation error:a6])
  {
    v13 = MEMORY[0x1E696AEC0];
    if (v12)
    {
      [v12 timeIntervalSince1970];
      v15 = v14;
      v16 = escapeHTML(v11);
      [v13 stringWithFormat:@"<DT><A LAST_VISIT=%f HREF=%@>%@</A>\n", v15, v10, v16];
    }

    else
    {
      v16 = escapeHTML(v11);
      [v13 stringWithFormat:@"<DT><A HREF=%@>%@</A>\n", v10, v16];
    }
    v17 = ;
    v18 = [(WBSNetscapeBookmarkFileWriter *)self _writeString:v17 error:a6];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)closeFolderWithError:(id *)a3
{
  if (![(NSMutableString *)self->_indentation length])
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    }

    return 0;
  }

  [(NSMutableString *)self->_indentation deleteCharactersInRange:[(NSMutableString *)self->_indentation length]- 1, 1];
  if (![(WBSNetscapeBookmarkFileWriter *)self _writeString:self->_indentation error:a3])
  {
    return 0;
  }

  return [(WBSNetscapeBookmarkFileWriter *)self _writeString:@"</DL><p>\n" error:a3];
}

- (BOOL)_writeString:(id)a3 error:(id *)a4
{
  v6 = [a3 dataUsingEncoding:4];
  LOBYTE(a4) = [(WBSNetscapeBookmarkFileWriter *)self _writeData:v6 error:a4];

  return a4;
}

@end