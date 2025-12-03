@interface WFTreeHTMLStripper
+ (id)treeStripperWithData:(id)data;
+ (id)treeStripperWithString:(id)string;
- (WFTreeHTMLStripper)initWithData:(id)data;
- (WFTreeHTMLStripper)initWithString:(id)string;
- (void)dealloc;
@end

@implementation WFTreeHTMLStripper

+ (id)treeStripperWithData:(id)data
{
  v3 = [objc_alloc(objc_opt_class()) initWithData:data];

  return v3;
}

+ (id)treeStripperWithString:(id)string
{
  v3 = [objc_alloc(objc_opt_class()) initWithString:string];

  return v3;
}

- (WFTreeHTMLStripper)initWithData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  if (data)
  {
    bytes = [data bytes];
    v6 = [data length];
    v7 = _NSHTMLEncoding([data bytes], objc_msgSend(data, "length"));
    if (v7)
    {
      v8 = CFStringConvertNSStringEncodingToEncoding(v7);
      v9 = CFStringConvertEncodingToIANACharSetName(v8);
      if (CFStringGetCString(v9, buffer, 32, 0x600u))
      {
        v10 = buffer;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    Memory = htmlReadMemory(bytes, v6, 0, v10, 97);
    if (!Memory)
    {
      v12 = __WFDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [WFTreeHTMLStripper initWithData:v12];
      }
    }
  }

  else
  {
    Memory = 0;
  }

  v15.receiver = self;
  v15.super_class = WFTreeHTMLStripper;
  result = [(WFTreeXMLDocumentStripper *)&v15 initWithXMLDocument:Memory];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (WFTreeHTMLStripper)initWithString:(id)string
{
  v4 = [string dataUsingEncoding:4];

  return [(WFTreeHTMLStripper *)self initWithData:v4];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WFTreeHTMLStripper;
  [(WFTreeXMLDocumentStripper *)&v2 dealloc];
}

- (void)initWithData:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "[WFTreeHTMLStripper initWithData:]";
  _os_log_error_impl(&dword_272D73000, log, OS_LOG_TYPE_ERROR, "**** %{public}s, error reading html data", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end