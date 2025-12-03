@interface TSDMediaInfo
- (CGPoint)centerForReplacingWithNewMedia;
- (CGSize)defaultOriginalSize;
- (CGSize)originalSize;
- (CGSize)rawDataSize;
- (NSString)mediaDisplayName;
- (NSString)mediaFileType;
- (TSDMediaInfo)initWithContext:(id)context geometry:(id)geometry;
- (id)copyWithContext:(id)context;
- (void)setFlags:(unsigned int)flags;
- (void)setGeometry:(id)geometry;
- (void)setOriginalSize:(CGSize)size;
- (void)setWasMediaReplaced:(BOOL)replaced;
- (void)takePropertiesFromReplacedMediaInfo:(id)info;
- (void)updateGeometryToReplaceMediaInfo:(id)info;
@end

@implementation TSDMediaInfo

- (TSDMediaInfo)initWithContext:(id)context geometry:(id)geometry
{
  v7.receiver = self;
  v7.super_class = TSDMediaInfo;
  v4 = [(TSDDrawableInfo *)&v7 initWithContext:context geometry:geometry];
  v5 = v4;
  if (v4)
  {
    v4->super.super.mAspectRatioLocked = 1;
    [(TSDMediaInfo *)v4 defaultOriginalSize];
    [(TSDMediaInfo *)v5 setOriginalSize:?];
  }

  return v5;
}

- (id)copyWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = TSDMediaInfo;
  result = [(TSDDrawableInfo *)&v5 copyWithContext:context];
  if (result)
  {
    *(result + 9) = self->mOriginalSize;
    *(result + 40) = self->mFlags;
  }

  return result;
}

- (void)setOriginalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_mOriginalSize = &self->mOriginalSize;
  if (self->mOriginalSize.width != size.width || self->mOriginalSize.height != size.height)
  {
    [(TSPObject *)self willModify];
    p_mOriginalSize->width = width;
    p_mOriginalSize->height = height;
  }
}

- (CGSize)defaultOriginalSize
{
  geometry = [(TSDDrawableInfo *)self geometry];

  [(TSDInfoGeometry *)geometry size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setFlags:(unsigned int)flags
{
  flagsCopy = flags;
  [(TSDDrawableInfo *)self willChangeProperty:527];
  [(TSPObject *)self willModify];
  *&self->mFlags = *&self->mFlags & 0xFC | flagsCopy & 3;
}

- (void)setWasMediaReplaced:(BOOL)replaced
{
  if (replaced)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->mFlags = *&self->mFlags & 0xFD | v3;
}

- (void)setGeometry:(id)geometry
{
  v5.receiver = self;
  v5.super_class = TSDMediaInfo;
  [(TSDDrawableInfo *)&v5 setGeometry:?];
  [geometry size];
  [(TSDMediaInfo *)self setOriginalSize:?];
}

- (NSString)mediaDisplayName
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMediaInfo mediaDisplayName]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaInfo.m"), 112, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDMediaInfo mediaDisplayName]"), 0}]);
}

- (NSString)mediaFileType
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMediaInfo mediaFileType]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaInfo.m"), 119, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDMediaInfo mediaFileType]"), 0}]);
}

- (CGSize)rawDataSize
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMediaInfo rawDataSize]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaInfo.m"), 125, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDMediaInfo rawDataSize]"), 0}]);
}

- (void)takePropertiesFromReplacedMediaInfo:(id)info
{
  [(TSDMediaInfo *)self updateGeometryToReplaceMediaInfo:?];
  [info originalSize];
  [(TSDMediaInfo *)self setOriginalSize:?];
  -[TSDMediaInfo setIsPlaceholder:](self, "setIsPlaceholder:", [info isPlaceholder]);
  [(TSDMediaInfo *)self setWasMediaReplaced:1];
  -[TSDStyledInfo setStyle:](self, "setStyle:", [info style]);
  if ([(TSDDrawableInfo *)self supportsAttachedComments])
  {
    -[TSDDrawableInfo setComment:](self, "setComment:", [info comment]);
  }

  -[TSDDrawableInfo setExteriorTextWrap:](self, "setExteriorTextWrap:", [info exteriorTextWrap]);
  -[TSDDrawableInfo setAspectRatioLocked:](self, "setAspectRatioLocked:", [info aspectRatioLocked]);
  hyperlinkURL = [info hyperlinkURL];

  [(TSDDrawableInfo *)self setHyperlinkURL:hyperlinkURL];
}

- (void)updateGeometryToReplaceMediaInfo:(id)info
{
  v17 = [objc_msgSend(info "geometry")];
  [info centerForReplacingWithNewMedia];
  v6 = v5;
  v8 = v7;
  [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] size];
  v10 = v9;
  v12 = v11;
  [info originalSize];
  if (TSDShrinkSizeToFitInSize(v10, v12, v13, v14) == *MEMORY[0x277CBF3A8] && v15 == *(MEMORY[0x277CBF3A8] + 8))
  {
    [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] size];
  }

  [v17 setSize:?];
  [v17 setCenter:{v6, v8}];
  [(TSDMediaInfo *)self setGeometry:v17];
}

- (CGPoint)centerForReplacingWithNewMedia
{
  geometry = [(TSDDrawableInfo *)self geometry];

  [(TSDInfoGeometry *)geometry center];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGSize)originalSize
{
  width = self->mOriginalSize.width;
  height = self->mOriginalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end