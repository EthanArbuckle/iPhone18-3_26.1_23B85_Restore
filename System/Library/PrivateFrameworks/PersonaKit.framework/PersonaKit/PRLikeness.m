@interface PRLikeness
+ (CGRect)_flippedRectForRect:(CGRect)a3 relativeToImage:(CGImage *)a4;
+ (id)_dateFormatter;
+ (id)_photoWithScope:(unint64_t)a3 image:(CGImage *)a4 cropRectForTopLeftOrigin:(CGRect)a5;
+ (id)descriptionForScope:(unint64_t)a3;
+ (id)diddlySquatLikeness;
+ (id)likenessWithPropagatedData:(id)a3;
+ (id)monogramWithScope:(unint64_t)a3 recipe:(id)a4 staticRepresentation:(CGImage *)a5;
+ (id)photoWithImage:(CGImage *)a3 cropRectForBottomLeftOrigin:(CGRect)a4;
+ (unint64_t)scopeFromDescription:(id)a3;
- (CGImage)staticRepresentation;
- (CGRect)cropRectForBottomLeftOrigin;
- (CGRect)cropRectForTopLeftOrigin;
- (NSData)staticRepresentationData;
- (NSString)typeDescription;
- (PRLikeness)init;
- (PRLikeness)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3;
- (id)dataForPropagation;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setCropRectForTopLeftOrigin:(CGRect)a3;
- (void)setCurrent:(BOOL)a3;
- (void)setExternalIdentifier:(id)a3;
- (void)setRecipe:(id)a3;
- (void)setStaticRepresentation:(CGImage *)a3;
@end

@implementation PRLikeness

+ (id)monogramWithScope:(unint64_t)a3 recipe:(id)a4 staticRepresentation:(CGImage *)a5
{
  v7 = a4;
  v8 = objc_alloc_init(PRLikeness);
  [(PRLikeness *)v8 setType:1];
  [(PRLikeness *)v8 setScope:a3];
  [(PRLikeness *)v8 setRecipe:v7];

  [(PRLikeness *)v8 setStaticRepresentation:a5];

  return v8;
}

+ (id)photoWithImage:(CGImage *)a3 cropRectForBottomLeftOrigin:(CGRect)a4
{
  [a1 _flippedRectForRect:a4.origin.x relativeToImage:{a4.origin.y, a4.size.width, a4.size.height}];

  return [a1 photoWithImage:a3 cropRectForTopLeftOrigin:?];
}

+ (CGRect)_flippedRectForRect:(CGRect)a3 relativeToImage:(CGImage *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  IsNull = CGRectIsNull(a3);
  if (a4 && !IsNull)
  {
    y = CGImageGetHeight(a4) - y - height;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (id)_photoWithScope:(unint64_t)a3 image:(CGImage *)a4 cropRectForTopLeftOrigin:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = objc_alloc_init(PRLikeness);
  [(PRLikeness *)v11 setType:2];
  [(PRLikeness *)v11 setScope:a3];
  [(PRLikeness *)v11 setStaticRepresentation:a4];
  [(PRLikeness *)v11 setCropRectForTopLeftOrigin:x, y, width, height];

  return v11;
}

+ (id)diddlySquatLikeness
{
  v2 = [[PRLikeness alloc] _initWithIdentifier:@"7D5543CA-DJLT-4714-8D3B"];
  [v2 setType:4];
  [v2 setVersion:0x7FFFFFFFLL];

  return v2;
}

- (PRLikeness)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [(PRLikeness *)self _initWithIdentifier:v4];

  return v5;
}

- (id)_initWithIdentifier:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PRLikeness;
  v6 = [(PRLikeness *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uniqueIdentifier, a3);
    v8 = *(MEMORY[0x277CBF398] + 16);
    v7->_cropRectForTopLeftOrigin.origin = *MEMORY[0x277CBF398];
    v7->_cropRectForTopLeftOrigin.size = v8;
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    dirtyProperties = v7->_dirtyProperties;
    v7->_dirtyProperties = v9;
  }

  return v7;
}

- (PRLikeness)initWithCoder:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = PRLikeness;
  v5 = [(PRLikeness *)&v41 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_externalIdentifier"];
    externalIdentifier = v5->_externalIdentifier;
    v5->_externalIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
    v5->_type = [v10 unsignedIntegerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scope"];
    v5->_scope = [v11 unsignedIntegerValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_version"];
    v5->_version = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_isCurrent"];
    v5->_isCurrent = [v13 BOOLValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_softExpirationDate"];
    softExpirationDate = v5->_softExpirationDate;
    v5->_softExpirationDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recipe"];
    recipe = v5->_recipe;
    v5->_recipe = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_staticRepresentationData"];
    staticRepresentationData = v5->_staticRepresentationData;
    v5->_staticRepresentationData = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_insertionDate"];
    insertionDate = v5->_insertionDate;
    v5->_insertionDate = v24;

    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"_dirtyProperties"];
    dirtyProperties = v5->_dirtyProperties;
    v5->_dirtyProperties = v30;

    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"_cropRectForTopLeftOrigin"];

    v37 = CGRectMakeWithDictionaryRepresentation(v36, &v5->_cropRectForTopLeftOrigin);
    if (v36 && !v37)
    {
      v38 = _PRGetLogSystem();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v43 = "[PRLikeness initWithCoder:]";
        v44 = 1024;
        v45 = 192;
        v46 = 2112;
        v47 = v36;
        _os_log_impl(&dword_25E428000, v38, OS_LOG_TYPE_DEFAULT, "%s (%d) CGRectMakeWithDictionaryRepresentation failed with %@", buf, 0x1Cu);
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:uniqueIdentifier forKey:@"_uniqueIdentifier"];
  [v5 encodeObject:self->_externalIdentifier forKey:@"_externalIdentifier"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  [v5 encodeObject:v6 forKey:@"_type"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_scope];
  [v5 encodeObject:v7 forKey:@"_scope"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCurrent];
  [v5 encodeObject:v8 forKey:@"_isCurrent"];

  [v5 encodeObject:self->_expirationDate forKey:@"_expirationDate"];
  [v5 encodeObject:self->_softExpirationDate forKey:@"_softExpirationDate"];
  [v5 encodeObject:self->_recipe forKey:@"_recipe"];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_version];
  [v5 encodeObject:v9 forKey:@"_version"];

  v10 = [(PRLikeness *)self staticRepresentationData];
  [v5 encodeObject:v10 forKey:@"_staticRepresentationData"];

  [v5 encodeObject:self->_creationDate forKey:@"_creationDate"];
  [v5 encodeObject:self->_insertionDate forKey:@"_insertionDate"];
  [v5 encodeObject:self->_dirtyProperties forKey:@"_dirtyProperties"];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(self->_cropRectForTopLeftOrigin);
  [v5 encodeObject:DictionaryRepresentation forKey:@"_cropRectForTopLeftOrigin"];
}

+ (id)likenessWithPropagatedData:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v3 = a3;
  v4 = [v3 subdataWithRange:{0, objc_msgSend(v3, "length") - 1}];
  v5 = [v3 subdataWithRange:{objc_msgSend(v3, "length") - 1, 1}];

  v6 = [v5 bytes];
  if (!v6)
  {
    v7 = 4;
    goto LABEL_8;
  }

  v7 = *v6;
  if (v7 == 3)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (v7 != 1)
  {
LABEL_8:
    v9 = _PRGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      v13 = 136315650;
      v14 = "+[PRLikeness likenessWithPropagatedData:]";
      v15 = 1024;
      v16 = 243;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Unsupported likeness type parsed: %@", &v13, 0x1Cu);
    }

    goto LABEL_11;
  }

  v8 = [PRLikeness monogramWithRecipe:v4 staticRepresentation:0];
LABEL_12:

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)dataForPropagation
{
  recipe = self->_recipe;
  if (recipe)
  {
    v4 = [(NSData *)recipe mutableCopy];
    type = self->_type;
    [v4 appendBytes:&type length:1];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  staticRepresentation = self->_staticRepresentation;
  if (staticRepresentation)
  {
    CGImageRelease(staticRepresentation);
    self->_staticRepresentation = 0;
  }

  v4.receiver = self;
  v4.super_class = PRLikeness;
  [(PRLikeness *)&v4 dealloc];
}

- (void)setCurrent:(BOOL)a3
{
  if (self->_isCurrent != a3)
  {
    self->_isCurrent = a3;
    [(NSMutableSet *)self->_dirtyProperties addObject:@"current"];
  }
}

- (void)setRecipe:(id)a3
{
  v6 = a3;
  if (([(NSData *)self->_recipe isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    recipe = self->_recipe;
    self->_recipe = v4;

    [(NSMutableSet *)self->_dirtyProperties addObject:@"recipe"];
  }
}

- (void)setExternalIdentifier:(id)a3
{
  v6 = a3;
  if (([(NSString *)self->_externalIdentifier isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    externalIdentifier = self->_externalIdentifier;
    self->_externalIdentifier = v4;

    [(NSMutableSet *)self->_dirtyProperties addObject:@"eid"];
  }
}

- (void)setCropRectForTopLeftOrigin:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_cropRectForTopLeftOrigin, a3))
  {
    [(PRLikeness *)self willChangeValueForKey:@"cropRectForTopLeftOrigin"];
    [(PRLikeness *)self willChangeValueForKey:@"cropRectForBottomLeftOrigin"];
    [(PRLikeness *)self willChangeValueForKey:@"cropRect"];
    self->_cropRectForTopLeftOrigin.origin.x = x;
    self->_cropRectForTopLeftOrigin.origin.y = y;
    self->_cropRectForTopLeftOrigin.size.width = width;
    self->_cropRectForTopLeftOrigin.size.height = height;
    [(NSMutableSet *)self->_dirtyProperties addObject:@"crop"];
    [(PRLikeness *)self didChangeValueForKey:@"cropRectForTopLeftOrigin"];
    [(PRLikeness *)self didChangeValueForKey:@"cropRectForBottomLeftOrigin"];

    [(PRLikeness *)self didChangeValueForKey:@"cropRect"];
  }
}

- (CGRect)cropRectForBottomLeftOrigin
{
  [PRLikeness _flippedRectForRect:self->_staticRepresentation relativeToImage:self->_cropRectForTopLeftOrigin.origin.x, self->_cropRectForTopLeftOrigin.origin.y, self->_cropRectForTopLeftOrigin.size.width, self->_cropRectForTopLeftOrigin.size.height];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGImage)staticRepresentation
{
  v15 = *MEMORY[0x277D85DE8];
  staticRepresentation = self->_staticRepresentation;
  if (!staticRepresentation)
  {
    staticRepresentationData = self->_staticRepresentationData;
    if (!staticRepresentationData)
    {
      staticRepresentation = 0;
      goto LABEL_2;
    }

    v7 = CGDataProviderCreateWithCFData(staticRepresentationData);
    if (v7)
    {
      v8 = v7;
      staticRepresentation = CGImageCreateWithPNGDataProvider(v7, 0, 1, kCGRenderingIntentDefault);
      CGDataProviderRelease(v8);
      self->_staticRepresentation = staticRepresentation;
      if (staticRepresentation)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v9 = _PRGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "_PRCreateImageWithPNGData";
        v13 = 1024;
        v14 = 527;
        _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) CGDataProviderCreateWithCFData returned NULL!", &v11, 0x12u);
      }

      self->_staticRepresentation = 0;
    }

    v10 = _PRGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[PRLikeness staticRepresentation]";
      v13 = 1024;
      v14 = 349;
      _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) CGImageCreateWithPNGDataProvider returned NULL!", &v11, 0x12u);
    }

    staticRepresentation = self->_staticRepresentation;
  }

LABEL_2:
  v3 = *MEMORY[0x277D85DE8];
  return staticRepresentation;
}

- (void)setStaticRepresentation:(CGImage *)a3
{
  if (a3)
  {
    self->_staticRepresentation = CGImageRetain(a3);
  }

  else
  {
    staticRepresentation = self->_staticRepresentation;
    if (staticRepresentation)
    {
      CGImageRelease(staticRepresentation);
    }

    self->_staticRepresentation = 0;
  }

  staticRepresentationData = self->_staticRepresentationData;
  self->_staticRepresentationData = 0;

  dirtyProperties = self->_dirtyProperties;

  [(NSMutableSet *)dirtyProperties addObject:@"staticrep"];
}

- (NSData)staticRepresentationData
{
  v18 = *MEMORY[0x277D85DE8];
  staticRepresentation = self->_staticRepresentation;
  if (staticRepresentation && !self->_staticRepresentationData)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
    v5 = CGImageDestinationCreateWithData(Mutable, *MEMORY[0x277CC2120], 1uLL, 0);
    if (v5)
    {
      v6 = v5;
      CGImageDestinationAddImage(v5, staticRepresentation, 0);
      if (!CGImageDestinationFinalize(v6))
      {
        v7 = _PRGetLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315394;
          v15 = "_PRGetPNGDataForImage";
          v16 = 1024;
          v17 = 556;
          _os_log_impl(&dword_25E428000, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) CGImageDestinationFinalize returned false!", &v14, 0x12u);
        }

        CFRelease(Mutable);
        Mutable = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v8 = _PRGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315394;
        v15 = "_PRGetPNGDataForImage";
        v16 = 1024;
        v17 = 548;
        _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) CGImageDestinationCreateWithData return NULL!", &v14, 0x12u);
      }

      CFRelease(Mutable);
      Mutable = 0;
    }

    staticRepresentationData = self->_staticRepresentationData;
    self->_staticRepresentationData = Mutable;

    if (!self->_staticRepresentationData)
    {
      v10 = _PRGetLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315394;
        v15 = "[PRLikeness staticRepresentationData]";
        v16 = 1024;
        v17 = 380;
        _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) _PRGetPNGDataForImage returned nil!", &v14, 0x12u);
      }
    }
  }

  v11 = self->_staticRepresentationData;
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)descriptionForScope:(unint64_t)a3
{
  v3 = @"(unknown)";
  if (a3 == 1)
  {
    v3 = @"private";
  }

  if (a3 == 2)
  {
    return @"public";
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)scopeFromDescription:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"private"])
  {
    v4 = 1;
  }

  else if ([v3 isEqual:@"public"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)typeDescription
{
  v2 = self->_type - 1;
  if (v2 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return &off_279A1B6C8[v2]->isa;
  }
}

- (id)description
{
  recipe = self->_recipe;
  if (recipe)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSData length](recipe, "length")}];
    v26 = [v4 stringWithFormat:@"NSData of size %@ bytes", v5];
  }

  else
  {
    v26 = @"(none)";
  }

  staticRepresentation = self->_staticRepresentation;
  if (staticRepresentation)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CGImageGetWidth(staticRepresentation)];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CGImageGetHeight(self->_staticRepresentation)];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@x%@ CGImageRef - ", v7, v8];
  }

  else
  {
    v25 = &stru_287026288;
  }

  if (CGRectIsNull(self->_cropRectForTopLeftOrigin))
  {
    v9 = @"(none)";
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{(%.1f, %.1f), w: %.1f, h: %.1f}", *&self->_cropRectForTopLeftOrigin.origin.x, *&self->_cropRectForTopLeftOrigin.origin.y, *&self->_cropRectForTopLeftOrigin.size.width, *&self->_cropRectForTopLeftOrigin.size.height];
  }

  if ([(NSMutableSet *)self->_dirtyProperties count])
  {
    v10 = [(NSMutableSet *)self->_dirtyProperties allObjects];
    v11 = [v10 componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = @"(none)";
  }

  v23 = v11;
  v12 = [objc_opt_class() _dateFormatter];
  v13 = [v12 stringFromDate:self->_softExpirationDate];
  v14 = [v12 stringFromDate:self->_expirationDate];
  v15 = [v12 stringFromDate:self->_creationDate];
  v24 = MEMORY[0x277CCACA8];
  v16 = [(PRLikeness *)self typeDescription];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_version];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSData length](self->_staticRepresentationData, "length")}];
  v19 = v18;
  if (self->_isCurrent)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [v24 stringWithFormat:@"PRLikeness { type: %@, version: %@, recipe: %@, expires: (h: %@ - s: %@), created: %@, static rep: (%@%@ data bytes), crop: %@, dirty: %@, current: %@ }", v16, v17, v26, v14, v13, v15, v25, v18, v9, v11, v20];

  return v21;
}

+ (id)_dateFormatter
{
  if (_dateFormatter_onceToken != -1)
  {
    +[PRLikeness _dateFormatter];
  }

  v3 = _dateFormatter_formatter;

  return v3;
}

uint64_t __28__PRLikeness__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _dateFormatter_formatter;
  _dateFormatter_formatter = v0;

  [_dateFormatter_formatter setDateStyle:1];
  v2 = _dateFormatter_formatter;

  return [v2 setTimeStyle:1];
}

- (CGRect)cropRectForTopLeftOrigin
{
  x = self->_cropRectForTopLeftOrigin.origin.x;
  y = self->_cropRectForTopLeftOrigin.origin.y;
  width = self->_cropRectForTopLeftOrigin.size.width;
  height = self->_cropRectForTopLeftOrigin.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end