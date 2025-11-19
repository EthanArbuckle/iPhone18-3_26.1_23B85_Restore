@interface TSSharingActivityProvider
- (NSArray)activities;
- (NSArray)activityItems;
- (TSSharingActivityProvider)initWithActivityItems:(id)a3 activitySources:(id)a4 excludedActivityTypes:(id)a5 linkPresentationSource:(id)a6;
- (id)linkPresentationSource;
- (void)setActivities:(id)a3;
- (void)setLinkPresentationSource:(id)a3;
@end

@implementation TSSharingActivityProvider

- (NSArray)activities
{
  SharingActivityProvider.activities.getter();
  sub_1D7E0A1A8(0, &qword_1ECA0F288);
  v2 = sub_1D8191304();

  return v2;
}

- (void)setActivities:(id)a3
{
  sub_1D7E0A1A8(0, &qword_1ECA0F288);
  v4 = sub_1D8191314();
  v5 = self;
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

- (void)setLinkPresentationSource:(id)a3
{
  if (a3)
  {
    v3 = self;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v4 = self;
  }

  SharingActivityProvider.linkPresentationSource.setter(v6);
}

- (NSArray)activityItems
{
  v2 = self;
  SharingActivityProvider.activityItems.getter();

  v3 = sub_1D8191304();

  return v3;
}

- (TSSharingActivityProvider)initWithActivityItems:(id)a3 activitySources:(id)a4 excludedActivityTypes:(id)a5 linkPresentationSource:(id)a6
{
  sub_1D7E0A1A8(0, &qword_1ECA0F288);
  sub_1D8191314();
  sub_1D7FF6F28();
  sub_1D8191314();
  type metadata accessor for ActivityType();
  sub_1D8191314();
  if (a6)
  {
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  return SharingActivityProvider.init(activityItems:activitySources:excludedActivityTypes:linkPresentationSource:)();
}

@end