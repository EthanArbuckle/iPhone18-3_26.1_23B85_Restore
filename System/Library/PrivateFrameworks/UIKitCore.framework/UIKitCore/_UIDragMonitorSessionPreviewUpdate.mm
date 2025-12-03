@interface _UIDragMonitorSessionPreviewUpdate
- (_UIDragMonitorSessionPreviewUpdate)initWithPreviewAndImageComponentUpdate:(id)update;
@end

@implementation _UIDragMonitorSessionPreviewUpdate

- (_UIDragMonitorSessionPreviewUpdate)initWithPreviewAndImageComponentUpdate:(id)update
{
  updateCopy = update;
  v12.receiver = self;
  v12.super_class = _UIDragMonitorSessionPreviewUpdate;
  v5 = [(_UIDragMonitorSessionPreviewUpdate *)&v12 init];
  if (v5)
  {
    v5->_index = [updateCopy index];
    v6 = [_UIDragMonitorSessionPreview alloc];
    imageComponent = [updateCopy imageComponent];
    preview = [updateCopy preview];
    v9 = [(_UIDragMonitorSessionPreview *)v6 initWithImageComponent:imageComponent preview:preview];
    preview = v5->_preview;
    v5->_preview = v9;

    v5->_isFromCurrentSession = [updateCopy isFromSource];
  }

  return v5;
}

@end