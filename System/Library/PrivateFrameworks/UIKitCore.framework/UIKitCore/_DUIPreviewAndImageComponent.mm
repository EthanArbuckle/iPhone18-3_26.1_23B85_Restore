@interface _DUIPreviewAndImageComponent
- (BOOL)isEqual:(id)equal;
- (_DUIPreviewAndImageComponent)initWithCoder:(id)coder;
- (_DUIPreviewAndImageComponent)initWithPreviewAndImageComponent:(id)component;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DUIPreviewAndImageComponent

- (_DUIPreviewAndImageComponent)initWithPreviewAndImageComponent:(id)component
{
  v12.receiver = self;
  v12.super_class = _DUIPreviewAndImageComponent;
  v3 = [(_DUIPreviewAndImageComponent *)&v12 init];
  v4 = v3;
  if (v3)
  {
    v3->_index = [(_DUIPreviewAndImageComponent *)v3 index];
    imageComponent = [(_DUIPreviewAndImageComponent *)v4 imageComponent];
    v6 = [imageComponent copy];
    imageComponent = v4->_imageComponent;
    v4->_imageComponent = v6;

    preview = [(_DUIPreviewAndImageComponent *)v4 preview];
    v9 = [preview copy];
    preview = v4->_preview;
    v4->_preview = v9;
  }

  return v4;
}

- (_DUIPreviewAndImageComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _DUIPreviewAndImageComponent;
  v5 = [(_DUIPreviewAndImageComponent *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preview"];
    preview = v5->_preview;
    v5->_preview = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageComponent"];
    imageComponent = v5->_imageComponent;
    v5->_imageComponent = v8;

    v5->_index = [coderCopy decodeIntegerForKey:@"index"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  preview = [(_DUIPreviewAndImageComponent *)self preview];
  [coderCopy encodeObject:preview forKey:@"preview"];

  imageComponent = [(_DUIPreviewAndImageComponent *)self imageComponent];
  [coderCopy encodeObject:imageComponent forKey:@"imageComponent"];

  [coderCopy encodeInteger:-[_DUIPreviewAndImageComponent index](self forKey:{"index"), @"index"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (self->_index != v5[3])
    {
      LOBYTE(v11) = 0;
LABEL_17:

      goto LABEL_18;
    }

    v7 = v5[1];
    v8 = self->_preview;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      if (!v8 || !v9)
      {
LABEL_16:

        goto LABEL_17;
      }

      v11 = [(_DUIPreview *)v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    imageComponent = self->_imageComponent;
    v13 = v6[2];
    v8 = imageComponent;
    v14 = v13;
    v10 = v14;
    if (v8 == v14)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
      if (v8 && v14)
      {
        LOBYTE(v11) = [(_DUIPreview *)v8 isEqual:v14];
      }
    }

    goto LABEL_16;
  }

  LOBYTE(v11) = 0;
LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  index = self->_index;
  v4 = [(_DUIPreview *)self->_preview hash]^ index;
  return v4 ^ [(_DUIImageComponent *)self->_imageComponent hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithPreviewAndImageComponent:self];
}

@end