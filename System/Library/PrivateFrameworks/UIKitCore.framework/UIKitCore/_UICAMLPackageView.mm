@interface _UICAMLPackageView
- (BOOL)setState:(id)state animated:(BOOL)animated;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UICAMLPackageView)initWithPackageName:(id)name inBundle:(id)bundle;
- (_UICAMLPackageView)initWithURL:(id)l;
- (void)layoutSubviews;
@end

@implementation _UICAMLPackageView

- (_UICAMLPackageView)initWithPackageName:(id)name inBundle:(id)bundle
{
  v5 = [bundle URLForResource:name withExtension:@"ca"];
  v6 = [(_UICAMLPackageView *)self initWithURL:v5];

  return v6;
}

- (_UICAMLPackageView)initWithURL:(id)l
{
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = *MEMORY[0x1E6979EF8];
  v34 = 0;
  v6 = [MEMORY[0x1E6979400] packageWithContentsOfURL:lCopy type:v5 options:0 error:&v34];
  v7 = v34;
  rootLayer = [v6 rootLayer];
  [rootLayer frame];
  v33.receiver = self;
  v33.super_class = _UICAMLPackageView;
  v9 = [(UIView *)&v33 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    v28 = lCopy;
    objc_storeStrong(&v9->_rootLayer, rootLayer);
    v27 = rootLayer;
    [rootLayer frame];
    v10->_originalSize.width = v11;
    v10->_originalSize.height = v12;
    -[CALayer setGeometryFlipped:](v10->_rootLayer, "setGeometryFlipped:", [v6 isGeometryFlipped]);
    layer = [(UIView *)v10 layer];
    [layer addSublayer:v10->_rootLayer];

    publishedObjectNames = [v6 publishedObjectNames];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [publishedObjectNames countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(publishedObjectNames);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [v6 publishedObjectWithName:v20];
          if (v21)
          {
            if (!v17)
            {
              v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(publishedObjectNames, "count")}];
            }

            [v17 setObject:v21 forKey:v20];
          }
        }

        v16 = [publishedObjectNames countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v22 = [v17 copy];
    publishedObjectMap = v10->_publishedObjectMap;
    v10->_publishedObjectMap = v22;

    v24 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:v10->_rootLayer];
    stateController = v10->_stateController;
    v10->_stateController = v24;

    lCopy = v28;
    rootLayer = v27;
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _UICAMLPackageView;
  [(UIView *)&v8 layoutSubviews];
  [(UIView *)self bounds];
  if (v3 / self->_originalSize.width >= v4 / self->_originalSize.height)
  {
    v5 = v4 / self->_originalSize.height;
  }

  else
  {
    v5 = v3 / self->_originalSize.width;
  }

  [(CALayer *)self->_rootLayer setPosition:v3 * 0.5, v4 * 0.5];
  rootLayer = self->_rootLayer;
  CATransform3DMakeScale(&v7, v5, v5, 1.0);
  [(CALayer *)rootLayer setTransform:&v7];
}

- (BOOL)setState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(CALayer *)self->_rootLayer stateWithName:state];
  if (v6)
  {
    stateController = self->_stateController;
    rootLayer = self->_rootLayer;
    if (animatedCopy)
    {
      LODWORD(v7) = 1.0;
      [(CAStateController *)stateController setState:v6 ofLayer:rootLayer transitionSpeed:v7];
    }

    else
    {
      [(CAStateController *)stateController setState:v6 ofLayer:rootLayer];
    }
  }

  return v6 != 0;
}

@end