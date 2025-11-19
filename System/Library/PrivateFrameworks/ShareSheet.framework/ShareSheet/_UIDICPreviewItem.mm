@interface _UIDICPreviewItem
- (NSString)previewItemContentType;
- (NSURL)previewItemURLForDisplay;
- (void)dealloc;
- (void)setPreviewItemContentType:(id)a3;
@end

@implementation _UIDICPreviewItem

- (void)dealloc
{
  if (self->_URLToDeleteOnDealloc)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
    URLToDeleteOnDealloc = self->_URLToDeleteOnDealloc;
    v9 = 0;
    v5 = [v3 removeItemAtURL:URLToDeleteOnDealloc error:&v9];
    v6 = v9;

    if ((v5 & 1) == 0 && v6)
    {
      v7 = [v6 localizedDescription];
      NSLog(&cfstr_UnableToRemove.isa, v7);
    }
  }

  v8.receiver = self;
  v8.super_class = _UIDICPreviewItem;
  [(_UIDICPreviewItem *)&v8 dealloc];
}

- (void)setPreviewItemContentType:(id)a3
{
  if (self->_previewItemContentType != a3)
  {
    v5 = [a3 copy];
    previewItemContentType = self->_previewItemContentType;
    self->_previewItemContentType = v5;
  }
}

- (NSString)previewItemContentType
{
  v3 = [(NSString *)self->_previewItemContentType copy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_UIDICPreviewItem *)self previewItemURL];
    v5 = _UIQLPreviewUTIForURLAndMimeType(v6, 0);
  }

  return v5;
}

- (NSURL)previewItemURLForDisplay
{
  v3 = [(_UIDICPreviewItem *)self previewItemURLOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UIDICPreviewItem *)self previewItemURL];
  }

  v6 = v5;

  return v6;
}

@end