@interface PUIImageContainerLayer
+ (id)layer;
- (PUIImageContainerLayer)init;
- (PUIImageContainerLayer)initWithCoder:(id)a3;
- (PUIImageContainerLayer)initWithLayer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSublayers;
@end

@implementation PUIImageContainerLayer

+ (id)layer
{
  v2 = objc_alloc_init(PUIImageContainerLayer);

  return v2;
}

- (PUIImageContainerLayer)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PUIImageContainerLayer;
  v5 = [(PUIImageContainerLayer *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageLayer"];
    imageLayer = v5->_imageLayer;
    v5->_imageLayer = v6;

    [(PUIImageContainerLayer *)v5 addSublayer:v5->_imageLayer];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PUIImageContainerLayer;
  v4 = a3;
  [(PUIImageContainerLayer *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_imageLayer forKey:{@"imageLayer", v5.receiver, v5.super_class}];
}

- (PUIImageContainerLayer)initWithLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUIImageContainerLayer;
  return [(PUIImageContainerLayer *)&v4 initWithLayer:a3];
}

- (PUIImageContainerLayer)init
{
  v6.receiver = self;
  v6.super_class = PUIImageContainerLayer;
  v2 = [(PUIImageContainerLayer *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6979398] layer];
    imageLayer = v2->_imageLayer;
    v2->_imageLayer = v3;

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
  v4 = [(PUIImageContainerLayer *)self sublayers];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (self->_imageLayer != v9)
        {
          [(CALayer *)v9 layoutSublayers];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

@end