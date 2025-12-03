@interface WFContextualActionIcon
+ (WFContextualActionIcon)iconWithApplicationBundleIdentifier:(id)identifier;
+ (WFContextualActionIcon)iconWithINImage:(id)image displayStyle:(unint64_t)style completion:(id)completion;
+ (WFContextualActionIcon)iconWithImageData:(id)data scale:(double)scale displayStyle:(unint64_t)style;
+ (WFContextualActionIcon)iconWithImageName:(id)name;
+ (WFContextualActionIcon)iconWithImageURL:(id)l displayStyle:(unint64_t)style;
+ (WFContextualActionIcon)iconWithSystemName:(id)name;
+ (id)imageNamed:(id)named;
- (BOOL)isEqual:(id)equal;
- (NSData)imageData;
- (WFContextualActionIcon)initWithApplicationBundleIdentifier:(id)identifier;
- (WFContextualActionIcon)initWithCoder:(id)coder;
- (WFContextualActionIcon)initWithImageData:(id)data scale:(double)scale displayStyle:(unint64_t)style;
- (WFContextualActionIcon)initWithImageName:(id)name;
- (WFContextualActionIcon)initWithImageURL:(id)l displayStyle:(unint64_t)style;
- (WFContextualActionIcon)initWithLNPropertyIdentifier:(id)identifier displayStyle:(unint64_t)style;
- (WFContextualActionIcon)initWithSystemName:(id)name;
- (WFIcon)wfIcon;
- (double)imageScale;
- (id)renderedImage;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)loadLNPropertyImageWithCompletion:(id)completion;
@end

@implementation WFContextualActionIcon

- (NSData)imageData
{
  renderedImage = [(WFContextualActionIcon *)self renderedImage];
  if (renderedImage)
  {
    renderedImage2 = [(WFContextualActionIcon *)self renderedImage];
    pNGRepresentation = [renderedImage2 PNGRepresentation];
  }

  else
  {
    pNGRepresentation = self->_imageData;
  }

  return pNGRepresentation;
}

- (id)renderedImage
{
  imageName = [(WFContextualActionIcon *)self imageName];

  if (imageName)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_opt_class();
    imageName2 = [(WFContextualActionIcon *)self imageName];
    v7 = [v5 imageNamed:imageName2];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFContextualActionIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemName"];
  if (v5)
  {
    self = [(WFContextualActionIcon *)self initWithSystemName:v5];
    selfCopy6 = self;
  }

  else
  {
    v7 = [coderCopy decodeIntegerForKey:@"displayStyle"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    if (v8)
    {
      self = [(WFContextualActionIcon *)self initWithImageURL:v8 displayStyle:v7];
      selfCopy6 = self;
    }

    else
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
      [coderCopy decodeDoubleForKey:@"imageScale"];
      if (v9)
      {
        self = [(WFContextualActionIcon *)self initWithImageData:v9 scale:v7 displayStyle:?];
        selfCopy6 = self;
      }

      else
      {
        v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
        if (v10)
        {
          self = [(WFContextualActionIcon *)self initWithImageName:v10];
          selfCopy6 = self;
        }

        else
        {
          v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
          if (v11)
          {
            self = [(WFContextualActionIcon *)self initWithApplicationBundleIdentifier:v11];
            selfCopy6 = self;
          }

          else
          {
            v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lnPropertyIdentifier"];
            if (v12)
            {
              self = [(WFContextualActionIcon *)self initWithLNPropertyIdentifier:v12 displayStyle:v7];
              selfCopy6 = self;
            }

            else
            {
              selfCopy6 = 0;
            }
          }
        }
      }
    }
  }

  return selfCopy6;
}

- (void)encodeWithCoder:(id)coder
{
  systemName = self->_systemName;
  coderCopy = coder;
  [coderCopy encodeObject:systemName forKey:@"systemName"];
  [coderCopy encodeObject:self->_imageData forKey:@"imageData"];
  [coderCopy encodeDouble:@"imageScale" forKey:self->_imageScale];
  [coderCopy encodeObject:self->_imageURL forKey:@"imageURL"];
  [coderCopy encodeObject:self->_imageName forKey:@"imageName"];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  [coderCopy encodeInteger:self->_displayStyle forKey:@"displayStyle"];
  [coderCopy encodeObject:self->_lnPropertyIdentifier forKey:@"lnPropertyIdentifier"];
}

- (void)loadLNPropertyImageWithCompletion:(id)completion
{
  v26[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  lnPropertyIdentifier = [(WFContextualActionIcon *)self lnPropertyIdentifier];

  if (lnPropertyIdentifier)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    lnPropertyIdentifier2 = [(WFContextualActionIcon *)self lnPropertyIdentifier];
    v8 = [v6 initWithUUIDString:lnPropertyIdentifier2];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E69ACDC8]) initWithOptions:2];
      v26[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v25 = 0;
      v11 = [v9 propertiesForIdentifiers:v10 error:&v25];
      v12 = v25;

      if (v12)
      {
        completionCopy[2](completionCopy, 0, v12);
      }

      else
      {
        v13 = [v11 objectForKeyedSubscript:v8];
        v14 = v13;
        if (v13)
        {
          v22 = v13;
          value = [v13 value];
          displayRepresentation = [value displayRepresentation];
          image = [displayRepresentation image];
          inImage = [image inImage];

          if (inImage)
          {
            displayStyle = [(WFContextualActionIcon *)self displayStyle];
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __60__WFContextualActionIcon_loadLNPropertyImageWithCompletion___block_invoke;
            v23[3] = &unk_1E7B02740;
            v24 = completionCopy;
            [WFContextualActionIcon iconWithINImage:inImage displayStyle:displayStyle completion:v23];
            v20 = v24;
          }

          else
          {
            v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFContextualActionIconErrorDomain" code:2 userInfo:0];
            completionCopy[2](completionCopy, 0, v20);
          }

          v14 = v22;
        }

        else
        {
          inImage = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFContextualActionIconErrorDomain" code:1 userInfo:0];
          completionCopy[2](completionCopy, 0, inImage);
        }
      }
    }

    else
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFContextualActionIconErrorDomain" code:0 userInfo:0];
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFContextualActionIconErrorDomain" code:0 userInfo:0];
    completionCopy[2](completionCopy, 0, v8);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (double)imageScale
{
  renderedImage = [(WFContextualActionIcon *)self renderedImage];
  if (renderedImage)
  {
    renderedImage2 = [(WFContextualActionIcon *)self renderedImage];
    [renderedImage2 scale];
    imageScale = v5;
  }

  else
  {
    imageScale = self->_imageScale;
  }

  return imageScale;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(displayStyle) = 0;
LABEL_31:

      goto LABEL_32;
    }

    systemName = [(WFContextualActionIcon *)v6 systemName];
    systemName2 = [(WFContextualActionIcon *)self systemName];
    v9 = systemName;
    v10 = systemName2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(displayStyle) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_29;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(displayStyle) = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    imageData = [(WFContextualActionIcon *)v6 imageData];
    imageData2 = [(WFContextualActionIcon *)self imageData];
    v14 = imageData;
    v18 = imageData2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(displayStyle) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_28;
      }

      LODWORD(displayStyle) = [v14 isEqual:v18];

      if (!displayStyle)
      {
        goto LABEL_29;
      }
    }

    [(WFContextualActionIcon *)v6 imageScale];
    v22 = v21;
    [(WFContextualActionIcon *)self imageScale];
    if (v22 != v23)
    {
      LOBYTE(displayStyle) = 0;
LABEL_29:

      goto LABEL_30;
    }

    applicationBundleIdentifier = [(WFContextualActionIcon *)v6 applicationBundleIdentifier];
    applicationBundleIdentifier2 = [(WFContextualActionIcon *)self applicationBundleIdentifier];
    v20 = applicationBundleIdentifier;
    v26 = applicationBundleIdentifier2;
    v19 = v26;
    if (v20 == v26)
    {
    }

    else
    {
      if (!v20 || !v26)
      {

        LOBYTE(displayStyle) = 0;
        goto LABEL_28;
      }

      LODWORD(displayStyle) = [v20 isEqualToString:v26];

      if (!displayStyle)
      {
        goto LABEL_28;
      }
    }

    displayStyle = [(WFContextualActionIcon *)v6 displayStyle];
    LOBYTE(displayStyle) = displayStyle == [(WFContextualActionIcon *)self displayStyle];
LABEL_28:

    goto LABEL_29;
  }

  LOBYTE(displayStyle) = 1;
LABEL_32:

  return displayStyle;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  systemName = [(WFContextualActionIcon *)self systemName];

  if (systemName)
  {
    systemName2 = [(WFContextualActionIcon *)self systemName];
    v6 = [v3 combineContentsOfPropertyListObject:systemName2];
  }

  imageData = [(WFContextualActionIcon *)self imageData];

  if (imageData)
  {
    imageData2 = [(WFContextualActionIcon *)self imageData];
    v9 = [v3 combineContentsOfPropertyListObject:imageData2];
  }

  v10 = MEMORY[0x1E696AD98];
  [(WFContextualActionIcon *)self imageScale];
  v11 = [v10 numberWithDouble:?];
  v12 = [v3 combineContentsOfPropertyListObject:v11];

  applicationBundleIdentifier = [(WFContextualActionIcon *)self applicationBundleIdentifier];

  if (applicationBundleIdentifier)
  {
    applicationBundleIdentifier2 = [(WFContextualActionIcon *)self applicationBundleIdentifier];
    v15 = [v3 combineContentsOfPropertyListObject:applicationBundleIdentifier2];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFContextualActionIcon displayStyle](self, "displayStyle")}];
  v17 = [v3 combineContentsOfPropertyListObject:v16];

  v18 = [v3 finalize];
  return v18;
}

- (WFContextualActionIcon)initWithApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"applicationBundleIdentifier"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];
  if (v6 && (v12.receiver = self, v12.super_class = WFContextualActionIcon, (self = [(WFContextualActionIcon *)&v12 init]) != 0))
  {
    v7 = [identifierCopy copy];
    applicationBundleIdentifier = self->_applicationBundleIdentifier;
    self->_applicationBundleIdentifier = v7;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFContextualActionIcon)initWithLNPropertyIdentifier:(id)identifier displayStyle:(unint64_t)style
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"lnPropertyIdentifier"}];
  }

  v14.receiver = self;
  v14.super_class = WFContextualActionIcon;
  v9 = [(WFContextualActionIcon *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lnPropertyIdentifier, identifier);
    v10->_displayStyle = style;
    v11 = v10;
  }

  return v10;
}

- (WFContextualActionIcon)initWithImageName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"imageName"}];
  }

  v6 = [objc_opt_class() imageNamed:nameCopy];
  if (v6 && (v12.receiver = self, v12.super_class = WFContextualActionIcon, (self = [(WFContextualActionIcon *)&v12 init]) != 0))
  {
    v7 = [nameCopy copy];
    imageName = self->_imageName;
    self->_imageName = v7;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFContextualActionIcon)initWithImageURL:(id)l displayStyle:(unint64_t)style
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"imageURL"}];
  }

  v14.receiver = self;
  v14.super_class = WFContextualActionIcon;
  v9 = [(WFContextualActionIcon *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageURL, l);
    v10->_displayStyle = style;
    v11 = v10;
  }

  return v10;
}

- (WFContextualActionIcon)initWithImageData:(id)data scale:(double)scale displayStyle:(unint64_t)style
{
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"imageData"}];
  }

  v16.receiver = self;
  v16.super_class = WFContextualActionIcon;
  v11 = [(WFContextualActionIcon *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_imageData, data);
    v12->_imageScale = scale;
    v12->_displayStyle = style;
    v13 = v12;
  }

  return v12;
}

- (WFContextualActionIcon)initWithSystemName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"systemName"}];
  }

  v12.receiver = self;
  v12.super_class = WFContextualActionIcon;
  v6 = [(WFContextualActionIcon *)&v12 init];
  if (v6)
  {
    v7 = [nameCopy copy];
    systemName = v6->_systemName;
    v6->_systemName = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)imageNamed:(id)named
{
  if (named)
  {
    v3 = MEMORY[0x1E696AAE8];
    namedCopy = named;
    v5 = [v3 bundleForClass:objc_opt_class()];
    v6 = [WFImage imageNamed:namedCopy inBundle:v5 scale:2.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (WFContextualActionIcon)iconWithINImage:(id)image displayStyle:(unint64_t)style completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  if ([imageCopy _isSystem] && (objc_msgSend(imageCopy, "_name"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    _name = [imageCopy _name];
    v11 = [WFContextualActionIcon iconWithSystemName:_name];
  }

  else
  {
    _imageData = [imageCopy _imageData];

    if (_imageData)
    {
      _name = [imageCopy _imageData];
      v11 = [WFContextualActionIcon iconWithImageData:_name scale:style displayStyle:0.0];
    }

    else
    {
      _uri = [imageCopy _uri];

      if (!_uri)
      {
LABEL_10:
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __66__WFContextualActionIcon_iconWithINImage_displayStyle_completion___block_invoke;
        v16[3] = &unk_1E7B02718;
        v17 = completionCopy;
        [imageCopy retrieveImageDataWithCompletion:v16];
        v14 = v17;
        goto LABEL_11;
      }

      _name = [imageCopy _uri];
      v11 = [WFContextualActionIcon iconWithImageURL:_name displayStyle:style];
    }
  }

  v14 = v11;

  if (!v14)
  {
    goto LABEL_10;
  }

  (*(completionCopy + 2))(completionCopy, v14, 0);
LABEL_11:

  return result;
}

void __66__WFContextualActionIcon_iconWithINImage_displayStyle_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 _imageData];
    v9 = v3;
    if (v3)
    {
      v4 = [WFContextualActionIcon iconWithImageData:v3 scale:0 displayStyle:0.0];
      v5 = *(*(a1 + 32) + 16);
    }

    else
    {
      v8 = *(a1 + 32);
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFContextualActionIconErrorDomain" code:3 userInfo:0];
      v5 = *(v8 + 16);
    }

    v5();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 32) + 16);

    v7();
  }
}

+ (WFContextualActionIcon)iconWithApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[WFContextualActionIcon alloc] initWithApplicationBundleIdentifier:identifierCopy];

  return v4;
}

+ (WFContextualActionIcon)iconWithImageName:(id)name
{
  nameCopy = name;
  v4 = [[WFContextualActionIcon alloc] initWithImageName:nameCopy];

  return v4;
}

+ (WFContextualActionIcon)iconWithImageURL:(id)l displayStyle:(unint64_t)style
{
  lCopy = l;
  v6 = [[WFContextualActionIcon alloc] initWithImageURL:lCopy displayStyle:style];

  return v6;
}

+ (WFContextualActionIcon)iconWithImageData:(id)data scale:(double)scale displayStyle:(unint64_t)style
{
  dataCopy = data;
  v8 = [[WFContextualActionIcon alloc] initWithImageData:dataCopy scale:style displayStyle:scale];

  return v8;
}

+ (WFContextualActionIcon)iconWithSystemName:(id)name
{
  nameCopy = name;
  v4 = [[WFContextualActionIcon alloc] initWithSystemName:nameCopy];

  return v4;
}

- (WFIcon)wfIcon
{
  applicationBundleIdentifier = [(WFContextualActionIcon *)self applicationBundleIdentifier];

  if (applicationBundleIdentifier)
  {
    v4 = [WFAppIcon alloc];
    applicationBundleIdentifier2 = [(WFContextualActionIcon *)self applicationBundleIdentifier];
    v6 = [(WFAppIcon *)v4 initWithBundleIdentifier:applicationBundleIdentifier2];
  }

  else
  {
    systemName = [(WFContextualActionIcon *)self systemName];

    if (systemName)
    {
      v8 = [WFSymbolIcon alloc];
      applicationBundleIdentifier2 = [(WFContextualActionIcon *)self systemName];
      v9 = [WFColor colorWithSystemColor:1];
      v10 = +[WFIconColorBackground clearBackground];
      v6 = [(WFSymbolIcon *)v8 initWithSymbolName:applicationBundleIdentifier2 symbolColor:v9 background:v10];
    }

    else
    {
      imageURL = [(WFContextualActionIcon *)self imageURL];

      v12 = [WFImage alloc];
      if (imageURL)
      {
        imageURL2 = [(WFContextualActionIcon *)self imageURL];
        v14 = [(WFImage *)v12 initWithContentsOfURL:imageURL2];
      }

      else
      {
        imageURL2 = [(WFContextualActionIcon *)self imageData];
        [(WFContextualActionIcon *)self imageScale];
        v14 = [(WFImage *)v12 initWithData:imageURL2 scale:0 allowAnimated:?];
      }

      applicationBundleIdentifier2 = v14;

      if (applicationBundleIdentifier2)
      {
        v15 = [applicationBundleIdentifier2 imageWithDisplayStyle:{-[WFContextualActionIcon displayStyle](self, "displayStyle") == 1}];
        v6 = [[WFImageIcon alloc] initWithImage:v15];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

@end