@interface PKMessageExtensionActivityItem
- (PKMessageExtensionActivityItem)init;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation PKMessageExtensionActivityItem

- (PKMessageExtensionActivityItem)init
{
  v3.receiver = self;
  v3.super_class = PKMessageExtensionActivityItem;
  return [(UIActivity *)&v3 init];
}

- (void)prepareWithActivityItems:(id)a3
{
  v9.receiver = self;
  v9.super_class = PKMessageExtensionActivityItem;
  v4 = a3;
  [(UIMessageActivity *)&v9 prepareWithActivityItems:v4];
  v5 = [(UIMessageActivity *)self messageComposeViewController:v9.receiver];
  v6 = [v4 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setMessage:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v7 dataRepresentation];
      [v5 addRichLinkData:v8 withWebpageURL:v7];

      [v5 setBody:0];
    }
  }
}

- (void)performActivity
{
  v2.receiver = self;
  v2.super_class = PKMessageExtensionActivityItem;
  [(UIActivity *)&v2 performActivity];
}

@end