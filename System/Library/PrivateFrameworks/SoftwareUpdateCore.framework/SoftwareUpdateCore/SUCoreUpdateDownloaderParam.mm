@interface SUCoreUpdateDownloaderParam
- (SUCoreUpdateDownloaderParam)init;
- (SUCoreUpdateDownloaderParam)initWithError:(id)error;
- (SUCoreUpdateDownloaderParam)initWithNote:(id)note;
- (SUCoreUpdateDownloaderParam)initWithProgress:(id)progress;
- (id)description;
@end

@implementation SUCoreUpdateDownloaderParam

- (SUCoreUpdateDownloaderParam)initWithProgress:(id)progress
{
  progressCopy = progress;
  v9.receiver = self;
  v9.super_class = SUCoreUpdateDownloaderParam;
  v6 = [(SUCoreUpdateDownloaderParam *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progress, progress);
    v7->_type = 1;
  }

  return v7;
}

- (SUCoreUpdateDownloaderParam)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = SUCoreUpdateDownloaderParam;
  v6 = [(SUCoreUpdateDownloaderParam *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
    v7->_type = 2;
  }

  return v7;
}

- (SUCoreUpdateDownloaderParam)initWithNote:(id)note
{
  noteCopy = note;
  v9.receiver = self;
  v9.super_class = SUCoreUpdateDownloaderParam;
  v6 = [(SUCoreUpdateDownloaderParam *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_note, note);
    v7->_type = 3;
  }

  return v7;
}

- (SUCoreUpdateDownloaderParam)init
{
  v3.receiver = self;
  v3.super_class = SUCoreUpdateDownloaderParam;
  result = [(SUCoreUpdateDownloaderParam *)&v3 init];
  if (result)
  {
    result->_type = 0;
  }

  return result;
}

- (id)description
{
  type = self->_type;
  v3 = MEMORY[0x277CCACA8];
  switch(type)
  {
    case 3:
      note = [(SUCoreUpdateDownloaderParam *)self note];
      [v3 stringWithFormat:@"\n[>>>\n    note: %@\n<<<]", note];
      goto LABEL_7;
    case 2:
      note = [(SUCoreUpdateDownloaderParam *)self error];
      [v3 stringWithFormat:@"\n[>>>\n    error: %@\n<<<]", note];
      v6 = LABEL_7:;
      goto LABEL_8;
    case 1:
      note = [(SUCoreUpdateDownloaderParam *)self progress];
      summary = [note summary];
      v6 = [v3 stringWithFormat:@"\n[>>>\n    progress: %@\n<<<]", summary];

LABEL_8:
      goto LABEL_10;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"NO_INFO[%d]", self->_type];
LABEL_10:

  return v6;
}

@end