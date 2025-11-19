@interface UIOpenURLContext
- (BOOL)isEqual:(id)a3;
- (NSDictionary)URLOptionsDictionary;
- (UIOpenURLContext)initWithURL:(id)a3 options:(id)a4;
- (id)optionsDictionary;
@end

@implementation UIOpenURLContext

- (UIOpenURLContext)initWithURL:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = UIOpenURLContext;
  v8 = [(UIOpenURLContext *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    URL = v8->_URL;
    v8->_URL = v9;

    objc_storeStrong(&v8->_options, a4);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
    goto LABEL_13;
  }

  v6 = v4;
  v7 = objc_opt_class();
  if (![v7 isEqual:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v8 = [(UIOpenURLContext *)self hash];
  if (v8 != [(UIOpenURLContext *)v6 hash])
  {
    goto LABEL_10;
  }

  URL = self->_URL;
  if (URL != v6->_URL && (!URL || ![(NSURL *)URL isEqual:?]))
  {
    goto LABEL_10;
  }

  options = self->_options;
  if (options == v6->_options)
  {
    v11 = 1;
    goto LABEL_11;
  }

  if (options)
  {
    v11 = [(UISceneOpenURLOptions *)options isEqual:?];
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

LABEL_11:

LABEL_13:
  return v11;
}

- (NSDictionary)URLOptionsDictionary
{
  v2 = [(UIOpenURLContext *)self options];
  v3 = _dictionaryFromUISceneOpenURLOptions(v2);

  return v3;
}

- (id)optionsDictionary
{
  v2 = [(UIOpenURLContext *)self options];
  v3 = _dictionaryFromUISceneOpenURLOptions(v2);

  return v3;
}

@end