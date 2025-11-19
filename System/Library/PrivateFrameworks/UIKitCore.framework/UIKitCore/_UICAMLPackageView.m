@interface _UICAMLPackageView
- (BOOL)setState:(id)a3 animated:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UICAMLPackageView)initWithPackageName:(id)a3 inBundle:(id)a4;
- (_UICAMLPackageView)initWithURL:(id)a3;
- (void)layoutSubviews;
@end

@implementation _UICAMLPackageView

- (_UICAMLPackageView)initWithPackageName:(id)a3 inBundle:(id)a4
{
  v5 = [a4 URLForResource:a3 withExtension:@"ca"];
  v6 = [(_UICAMLPackageView *)self initWithURL:v5];

  return v6;
}

- (_UICAMLPackageView)initWithURL:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6979EF8];
  v34 = 0;
  v6 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v4 type:v5 options:0 error:&v34];
  v7 = v34;
  v8 = [v6 rootLayer];
  [v8 frame];
  v33.receiver = self;
  v33.super_class = _UICAMLPackageView;
  v9 = [(UIView *)&v33 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    v28 = v4;
    objc_storeStrong(&v9->_rootLayer, v8);
    v27 = v8;
    [v8 frame];
    v10->_originalSize.width = v11;
    v10->_originalSize.height = v12;
    -[CALayer setGeometryFlipped:](v10->_rootLayer, "setGeometryFlipped:", [v6 isGeometryFlipped]);
    v13 = [(UIView *)v10 layer];
    [v13 addSublayer:v10->_rootLayer];

    v14 = [v6 publishedObjectNames];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
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
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [v6 publishedObjectWithName:v20];
          if (v21)
          {
            if (!v17)
            {
              v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v14, "count")}];
            }

            [v17 setObject:v21 forKey:v20];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
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

    v4 = v28;
    v8 = v27;
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3
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

- (BOOL)setState:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(CALayer *)self->_rootLayer stateWithName:a3];
  if (v6)
  {
    stateController = self->_stateController;
    rootLayer = self->_rootLayer;
    if (v4)
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