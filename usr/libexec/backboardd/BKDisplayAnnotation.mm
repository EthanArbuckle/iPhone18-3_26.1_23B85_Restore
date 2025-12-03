@interface BKDisplayAnnotation
+ (BKDisplayAnnotation)annotationWithEllipseSize:(CGSize)size;
+ (BKDisplayAnnotation)annotationWithRectangleSize:(CGSize)size;
+ (BKDisplayAnnotation)annotationWithString:(id)string;
+ (BKDisplayAnnotation)new;
+ (id)subannotationWithString:(id)string;
- (BKDisplayAnnotation)init;
- (BKDisplayAnnotationController)annotationController;
- (BKNamespaceNode)namespaceNode;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)modifyStyleSheet:(id)sheet;
- (void)setContent:(id)content;
- (void)setLocation:(id)location;
- (void)setRenderer:(id)renderer;
- (void)setShapeSize:(CGSize)size;
- (void)setString:(id)string;
- (void)setStyleModifier:(id)modifier;
@end

@implementation BKDisplayAnnotation

- (BKNamespaceNode)namespaceNode
{
  WeakRetained = objc_loadWeakRetained(&self->_namespaceNode);

  return WeakRetained;
}

- (BKDisplayAnnotationController)annotationController
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationController);

  return WeakRetained;
}

- (void)setStyleModifier:(id)modifier
{
  [(BKDisplayAnnotationStyleSheet *)self->_styleSheet setStyleModifier:modifier];
  renderer = self->_renderer;

  [(BKDisplayAnnotationRenderer *)renderer styleSheetDidChange];
}

- (void)modifyStyleSheet:(id)sheet
{
  (*(sheet + 2))(sheet, self->_styleSheet);
  renderer = self->_renderer;

  [(BKDisplayAnnotationRenderer *)renderer styleSheetDidChange];
}

- (void)setShapeSize:(CGSize)size
{
  v4 = [BKDisplayAnnotationShapeContent contentWithSize:size.width, size.height];
  [(BKDisplayAnnotation *)self setContent:v4];
}

- (void)setString:(id)string
{
  content = self->_content;
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationContent *)self->_content setString:stringCopy];
    v5 = stringCopy;
  }

  else
  {
    v6 = [BKDisplayAnnotationStringContent contentWithString:stringCopy];

    [(BKDisplayAnnotation *)self setContent:v6];
    v5 = v6;
  }
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  location = self->_location;
  if (location != locationCopy)
  {
    v9 = locationCopy;
    v6 = [(BKDisplayAnnotationLocation *)location isEqual:locationCopy];
    locationCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(BKDisplayAnnotationLocation *)v9 copy];
      v8 = self->_location;
      self->_location = v7;

      [(BKDisplayAnnotationRenderer *)self->_renderer locationDidChange];
      locationCopy = v9;
    }
  }
}

- (void)setContent:(id)content
{
  contentCopy = content;
  content = self->_content;
  if (content != contentCopy)
  {
    if (content)
    {
      v8 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"_content == ((void *)0)"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        v17 = 2048;
        selfCopy = self;
        v19 = 2114;
        v20 = @"BKDisplayAnnotation.m";
        v21 = 1024;
        v22 = 162;
        v23 = 2114;
        v24 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10009823CLL);
    }

    v12 = contentCopy;
    objc_storeStrong(&self->_content, content);
    [(BKDisplayAnnotationRenderer *)self->_renderer styleSheetDidChange];
    contentCopy = v12;
  }
}

- (void)setRenderer:(id)renderer
{
  rendererCopy = renderer;
  if (self->_renderer != rendererCopy)
  {
    v6 = rendererCopy;
    objc_storeStrong(&self->_renderer, renderer);
    [(BKDisplayAnnotationRenderer *)self->_renderer setAnnotation:self];
    rendererCopy = v6;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    content = self->_content;
    content = [equalCopy content];
    v7 = [(BKDisplayAnnotationContent *)content isEqual:content];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKDisplayAnnotation *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_content withName:@"content"];
  v6 = [succinctDescriptionBuilder appendObject:self->_section withName:@"section" skipIfNil:1];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKDisplayAnnotation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKDisplayAnnotation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = BKDisplayAnnotation;
  v2 = [(BKDisplayAnnotation *)&v8 init];
  if (v2)
  {
    v3 = +[BKDisplayAnnotationLocation controlledBySupernode];
    location = v2->_location;
    v2->_location = v3;

    v5 = objc_alloc_init(BKDisplayAnnotationRenderer);
    renderer = v2->_renderer;
    v2->_renderer = v5;

    [(BKDisplayAnnotationRenderer *)v2->_renderer setAnnotation:v2];
  }

  return v2;
}

- (BKDisplayAnnotation)init
{
  v4 = [NSString stringWithFormat:@"use one of the factory methods"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKDisplayAnnotation.m";
    v17 = 1024;
    v18 = 86;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKDisplayAnnotation)new
{
  v4 = [NSString stringWithFormat:@"use one of the factory methods"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKDisplayAnnotation.m";
    v17 = 1024;
    v18 = 91;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKDisplayAnnotation)annotationWithRectangleSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _init = [[self alloc] _init];
  [_init setShapeSize:{width, height}];
  v6 = objc_alloc_init(BKDisplayAnnotationStyleSheet);
  v7 = +[BKDisplayAnnotationStyle rectangleStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setBaseStyle:v7];

  v8 = +[BKDisplayAnnotationStyle minimalStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setStyleModifier:v8];

  [_init setStyleSheet:v6];

  return _init;
}

+ (BKDisplayAnnotation)annotationWithEllipseSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _init = [[self alloc] _init];
  [_init setShapeSize:{width, height}];
  v6 = objc_alloc_init(BKDisplayAnnotationStyleSheet);
  v7 = +[BKDisplayAnnotationStyle ellipseStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setBaseStyle:v7];

  v8 = +[BKDisplayAnnotationStyle minimalStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setStyleModifier:v8];

  [_init setStyleSheet:v6];

  return _init;
}

+ (id)subannotationWithString:(id)string
{
  v3 = [self annotationWithString:string];
  v4 = objc_alloc_init(BKDisplayAnnotationNullRenderer);
  [v3 setRenderer:v4];

  return v3;
}

+ (BKDisplayAnnotation)annotationWithString:(id)string
{
  stringCopy = string;
  _init = [[self alloc] _init];
  [_init setString:stringCopy];

  v6 = objc_alloc_init(BKDisplayAnnotationStyleSheet);
  v7 = +[BKDisplayAnnotationStyle textStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setBaseStyle:v7];

  v8 = +[BKDisplayAnnotationStyle minimalStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setStyleModifier:v8];

  [_init setStyleSheet:v6];

  return _init;
}

@end