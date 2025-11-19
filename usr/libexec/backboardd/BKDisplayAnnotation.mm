@interface BKDisplayAnnotation
+ (BKDisplayAnnotation)annotationWithEllipseSize:(CGSize)a3;
+ (BKDisplayAnnotation)annotationWithRectangleSize:(CGSize)a3;
+ (BKDisplayAnnotation)annotationWithString:(id)a3;
+ (BKDisplayAnnotation)new;
+ (id)subannotationWithString:(id)a3;
- (BKDisplayAnnotation)init;
- (BKDisplayAnnotationController)annotationController;
- (BKNamespaceNode)namespaceNode;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)modifyStyleSheet:(id)a3;
- (void)setContent:(id)a3;
- (void)setLocation:(id)a3;
- (void)setRenderer:(id)a3;
- (void)setShapeSize:(CGSize)a3;
- (void)setString:(id)a3;
- (void)setStyleModifier:(id)a3;
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

- (void)setStyleModifier:(id)a3
{
  [(BKDisplayAnnotationStyleSheet *)self->_styleSheet setStyleModifier:a3];
  renderer = self->_renderer;

  [(BKDisplayAnnotationRenderer *)renderer styleSheetDidChange];
}

- (void)modifyStyleSheet:(id)a3
{
  (*(a3 + 2))(a3, self->_styleSheet);
  renderer = self->_renderer;

  [(BKDisplayAnnotationRenderer *)renderer styleSheetDidChange];
}

- (void)setShapeSize:(CGSize)a3
{
  v4 = [BKDisplayAnnotationShapeContent contentWithSize:a3.width, a3.height];
  [(BKDisplayAnnotation *)self setContent:v4];
}

- (void)setString:(id)a3
{
  content = self->_content;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationContent *)self->_content setString:v7];
    v5 = v7;
  }

  else
  {
    v6 = [BKDisplayAnnotationStringContent contentWithString:v7];

    [(BKDisplayAnnotation *)self setContent:v6];
    v5 = v6;
  }
}

- (void)setLocation:(id)a3
{
  v4 = a3;
  location = self->_location;
  if (location != v4)
  {
    v9 = v4;
    v6 = [(BKDisplayAnnotationLocation *)location isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(BKDisplayAnnotationLocation *)v9 copy];
      v8 = self->_location;
      self->_location = v7;

      [(BKDisplayAnnotationRenderer *)self->_renderer locationDidChange];
      v4 = v9;
    }
  }
}

- (void)setContent:(id)a3
{
  v6 = a3;
  content = self->_content;
  if (content != v6)
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
        v18 = self;
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

    v12 = v6;
    objc_storeStrong(&self->_content, a3);
    [(BKDisplayAnnotationRenderer *)self->_renderer styleSheetDidChange];
    v6 = v12;
  }
}

- (void)setRenderer:(id)a3
{
  v5 = a3;
  if (self->_renderer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_renderer, a3);
    [(BKDisplayAnnotationRenderer *)self->_renderer setAnnotation:self];
    v5 = v6;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    content = self->_content;
    v6 = [v4 content];
    v7 = [(BKDisplayAnnotationContent *)content isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BKDisplayAnnotation *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_content withName:@"content"];
  v6 = [v4 appendObject:self->_section withName:@"section" skipIfNil:1];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKDisplayAnnotation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BKDisplayAnnotation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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
    v14 = self;
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
    v14 = a1;
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

+ (BKDisplayAnnotation)annotationWithRectangleSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [[a1 alloc] _init];
  [v5 setShapeSize:{width, height}];
  v6 = objc_alloc_init(BKDisplayAnnotationStyleSheet);
  v7 = +[BKDisplayAnnotationStyle rectangleStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setBaseStyle:v7];

  v8 = +[BKDisplayAnnotationStyle minimalStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setStyleModifier:v8];

  [v5 setStyleSheet:v6];

  return v5;
}

+ (BKDisplayAnnotation)annotationWithEllipseSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [[a1 alloc] _init];
  [v5 setShapeSize:{width, height}];
  v6 = objc_alloc_init(BKDisplayAnnotationStyleSheet);
  v7 = +[BKDisplayAnnotationStyle ellipseStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setBaseStyle:v7];

  v8 = +[BKDisplayAnnotationStyle minimalStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setStyleModifier:v8];

  [v5 setStyleSheet:v6];

  return v5;
}

+ (id)subannotationWithString:(id)a3
{
  v3 = [a1 annotationWithString:a3];
  v4 = objc_alloc_init(BKDisplayAnnotationNullRenderer);
  [v3 setRenderer:v4];

  return v3;
}

+ (BKDisplayAnnotation)annotationWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _init];
  [v5 setString:v4];

  v6 = objc_alloc_init(BKDisplayAnnotationStyleSheet);
  v7 = +[BKDisplayAnnotationStyle textStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setBaseStyle:v7];

  v8 = +[BKDisplayAnnotationStyle minimalStyle];
  [(BKDisplayAnnotationStyleSheet *)v6 setStyleModifier:v8];

  [v5 setStyleSheet:v6];

  return v5;
}

@end