@interface SUCoreUpdateDownloaderParam
- (SUCoreUpdateDownloaderParam)init;
- (SUCoreUpdateDownloaderParam)initWithError:(id)a3;
- (SUCoreUpdateDownloaderParam)initWithNote:(id)a3;
- (SUCoreUpdateDownloaderParam)initWithProgress:(id)a3;
- (id)description;
@end

@implementation SUCoreUpdateDownloaderParam

- (SUCoreUpdateDownloaderParam)initWithProgress:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUCoreUpdateDownloaderParam;
  v6 = [(SUCoreUpdateDownloaderParam *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progress, a3);
    v7->_type = 1;
  }

  return v7;
}

- (SUCoreUpdateDownloaderParam)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUCoreUpdateDownloaderParam;
  v6 = [(SUCoreUpdateDownloaderParam *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
    v7->_type = 2;
  }

  return v7;
}

- (SUCoreUpdateDownloaderParam)initWithNote:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUCoreUpdateDownloaderParam;
  v6 = [(SUCoreUpdateDownloaderParam *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_note, a3);
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
      v4 = [(SUCoreUpdateDownloaderParam *)self note];
      [v3 stringWithFormat:@"\n[>>>\n    note: %@\n<<<]", v4];
      goto LABEL_7;
    case 2:
      v4 = [(SUCoreUpdateDownloaderParam *)self error];
      [v3 stringWithFormat:@"\n[>>>\n    error: %@\n<<<]", v4];
      v6 = LABEL_7:;
      goto LABEL_8;
    case 1:
      v4 = [(SUCoreUpdateDownloaderParam *)self progress];
      v5 = [v4 summary];
      v6 = [v3 stringWithFormat:@"\n[>>>\n    progress: %@\n<<<]", v5];

LABEL_8:
      goto LABEL_10;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"NO_INFO[%d]", self->_type];
LABEL_10:

  return v6;
}

@end