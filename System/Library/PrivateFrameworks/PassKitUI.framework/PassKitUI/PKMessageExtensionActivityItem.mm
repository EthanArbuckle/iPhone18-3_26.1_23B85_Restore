@interface PKMessageExtensionActivityItem
- (PKMessageExtensionActivityItem)init;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation PKMessageExtensionActivityItem

- (PKMessageExtensionActivityItem)init
{
  v3.receiver = self;
  v3.super_class = PKMessageExtensionActivityItem;
  return [(UIActivity *)&v3 init];
}

- (void)prepareWithActivityItems:(id)items
{
  v9.receiver = self;
  v9.super_class = PKMessageExtensionActivityItem;
  itemsCopy = items;
  [(UIMessageActivity *)&v9 prepareWithActivityItems:itemsCopy];
  v5 = [(UIMessageActivity *)self messageComposeViewController:v9.receiver];
  firstObject = [itemsCopy firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setMessage:firstObject];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = firstObject;
      dataRepresentation = [v7 dataRepresentation];
      [v5 addRichLinkData:dataRepresentation withWebpageURL:v7];

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