@interface PKTileContextDetailsTableView
+ (id)createWithEntries:(id)a3;
- (PKTileContextDetailsTableView)init;
@end

@implementation PKTileContextDetailsTableView

+ (id)createWithEntries:(id)a3
{
  type metadata accessor for TileContextDetailsTableViewEntry(0);
  sub_1BE052744();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFC0));
  v4 = sub_1BE04EAC4();

  return v4;
}

- (PKTileContextDetailsTableView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TileContextDetailsListHostView();
  return [(PKTileContextDetailsTableView *)&v3 init];
}

@end