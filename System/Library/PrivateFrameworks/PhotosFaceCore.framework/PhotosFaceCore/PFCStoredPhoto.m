@interface PFCStoredPhoto
- (PFCStoredPhoto)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFCStoredPhoto

- (void)encodeWithCoder:(id)a3
{
  localIdentifier = self->_localIdentifier;
  v7 = a3;
  [v7 encodeObject:localIdentifier forKey:@"localIdentifier"];
  [v7 encodeObject:self->_modificationDate forKey:@"modificationDate"];
  [v7 encodeObject:self->_creationDate forKey:@"creationDate"];
  parallaxScale = self->_parallaxScale;
  *&parallaxScale = parallaxScale;
  [v7 encodeFloat:@"parallaxScale" forKey:parallaxScale];
  [v7 encodeObject:self->_title forKey:@"title"];
  [v7 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v7 encodeInteger:self->_preferredLayout forKey:@"preferredLayout"];
  [v7 encodeBool:self->_userEdited forKey:@"userEdited"];
  v6 = [(NSArray *)self->_layouts mutableCopy];
  [v7 encodeObject:v6 forKey:@"layouts"];

  [v7 encodeObject:self->_accessibilityDescription forKey:@"accessibilityDescription"];
}

- (PFCStoredPhoto)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PFCStoredPhoto;
  v5 = [(PFCStoredPhoto *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localIdentifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    if (!v5->_creationDate)
    {
      objc_storeStrong(&v5->_creationDate, v5->_modificationDate);
    }

    [v4 decodeFloatForKey:@"parallaxScale"];
    v5->_parallaxScale = v12;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v15;

    v5->_preferredLayout = [v4 decodeIntegerForKey:@"preferredLayout"];
    v5->_userEdited = [v4 decodeBoolForKey:@"userEdited"];
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"layouts"];
    layouts = v5->_layouts;
    v5->_layouts = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityDescription"];
    accessibilityDescription = v5->_accessibilityDescription;
    v5->_accessibilityDescription = v22;

    v24 = v5->_layouts;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = v5->_layouts;
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Array validation failed: putative array is a %@", objc_opt_class()}];
    }

    [(NSArray *)v5->_layouts enumerateObjectsUsingBlock:&__block_literal_global_0];
  }

  return v5;
}

void __32__PFCStoredPhoto_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Array validation failed: expected object class %@, found %@", objc_opt_class(), v2}];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_localIdentifier copyWithZone:a3];
  [v5 setLocalIdentifier:v6];

  v7 = [(NSDate *)self->_modificationDate copyWithZone:a3];
  [v5 setModificationDate:v7];

  v8 = [(NSDate *)self->_creationDate copyWithZone:a3];
  [v5 setCreationDate:v8];

  [v5 setParallaxScale:self->_parallaxScale];
  v9 = [(NSString *)self->_title copyWithZone:a3];
  [v5 setTitle:v9];

  v10 = [(NSString *)self->_subtitle copyWithZone:a3];
  [v5 setSubtitle:v10];

  [v5 setPreferredLayout:self->_preferredLayout];
  [v5 setUserEdited:self->_userEdited];
  v11 = [(NSArray *)self->_layouts copyWithZone:a3];
  [v5 setLayouts:v11];

  v12 = [(NSString *)self->_accessibilityDescription copyWithZone:a3];
  [v5 setAccessibilityDescription:v12];

  return v5;
}

@end