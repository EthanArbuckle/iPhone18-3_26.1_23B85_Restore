@interface PKAMSUIWebViewController
- (_TtC9PassKitUI24PKAMSUIWebViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5;
- (_TtC9PassKitUI24PKAMSUIWebViewController)initWithCoder:(id)a3;
@end

@implementation PKAMSUIWebViewController

- (_TtC9PassKitUI24PKAMSUIWebViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for PKAMSUIWebViewController();
  return [(AMSUIWebViewController *)&v9 initWithBag:a3 account:a4 clientInfo:a5];
}

- (_TtC9PassKitUI24PKAMSUIWebViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKAMSUIWebViewController();
  v4 = a3;
  v5 = [(PKAMSUIWebViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end