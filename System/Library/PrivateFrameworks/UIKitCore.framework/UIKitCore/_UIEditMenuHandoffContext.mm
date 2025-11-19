@interface _UIEditMenuHandoffContext
+ (id)contextForConfiguration:(id)a3 preparedMenu:(id)a4 sourceView:(id)a5 arrowDirection:(int64_t)a6;
@end

@implementation _UIEditMenuHandoffContext

+ (id)contextForConfiguration:(id)a3 preparedMenu:(id)a4 sourceView:(id)a5 arrowDirection:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  v13 = v12[1];
  v12[1] = v9;
  v14 = v9;

  v15 = v12[2];
  v12[2] = v10;
  v16 = v10;

  v17 = v12[4];
  v12[4] = v11;

  v12[3] = a6;

  return v12;
}

@end