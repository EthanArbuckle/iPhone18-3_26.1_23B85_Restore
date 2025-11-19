@interface KNPdfExporter
- (id)p_renderingExporterDelegate;
@end

@implementation KNPdfExporter

- (id)p_renderingExporterDelegate
{
  v3 = objc_alloc(MEMORY[0x277D7FFC8]);
  v5 = objc_msgSend_initWithRenderingExporter_(v3, v4, self);

  return v5;
}

@end