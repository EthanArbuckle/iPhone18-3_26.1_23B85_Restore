@interface TNPreviewExporter
- (CGRect)clipRect;
- (CGRect)unscaledClipRect;
- (TNPreviewExporter)initWithDocumentRoot:(id)a3;
- (id)p_renderingExporterDelegate;
@end

@implementation TNPreviewExporter

- (id)p_renderingExporterDelegate
{
  v3 = objc_alloc(MEMORY[0x277D7FFC0]);
  v5 = objc_msgSend_initWithRenderingExporter_(v3, v4, self);

  return v5;
}

- (CGRect)unscaledClipRect
{
  v39.receiver = self;
  v39.super_class = TNPreviewExporter;
  [(TNRenderingExporter *)&v39 unscaledClipRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_msgSend_clipRect(self, v11, v12);
  if (v15 != 0.0)
  {
    objc_msgSend_clipRect(self, v13, v14);
    if (v18 != 0.0)
    {
      objc_msgSend_clipRect(self, v16, v17);
      if (v21 == 0.0 && (objc_msgSend_clipRect(self, v19, v20), v22 == 0.0))
      {
        objc_msgSend_clipRect(self, v19, v20);
        if (v25 < v8)
        {
          v8 = v25;
        }

        objc_msgSend_clipRect(self, v23, v24);
        if (v26 < v10)
        {
          v10 = v26;
        }
      }

      else
      {
        objc_msgSend_clipRect(self, v19, v20);
        v4 = v4 + v27;
        objc_msgSend_clipRect(self, v28, v29);
        v6 = v6 + v30;
        objc_msgSend_clipRect(self, v31, v32);
        v8 = v33;
        v10 = v34;
      }
    }
  }

  v35 = v4;
  v36 = v6;
  v37 = v8;
  v38 = v10;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (TNPreviewExporter)initWithDocumentRoot:(id)a3
{
  v4.receiver = self;
  v4.super_class = TNPreviewExporter;
  result = [(TNRenderingExporter *)&v4 initWithDocumentRoot:a3];
  if (result)
  {
    *(&result->super.super.super.isa + *MEMORY[0x277D7FFF8]) = 0;
  }

  return result;
}

- (CGRect)clipRect
{
  x = self->mClipRect.origin.x;
  y = self->mClipRect.origin.y;
  width = self->mClipRect.size.width;
  height = self->mClipRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end