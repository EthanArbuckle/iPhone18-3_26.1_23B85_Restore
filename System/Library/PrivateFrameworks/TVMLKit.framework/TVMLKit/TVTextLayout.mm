@interface TVTextLayout
+ (id)layoutWithLayout:(id)layout element:(id)element;
@end

@implementation TVTextLayout

+ (id)layoutWithLayout:(id)layout element:(id)element
{
  layoutCopy = layout;
  elementCopy = element;
  v8 = layoutCopy;
  v9 = v8;
  if (!v8)
  {
    v9 = objc_alloc_init(TVTextLayout);
  }

  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___TVTextLayout;
  v10 = objc_msgSendSuper2(&v15, sel_layoutWithLayout_element_, v9, elementCopy);
  style = [elementCopy style];
  tv_textHighlightStyle = [style tv_textHighlightStyle];

  if (tv_textHighlightStyle)
  {
    tv_textHighlightStyle2 = [style tv_textHighlightStyle];
    [(TVTextLayout *)v9 setTextHighlightStyle:tv_textHighlightStyle2];
  }

  return v9;
}

@end