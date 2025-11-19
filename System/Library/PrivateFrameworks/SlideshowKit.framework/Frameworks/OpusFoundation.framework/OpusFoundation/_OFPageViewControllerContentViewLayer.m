@interface _OFPageViewControllerContentViewLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (_OFPageViewControllerContentViewLayer)initWithLayer:(id)a3;
- (void)dealloc;
@end

@implementation _OFPageViewControllerContentViewLayer

- (_OFPageViewControllerContentViewLayer)initWithLayer:(id)a3
{
  v6.receiver = self;
  v6.super_class = _OFPageViewControllerContentViewLayer;
  v4 = [(_OFPageViewControllerContentViewLayer *)&v6 initWithLayer:?];
  if (v4)
  {
    -[_OFPageViewControllerContentViewLayer setProgressReportDelegate:](v4, "setProgressReportDelegate:", [a3 progressReportDelegate]);
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

+ (BOOL)needsDisplayForKey:(id)a3
{
  if ([a3 isEqualToString:@"progress"])
  {
    return 1;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS____OFPageViewControllerContentViewLayer;
  return objc_msgSendSuper2(&v6, sel_needsDisplayForKey_, a3);
}

@end