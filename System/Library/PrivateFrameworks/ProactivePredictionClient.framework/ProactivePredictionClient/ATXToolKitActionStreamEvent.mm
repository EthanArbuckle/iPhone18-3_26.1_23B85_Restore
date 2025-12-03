@interface ATXToolKitActionStreamEvent
- (ATXToolKitActionStreamEvent)init;
- (ATXToolKitActionStreamEvent)initWithEncodedTool:(id)tool toolID:(id)d bundleID:(id)iD title:(id)title subtitle:(id)subtitle eventTimeStamp:(id)stamp parameterKeys:(id)keys;
- (NSArray)parameterKeys;
- (NSData)encodedTool;
- (NSDate)eventTimeStamp;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXToolKitActionStreamEvent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ToolKitActionStreamEvent.encode(with:)(coderCopy);
}

- (NSData)encodedTool
{
  v2 = *(self + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool);
  v3 = *(self + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool + 8);
  sub_260DE17F4(v2, v3);
  v4 = sub_260DF5394();
  sub_260DD2994(v2, v3);

  return v4;
}

- (NSDate)eventTimeStamp
{
  v3 = sub_260DF5444();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp, v3);
  v8 = sub_260DF5414();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSArray)parameterKeys
{
  if (*(self + OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys))
  {
    v2 = *(self + OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys);

    v3 = sub_260DF5A94();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ATXToolKitActionStreamEvent)initWithEncodedTool:(id)tool toolID:(id)d bundleID:(id)iD title:(id)title subtitle:(id)subtitle eventTimeStamp:(id)stamp parameterKeys:(id)keys
{
  keysCopy = keys;
  stampCopy = stamp;
  ObjectType = swift_getObjectType();
  v15 = sub_260DF5444();
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  toolCopy = tool;
  dCopy = d;
  iDCopy = iD;
  titleCopy = title;
  subtitleCopy = subtitle;
  v24 = stampCopy;
  v25 = keysCopy;
  v26 = sub_260DF53B4();
  keysCopy = v27;
  stampCopy = v26;

  v28 = sub_260DF59C4();
  v54 = v29;
  v55 = v28;

  v30 = sub_260DF59C4();
  v52 = v31;
  v53 = v30;

  v32 = sub_260DF59C4();
  v34 = v33;

  v35 = sub_260DF59C4();
  v37 = v36;

  sub_260DF5424();
  if (v25)
  {
    v38 = sub_260DF5AB4();
  }

  else
  {
    v38 = 0;
  }

  v39 = (self + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool);
  v40 = keysCopy;
  *v39 = stampCopy;
  v39[1] = v40;
  v41 = (self + OBJC_IVAR___ATXToolKitActionStreamEvent_toolID);
  v42 = v54;
  *v41 = v55;
  v41[1] = v42;
  v43 = (self + OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID);
  v44 = v52;
  *v43 = v53;
  v43[1] = v44;
  v45 = (self + OBJC_IVAR___ATXToolKitActionStreamEvent_title);
  *v45 = v32;
  v45[1] = v34;
  v46 = (self + OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle);
  *v46 = v35;
  v46[1] = v37;
  v48 = v59;
  v47 = v60;
  (*(v59 + 16))(self + OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp, v18, v60);
  *(self + OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys) = v38;
  v61.receiver = self;
  v61.super_class = ObjectType;
  v49 = [(ATXToolKitActionStreamEvent *)&v61 init];
  (*(v48 + 8))(v18, v47);
  return v49;
}

- (ATXToolKitActionStreamEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end