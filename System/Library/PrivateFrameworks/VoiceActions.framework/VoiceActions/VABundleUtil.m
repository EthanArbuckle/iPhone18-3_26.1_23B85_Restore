@interface VABundleUtil
+ (id)bundePathFallbackWithResource:(id)a3 type:(id)a4;
+ (id)bundlePathFallbackWithPath:(id)a3 error:(id *)a4;
- (VABundleUtil)init;
@end

@implementation VABundleUtil

+ (id)bundePathFallbackWithResource:(id)a3 type:(id)a4
{
  sub_27237782C();
  sub_27237782C();
  sub_272255F24();
  if (v4)
  {

LABEL_4:
    v7 = sub_2723777FC();

    goto LABEL_5;
  }

  sub_272256018();
  v6 = v5;

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

+ (id)bundlePathFallbackWithPath:(id)a3 error:(id *)a4
{
  v4 = sub_27237782C();
  sub_272258924(v4, v5);

  v6 = sub_2723777FC();

  return v6;
}

- (VABundleUtil)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VABundleUtil();
  return [(VABundleUtil *)&v3 init];
}

@end