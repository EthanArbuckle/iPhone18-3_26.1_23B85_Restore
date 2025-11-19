@interface KNPreviewExporter
- (id)p_renderingExporterDelegate;
- (void)setup;
@end

@implementation KNPreviewExporter

- (id)p_renderingExporterDelegate
{
  v3 = objc_alloc(MEMORY[0x277D7FFC0]);
  v5 = objc_msgSend_initWithRenderingExporter_(v3, v4, self);

  return v5;
}

- (void)setup
{
  v7.receiver = self;
  v7.super_class = KNPreviewExporter;
  [(KNSlideExporter *)&v7 setup];
  objc_msgSend_setPrintingBackgrounds_(self, v3, 1);
  objc_msgSend_setPrintingBuilds_(self, v4, 0);
  objc_msgSend_setPrintingBorders_(self, v5, 0);
  objc_msgSend_setPrintingSlideNumbers_(self, v6, 0);
}

@end