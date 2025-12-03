@interface UIDebuggingInformationHierarchyDataContainer
- (UIDebuggingInformationHierarchyDataContainer)initWithView:(id)view atLevel:(int64_t)level;
- (UIView)view;
@end

@implementation UIDebuggingInformationHierarchyDataContainer

- (UIDebuggingInformationHierarchyDataContainer)initWithView:(id)view atLevel:(int64_t)level
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = UIDebuggingInformationHierarchyDataContainer;
  v7 = [(UIDebuggingInformationHierarchyDataContainer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(UIDebuggingInformationHierarchyDataContainer *)v7 setView:viewCopy];
    [(UIDebuggingInformationHierarchyDataContainer *)v8 setLevel:level];
  }

  return v8;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end