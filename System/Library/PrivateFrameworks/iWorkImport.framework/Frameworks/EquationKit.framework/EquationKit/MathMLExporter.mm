@interface MathMLExporter
- (MathMLExporter)init;
- (id)exportDataForEquation:(id)a3;
@end

@implementation MathMLExporter

- (MathMLExporter)init
{
  v3.receiver = self;
  v3.super_class = MathMLExporter;
  return [(MathMLExporter *)&v3 init];
}

- (id)exportDataForEquation:(id)a3
{
  v4 = xmlBufferCreate();
  v5 = xmlNewTextWriterMemory(v4, 0);
  v7 = objc_msgSend_exportToXMLWriter_ns_prefix_characterCount_(a3, v6, v5, "http://www.w3.org/1998/Math/MathML", "m", 0);
  v8 = 0;
  if (v7)
  {
    xmlTextWriterFlush(v5);
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = xmlBufferContent(v4);
    v11 = xmlBufferLength(v4);
    v8 = objc_msgSend_initWithBytes_length_(v9, v12, v10, v11);
  }

  xmlFreeTextWriter(v5);
  xmlBufferFree(v4);
  return v8;
}

@end