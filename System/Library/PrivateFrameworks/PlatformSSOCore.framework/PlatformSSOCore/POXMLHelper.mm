@interface POXMLHelper
+ (id)loadXMLDocument:(id)a3;
@end

@implementation POXMLHelper

+ (id)loadXMLDocument:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(POXMLContext);
  v5 = [v3 bytes];
  v6 = [v3 length];

  [(POXMLContext *)v4 setXmldoc:xmlParseMemory(v5, v6)];
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