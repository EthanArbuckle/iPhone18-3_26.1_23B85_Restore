@interface PXGSingleViewUserData
- (PXGSingleViewUserData)initWithContentView:(id)view;
@end

@implementation PXGSingleViewUserData

- (PXGSingleViewUserData)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = PXGSingleViewUserData;
  v6 = [(PXGSingleViewUserData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, view);
  }

  return v7;
}

@end