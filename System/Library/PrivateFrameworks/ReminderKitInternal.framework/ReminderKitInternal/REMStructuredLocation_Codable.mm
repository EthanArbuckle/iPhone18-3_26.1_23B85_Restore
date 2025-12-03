@interface REMStructuredLocation_Codable
- (REMStructuredLocation_Codable)init;
- (REMStructuredLocation_Codable)initWithTitle:(id)title;
- (REMStructuredLocation_Codable)initWithTitle:(id)title locationUID:(id)d;
- (REMStructuredLocation_Codable)initWithTitle:(id)title locationUID:(id)d latitude:(double)latitude longitude:(double)longitude radius:(double)radius address:(id)address routing:(id)routing referenceFrameString:(id)self0 contactLabel:(id)self1 mapKitHandle:(id)self2;
@end

@implementation REMStructuredLocation_Codable

- (REMStructuredLocation_Codable)initWithTitle:(id)title locationUID:(id)d latitude:(double)latitude longitude:(double)longitude radius:(double)radius address:(id)address routing:(id)routing referenceFrameString:(id)self0 contactLabel:(id)self1 mapKitHandle:(id)self2
{
  if (title)
  {
    v20 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v47 = v21;
    v48 = v20;
    handleCopy2 = handle;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_6:
    v45 = 0;
    v46 = 0;
    if (address)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v47 = 0;
  v48 = 0;
  handleCopy2 = handle;
  if (!d)
  {
    goto LABEL_6;
  }

LABEL_3:
  v23 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v45 = v24;
  v46 = v23;
  if (address)
  {
LABEL_4:
    v44 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v26 = v25;
    goto LABEL_8;
  }

LABEL_7:
  v44 = 0;
  v26 = 0;
LABEL_8:
  routingCopy = routing;
  stringCopy = string;
  labelCopy = label;
  v30 = handleCopy2;
  if (routingCopy)
  {
    v31 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v33 = v32;

    if (stringCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31 = 0;
    v33 = 0;
    if (stringCopy)
    {
LABEL_10:
      v34 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v36 = v35;

      if (labelCopy)
      {
        goto LABEL_11;
      }

LABEL_15:
      v37 = 0;
      v39 = 0;
      if (v30)
      {
        goto LABEL_12;
      }

LABEL_16:
      v40 = 0;
      v42 = 0xF000000000000000;
      return REMStructuredLocation_Codable.init(title:locationUID:latitude:longitude:radius:address:routing:referenceFrameString:contactLabel:mapKitHandle:)(latitude, longitude, radius, v48, v47, v46, v45, v44, v26, v31, v33, v34, v36, v37, v39, v40, v42);
    }
  }

  v34 = 0;
  v36 = 0;
  if (!labelCopy)
  {
    goto LABEL_15;
  }

LABEL_11:
  v37 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v39 = v38;

  if (!v30)
  {
    goto LABEL_16;
  }

LABEL_12:
  v40 = sub_23030EA18();
  v42 = v41;

  return REMStructuredLocation_Codable.init(title:locationUID:latitude:longitude:radius:address:routing:referenceFrameString:contactLabel:mapKitHandle:)(latitude, longitude, radius, v48, v47, v46, v45, v44, v26, v31, v33, v34, v36, v37, v39, v40, v42);
}

- (REMStructuredLocation_Codable)initWithTitle:(id)title
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (REMStructuredLocation_Codable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (REMStructuredLocation_Codable)initWithTitle:(id)title locationUID:(id)d
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end