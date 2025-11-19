@interface PFParallaxLayer
- (BOOL)isBackfill;
- (BOOL)isBackground;
- (BOOL)isBackgroundLandscape;
- (BOOL)isDebug;
- (BOOL)isForeground;
- (BOOL)isForegroundLandscape;
- (BOOL)isInactive;
- (BOOL)isSettlingEffect;
- (BOOL)isSpatialPhotoBackground;
- (BOOL)isSpatialPhotoForeground;
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (CGRect)frame;
- (CGSize)pixelSize;
- (NSString)fileExtension;
- (PFParallaxLayer)initWithFrame:(CGRect)a3 zPosition:(double)a4 identifier:(id)a5;
- (id)debugDescription;
- (id)description;
- (id)layerByUpdatingFrame:(CGRect)a3;
- (id)makeUniqueFileNameWithFileNames:(id)a3 orientation:(int64_t)a4;
@end

@implementation PFParallaxLayer

- (NSString)fileExtension
{
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = _PFAssertFailHandler();
  return [(PFParallaxLayer *)v3 saveToURL:v4 error:v5, v6];
}

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(PFParallaxLayer *)v6 makeUniqueFileNameWithFileNames:v7 orientation:v8, v9];
}

- (id)makeUniqueFileNameWithFileNames:(id)a3 orientation:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = @"portrait";
  }

  else
  {
    if (a4 != 2)
    {
      v18 = _PFAssertFailHandler();
      return [(PFParallaxImageLayer *)v18 fileExtension];
    }

    v7 = @"landscape";
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(PFParallaxLayer *)self identifier];
  v10 = [(PFParallaxLayer *)self fileExtension];
  v11 = [v8 stringWithFormat:@"%@-layer_%@.%@", v7, v9, v10];

  if ([v6 containsObject:v11])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(PFParallaxLayer *)self identifier];
    v14 = [v6 count];
    v15 = [(PFParallaxLayer *)self fileExtension];
    v16 = [v12 stringWithFormat:@"%@-layer_%@_%ld.%@", v7, v13, v14, v15];

    v11 = v16;
  }

  return v11;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v13.receiver = self;
  v13.super_class = PFParallaxLayer;
  v4 = [(PFParallaxLayer *)&v13 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendString:@"\n"];
  v6 = [(PFParallaxLayer *)self identifier];
  [v5 appendFormat:@"identifier: %@\n", v6];

  [(PFParallaxLayer *)self pixelSize];
  v8 = v7;
  [(PFParallaxLayer *)self pixelSize];
  [v5 appendFormat:@"size: %0.fx%0.f\n", v8, v9];
  [(PFParallaxLayer *)self frame];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v15);
  [v5 appendFormat:@"frame: %@\n", DictionaryRepresentation];

  [(PFParallaxLayer *)self zPosition];
  [v5 appendFormat:@"zPosition: %.0f\n", v11];
  [v5 appendFormat:@"backfill: %d\n", -[PFParallaxLayer isBackfill](self, "isBackfill")];
  [v5 appendFormat:@"debug: %d\n", -[PFParallaxLayer isDebug](self, "isDebug")];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PFParallaxLayer *)self identifier];
  [(PFParallaxLayer *)self pixelSize];
  v7 = v6;
  [(PFParallaxLayer *)self pixelSize];
  v9 = v8;
  [(PFParallaxLayer *)self frame];
  v11 = v10;
  [(PFParallaxLayer *)self frame];
  v13 = v12;
  [(PFParallaxLayer *)self frame];
  v15 = v14;
  [(PFParallaxLayer *)self frame];
  v17 = v16;
  [(PFParallaxLayer *)self zPosition];
  v19 = [v3 stringWithFormat:@"<%@:%p id:%@ size=%0.fx%0.f frame=(%0.f, %0.f)(%0.fx%0.f) zPos=%0.1f>", v4, self, v5, v7, v9, v11, v13, v15, v17, v18];

  return v19;
}

- (BOOL)isSpatialPhotoForeground
{
  v2 = [(PFParallaxLayer *)self identifier];
  v3 = [v2 isEqualToString:@"spatial-photo-foreground"];

  return v3;
}

- (BOOL)isSpatialPhotoBackground
{
  v2 = [(PFParallaxLayer *)self identifier];
  v3 = [v2 isEqualToString:@"spatial-photo-background"];

  return v3;
}

- (BOOL)isSettlingEffect
{
  v2 = [(PFParallaxLayer *)self identifier];
  v3 = [v2 isEqualToString:@"settling-video"];

  return v3;
}

- (BOOL)isDebug
{
  v2 = [(PFParallaxLayer *)self identifier];
  v3 = [v2 hasPrefix:@"debug"];

  return v3;
}

- (BOOL)isInactive
{
  v2 = [(PFParallaxLayer *)self identifier];
  v3 = [v2 hasPrefix:@"inactive"];

  return v3;
}

- (BOOL)isBackfill
{
  v2 = [(PFParallaxLayer *)self identifier];
  v3 = [v2 hasSuffix:@"backfill"];

  return v3;
}

- (BOOL)isBackgroundLandscape
{
  v2 = [(PFParallaxLayer *)self identifier];
  v3 = [v2 isEqualToString:@"background-landscape"];

  return v3;
}

- (BOOL)isForegroundLandscape
{
  v2 = [(PFParallaxLayer *)self identifier];
  v3 = [v2 isEqualToString:@"foreground-landscape"];

  return v3;
}

- (BOOL)isBackground
{
  v2 = [(PFParallaxLayer *)self identifier];
  v3 = [v2 isEqualToString:@"background"];

  return v3;
}

- (BOOL)isForeground
{
  v2 = [(PFParallaxLayer *)self identifier];
  v3 = [v2 isEqualToString:@"foreground"];

  return v3;
}

- (CGSize)pixelSize
{
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = _PFAssertFailHandler();
  [(PFParallaxLayer *)v3 layerByUpdatingFrame:v4, v8];
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)layerByUpdatingFrame:(CGRect)a3
{
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = _PFAssertFailHandler();
  return [(PFParallaxLayer *)v4 initWithFrame:v5 zPosition:v9 identifier:v7, v6];
}

- (PFParallaxLayer)initWithFrame:(CGRect)a3 zPosition:(double)a4 identifier:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PFParallaxLayer;
  v12 = [(PFParallaxLayer *)&v15 init];
  v12->_frame.origin.x = x;
  v12->_frame.origin.y = y;
  v12->_frame.size.width = width;
  v12->_frame.size.height = height;
  v12->_zPosition = a4;
  identifier = v12->_identifier;
  v12->_identifier = v11;

  return v12;
}

@end