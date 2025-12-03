@interface PUIImageContainerLayer
+ (id)layer;
- (PUIImageContainerLayer)init;
- (PUIImageContainerLayer)initWithCoder:(id)coder;
- (PUIImageContainerLayer)initWithLayer:(id)layer;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSublayers;
@end

@implementation PUIImageContainerLayer

+ (id)layer
{
  v2 = objc_alloc_init(PUIImageContainerLayer);

  return v2;
}

- (PUIImageContainerLayer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PUIImageContainerLayer;
  v5 = [(PUIImageContainerLayer *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageLayer"];
    imageLayer = v5->_imageLayer;
    v5->_imageLayer = v6;

    [(PUIImageContainerLayer *)v5 addSublayer:v5->_imageLayer];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PUIImageContainerLayer;
  coderCopy = coder;
  [(PUIImageContainerLayer *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imageLayer forKey:{@"imageLayer", v5.receiver, v5.super_class}];
}

- (PUIImageContainerLayer)initWithLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = PUIImageContainerLayer;
  return [(PUIImageContainerLayer *)&v4 initWithLayer:layer];
}

- (PUIImageContainerLayer)init
{
  v6.receiver = self;
  v6.super_class = PUIImageContainerLayer;
  v2 = [(PUIImageContainerLayer *)&v6 init];
  if (v2)
  {
    layer = [MEMORY[0x1E6979398] layer];
    imageLayer = v2->_imageLayer;
    v2->_imageLayer = layer;

    [(CALayer *)v2->_imageLayer setName:@"Image Layer"];
    [(CALayer *)v2->_imageLayer setContentsGravity:*MEMORY[0x1E6979DE0]];
    [(PUIImageContainerLayer *)v2 addSublayer:v2->_imageLayer];
  }

  return v2;
}

- (void)layoutSublayers
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PUIImageContainerLayer;
  [(PUIImageContainerLayer *)&v14 layoutSublayers];
  imageLayer = self->_imageLayer;
  [(PUIImageContainerLayer *)self bounds];
  [(CALayer *)imageLayer setFrame:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  sublayers = [(PUIImageContainerLayer *)self sublayers];
  v5 = [sublayers countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (self->_imageLayer != v9)
        {
          [(CALayer *)v9 layoutSublayers];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [sublayers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

@end