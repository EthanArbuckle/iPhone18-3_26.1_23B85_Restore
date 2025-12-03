@interface VUIActionARQLPreview
- (VUIActionARQLPreview)initWithContextData:(id)data;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionARQLPreview

- (VUIActionARQLPreview)initWithContextData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = VUIActionARQLPreview;
  v5 = [(VUIActionARQLPreview *)&v11 init];
  if (v5)
  {
    v6 = [dataCopy vui_stringForKey:@"previewURL"];
    previewURLString = v5->_previewURLString;
    v5->_previewURLString = v6;

    v8 = [dataCopy vui_stringForKey:@"shareURL"];
    shareURLString = v5->_shareURLString;
    v5->_shareURLString = v8;
  }

  return v5;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  v5 = [MEMORY[0x1E695DFF8] URLWithString:{self->_previewURLString, handler}];
  if (v5)
  {
    v8 = v5;
    v6 = [MEMORY[0x1E695DFF8] URLWithString:self->_shareURLString];
    v7 = +[VUIARQLPreviewManager sharedInstance];
    [v7 previewWithURL:v8 shareURL:v6];

    v5 = v8;
  }
}

@end