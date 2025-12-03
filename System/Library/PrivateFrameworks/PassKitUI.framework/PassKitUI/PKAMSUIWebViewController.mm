@interface PKAMSUIWebViewController
- (_TtC9PassKitUI24PKAMSUIWebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info;
- (_TtC9PassKitUI24PKAMSUIWebViewController)initWithCoder:(id)coder;
@end

@implementation PKAMSUIWebViewController

- (_TtC9PassKitUI24PKAMSUIWebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for PKAMSUIWebViewController();
  return [(AMSUIWebViewController *)&v9 initWithBag:bag account:account clientInfo:info];
}

- (_TtC9PassKitUI24PKAMSUIWebViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKAMSUIWebViewController();
  coderCopy = coder;
  v5 = [(PKAMSUIWebViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end