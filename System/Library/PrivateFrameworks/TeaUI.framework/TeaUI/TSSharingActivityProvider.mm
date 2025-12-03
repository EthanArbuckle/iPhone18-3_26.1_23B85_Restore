@interface TSSharingActivityProvider
- (NSArray)activities;
- (NSArray)activityItems;
- (TSSharingActivityProvider)initWithActivityItems:(id)items activitySources:(id)sources excludedActivityTypes:(id)types linkPresentationSource:(id)source;
- (id)linkPresentationSource;
- (void)setActivities:(id)activities;
- (void)setLinkPresentationSource:(id)source;
@end

@implementation TSSharingActivityProvider

- (NSArray)activities
{
  SharingActivityProvider.activities.getter();
  sub_1D7E0A1A8(0, &qword_1ECA0F288);
  v2 = sub_1D8191304();

  return v2;
}

- (void)setActivities:(id)activities
{
  sub_1D7E0A1A8(0, &qword_1ECA0F288);
  v4 = sub_1D8191314();
  selfCopy = self;
  SharingActivityProvider.activities.setter(v4);
}

- (id)linkPresentationSource
{
  SharingActivityProvider.linkPresentationSource.getter(v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = MEMORY[0x1EEE9AC00](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = sub_1D8192614();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setLinkPresentationSource:(id)source
{
  if (source)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  SharingActivityProvider.linkPresentationSource.setter(v6);
}

- (NSArray)activityItems
{
  selfCopy = self;
  SharingActivityProvider.activityItems.getter();

  v3 = sub_1D8191304();

  return v3;
}

- (TSSharingActivityProvider)initWithActivityItems:(id)items activitySources:(id)sources excludedActivityTypes:(id)types linkPresentationSource:(id)source
{
  sub_1D7E0A1A8(0, &qword_1ECA0F288);
  sub_1D8191314();
  sub_1D7FF6F28();
  sub_1D8191314();
  type metadata accessor for ActivityType();
  sub_1D8191314();
  if (source)
  {
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  return SharingActivityProvider.init(activityItems:activitySources:excludedActivityTypes:linkPresentationSource:)();
}

@end