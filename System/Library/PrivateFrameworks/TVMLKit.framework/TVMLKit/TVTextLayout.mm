@interface TVTextLayout
+ (id)layoutWithLayout:(id)a3 element:(id)a4;
@end

@implementation TVTextLayout

+ (id)layoutWithLayout:(id)a3 element:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    v9 = objc_alloc_init(TVTextLayout);
  }

  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___TVTextLayout;
  v10 = objc_msgSendSuper2(&v15, sel_layoutWithLayout_element_, v9, v7);
  v11 = [v7 style];
  v12 = [v11 tv_textHighlightStyle];

  if (v12)
  {
    v13 = [v11 tv_textHighlightStyle];
    [(TVTextLayout *)v9 setTextHighlightStyle:v13];
  }

  return v9;
}

@end