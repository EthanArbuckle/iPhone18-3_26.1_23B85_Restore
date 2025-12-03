@interface NSTextAttachment
+ (Class)textAttachmentClassForFileType:(id)type;
+ (Class)textAttachmentViewProviderClassForFileType:(NSString *)fileType;
+ (id)imageCache;
+ (void)initialize;
+ (void)registerTextAttachmentClass:(Class)class forFileType:(id)type;
+ (void)registerTextAttachmentViewProviderClass:(Class)textAttachmentViewProviderClass forFileType:(NSString *)fileType;
- (BOOL)usesTextAttachmentView;
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (CGRect)bounds;
- (Class)textAttachmentViewProviderClass;
- (NSData)contents;
- (NSFileWrapper)fileWrapper;
- (NSString)description;
- (NSTextAttachment)initWithCoder:(id)coder;
- (NSTextAttachment)initWithData:(NSData *)contentData ofType:(NSString *)uti;
- (NSTextAttachment)initWithFileWrapper:(NSFileWrapper *)fileWrapper;
- (UIImage)image;
- (id)_cacheKey;
- (id)_image;
- (id)_imageForUTType_iOS:(id)s;
- (id)adaptiveImageGlyph;
- (id)attachmentCell;
- (id)imageForBounds:(CGRect)bounds attributes:(id)attributes location:(id)location textContainer:(id)container;
- (id)viewProviderForParentView:(id)view characterIndex:(unint64_t)index layoutManager:(id)manager;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
- (int64_t)_characterIndexForLocation:(id)location textContainer:(id)container;
- (void)_drawInAlignedRect:(CGRect)rect attributes:(id)attributes location:(id)location textContainer:(id)container applicationFrameworkContext:(int64_t)context;
- (void)_invalidateWrapperView;
- (void)_setAllocatesTextContainer:(BOOL)container;
- (void)_setupAPIPreferences;
- (void)_showAttachmentCell_iOS:(id)s inRect:(CGRect)rect characterIndex:(unint64_t)index;
- (void)_showWithBounds:(CGRect)bounds attributes:(__CFDictionary *)attributes runRange:(id)range textLayoutFragment:(id)fragment inContext:(CGContext *)context;
- (void)_showWithBounds:(CGRect)bounds attributes:(id)attributes location:(id)location textContainer:(id)container applicationFrameworkContext:(int64_t)context acceptsViewProvider:(BOOL)provider;
- (void)dealloc;
- (void)detachView:(id)view fromParentView:(id)parentView;
- (void)encodeWithCoder:(id)coder;
- (void)placeView:(id)view withFrame:(CGRect)frame inParentView:(id)parentView characterIndex:(unint64_t)index layoutManager:(id)manager;
- (void)placeView:(id)view withFrame:(CGRect)frame inParentView:(id)parentView location:(id)location textContainer:(id)container applicationFrameworkContext:(int64_t)context;
- (void)setAllowsEditingContents:(BOOL)contents;
- (void)setAllowsTextAttachmentView:(BOOL)allowsTextAttachmentView;
- (void)setAttachmentCell:(id)attachmentCell;
- (void)setContentView:(id)view;
- (void)setContents:(NSData *)contents;
- (void)setEmbeddingType:(int64_t)type;
- (void)setFileType:(NSString *)fileType;
- (void)setFileWrapper:(NSFileWrapper *)fileWrapper;
- (void)setIgnoresOrientation:(BOOL)orientation;
- (void)setImage:(UIImage *)image;
- (void)setStandaloneAlignment:(int64_t)alignment;
@end

@implementation NSTextAttachment

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __NSTextAttachmentAlwaysUsesAttachmentView = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  }
}

uint64_t __40__NSTextAttachment__setupAPIPreferences__block_invoke(uint64_t a1)
{
  _setupAPIPreferences_baseOldAttachmentBoundsAPI = [*(a1 + 32) instanceMethodForSelector:*(a1 + 40)];
  _setupAPIPreferences_baseNewAttachmentBoundsAPI = [*(a1 + 32) instanceMethodForSelector:*(a1 + 48)];
  _setupAPIPreferences_baseOldImageForAttachmentAPI = [*(a1 + 32) instanceMethodForSelector:*(a1 + 56)];
  _setupAPIPreferences_baseNewImageForAttachmentAPI = [*(a1 + 32) instanceMethodForSelector:*(a1 + 64)];
  _setupAPIPreferences_baseClassViewProviderMethod = [*(a1 + 32) instanceMethodForSelector:sel_viewProviderForParentView_location_textContainer_];
  result = [*(a1 + 32) instanceMethodForSelector:sel_viewProviderForParentView_characterIndex_layoutManager_];
  _setupAPIPreferences_baseClassOldViewProviderMethod = result;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)usesTextAttachmentView
{
  if ([(NSTextAttachment *)self textAttachmentViewProviderClass]|| [(NSTextAttachment *)self _hasTextAttachmentViewCell])
  {
    return 1;
  }

  return [(NSTextAttachment *)self allowsTextAttachmentView];
}

- (Class)textAttachmentViewProviderClass
{
  fileType = [(NSTextAttachment *)self fileType];
  if (![(NSTextAttachment *)self allowsTextAttachmentView]|| !fileType)
  {
    return 0;
  }

  v4 = objc_opt_class();

  return [v4 textAttachmentViewProviderClassForFileType:fileType];
}

- (id)_image
{
  image = [(NSTextAttachment *)self image];
  if (image)
  {
    return image;
  }

  v4 = +[NSTextAttachment imageCache];
  image = [v4 objectForKey:{-[NSTextAttachment _cacheKey](self, "_cacheKey")}];
  if (image)
  {
    return image;
  }

  v7 = _NSTextScalingTypeForCurrentEnvironment();
  if ([(UTType *)self->_uti conformsToType:*MEMORY[0x1E6982E30]]|| [(UTType *)self->_uti conformsToType:*MEMORY[0x1E6982F10]])
  {
    fileWrapperForContents = self->_fileWrapperForContents;
    if (fileWrapperForContents)
    {
      if ([(NSFileWrapper *)fileWrapperForContents isSymbolicLink])
      {
        regularFileContents = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:{-[NSFileWrapper symbolicLinkDestinationURL](self->_fileWrapperForContents, "symbolicLinkDestinationURL")}];
      }

      else
      {
        if (![(NSFileWrapper *)self->_fileWrapperForContents isRegularFile])
        {
          goto LABEL_19;
        }

        regularFileContents = [(NSFileWrapper *)self->_fileWrapperForContents regularFileContents];
      }

      data = regularFileContents;
      if (regularFileContents)
      {
        goto LABEL_15;
      }
    }

    else
    {
      data = self->_data;
      if (data)
      {
LABEL_15:
        v11 = &getNSImageClass;
        if (v7 != 2)
        {
          v11 = getUIImageClass_0;
        }

        v5 = [objc_alloc((*v11)()) initWithData:data];
        if (v5)
        {
          goto LABEL_31;
        }

        self->_fileWrapperForContents = 0;
        self->_data = 0;

        self->_uti = 0;
        goto LABEL_20;
      }
    }
  }

LABEL_19:
  if (self->_uti)
  {
    goto LABEL_30;
  }

LABEL_20:
  v12 = self->_fileWrapperForContents;
  if (!v12)
  {
    goto LABEL_26;
  }

  if ([(NSFileWrapper *)v12 isDirectory])
  {
    v13 = MEMORY[0x1E6982D80];
  }

  else
  {
    if (![(NSFileWrapper *)self->_fileWrapperForContents isSymbolicLink])
    {
      goto LABEL_26;
    }

    v13 = MEMORY[0x1E6982FF8];
  }

  if (*v13)
  {
    goto LABEL_30;
  }

LABEL_26:
  if (_image_onceToken != -1)
  {
    [NSTextAttachment _image];
  }

  v5 = 0;
  if ((_image_usesDefaultIcon & 1) == 0 && *MEMORY[0x1E6982D60])
  {
LABEL_30:
    v5 = [(NSTextAttachment *)self _imageForUTType_iOS:?];
    v14 = v5;
    if (!v5)
    {
      return v5;
    }

LABEL_31:
    [v4 setObject:v5 forKey:{-[NSTextAttachment _cacheKey](self, "_cacheKey")}];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_cacheKey)
  {
    [+[NSTextAttachment imageCache](NSTextAttachment "imageCache")];
  }

  wrapperView = self->_wrapperView;
  if (wrapperView)
  {
    [(NSTextAttachmentView *)wrapperView removeFromSuperview];
  }

  if ([(NSTextAttachmentCell *)self->_attachmentCell attachment]== self)
  {
    [(NSTextAttachmentCell *)self->_attachmentCell setAttachment:0];
  }

  v4.receiver = self;
  v4.super_class = NSTextAttachment;
  [(NSTextAttachment *)&v4 dealloc];
}

uint64_t __26__NSTextAttachment__image__block_invoke()
{
  result = _CFExecutableLinkedOnOrAfter();
  if (!result)
  {
    _image_usesDefaultIcon = 1;
  }

  return result;
}

- (void)_setupAPIPreferences
{
  v3 = objc_opt_class();
  if (objc_opt_class() != v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__NSTextAttachment__setupAPIPreferences__block_invoke;
    block[3] = &unk_1E7268758;
    block[4] = v3;
    block[5] = sel_attachmentBoundsForTextContainer_proposedLineFragment_glyphPosition_characterIndex_;
    block[6] = sel_attachmentBoundsForAttributes_location_textContainer_proposedLineFragment_position_;
    block[7] = sel_imageForBounds_textContainer_characterIndex_;
    block[8] = sel_imageForBounds_attributes_location_textContainer_;
    if (_setupAPIPreferences_onceToken != -1)
    {
      dispatch_once(&_setupAPIPreferences_onceToken, block);
    }

    v4 = [(NSTextAttachment *)self methodForSelector:sel_attachmentBoundsForAttributes_location_textContainer_proposedLineFragment_position_];
    if (v4 == _setupAPIPreferences_baseNewAttachmentBoundsAPI)
    {
      v5 = [(NSTextAttachment *)self methodForSelector:sel_attachmentBoundsForTextContainer_proposedLineFragment_glyphPosition_characterIndex_];
      if (v5 != _setupAPIPreferences_baseOldAttachmentBoundsAPI)
      {
        *&self->_taFlags |= 0x200u;
      }
    }

    v6 = [(NSTextAttachment *)self methodForSelector:sel_imageForBounds_attributes_location_textContainer_];
    if (v6 == _setupAPIPreferences_baseNewImageForAttachmentAPI)
    {
      v7 = [(NSTextAttachment *)self methodForSelector:sel_imageForBounds_textContainer_characterIndex_];
      if (v7 != _setupAPIPreferences_baseOldImageForAttachmentAPI)
      {
        *&self->_taFlags |= 0x400u;
      }
    }

    v8 = [(NSTextAttachment *)self methodForSelector:sel_viewProviderForParentView_location_textContainer_];
    if (v8 == _setupAPIPreferences_baseClassViewProviderMethod)
    {
      v10 = [(NSTextAttachment *)self methodForSelector:sel_viewProviderForParentView_characterIndex_layoutManager_];
      v9 = (v10 != _setupAPIPreferences_baseClassOldViewProviderMethod) << 14;
    }

    else
    {
      v9 = 0x4000;
    }

    *&self->_taFlags = *&self->_taFlags & 0xBFFF | v9;
  }
}

- (id)_cacheKey
{
  result = self->_cacheKey;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p", self];
    self->_cacheKey = result;
  }

  return result;
}

- (id)adaptiveImageGlyph
{
  objc_sync_enter(self);
  null = [MEMORY[0x1E695DFB0] null];
  adaptiveImageGlyph = self->_adaptiveImageGlyph;
  if (adaptiveImageGlyph)
  {
    goto LABEL_13;
  }

  if (self->_data && [(UTType *)self->_uti conformsToType:+[NSAdaptiveImageGlyph contentType]])
  {
    data = self->_data;
    if (!data)
    {
      goto LABEL_11;
    }
  }

  else
  {
    pathExtension = [(NSString *)[(NSFileWrapper *)self->_fileWrapperForContents preferredFilename] pathExtension];
    if (!pathExtension || ![objc_msgSend(MEMORY[0x1E6982C40] typeWithFilenameExtension:{pathExtension), "conformsToType:", +[NSAdaptiveImageGlyph contentType](NSAdaptiveImageGlyph, "contentType")}] || (data = -[NSFileWrapper regularFileContents](self->_fileWrapperForContents, "regularFileContents")) == 0)
    {
LABEL_11:
      adaptiveImageGlyph = self->_adaptiveImageGlyph;
      if (adaptiveImageGlyph)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  adaptiveImageGlyph = [[NSAdaptiveImageGlyph alloc] initWithImageContent:data];
  self->_adaptiveImageGlyph = adaptiveImageGlyph;
  if (adaptiveImageGlyph)
  {
    goto LABEL_13;
  }

LABEL_12:
  adaptiveImageGlyph = null;
  self->_adaptiveImageGlyph = adaptiveImageGlyph;
LABEL_13:
  if (null == adaptiveImageGlyph)
  {
    v7 = 0;
  }

  else
  {
    v7 = adaptiveImageGlyph;
  }

  objc_sync_exit(self);
  return v7;
}

- (UIImage)image
{
  if (!self->_wrapperView || _NSTextScalingTypeForCurrentEnvironment() != 2)
  {
    return self->_image;
  }

  wrapperView = self->_wrapperView;

  return [(NSTextAttachmentView *)wrapperView image];
}

+ (id)imageCache
{
  if (imageCache_onceToken != -1)
  {
    +[NSTextAttachment imageCache];
  }

  return imageCache__imageCache;
}

- (void)_invalidateWrapperView
{
  [(NSTextAttachmentView *)self->_wrapperView removeFromSuperview];

  self->_wrapperView = 0;
}

_UICache *__30__NSTextAttachment_imageCache__block_invoke()
{
  result = objc_alloc_init(_UICache);
  imageCache__imageCache = result;
  return result;
}

- (id)attachmentCell
{
  result = self->_wrapperView;
  if (!result)
  {
    if (__NSTextAttachmentAlwaysUsesAttachmentView == 1)
    {
      result = [objc_alloc(getUITextAttachmentViewClass()) initWithTextAttachment:self image:{-[NSTextAttachment _image](self, "_image")}];
      self->_wrapperView = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_imageForUTType_iOS:(id)s
{
  v3 = [MEMORY[0x1E6963658] documentProxyForName:0 type:objc_msgSend(s MIMEType:{"identifier"), 0}];
  result = [getUIImageClass[0]() _iconForResourceProxy:v3 format:3];
  if (!result)
  {
    result = [getUIImageClass[0]() _iconForResourceProxy:v3 format:6];
    if (!result)
    {
      result = [getUIImageClass[0]() _iconForResourceProxy:v3 format:4];
      if (!result)
      {
        v5 = getUIImageClass[0]();

        return [(objc_class *)v5 _iconForResourceProxy:v3 format:7];
      }
    }
  }

  return result;
}

- (void)_showAttachmentCell_iOS:(id)s inRect:(CGRect)rect characterIndex:(unint64_t)index
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  v9 = rect.origin.y - rect.size.height;
  if (index == 0x7FFFFFFFFFFFFFFFLL || (objc_opt_respondsToSelector() & 1) == 0)
  {

    [s drawWithFrame:0 inView:{x, v9, width, height}];
  }

  else
  {

    [s drawWithFrame:0 inView:index characterIndex:{x, v9, width, height}];
  }
}

- (void)_setAllocatesTextContainer:(BOOL)container
{
  if (container)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_taFlags = *&self->_taFlags & 0xFEFF | v3;
}

- (NSTextAttachment)initWithData:(NSData *)contentData ofType:(NSString *)uti
{
  v9.receiver = self;
  v9.super_class = NSTextAttachment;
  v6 = [(NSTextAttachment *)&v9 init];
  if (v6)
  {
    v6->_data = [(NSData *)contentData copy];
    if (uti)
    {
      v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:uti];
    }

    else
    {
      v7 = 0;
    }

    v6->_uti = v7;
    [(NSTextAttachment *)v6 setEmbeddingType:0];
    [(NSTextAttachment *)v6 setStandaloneAlignment:1];
    [(NSTextAttachment *)v6 setAllowsTextAttachmentView:1];
    [(NSTextAttachment *)v6 _setAllocatesTextContainer:1];
    [(NSTextAttachment *)v6 _setupAPIPreferences];
  }

  return v6;
}

- (NSTextAttachment)initWithFileWrapper:(NSFileWrapper *)fileWrapper
{
  v4 = [(NSTextAttachment *)self initWithData:0 ofType:0];
  if (v4)
  {
    v5 = fileWrapper;
    v4->_fileWrapperForContents = v5;
    pathExtension = [(NSString *)[(NSFileWrapper *)v5 preferredFilename] pathExtension];
    if (pathExtension)
    {
      pathExtension = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
    }

    v4->_uti = pathExtension;
  }

  return v4;
}

- (NSData)contents
{
  v2 = self->_data;

  return v2;
}

- (void)setContents:(NSData *)contents
{
  data = self->_data;
  if (data != contents)
  {

    self->_data = [(NSData *)contents copy];
    self->_image = 0;
    [+[NSTextAttachment imageCache](NSTextAttachment "imageCache")];

    self->_fileWrapperForContents = 0;
  }
}

- (void)setFileType:(NSString *)fileType
{
  if (![(NSString *)fileType isEqualToString:[(UTType *)self->_uti identifier]])
  {

    if (fileType)
    {
      v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:fileType];
    }

    else
    {
      v5 = 0;
    }

    self->_uti = v5;

    self->_image = 0;
    [+[NSTextAttachment imageCache](NSTextAttachment "imageCache")];

    self->_fileWrapperForContents = 0;
  }
}

- (NSFileWrapper)fileWrapper
{
  fileWrapperForContents = self->_fileWrapperForContents;
  if (!fileWrapperForContents)
  {
    if (self->_data)
    {
      uti = self->_uti;
      if (uti)
      {
        preferredFilenameExtension = [(UTType *)uti preferredFilenameExtension];
        if (preferredFilenameExtension)
        {
          v6 = [@"Attachment" stringByAppendingPathExtension:preferredFilenameExtension];
        }

        else
        {
          v6 = @"Attachment";
        }

        v8 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:self->_data];
        fileWrapperForContents = v8;
        v9 = v6;
        goto LABEL_11;
      }
    }

    image = self->_image;
    if (image)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:softLinkUIImagePNGRepresentation(image)];
      fileWrapperForContents = v8;
      v9 = @"Attachment.png";
LABEL_11:
      [(NSFileWrapper *)v8 setPreferredFilename:v9];
      return fileWrapperForContents;
    }

    return 0;
  }

  return fileWrapperForContents;
}

- (void)setFileWrapper:(NSFileWrapper *)fileWrapper
{
  if (self->_fileWrapperForContents != fileWrapper && ([(NSFileWrapper *)fileWrapper isEqual:?]& 1) == 0)
  {
    v5 = fileWrapper;

    self->_fileWrapperForContents = fileWrapper;
    self->_image = 0;

    self->_data = 0;
    pathExtension = [(NSString *)[(NSFileWrapper *)self->_fileWrapperForContents preferredFilename] pathExtension];
    if (pathExtension)
    {
      pathExtension = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
    }

    self->_uti = pathExtension;
    [+[NSTextAttachment imageCache](NSTextAttachment "imageCache")];

    [(NSTextAttachment *)self _invalidateWrapperView];
  }
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    if (self->_data && self->_uti)
    {
      [coder encodeObject:? forKey:?];
      image = [(UTType *)self->_uti identifier];
      v6 = @"NS.fileType";
    }

    else
    {
      image = self->_image;
      if (!image)
      {
LABEL_12:
        if ([(NSTextAttachment *)self embeddingType])
        {
          [coder encodeInt32:-[NSTextAttachment embeddingType](self forKey:{"embeddingType"), @"NS.embeddingType"}];
        }

        if ([(NSTextAttachment *)self standaloneAlignment]!= 1)
        {
          [coder encodeInt32:-[NSTextAttachment standaloneAlignment](self forKey:{"standaloneAlignment"), @"NS.standaloneAlignment"}];
        }

        if (![(NSTextAttachment *)self allowsTextAttachmentView])
        {
          [coder encodeBool:-[NSTextAttachment allowsTextAttachmentView](self forKey:{"allowsTextAttachmentView"), @"NS.allowsTextAttachmentView"}];
        }

        [(NSTextAttachment *)self lineLayoutPadding];
        if (v8 != 0.0)
        {
          [(NSTextAttachment *)self lineLayoutPadding];
          [coder encodeDouble:@"NS.lineLayoutPadding" forKey:?];
        }

        if ([(NSTextAttachment *)self accessibilityLabel])
        {
          [coder encodeObject:-[NSTextAttachment accessibilityLabel](self forKey:{"accessibilityLabel"), @"NS.accessibilityLabel"}];
        }

        if ([(NSTextAttachment *)self adjustsImageSizeForAccessibilityContentSizeCategory])
        {
          [coder encodeBool:-[NSTextAttachment adjustsImageSizeForAccessibilityContentSizeCategory](self forKey:{"adjustsImageSizeForAccessibilityContentSizeCategory"), @"NS.adjustsImageSizeForAccessibilityContentSizeCategory"}];
        }

        [coder encodeObject:-[NSTextAttachment fileWrapper](self forKey:{"fileWrapper"), @"NSFileWrapper"}];
        if (self->_attachmentCell && (*&self->_taFlags & 0x800) != 0)
        {

          [coder encodeObject:? forKey:?];
        }

        return;
      }

      v6 = @"NS.image";
    }

    [coder encodeObject:image forKey:v6];
    goto LABEL_12;
  }

  attachmentCell = self->_attachmentCell;
  if (attachmentCell)
  {
    LODWORD(attachmentCell) = (*&self->_taFlags >> 11) & 1;
  }

  v9 = attachmentCell;
  [coder encodeValuesOfObjCTypes:{"c@", &v9, &self->_fileWrapperForContents}];
  if (v9 == 1)
  {
    [coder encodeObject:self->_attachmentCell];
  }
}

- (NSTextAttachment)initWithCoder:(id)coder
{
  if (![coder allowsKeyedCoding])
  {

    return 0;
  }

  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.contents"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.fileType"];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v11 = [(NSTextAttachment *)self initWithData:v5 ofType:v6];
LABEL_13:
    v10 = v11;
    goto LABEL_14;
  }

  if (initWithCoder__onceToken_1 != -1)
  {
    [NSTextAttachment initWithCoder:];
  }

  v8 = [coder decodeObjectOfClasses:initWithCoder__imageClasses forKey:@"NS.image"];
  if (!v8)
  {
    v11 = -[NSTextAttachment initWithFileWrapper:](self, "initWithFileWrapper:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSFileWrapper"]);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [(NSTextAttachment *)self initWithData:0 ofType:0];
  [(NSTextAttachment *)v10 setImage:v9];
LABEL_14:
  if ([coder containsValueForKey:@"NS.embeddingType"])
  {
    -[NSTextAttachment setEmbeddingType:](v10, "setEmbeddingType:", [coder decodeInt32ForKey:@"NS.embeddingType"]);
  }

  if ([coder containsValueForKey:@"NS.standaloneAlignment"])
  {
    -[NSTextAttachment setStandaloneAlignment:](v10, "setStandaloneAlignment:", [coder decodeInt32ForKey:@"NS.standaloneAlignment"]);
  }

  if ([coder containsValueForKey:@"NS.allowsTextAttachmentView"])
  {
    -[NSTextAttachment setAllowsTextAttachmentView:](v10, "setAllowsTextAttachmentView:", [coder decodeBoolForKey:@"NS.allowsTextAttachmentView"]);
  }

  if ([coder containsValueForKey:@"NS.lineLayoutPadding"])
  {
    [coder decodeDoubleForKey:@"NS.lineLayoutPadding"];
    [(NSTextAttachment *)v10 setLineLayoutPadding:?];
  }

  if ([coder containsValueForKey:@"NS.accessibilityLabel"])
  {
    -[NSTextAttachment setAccessibilityLabel:](v10, "setAccessibilityLabel:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.accessibilityLabel"]);
  }

  if ([coder containsValueForKey:@"NS.adjustsImageSizeForAccessibilityContentSizeCategory"])
  {
    -[NSTextAttachment setAdjustsImageSizeForAccessibilityContentSizeCategory:](v10, "setAdjustsImageSizeForAccessibilityContentSizeCategory:", [coder decodeBoolForKey:@"NS.adjustsImageSizeForAccessibilityContentSizeCategory"]);
  }

  return v10;
}

uint64_t __34__NSTextAttachment_initWithCoder___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  result = [v0 initWithObjects:{getUIImageClass_0[0](), 0}];
  initWithCoder__imageClasses = result;
  return result;
}

- (void)setContentView:(id)view
{
  if ([(NSTextAttachmentView *)self->_wrapperView contentView]!= view)
  {
    v5 = _NSTextScalingTypeForCurrentEnvironment();
    v6 = &getNSTextAttachmentViewClass;
    if (v5 != 2)
    {
      v6 = &getUITextAttachmentViewClass;
    }

    v7 = [objc_alloc((*v6)()) initWithContentView:view];
    [(NSTextAttachmentView *)self->_wrapperView removeFromSuperview];

    self->_wrapperView = v7;

    [(NSTextAttachmentView *)v7 setAttachment:self];
  }
}

- (void)setImage:(UIImage *)image
{
  if (self->_image != image)
  {
    v5 = image;

    self->_image = image;
    self->_data = 0;

    self->_uti = 0;
    [+[NSTextAttachment imageCache](NSTextAttachment "imageCache")];

    self->_fileWrapperForContents = 0;
    [(NSTextAttachment *)self _invalidateWrapperView];
  }

  if (_NSTextScalingTypeForCurrentEnvironment() == 2)
  {
    wrapperView = self->_wrapperView;

    [(NSTextAttachmentView *)wrapperView setImage:image];
  }
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  [(NSTextAttachment *)self bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v41.origin.x = *MEMORY[0x1E695F058];
  v41.origin.y = v14;
  v41.size.width = v15;
  v41.size.height = v16;
  if (CGRectEqualToRect(v38, v41))
  {
    if ([(NSTextAttachment *)self usesTextAttachmentView])
    {
      if (dyld_program_sdk_at_least())
      {
        if (![container textLayoutManager])
        {
          layoutManager = [container layoutManager];
          if (layoutManager)
          {
            v31 = -[NSTextAttachment viewProviderForParentView:characterIndex:layoutManager:](self, "viewProviderForParentView:characterIndex:layoutManager:", [container textView], index, layoutManager);
            if ([v31 tracksTextAttachmentViewBounds])
            {
              [v31 attachmentBoundsForTextContainer:container proposedLineFragment:index glyphPosition:fragment.origin.x characterIndex:{fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y}];
              x = v32;
              y = v33;
              width = v34;
              height = v35;
            }
          }
        }
      }
    }
  }

  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v42.origin.x = v13;
  v42.origin.y = v14;
  v42.size.width = v15;
  v42.size.height = v16;
  if (CGRectEqualToRect(v39, v42))
  {
    _image = [(NSTextAttachment *)self _image];
    if (_image)
    {
      v18 = _image;
      [_image size];
      if (v19 != *MEMORY[0x1E695F060] || v20 != *(MEMORY[0x1E695F060] + 8))
      {
        height = v20;
        width = v19;
      }

      if (-[NSTextAttachment adjustsImageSizeForAccessibilityContentSizeCategory](self, "adjustsImageSizeForAccessibilityContentSizeCategory") && ([v18 _isSymbolImage] & 1) == 0)
      {
        softLink_UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection(0);
        v22 = v21;
        if (v21 != 1.0 && [(UIImage *)[(NSTextAttachment *)self image] _CGPDFPage])
        {
          [(UIImage *)[(NSTextAttachment *)self image] _CGPDFPageSize];
          width = v23;
          height = v24;
        }

        width = v22 * width;
        height = v22 * height;
      }

      if (objc_opt_respondsToSelector() & 1) != 0 && [v18 hasBaseline] && (objc_opt_respondsToSelector())
      {
        [v18 baselineOffsetFromBottom];
        y = y - v25;
      }
    }
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

+ (Class)textAttachmentViewProviderClassForFileType:(NSString *)fileType
{
  objc_sync_enter(self);
  v5 = [__NSTextAttachmentViewProviderClassMappings objectForKeyedSubscript:fileType];
  objc_sync_exit(self);
  if (v5)
  {
    return v5;
  }

  v6 = objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v6 textAttachmentViewProviderClassForFileType:fileType];
}

+ (void)registerTextAttachmentViewProviderClass:(Class)textAttachmentViewProviderClass forFileType:(NSString *)fileType
{
  if (textAttachmentViewProviderClass && fileType)
  {
    objc_sync_enter(self);
    v7 = __NSTextAttachmentViewProviderClassMappings;
    if (!__NSTextAttachmentViewProviderClassMappings)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      __NSTextAttachmentViewProviderClassMappings = v7;
    }

    [v7 setValue:textAttachmentViewProviderClass forKey:fileType];

    objc_sync_exit(self);
  }
}

- (void)setEmbeddingType:(int64_t)type
{
  typeCopy = type;
  objc_sync_enter(self);
  *&self->_taFlags = *&self->_taFlags & 0xFFE1 | (2 * (typeCopy & 0xF));

  objc_sync_exit(self);
}

- (void)setStandaloneAlignment:(int64_t)alignment
{
  alignmentCopy = alignment;
  objc_sync_enter(self);
  *&self->_taFlags = *&self->_taFlags & 0xFF1F | (32 * (alignmentCopy & 7));

  objc_sync_exit(self);
}

- (void)setAllowsTextAttachmentView:(BOOL)allowsTextAttachmentView
{
  v3 = allowsTextAttachmentView;
  objc_sync_enter(self);
  *&self->_taFlags = *&self->_taFlags & 0xFFFE | v3;

  objc_sync_exit(self);
}

- (id)viewProviderForParentView:(id)view characterIndex:(unint64_t)index layoutManager:(id)manager
{
  if (![(NSTextAttachment *)self usesTextAttachmentView])
  {
    return 0;
  }

  v9 = [manager viewProviderForTextAttachment:self characterIndex:index];
  if (!v9)
  {
    textAttachmentViewProviderClass = [(NSTextAttachment *)self textAttachmentViewProviderClass];
    if (textAttachmentViewProviderClass)
    {
      v9 = [[textAttachmentViewProviderClass alloc] initWithTextAttachment:self parentView:view characterIndex:index layoutManager:manager];
      [manager setViewProvider:v9 forTextAttachment:self characterIndex:index];

      return v9;
    }

    return 0;
  }

  return v9;
}

- (void)placeView:(id)view withFrame:(CGRect)frame inParentView:(id)parentView characterIndex:(unint64_t)index layoutManager:(id)manager
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([view superview] != parentView)
  {
    [(NSTextAttachment *)self detachView:view fromParentView:parentView];
  }

  if (width < 0.0)
  {
    width = 0.0;
  }

  if (height < 0.0)
  {
    height = 0.0;
  }

  [view frame];
  v20.origin.x = v14;
  v20.origin.y = v15;
  v20.size.width = v16;
  v20.size.height = v17;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  if (!NSEqualRects(v19, v20))
  {
    [view setFrame:{x, y, width, height}];
  }

  if ([view superview] != parentView)
  {

    [parentView addSubview:view];
  }
}

- (void)detachView:(id)view fromParentView:(id)parentView
{
  if ([view superview] == parentView)
  {

    [view removeFromSuperview];
  }
}

+ (Class)textAttachmentClassForFileType:(id)type
{
  objc_sync_enter(self);
  v5 = [__NSTextAttachmentClassMappings objectForKeyedSubscript:type];
  objc_sync_exit(self);
  return v5;
}

+ (void)registerTextAttachmentClass:(Class)class forFileType:(id)type
{
  if (class && type)
  {
    objc_sync_enter(self);
    v7 = __NSTextAttachmentClassMappings;
    if (!__NSTextAttachmentClassMappings)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      __NSTextAttachmentClassMappings = v7;
    }

    [v7 setValue:class forKey:type];

    objc_sync_exit(self);
  }
}

- (void)setIgnoresOrientation:(BOOL)orientation
{
  if (orientation)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_taFlags = *&self->_taFlags & 0xEFFF | v3;
}

- (void)setAttachmentCell:(id)attachmentCell
{
  v4 = self->_attachmentCell;
  if (v4 != attachmentCell)
  {
    v6 = v4;
    v7 = attachmentCell;
    self->_attachmentCell = v7;
    *&self->_taFlags = *&self->_taFlags & 0xF7FF | ((v7 != 0) << 11);
    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = self->_attachmentCell;

        [(NSTextAttachmentCell *)v8 setAttachment:self];
      }
    }
  }
}

- (void)setAllowsEditingContents:(BOOL)contents
{
  if (contents)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_taFlags = *&self->_taFlags & 0xDFFF | v3;
}

- (NSString)description
{
  if (self->_fileWrapperForContents)
  {
    v4.receiver = self;
    v4.super_class = NSTextAttachment;
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[NSTextAttachment description](&v4, sel_description), -[NSFileWrapper preferredFilename](self->_fileWrapperForContents, "preferredFilename")];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = NSTextAttachment;
    return [(NSTextAttachment *)&v3 description];
  }
}

- (int64_t)_characterIndexForLocation:(id)location textContainer:(id)container
{
  v5 = [objc_msgSend(container "textLayoutManager")];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_msgSend(v5 "documentRange")];

    return [v6 offsetFromLocation:v7 toLocation:location];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [location characterIndex];
    }

    else
    {
      return 0;
    }
  }
}

- (void)_showWithBounds:(CGRect)bounds attributes:(id)attributes location:(id)location textContainer:(id)container applicationFrameworkContext:(int64_t)context acceptsViewProvider:(BOOL)provider
{
  providerCopy = provider;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  attachmentCell = [(NSTextAttachment *)self attachmentCell];
  if (attachmentCell)
  {
    v19 = attachmentCell;
    v20 = [(NSTextAttachment *)self _characterIndexForLocation:location textContainer:container];
    if (context == 2)
    {

      [(NSTextAttachment *)self _showAttachmentCell_macOS:v19 inRect:v20 characterIndex:x, y, width, height];
    }

    else
    {

      [(NSTextAttachment *)self _showAttachmentCell_iOS:v19 inRect:v20 characterIndex:x, y, width, height];
    }
  }

  else if (!providerCopy || !-[NSTextAttachment usesTextAttachmentView](self, "usesTextAttachmentView") || ![objc_msgSend(container "textLayoutManager")])
  {

    [(NSTextAttachment *)self _drawInAlignedRect:attributes attributes:location location:container textContainer:context applicationFrameworkContext:x, y, width, height];
  }
}

- (void)_showWithBounds:(CGRect)bounds attributes:(__CFDictionary *)attributes runRange:(id)range textLayoutFragment:(id)fragment inContext:(CGContext *)context
{
  var0 = range.var0;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!fragment)
  {
    applicationFrameworkContext = 0;
    goto LABEL_5;
  }

  textLayoutManager = [fragment textLayoutManager];
  v17 = [objc_msgSend(fragment "textParagraph")];
  applicationFrameworkContext = [textLayoutManager applicationFrameworkContext];
  if (!v17)
  {
LABEL_5:
    v17 = [[NSCountableTextLocation alloc] initWithIndex:var0];
    v19 = 0;
    goto LABEL_6;
  }

  v19 = [textLayoutManager textContainerForLocation:v17];
LABEL_6:
  v20 = [[_NSCGTextGraphicsContext alloc] initWithCGContext:context];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__NSTextAttachment__showWithBounds_attributes_runRange_textLayoutFragment_inContext___block_invoke;
  v21[3] = &unk_1E7268780;
  v21[7] = v19;
  v21[8] = context;
  *&v21[9] = x;
  *&v21[10] = y;
  *&v21[11] = width;
  *&v21[12] = height;
  v21[4] = self;
  v21[5] = attributes;
  v21[6] = v17;
  v21[13] = applicationFrameworkContext;
  [NSTextGraphicsContextProvider setCurrentTextGraphicsContext:v20 duringBlock:v21];
}

uint64_t __85__NSTextAttachment__showWithBounds_attributes_runRange_textLayoutFragment_inContext___block_invoke(double *a1)
{
  v2 = [NSTextAttachmentViewProvider acceptsViewProviderForContext:*(a1 + 8)];
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v7 = *(a1 + 13);
  v8 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  v11 = a1[12];

  return [v3 _showWithBounds:v4 attributes:v5 location:v6 textContainer:v7 applicationFrameworkContext:v2 acceptsViewProvider:{v8, v9, v10, v11}];
}

- (id)imageForBounds:(CGRect)bounds attributes:(id)attributes location:(id)location textContainer:(id)container
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ((*&self->_taFlags & 0x400) != 0)
  {
    v18 = [(NSTextAttachment *)self _characterIndexForLocation:location textContainer:container];

    return [(NSTextAttachment *)self imageForBounds:container textContainer:v18 characterIndex:x, y, width, height];
  }

  else if (-[NSTextAttachment usesTextAttachmentView](self, "usesTextAttachmentView") && (v14 = objc_autoreleasePoolPush(), v15 = [objc_msgSend(objc_msgSend(container "textLayoutManager")], objc_autoreleasePoolPop(v14), v16 = v15, v15))
  {
    return v15;
  }

  else
  {

    return [(NSTextAttachment *)self _image];
  }
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  height = fragment.size.height;
  width = fragment.size.width;
  y = fragment.origin.y;
  x = fragment.origin.x;
  [(NSTextAttachment *)self bounds];
  v16 = v15;
  v60 = v17;
  v19 = v18;
  v21 = v20;
  [(NSTextAttachment *)self lineLayoutPadding];
  v23 = v22;
  attachmentCell = [(NSTextAttachment *)self attachmentCell];
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  if (CGRectGetWidth(v64) <= v23 + v23)
  {
    v58 = height;
    v25 = width;
  }

  else
  {
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    v66 = CGRectInset(v65, v23, 0.0);
    x = v66.origin.x;
    y = v66.origin.y;
    v25 = v66.size.width;
    v58 = v66.size.height;
  }

  v70 = **&MEMORY[0x1E695F058];
  v26 = v16;
  v67.origin.x = v16;
  v27 = v60;
  v67.origin.y = v60;
  v28 = v19;
  v67.size.width = v19;
  v29 = v21;
  v30 = *MEMORY[0x1E695F058];
  v67.size.height = v29;
  v62 = v70.size.width;
  v63 = v70.origin.y;
  rect2 = v70.size.height;
  if (CGRectEqualToRect(v67, *MEMORY[0x1E695F058]) && [(NSTextAttachment *)self usesTextAttachmentView])
  {
    v31 = objc_autoreleasePoolPush();
    v32 = [objc_msgSend(container "textLayoutManager")];
    if ([v32 tracksTextAttachmentViewBounds])
    {
      [v32 attachmentBoundsForAttributes:attributes location:location textContainer:container proposedLineFragment:x position:{y, v25, v58, position.x, position.y}];
      v26 = v33;
      v27 = v34;
      v28 = v35;
      v29 = v36;
    }

    objc_autoreleasePoolPop(v31);
  }

  if (attachmentCell)
  {
    v37 = [(NSTextAttachment *)self _characterIndexForLocation:location textContainer:container];
    if (objc_opt_respondsToSelector())
    {
      [attachmentCell cellFrameForTextContainer:container proposedLineFragment:v37 glyphPosition:x characterIndex:{y, v25, v58, position.x, position.y}];
LABEL_14:
      v26 = v38;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      goto LABEL_17;
    }

    [attachmentCell cellSize];
    v28 = v42;
    v29 = v43;
    v27 = 0.0;
    v26 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [attachmentCell cellBaselineOffset];
      v26 = v44;
      v27 = v45;
    }
  }

  else if ((*&self->_taFlags & 0x200) != 0)
  {
    [(NSTextAttachment *)self attachmentBoundsForTextContainer:container proposedLineFragment:[(NSTextAttachment *)self _characterIndexForLocation:location textContainer:container] glyphPosition:x characterIndex:y, v25, v58, position.x, position.y];
    goto LABEL_14;
  }

LABEL_17:
  v68.origin.x = v26;
  v68.origin.y = v27;
  v68.size.width = v28;
  v68.size.height = v29;
  v71.origin.x = v30;
  v71.size.width = v62;
  v71.origin.y = v63;
  v71.size.height = rect2;
  if (CGRectEqualToRect(v68, v71))
  {
    _image = [(NSTextAttachment *)self _image];
    if (_image)
    {
      v47 = _image;
      [_image size];
      if (v48 != *MEMORY[0x1E695F060] || v49 != *(MEMORY[0x1E695F060] + 8))
      {
        v29 = v49;
        v28 = v48;
      }

      if (-[NSTextAttachment adjustsImageSizeForAccessibilityContentSizeCategory](self, "adjustsImageSizeForAccessibilityContentSizeCategory") && ([v47 _isSymbolImage] & 1) == 0)
      {
        v50 = softLink_UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection(0);
        if (v50 != 1.0 && [(UIImage *)[(NSTextAttachment *)self image] _CGPDFPage])
        {
          [(UIImage *)[(NSTextAttachment *)self image] _CGPDFPageSize];
          v28 = v51;
          v29 = v52;
        }

        v28 = v50 * v28;
        v29 = v50 * v29;
      }

      if (objc_opt_respondsToSelector() & 1) != 0 && [v47 hasBaseline] && (objc_opt_respondsToSelector())
      {
        [v47 baselineOffsetFromBottom];
        v27 = v27 - v53;
      }
    }
  }

  v54 = v26;
  v55 = v27;
  v56 = v28;
  v57 = v29;
  result.size.height = v57;
  result.size.width = v56;
  result.origin.y = v55;
  result.origin.x = v54;
  return result;
}

- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container
{
  usesTextAttachmentView = [(NSTextAttachment *)self usesTextAttachmentView];
  if (!container || !usesTextAttachmentView)
  {
    return 0;
  }

  textLayoutManager = [container textLayoutManager];
  if (textLayoutManager)
  {
    v11 = textLayoutManager;
    textAttachmentViewProviderClass = [(NSTextAttachment *)self textAttachmentViewProviderClass];
    if (textAttachmentViewProviderClass)
    {
      v13 = [[textAttachmentViewProviderClass alloc] initWithTextAttachment:self parentView:view textLayoutManager:v11 location:location];

      return v13;
    }

    return 0;
  }

  layoutManager = [container layoutManager];
  if (!layoutManager)
  {
    return 0;
  }

  v16 = layoutManager;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  characterIndex = [location characterIndex];

  return [(NSTextAttachment *)self viewProviderForParentView:view characterIndex:characterIndex layoutManager:v16];
}

- (void)placeView:(id)view withFrame:(CGRect)frame inParentView:(id)parentView location:(id)location textContainer:(id)container applicationFrameworkContext:(int64_t)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([view superview] != parentView)
  {
    [(NSTextAttachment *)self detachView:view fromParentView:parentView];
  }

  if (width < 0.0)
  {
    width = 0.0;
  }

  if (height < 0.0)
  {
    height = 0.0;
  }

  [view frame];
  v21.origin.x = v15;
  v21.origin.y = v16;
  v21.size.width = v17;
  v21.size.height = v18;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (!NSEqualRects(v20, v21))
  {
    [view setFrame:{x, y, width, height}];
  }

  if ([view superview] != parentView)
  {

    [parentView addSubview:view];
  }
}

- (void)_drawInAlignedRect:(CGRect)rect attributes:(id)attributes location:(id)location textContainer:(id)container applicationFrameworkContext:(int64_t)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (self)
  {
    [(NSTextAttachment *)self lineLayoutPadding];
    if (v16 != 0.0)
    {
      v17 = v16;
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v37 = NSInsetRect(v36, v17, 0.0);
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
    }
  }

  height = [(NSTextAttachment *)self imageForBounds:attributes attributes:location location:container textContainer:x, y, width, height];
  context = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider graphicsContextForApplicationFrameworkContext:"graphicsContextForApplicationFrameworkContext:", context];
  image = [(NSTextAttachment *)self image];
  if (context == 2)
  {
    v21 = image;
    if (height == image && [(UIImage *)image conformsToProtocol:&unk_1F01F0D38]&& [(UIImage *)v21 willProvideAdaptedImageForPresentation])
    {
      height = [(UIImage *)v21 imageForBounds:attributes attributes:location location:container textContainer:x, y, width, height];
    }
  }

  cGContext = [context CGContext];
  if (cGContext)
  {
    v23 = cGContext;
    blackColor = [attributes objectForKeyedSubscript:@"NSColor"];
    if (!blackColor)
    {
      if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
      {
        context2 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", context];
      }

      else
      {
        context2 = +[NSTextGraphicsContextProvider __defaultColorClass];
      }

      blackColor = [(objc_class *)context2 blackColor];
    }

    CGContextSaveGState(v23);
    [blackColor set];
    cGContext2 = [context CGContext];
    v27 = y - height;
    if (cGContext2)
    {
      v28 = cGContext2;
      v29 = x;
      v30 = CGContextConvertPointToDeviceSpace(cGContext2, *(&v27 - 1));
      v35.x = floor(v30.x + 0.5);
      v35.y = floor(v30.y + 0.5);
      v33 = CGContextConvertPointToUserSpace(v28, v35);
      v32 = v33.y;
      v31 = v33.x;
    }

    else
    {
      v31 = floor(x + 0.5);
      v32 = floor(v27 + 0.5);
    }

    [(UIImage *)height drawInRect:v31, v32, width, height];

    CGContextRestoreGState(v23);
  }
}

@end