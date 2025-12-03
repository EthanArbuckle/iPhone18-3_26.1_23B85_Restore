@interface UIOpenURLContext
- (BOOL)isEqual:(id)equal;
- (NSDictionary)URLOptionsDictionary;
- (UIOpenURLContext)initWithURL:(id)l options:(id)options;
- (id)optionsDictionary;
@end

@implementation UIOpenURLContext

- (UIOpenURLContext)initWithURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = UIOpenURLContext;
  v8 = [(UIOpenURLContext *)&v12 init];
  if (v8)
  {
    v9 = [lCopy copy];
    URL = v8->_URL;
    v8->_URL = v9;

    objc_storeStrong(&v8->_options, options);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
    goto LABEL_13;
  }

  v6 = equalCopy;
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
  options = [(UIOpenURLContext *)self options];
  v3 = _dictionaryFromUISceneOpenURLOptions(options);

  return v3;
}

- (id)optionsDictionary
{
  options = [(UIOpenURLContext *)self options];
  v3 = _dictionaryFromUISceneOpenURLOptions(options);

  return v3;
}

@end