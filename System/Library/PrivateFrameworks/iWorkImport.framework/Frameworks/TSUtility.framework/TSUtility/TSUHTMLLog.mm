@interface TSUHTMLLog
- (TSUHTMLLog)initWithPath:(id)a3;
- (id)uniqueIdentifierWithPrefix:(id)a3;
- (void)_writeMarkupData:(id)a3;
- (void)dealloc;
- (void)logBegin;
@end

@implementation TSUHTMLLog

- (TSUHTMLLog)initWithPath:(id)a3
{
  v10.receiver = self;
  v10.super_class = TSUHTMLLog;
  v4 = [(TSUHTMLLog *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [a3 copy];
    v4->_path = v6;
    v7 = [(NSString *)v6 stringByDeletingLastPathComponent];
    if ([v5 fileExistsAtPath:v4->_path])
    {
      [v5 removeItemAtPath:v4->_path error:0];
    }

    if (([v5 fileExistsAtPath:v7] & 1) == 0)
    {
      [v5 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
    }

    [v5 createFileAtPath:v4->_path contents:objc_msgSend(MEMORY[0x277CBEA90] attributes:{"data"), 0}];
    v8 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v4->_path];
    v4->_handle = v8;
    if (v8)
    {
      NSLog(@"Opened log at path %@", v4->_path);
    }

    else
    {
      NSLog(@"Failed to open log at path %@", v4->_path);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUHTMLLog;
  [(TSUHTMLLog *)&v3 dealloc];
}

- (id)uniqueIdentifierWithPrefix:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  uniquifier = self->_uniquifier;
  self->_uniquifier = uniquifier + 1;
  return [v3 stringWithFormat:@"%@-%tu", a3, uniquifier];
}

- (void)_writeMarkupData:(id)a3
{
  if (!self->_logStarted)
  {
    self->_logStarted = 1;
    [(TSUHTMLLog *)self logBegin];
  }

  v5 = [a3 UTF8String];
  -[NSFileHandle writeData:](self->_handle, "writeData:", [MEMORY[0x277CBEA90] dataWithBytes:v5 length:strlen(v5)]);
  handle = self->_handle;

  MEMORY[0x2821F9670](handle, sel_synchronizeFile);
}

- (void)logBegin
{
  self->_logStarted = 1;
  [(TSUHTMLLog *)self clear];
  [(TSUHTMLLog *)self writeMarkup:@"<html>\n"];
  [(TSUHTMLLog *)self writeMarkup:@"<head>\n"];
  [(TSUHTMLLog *)self writeMarkup:@"<meta charset='UTF-8'/>\n"];
  if ([(TSUHTMLLog *)self title])
  {
    [(TSUHTMLLog *)self writeMarkup:@"<title>%@</title>", [(TSUHTMLLog *)self title]];
  }

  if ([(TSUHTMLLog *)self script])
  {
    [(TSUHTMLLog *)self writeMarkup:@"<script language='javascript'>\n%@\n</script>", [(TSUHTMLLog *)self script]];
  }

  if ([(TSUHTMLLog *)self stylesheet])
  {
    [(TSUHTMLLog *)self writeMarkup:@"<style type='text/css'>\n<!--\n%@\n-->\n</style>", [(TSUHTMLLog *)self stylesheet]];
  }

  [(TSUHTMLLog *)self writeMarkup:@"</head>\n"];

  [(TSUHTMLLog *)self writeMarkup:@"<body>\n"];
}

@end