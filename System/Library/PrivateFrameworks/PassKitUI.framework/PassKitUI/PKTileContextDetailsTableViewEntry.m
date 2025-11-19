@interface PKTileContextDetailsTableViewEntry
- (BOOL)isEqual:(id)a3;
- (PKTileContextDetailsTableViewEntry)init;
- (PKTileContextDetailsTableViewEntry)initWithTitle:(id)a3 actionURL:(id)a4 axID:(id)a5;
- (PKTileContextDetailsTableViewEntry)initWithTitle:(id)a3 detail:(id)a4 style:(int64_t)a5 axID:(id)a6;
@end

@implementation PKTileContextDetailsTableViewEntry

- (PKTileContextDetailsTableViewEntry)initWithTitle:(id)a3 detail:(id)a4 style:(int64_t)a5 axID:(id)a6
{
  v9 = sub_1BE052434();
  v11 = v10;
  if (a4)
  {
    a4 = sub_1BE052434();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1BE052434();
  v16 = v15;
  sub_1BE04AFD4();
  v17 = (self + OBJC_IVAR___PKTileContextDetailsTableViewEntry_content);
  *v17 = v9;
  v17[1] = v11;
  v17[2] = a4;
  v17[3] = v13;
  v17[4] = a5;
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v18 = (self + OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID);
  *v18 = v14;
  v18[1] = v16;
  v20.receiver = self;
  v20.super_class = type metadata accessor for TileContextDetailsTableViewEntry(0);
  return [(PKTileContextDetailsTableViewEntry *)&v20 init];
}

- (PKTileContextDetailsTableViewEntry)initWithTitle:(id)a3 actionURL:(id)a4 axID:(id)a5
{
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE052434();
  v13 = v12;
  sub_1BE04A9F4();
  v14 = sub_1BE052434();
  v16 = v15;
  sub_1BE04AFD4();
  v17 = (self + OBJC_IVAR___PKTileContextDetailsTableViewEntry_content);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFB8) + 48);
  *v17 = v11;
  v17[1] = v13;
  (*(v7 + 16))(v17 + v18, v10, v6);
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v19 = (self + OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID);
  *v19 = v14;
  v19[1] = v16;
  v20 = type metadata accessor for TileContextDetailsTableViewEntry(0);
  v23.receiver = self;
  v23.super_class = v20;
  v21 = [(PKTileContextDetailsTableViewEntry *)&v23 init];
  (*(v7 + 8))(v10, v6);
  return v21;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1BD9D5594(v8);

  sub_1BD0DE53C(v8, &qword_1EBD3EC90);
  return v6 & 1;
}

- (PKTileContextDetailsTableViewEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end