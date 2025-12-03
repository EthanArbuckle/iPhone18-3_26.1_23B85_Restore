@interface _UIDICPreviewItem
- (NSString)previewItemContentType;
- (NSURL)previewItemURLForDisplay;
- (void)dealloc;
- (void)setPreviewItemContentType:(id)type;
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
      localizedDescription = [v6 localizedDescription];
      NSLog(&cfstr_UnableToRemove.isa, localizedDescription);
    }
  }

  v8.receiver = self;
  v8.super_class = _UIDICPreviewItem;
  [(_UIDICPreviewItem *)&v8 dealloc];
}

- (void)setPreviewItemContentType:(id)type
{
  if (self->_previewItemContentType != type)
  {
    v5 = [type copy];
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
    previewItemURL = [(_UIDICPreviewItem *)self previewItemURL];
    v5 = _UIQLPreviewUTIForURLAndMimeType(previewItemURL, 0);
  }

  return v5;
}

- (NSURL)previewItemURLForDisplay
{
  previewItemURLOverride = [(_UIDICPreviewItem *)self previewItemURLOverride];
  v4 = previewItemURLOverride;
  if (previewItemURLOverride)
  {
    previewItemURL = previewItemURLOverride;
  }

  else
  {
    previewItemURL = [(_UIDICPreviewItem *)self previewItemURL];
  }

  v6 = previewItemURL;

  return v6;
}

@end