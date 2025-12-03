@interface POXMLHelper
+ (id)loadXMLDocument:(id)document;
@end

@implementation POXMLHelper

+ (id)loadXMLDocument:(id)document
{
  documentCopy = document;
  v4 = objc_alloc_init(POXMLContext);
  bytes = [documentCopy bytes];
  v6 = [documentCopy length];

  [(POXMLContext *)v4 setXmldoc:xmlParseMemory(bytes, v6)];
  if ([(POXMLContext *)v4 xmldoc])
  {
    v7 = v4;
  }

  else
  {
    v8 = PO_LOG_POXMLHelper();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[POXMLHelper loadXMLDocument:];
    }

    v7 = 0;
  }

  return v7;
}

@end