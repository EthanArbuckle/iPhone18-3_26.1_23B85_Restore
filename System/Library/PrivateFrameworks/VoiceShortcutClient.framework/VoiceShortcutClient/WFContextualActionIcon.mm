@interface WFContextualActionIcon
+ (WFContextualActionIcon)iconWithApplicationBundleIdentifier:(id)a3;
+ (WFContextualActionIcon)iconWithINImage:(id)a3 displayStyle:(unint64_t)a4 completion:(id)a5;
+ (WFContextualActionIcon)iconWithImageData:(id)a3 scale:(double)a4 displayStyle:(unint64_t)a5;
+ (WFContextualActionIcon)iconWithImageName:(id)a3;
+ (WFContextualActionIcon)iconWithImageURL:(id)a3 displayStyle:(unint64_t)a4;
+ (WFContextualActionIcon)iconWithSystemName:(id)a3;
+ (id)imageNamed:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)imageData;
- (WFContextualActionIcon)initWithApplicationBundleIdentifier:(id)a3;
- (WFContextualActionIcon)initWithCoder:(id)a3;
- (WFContextualActionIcon)initWithImageData:(id)a3 scale:(double)a4 displayStyle:(unint64_t)a5;
- (WFContextualActionIcon)initWithImageName:(id)a3;
- (WFContextualActionIcon)initWithImageURL:(id)a3 displayStyle:(unint64_t)a4;
- (WFContextualActionIcon)initWithLNPropertyIdentifier:(id)a3 displayStyle:(unint64_t)a4;
- (WFContextualActionIcon)initWithSystemName:(id)a3;
- (WFIcon)wfIcon;
- (double)imageScale;
- (id)renderedImage;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)loadLNPropertyImageWithCompletion:(id)a3;
@end

@implementation WFContextualActionIcon

- (NSData)imageData
{
  v3 = [(WFContextualActionIcon *)self renderedImage];
  if (v3)
  {
    v4 = [(WFContextualActionIcon *)self renderedImage];
    v5 = [v4 PNGRepresentation];
  }

  else
  {
    v5 = self->_imageData;
  }

  return v5;
}

- (id)renderedImage
{
  v3 = [(WFContextualActionIcon *)self imageName];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_opt_class();
    v6 = [(WFContextualActionIcon *)self imageName];
    v7 = [v5 imageNamed:v6];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFContextualActionIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemName"];
  if (v5)
  {
    self = [(WFContextualActionIcon *)self initWithSystemName:v5];
    v6 = self;
  }

  else
  {
    v7 = [v4 decodeIntegerForKey:@"displayStyle"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    if (v8)
    {
      self = [(WFContextualActionIcon *)self initWithImageURL:v8 displayStyle:v7];
      v6 = self;
    }

    else
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
      [v4 decodeDoubleForKey:@"imageScale"];
      if (v9)
      {
        self = [(WFContextualActionIcon *)self initWithImageData:v9 scale:v7 displayStyle:?];
        v6 = self;
      }

      else
      {
        v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
        if (v10)
        {
          self = [(WFContextualActionIcon *)self initWithImageName:v10];
          v6 = self;
        }

        else
        {
          v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
          if (v11)
          {
            self = [(WFContextualActionIcon *)self initWithApplicationBundleIdentifier:v11];
            v6 = self;
          }

          else
          {
            v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lnPropertyIdentifier"];
            if (v12)
            {
              self = [(WFContextualActionIcon *)self initWithLNPropertyIdentifier:v12 displayStyle:v7];
              v6 = self;
            }

            else
            {
              v6 = 0;
            }
          }
        }
      }
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  systemName = self->_systemName;
  v5 = a3;
  [v5 encodeObject:systemName forKey:@"systemName"];
  [v5 encodeObject:self->_imageData forKey:@"imageData"];
  [v5 encodeDouble:@"imageScale" forKey:self->_imageScale];
  [v5 encodeObject:self->_imageURL forKey:@"imageURL"];
  [v5 encodeObject:self->_imageName forKey:@"imageName"];
  [v5 encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  [v5 encodeInteger:self->_displayStyle forKey:@"displayStyle"];
  [v5 encodeObject:self->_lnPropertyIdentifier forKey:@"lnPropertyIdentifier"];
}

- (void)loadLNPropertyImageWithCompletion:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFContextualActionIcon *)self lnPropertyIdentifier];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [(WFContextualActionIcon *)self lnPropertyIdentifier];
    v8 = [v6 initWithUUIDString:v7];

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
        v4[2](v4, 0, v12);
      }

      else
      {
        v13 = [v11 objectForKeyedSubscript:v8];
        v14 = v13;
        if (v13)
        {
          v22 = v13;
          v15 = [v13 value];
          v16 = [v15 displayRepresentation];
          v17 = [v16 image];
          v18 = [v17 inImage];

          if (v18)
          {
            v19 = [(WFContextualActionIcon *)self displayStyle];
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __60__WFContextualActionIcon_loadLNPropertyImageWithCompletion___block_invoke;
            v23[3] = &unk_1E7B02740;
            v24 = v4;
            [WFContextualActionIcon iconWithINImage:v18 displayStyle:v19 completion:v23];
            v20 = v24;
          }

          else
          {
            v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFContextualActionIconErrorDomain" code:2 userInfo:0];
            v4[2](v4, 0, v20);
          }

          v14 = v22;
        }

        else
        {
          v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFContextualActionIconErrorDomain" code:1 userInfo:0];
          v4[2](v4, 0, v18);
        }
      }
    }

    else
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFContextualActionIconErrorDomain" code:0 userInfo:0];
      v4[2](v4, 0, v9);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFContextualActionIconErrorDomain" code:0 userInfo:0];
    v4[2](v4, 0, v8);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (double)imageScale
{
  v3 = [(WFContextualActionIcon *)self renderedImage];
  if (v3)
  {
    v4 = [(WFContextualActionIcon *)self renderedImage];
    [v4 scale];
    imageScale = v5;
  }

  else
  {
    imageScale = self->_imageScale;
  }

  return imageScale;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_31:

      goto LABEL_32;
    }

    v7 = [(WFContextualActionIcon *)v6 systemName];
    v8 = [(WFContextualActionIcon *)self systemName];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_29;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v16 = [(WFContextualActionIcon *)v6 imageData];
    v17 = [(WFContextualActionIcon *)self imageData];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_28;
      }

      LODWORD(v12) = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_29;
      }
    }

    [(WFContextualActionIcon *)v6 imageScale];
    v22 = v21;
    [(WFContextualActionIcon *)self imageScale];
    if (v22 != v23)
    {
      LOBYTE(v12) = 0;
LABEL_29:

      goto LABEL_30;
    }

    v24 = [(WFContextualActionIcon *)v6 applicationBundleIdentifier];
    v25 = [(WFContextualActionIcon *)self applicationBundleIdentifier];
    v20 = v24;
    v26 = v25;
    v19 = v26;
    if (v20 == v26)
    {
    }

    else
    {
      if (!v20 || !v26)
      {

        LOBYTE(v12) = 0;
        goto LABEL_28;
      }

      LODWORD(v12) = [v20 isEqualToString:v26];

      if (!v12)
      {
        goto LABEL_28;
      }
    }

    v12 = [(WFContextualActionIcon *)v6 displayStyle];
    LOBYTE(v12) = v12 == [(WFContextualActionIcon *)self displayStyle];
LABEL_28:

    goto LABEL_29;
  }

  LOBYTE(v12) = 1;
LABEL_32:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFContextualActionIcon *)self systemName];

  if (v4)
  {
    v5 = [(WFContextualActionIcon *)self systemName];
    v6 = [v3 combineContentsOfPropertyListObject:v5];
  }

  v7 = [(WFContextualActionIcon *)self imageData];

  if (v7)
  {
    v8 = [(WFContextualActionIcon *)self imageData];
    v9 = [v3 combineContentsOfPropertyListObject:v8];
  }

  v10 = MEMORY[0x1E696AD98];
  [(WFContextualActionIcon *)self imageScale];
  v11 = [v10 numberWithDouble:?];
  v12 = [v3 combineContentsOfPropertyListObject:v11];

  v13 = [(WFContextualActionIcon *)self applicationBundleIdentifier];

  if (v13)
  {
    v14 = [(WFContextualActionIcon *)self applicationBundleIdentifier];
    v15 = [v3 combineContentsOfPropertyListObject:v14];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFContextualActionIcon displayStyle](self, "displayStyle")}];
  v17 = [v3 combineContentsOfPropertyListObject:v16];

  v18 = [v3 finalize];
  return v18;
}

- (WFContextualActionIcon)initWithApplicationBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"applicationBundleIdentifier"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
  if (v6 && (v12.receiver = self, v12.super_class = WFContextualActionIcon, (self = [(WFContextualActionIcon *)&v12 init]) != 0))
  {
    v7 = [v5 copy];
    applicationBundleIdentifier = self->_applicationBundleIdentifier;
    self->_applicationBundleIdentifier = v7;

    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFContextualActionIcon)initWithLNPropertyIdentifier:(id)a3 displayStyle:(unint64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"lnPropertyIdentifier"}];
  }

  v14.receiver = self;
  v14.super_class = WFContextualActionIcon;
  v9 = [(WFContextualActionIcon *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lnPropertyIdentifier, a3);
    v10->_displayStyle = a4;
    v11 = v10;
  }

  return v10;
}

- (WFContextualActionIcon)initWithImageName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"imageName"}];
  }

  v6 = [objc_opt_class() imageNamed:v5];
  if (v6 && (v12.receiver = self, v12.super_class = WFContextualActionIcon, (self = [(WFContextualActionIcon *)&v12 init]) != 0))
  {
    v7 = [v5 copy];
    imageName = self->_imageName;
    self->_imageName = v7;

    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFContextualActionIcon)initWithImageURL:(id)a3 displayStyle:(unint64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"imageURL"}];
  }

  v14.receiver = self;
  v14.super_class = WFContextualActionIcon;
  v9 = [(WFContextualActionIcon *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageURL, a3);
    v10->_displayStyle = a4;
    v11 = v10;
  }

  return v10;
}

- (WFContextualActionIcon)initWithImageData:(id)a3 scale:(double)a4 displayStyle:(unint64_t)a5
{
  v10 = a3;
  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"imageData"}];
  }

  v16.receiver = self;
  v16.super_class = WFContextualActionIcon;
  v11 = [(WFContextualActionIcon *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_imageData, a3);
    v12->_imageScale = a4;
    v12->_displayStyle = a5;
    v13 = v12;
  }

  return v12;
}

- (WFContextualActionIcon)initWithSystemName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFContextualActionIcon.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"systemName"}];
  }

  v12.receiver = self;
  v12.super_class = WFContextualActionIcon;
  v6 = [(WFContextualActionIcon *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    systemName = v6->_systemName;
    v6->_systemName = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)imageNamed:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AAE8];
    v4 = a3;
    v5 = [v3 bundleForClass:objc_opt_class()];
    v6 = [WFImage imageNamed:v4 inBundle:v5 scale:2.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (WFContextualActionIcon)iconWithINImage:(id)a3 displayStyle:(unint64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 _isSystem] && (objc_msgSend(v7, "_name"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [v7 _name];
    v11 = [WFContextualActionIcon iconWithSystemName:v10];
  }

  else
  {
    v12 = [v7 _imageData];

    if (v12)
    {
      v10 = [v7 _imageData];
      v11 = [WFContextualActionIcon iconWithImageData:v10 scale:a4 displayStyle:0.0];
    }

    else
    {
      v13 = [v7 _uri];

      if (!v13)
      {
LABEL_10:
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __66__WFContextualActionIcon_iconWithINImage_displayStyle_completion___block_invoke;
        v16[3] = &unk_1E7B02718;
        v17 = v8;
        [v7 retrieveImageDataWithCompletion:v16];
        v14 = v17;
        goto LABEL_11;
      }

      v10 = [v7 _uri];
      v11 = [WFContextualActionIcon iconWithImageURL:v10 displayStyle:a4];
    }
  }

  v14 = v11;

  if (!v14)
  {
    goto LABEL_10;
  }

  (*(v8 + 2))(v8, v14, 0);
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

+ (WFContextualActionIcon)iconWithApplicationBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[WFContextualActionIcon alloc] initWithApplicationBundleIdentifier:v3];

  return v4;
}

+ (WFContextualActionIcon)iconWithImageName:(id)a3
{
  v3 = a3;
  v4 = [[WFContextualActionIcon alloc] initWithImageName:v3];

  return v4;
}

+ (WFContextualActionIcon)iconWithImageURL:(id)a3 displayStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = [[WFContextualActionIcon alloc] initWithImageURL:v5 displayStyle:a4];

  return v6;
}

+ (WFContextualActionIcon)iconWithImageData:(id)a3 scale:(double)a4 displayStyle:(unint64_t)a5
{
  v7 = a3;
  v8 = [[WFContextualActionIcon alloc] initWithImageData:v7 scale:a5 displayStyle:a4];

  return v8;
}

+ (WFContextualActionIcon)iconWithSystemName:(id)a3
{
  v3 = a3;
  v4 = [[WFContextualActionIcon alloc] initWithSystemName:v3];

  return v4;
}

- (WFIcon)wfIcon
{
  v3 = [(WFContextualActionIcon *)self applicationBundleIdentifier];

  if (v3)
  {
    v4 = [WFAppIcon alloc];
    v5 = [(WFContextualActionIcon *)self applicationBundleIdentifier];
    v6 = [(WFAppIcon *)v4 initWithBundleIdentifier:v5];
  }

  else
  {
    v7 = [(WFContextualActionIcon *)self systemName];

    if (v7)
    {
      v8 = [WFSymbolIcon alloc];
      v5 = [(WFContextualActionIcon *)self systemName];
      v9 = [WFColor colorWithSystemColor:1];
      v10 = +[WFIconColorBackground clearBackground];
      v6 = [(WFSymbolIcon *)v8 initWithSymbolName:v5 symbolColor:v9 background:v10];
    }

    else
    {
      v11 = [(WFContextualActionIcon *)self imageURL];

      v12 = [WFImage alloc];
      if (v11)
      {
        v13 = [(WFContextualActionIcon *)self imageURL];
        v14 = [(WFImage *)v12 initWithContentsOfURL:v13];
      }

      else
      {
        v13 = [(WFContextualActionIcon *)self imageData];
        [(WFContextualActionIcon *)self imageScale];
        v14 = [(WFImage *)v12 initWithData:v13 scale:0 allowAnimated:?];
      }

      v5 = v14;

      if (v5)
      {
        v15 = [v5 imageWithDisplayStyle:{-[WFContextualActionIcon displayStyle](self, "displayStyle") == 1}];
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