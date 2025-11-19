@interface VUIActionARQLPreview
- (VUIActionARQLPreview)initWithContextData:(id)a3;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionARQLPreview

- (VUIActionARQLPreview)initWithContextData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VUIActionARQLPreview;
  v5 = [(VUIActionARQLPreview *)&v11 init];
  if (v5)
  {
    v6 = [v4 vui_stringForKey:@"previewURL"];
    previewURLString = v5->_previewURLString;
    v5->_previewURLString = v6;

    v8 = [v4 vui_stringForKey:@"shareURL"];
    shareURLString = v5->_shareURLString;
    v5->_shareURLString = v8;
  }

  return v5;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v5 = [MEMORY[0x1E695DFF8] URLWithString:{self->_previewURLString, a4}];
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