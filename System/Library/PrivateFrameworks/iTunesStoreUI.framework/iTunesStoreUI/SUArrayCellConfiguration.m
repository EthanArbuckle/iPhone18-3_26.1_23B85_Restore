@interface SUArrayCellConfiguration
- (CGRect)frameForImageAtIndex:(unint64_t)a3;
- (CGRect)frameForLabelAtIndex:(unint64_t)a3;
- (SUArrayCellConfiguration)initWithStringCount:(unint64_t)a3 imageCount:(unint64_t)a4;
- (id)imageAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4;
- (id)stringForLabelAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)reloadData;
- (void)setLayoutSize:(CGSize)a3;
@end

@implementation SUArrayCellConfiguration

- (SUArrayCellConfiguration)initWithStringCount:(unint64_t)a3 imageCount:(unint64_t)a4
{
  v26.receiver = self;
  v26.super_class = SUArrayCellConfiguration;
  v6 = [(SUArrayCellConfiguration *)&v26 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  if (a4)
  {
    v6->_imageFrames = malloc_type_malloc(32 * a4, 0x1000040E0EAB150uLL);
    v7->_images = malloc_type_malloc(8 * a4, 0x80040B8603338uLL);
    v8 = malloc_type_malloc(8 * a4, 0x80040B8603338uLL);
    v7->_selectedImages = v8;
    if (!v7->_imageFrames)
    {
      goto LABEL_21;
    }

    if (v7->_images)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    if (!a3 || (v10 & 1) == 0)
    {
      if (v10)
      {
        p_numberOfImages = &v7->_numberOfImages;
        v7->_numberOfImages = a4;
        p_numberOfStrings = &v7->_numberOfStrings;
        v7->_numberOfStrings = a3;
        if (!a3)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

LABEL_21:

      return 0;
    }
  }

  else if (!a3)
  {
    p_numberOfImages = &v6->_numberOfImages;
    v6->_numberOfImages = 0;
    v6->_numberOfStrings = 0;
    goto LABEL_26;
  }

  v7->_stringFrames = malloc_type_malloc(32 * a3, 0x1000040E0EAB150uLL);
  v13 = malloc_type_malloc(8 * a3, 0x80040B8603338uLL);
  v7->_strings = v13;
  if (v7->_stringFrames)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_21;
  }

  p_numberOfImages = &v7->_numberOfImages;
  v7->_numberOfImages = a4;
  p_numberOfStrings = &v7->_numberOfStrings;
  v7->_numberOfStrings = a3;
LABEL_22:
  v15 = 0;
  v16 = 0;
  v17 = *MEMORY[0x1E695F058];
  v18 = *(MEMORY[0x1E695F058] + 16);
  do
  {
    p_x = &v7->_stringFrames[v15].origin.x;
    *p_x = v17;
    p_x[1] = v18;
    v7->_strings[v16++] = 0;
    ++v15;
  }

  while (v16 < *p_numberOfStrings);
LABEL_26:
  if (*p_numberOfImages)
  {
    v20 = 0;
    v21 = 0;
    v22 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 16);
    do
    {
      v24 = &v7->_imageFrames[v20].origin.x;
      *v24 = v22;
      v24[1] = v23;
      v7->_images[v21] = 0;
      v7->_selectedImages[v21++] = 0;
      ++v20;
    }

    while (v21 < *p_numberOfImages);
  }

  return v7;
}

- (void)dealloc
{
  if (self->_numberOfStrings)
  {
    v3 = 0;
    do
    {

      self->_strings[v3++] = 0;
    }

    while (v3 < self->_numberOfStrings);
    free(self->_strings);
    self->_strings = 0;
    free(self->_stringFrames);
    self->_stringFrames = 0;
  }

  if (self->_numberOfImages)
  {
    v4 = 0;
    do
    {

      self->_images[v4] = 0;
      self->_selectedImages[v4++] = 0;
    }

    while (v4 < self->_numberOfImages);
    free(self->_images);
    self->_images = 0;
    free(self->_selectedImages);
    self->_selectedImages = 0;
    free(self->_imageFrames);
    self->_imageFrames = 0;
  }

  v5.receiver = self;
  v5.super_class = SUArrayCellConfiguration;
  [(SUCellConfiguration *)&v5 dealloc];
}

- (CGRect)frameForImageAtIndex:(unint64_t)a3
{
  if (self->_numberOfImages <= a3)
  {
    v3 = MEMORY[0x1E695F058];
  }

  else
  {
    v3 = &self->_imageFrames[a3];
  }

  width = v3->size.width;
  height = v3->size.height;
  x = v3->origin.x;
  y = v3->origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frameForLabelAtIndex:(unint64_t)a3
{
  if (self->_numberOfStrings <= a3)
  {
    v3 = MEMORY[0x1E695F058];
  }

  else
  {
    v3 = &self->_stringFrames[a3];
  }

  width = v3->size.width;
  height = v3->size.height;
  x = v3->origin.x;
  y = v3->origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)imageAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4
{
  if (self->_numberOfImages <= a3)
  {
    return 0;
  }

  v4 = self->_images[a3];
  if ((a4 & 1) != 0 && self->_selectedImages[a3])
  {
    return self->_selectedImages[a3];
  }

  return v4;
}

- (void)reloadData
{
  [(SUArrayCellConfiguration *)self reloadImages];
  [(SUArrayCellConfiguration *)self reloadStrings];
  if (self->super._layoutSize.width > 0.00000011920929)
  {

    [(SUArrayCellConfiguration *)self reloadLayoutInformation];
  }
}

- (void)setLayoutSize:(CGSize)a3
{
  width = a3.width;
  height = self->super._layoutSize.height;
  if (self->super._layoutSize.width != a3.width || height != a3.height)
  {
    v7.receiver = self;
    v7.super_class = SUArrayCellConfiguration;
    [(SUCellConfiguration *)&v7 setLayoutSize:a3.width, a3.height, height];
    if (width > 0.00000011920929)
    {
      [(SUArrayCellConfiguration *)self reloadLayoutInformation];
    }
  }
}

- (id)stringForLabelAtIndex:(unint64_t)a3
{
  if (self->_numberOfStrings <= a3)
  {
    return 0;
  }

  else
  {
    return self->_strings[a3];
  }
}

@end