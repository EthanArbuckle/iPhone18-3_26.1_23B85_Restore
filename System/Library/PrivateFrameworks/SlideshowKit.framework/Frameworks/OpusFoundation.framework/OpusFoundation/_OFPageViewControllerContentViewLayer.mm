@interface _OFPageViewControllerContentViewLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (_OFPageViewControllerContentViewLayer)initWithLayer:(id)layer;
- (void)dealloc;
@end

@implementation _OFPageViewControllerContentViewLayer

- (_OFPageViewControllerContentViewLayer)initWithLayer:(id)layer
{
  v6.receiver = self;
  v6.super_class = _OFPageViewControllerContentViewLayer;
  v4 = [(_OFPageViewControllerContentViewLayer *)&v6 initWithLayer:?];
  if (v4)
  {
    -[_OFPageViewControllerContentViewLayer setProgressReportDelegate:](v4, "setProgressReportDelegate:", [layer progressReportDelegate]);
  }

  return v4;
}

- (void)dealloc
{
  objc_storeWeak(&self->_progressReportDelegate, 0);
  v3.receiver = self;
  v3.super_class = _OFPageViewControllerContentViewLayer;
  [(_OFPageViewControllerContentViewLayer *)&v3 dealloc];
}

+ (BOOL)needsDisplayForKey:(id)key
{
  if ([key isEqualToString:@"progress"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS____OFPageViewControllerContentViewLayer;
  return objc_msgSendSuper2(&v6, sel_needsDisplayForKey_, key);
}

@end