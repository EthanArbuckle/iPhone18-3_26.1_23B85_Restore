@interface UIDebuggingInformationHierarchyDataContainer
- (UIDebuggingInformationHierarchyDataContainer)initWithView:(id)a3 atLevel:(int64_t)a4;
- (UIView)view;
@end

@implementation UIDebuggingInformationHierarchyDataContainer

- (UIDebuggingInformationHierarchyDataContainer)initWithView:(id)a3 atLevel:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = UIDebuggingInformationHierarchyDataContainer;
  v7 = [(UIDebuggingInformationHierarchyDataContainer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(UIDebuggingInformationHierarchyDataContainer *)v7 setView:v6];
    [(UIDebuggingInformationHierarchyDataContainer *)v8 setLevel:a4];
  }

  return v8;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end