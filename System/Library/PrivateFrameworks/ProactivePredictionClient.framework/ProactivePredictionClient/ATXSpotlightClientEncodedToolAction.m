@interface ATXSpotlightClientEncodedToolAction
- (ATXSpotlightClientEncodedToolAction)init;
- (ATXSpotlightClientEncodedToolAction)initWithEncodedTool:(id)a3 encodedCustomIcon:(id)a4 toolID:(id)a5 bundleID:(id)a6 title:(id)a7 uuidString:(id)a8 encodedSummary:(id)a9;
- (ATXSpotlightClientEncodedToolAction)initWithEncodedTool:(id)a3 toolID:(id)a4 bundleID:(id)a5 title:(id)a6 uuidString:(id)a7;
- (ATXSpotlightClientEncodedToolAction)initWithEncodedTool:(id)a3 toolID:(id)a4 bundleID:(id)a5 title:(id)a6 uuidString:(id)a7 encodedSummary:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSpotlightClientEncodedToolAction

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SpotlightClientEncodedToolAction.encode(with:)(v4);
}

- (ATXSpotlightClientEncodedToolAction)initWithEncodedTool:(id)a3 encodedCustomIcon:(id)a4 toolID:(id)a5 bundleID:(id)a6 title:(id)a7 uuidString:(id)a8 encodedSummary:(id)a9
{
  ObjectType = swift_getObjectType();
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (a3)
  {
    v22 = a3;
    v23 = sub_260DF53B4();
    v48 = v24;
    v49 = v23;
  }

  else
  {
    v48 = 0xF000000000000000;
    v49 = 0;
  }

  v25 = sub_260DF59C4();
  v46 = v26;
  v47 = v25;

  v27 = sub_260DF59C4();
  v29 = v28;

  v30 = sub_260DF59C4();
  v32 = v31;

  v33 = sub_260DF59C4();
  v35 = v34;

  if (a9)
  {
    v36 = sub_260DF53B4();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xF000000000000000;
  }

  v39 = (self + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool);
  *v39 = v49;
  v39[1] = v48;
  *(self + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedCustomIcon) = a4;
  v40 = (self + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_toolID);
  *v40 = v47;
  v40[1] = v46;
  v41 = (self + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_bundleID);
  *v41 = v27;
  v41[1] = v29;
  v42 = (self + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_title);
  *v42 = v30;
  v42[1] = v32;
  v43 = (self + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_uuidString);
  *v43 = v33;
  v43[1] = v35;
  v44 = (self + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary);
  *v44 = v36;
  v44[1] = v38;
  v52.receiver = self;
  v52.super_class = ObjectType;
  return [(ATXSpotlightClientEncodedToolAction *)&v52 init:v46];
}

- (ATXSpotlightClientEncodedToolAction)initWithEncodedTool:(id)a3 toolID:(id)a4 bundleID:(id)a5 title:(id)a6 uuidString:(id)a7
{
  if (a3)
  {
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v15 = a7;
    v16 = a3;
    v24 = sub_260DF53B4();
    v18 = v17;
  }

  else
  {
    v19 = a4;
    v20 = a5;
    v21 = a6;
    v22 = a7;
    v24 = 0;
    v18 = 0xF000000000000000;
  }

  sub_260DF59C4();

  sub_260DF59C4();
  sub_260DF59C4();

  sub_260DF59C4();
  return SpotlightClientEncodedToolAction.init(encodedTool:toolID:bundleID:title:uuidString:)(v24, v18);
}

- (ATXSpotlightClientEncodedToolAction)initWithEncodedTool:(id)a3 toolID:(id)a4 bundleID:(id)a5 title:(id)a6 uuidString:(id)a7 encodedSummary:(id)a8
{
  if (a3)
  {
    v14 = a4;
    v15 = a5;
    v16 = a6;
    v17 = a7;
    v18 = a8;
    v19 = a3;
    v20 = sub_260DF53B4();
    v43 = v21;
    v44 = v20;
  }

  else
  {
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v25 = a7;
    v26 = a8;
    v43 = 0xF000000000000000;
    v44 = 0;
  }

  v42 = sub_260DF59C4();
  v28 = v27;

  v29 = sub_260DF59C4();
  v31 = v30;

  v32 = sub_260DF59C4();
  v34 = v33;

  v35 = sub_260DF59C4();
  v37 = v36;

  if (a8)
  {
    v38 = sub_260DF53B4();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0xF000000000000000;
  }

  return SpotlightClientEncodedToolAction.init(encodedTool:toolID:bundleID:title:uuidString:encodedSummary:)(v44, v43, v42, v28, v29, v31, v32, v34, v35, v37, v38, v40);
}

- (ATXSpotlightClientEncodedToolAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end