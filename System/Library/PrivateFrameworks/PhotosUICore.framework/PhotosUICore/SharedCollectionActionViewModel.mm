@interface SharedCollectionActionViewModel
- (NSArray)itemProvidersForActivityItemsConfiguration;
- (_TtC12PhotosUICore31SharedCollectionActionViewModel)init;
- (id)activityItemsConfigurationMetadataForKey:(id)key;
@end

@implementation SharedCollectionActionViewModel

- (_TtC12PhotosUICore31SharedCollectionActionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)itemProvidersForActivityItemsConfiguration
{
  selfCopy = self;
  SharedCollectionActionViewModel.itemProvidersForActivityItemsConfiguration.getter();

  sub_1A3C52C70(0, &qword_1EB120AD0);
  v3 = sub_1A524CA14();

  return v3;
}

- (id)activityItemsConfigurationMetadataForKey:(id)key
{
  v5 = sub_1A524C674();
  v7 = v6;
  if (v5 == sub_1A524C674() && v7 == v8)
  {
    keyCopy = key;
    selfCopy = self;
  }

  else
  {
    v10 = sub_1A524EAB4();
    keyCopy2 = key;
    selfCopy2 = self;

    if ((v10 & 1) == 0)
    {
      v13 = 0;
      goto LABEL_9;
    }
  }

  v13 = sub_1A3EDD9EC();
LABEL_9:

  return v13;
}

@end