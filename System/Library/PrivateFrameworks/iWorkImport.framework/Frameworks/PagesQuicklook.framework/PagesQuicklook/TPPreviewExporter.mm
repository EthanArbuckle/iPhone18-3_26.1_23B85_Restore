@interface TPPreviewExporter
- (id)p_renderingExporterDelegate;
@end

@implementation TPPreviewExporter

- (id)p_renderingExporterDelegate
{
  v3 = objc_alloc(MEMORY[0x277D7FFC0]);
  v9 = objc_msgSend_initWithRenderingExporter_(v3, v4, v5, v6, v7, v8, self);

  return v9;
}

@end