@interface _UIEditMenuHandoffContext
+ (id)contextForConfiguration:(id)configuration preparedMenu:(id)menu sourceView:(id)view arrowDirection:(int64_t)direction;
@end

@implementation _UIEditMenuHandoffContext

+ (id)contextForConfiguration:(id)configuration preparedMenu:(id)menu sourceView:(id)view arrowDirection:(int64_t)direction
{
  configurationCopy = configuration;
  menuCopy = menu;
  viewCopy = view;
  v12 = objc_opt_new();
  v13 = v12[1];
  v12[1] = configurationCopy;
  v14 = configurationCopy;

  v15 = v12[2];
  v12[2] = menuCopy;
  v16 = menuCopy;

  v17 = v12[4];
  v12[4] = viewCopy;

  v12[3] = direction;

  return v12;
}

@end