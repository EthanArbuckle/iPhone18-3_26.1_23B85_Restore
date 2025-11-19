@interface TSDMediaInfo
- (CGPoint)centerForReplacingWithNewMedia;
- (CGSize)defaultOriginalSize;
- (CGSize)originalSize;
- (CGSize)rawDataSize;
- (NSString)mediaDisplayName;
- (NSString)mediaFileType;
- (TSDMediaInfo)initWithContext:(id)a3 geometry:(id)a4;
- (id)copyWithContext:(id)a3;
- (void)setFlags:(unsigned int)a3;
- (void)setGeometry:(id)a3;
- (void)setOriginalSize:(CGSize)a3;
- (void)setWasMediaReplaced:(BOOL)a3;
- (void)takePropertiesFromReplacedMediaInfo:(id)a3;
- (void)updateGeometryToReplaceMediaInfo:(id)a3;
@end

@implementation TSDMediaInfo

- (TSDMediaInfo)initWithContext:(id)a3 geometry:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSDMediaInfo;
  v4 = [(TSDDrawableInfo *)&v7 initWithContext:a3 geometry:a4];
  v5 = v4;
  if (v4)
  {
    v4->super.super.mAspectRatioLocked = 1;
    [(TSDMediaInfo *)v4 defaultOriginalSize];
    [(TSDMediaInfo *)v5 setOriginalSize:?];
  }

  return v5;
}

- (id)copyWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSDMediaInfo;
  result = [(TSDDrawableInfo *)&v5 copyWithContext:a3];
  if (result)
  {
    *(result + 9) = self->mOriginalSize;
    *(result + 40) = self->mFlags;
  }

  return result;
}

- (void)setOriginalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  p_mOriginalSize = &self->mOriginalSize;
  if (self->mOriginalSize.width != a3.width || self->mOriginalSize.height != a3.height)
  {
    [(TSPObject *)self willModify];
    p_mOriginalSize->width = width;
    p_mOriginalSize->height = height;
  }
}

- (CGSize)defaultOriginalSize
{
  v2 = [(TSDDrawableInfo *)self geometry];

  [(TSDInfoGeometry *)v2 size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setFlags:(unsigned int)a3
{
  v3 = a3;
  [(TSDDrawableInfo *)self willChangeProperty:527];
  [(TSPObject *)self willModify];
  *&self->mFlags = *&self->mFlags & 0xFC | v3 & 3;
}

- (void)setWasMediaReplaced:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->mFlags = *&self->mFlags & 0xFD | v3;
}

- (void)setGeometry:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSDMediaInfo;
  [(TSDDrawableInfo *)&v5 setGeometry:?];
  [a3 size];
  [(TSDMediaInfo *)self setOriginalSize:?];
}

- (NSString)mediaDisplayName
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMediaInfo mediaDisplayName]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaInfo.m"), 112, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDMediaInfo mediaDisplayName]"), 0}]);
}

- (NSString)mediaFileType
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMediaInfo mediaFileType]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaInfo.m"), 119, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDMediaInfo mediaFileType]"), 0}]);
}

- (CGSize)rawDataSize
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMediaInfo rawDataSize]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaInfo.m"), 125, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDMediaInfo rawDataSize]"), 0}]);
}

- (void)takePropertiesFromReplacedMediaInfo:(id)a3
{
  [(TSDMediaInfo *)self updateGeometryToReplaceMediaInfo:?];
  [a3 originalSize];
  [(TSDMediaInfo *)self setOriginalSize:?];
  -[TSDMediaInfo setIsPlaceholder:](self, "setIsPlaceholder:", [a3 isPlaceholder]);
  [(TSDMediaInfo *)self setWasMediaReplaced:1];
  -[TSDStyledInfo setStyle:](self, "setStyle:", [a3 style]);
  if ([(TSDDrawableInfo *)self supportsAttachedComments])
  {
    -[TSDDrawableInfo setComment:](self, "setComment:", [a3 comment]);
  }

  -[TSDDrawableInfo setExteriorTextWrap:](self, "setExteriorTextWrap:", [a3 exteriorTextWrap]);
  -[TSDDrawableInfo setAspectRatioLocked:](self, "setAspectRatioLocked:", [a3 aspectRatioLocked]);
  v5 = [a3 hyperlinkURL];

  [(TSDDrawableInfo *)self setHyperlinkURL:v5];
}

- (void)updateGeometryToReplaceMediaInfo:(id)a3
{
  v17 = [objc_msgSend(a3 "geometry")];
  [a3 centerForReplacingWithNewMedia];
  v6 = v5;
  v8 = v7;
  [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] size];
  v10 = v9;
  v12 = v11;
  [a3 originalSize];
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
  v2 = [(TSDDrawableInfo *)self geometry];

  [(TSDInfoGeometry *)v2 center];
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