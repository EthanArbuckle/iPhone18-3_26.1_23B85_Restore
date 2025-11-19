@interface TVRDropDownTableViewFooterView
- (TVRDropDownTableViewFooterView)initWithReuseIdentifier:(id)a3;
@end

@implementation TVRDropDownTableViewFooterView

- (TVRDropDownTableViewFooterView)initWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = TVRDropDownTableViewFooterView;
  v3 = [(TVRDropDownTableViewFooterView *)&v6 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = +[TVRMaterialView seperatorMaterialView];
    [(TVRDropDownTableViewFooterView *)v3 setBackgroundView:v4];
  }

  return v3;
}

@end