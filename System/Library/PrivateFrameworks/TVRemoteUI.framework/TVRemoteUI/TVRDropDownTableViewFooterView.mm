@interface TVRDropDownTableViewFooterView
- (TVRDropDownTableViewFooterView)initWithReuseIdentifier:(id)identifier;
@end

@implementation TVRDropDownTableViewFooterView

- (TVRDropDownTableViewFooterView)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = TVRDropDownTableViewFooterView;
  v3 = [(TVRDropDownTableViewFooterView *)&v6 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = +[TVRMaterialView seperatorMaterialView];
    [(TVRDropDownTableViewFooterView *)v3 setBackgroundView:v4];
  }

  return v3;
}

@end