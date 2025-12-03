@interface VUIBarItemSelectionManager
+ (id)lastSelectedIdentifier;
+ (void)updateLastSelectedIdentifier:(id)identifier tabItemInfo:(id)info;
@end

@implementation VUIBarItemSelectionManager

+ (void)updateLastSelectedIdentifier:(id)identifier tabItemInfo:(id)info
{
  v4 = sub_1E4205F14();
  v6 = v5;
  v7 = sub_1E4205C64();
  static VUIBarItemSelectionManager.updateLastSelectedIdentifier(_:tabItemInfo:)(v4, v6, v7);
}

+ (id)lastSelectedIdentifier
{
  static VUIBarItemSelectionManager.lastSelectedIdentifier()();
  if (v2)
  {
    v3 = sub_1E4205ED4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end