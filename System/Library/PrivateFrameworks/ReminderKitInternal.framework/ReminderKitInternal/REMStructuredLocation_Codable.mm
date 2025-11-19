@interface REMStructuredLocation_Codable
- (REMStructuredLocation_Codable)init;
- (REMStructuredLocation_Codable)initWithTitle:(id)a3;
- (REMStructuredLocation_Codable)initWithTitle:(id)a3 locationUID:(id)a4;
- (REMStructuredLocation_Codable)initWithTitle:(id)a3 locationUID:(id)a4 latitude:(double)a5 longitude:(double)a6 radius:(double)a7 address:(id)a8 routing:(id)a9 referenceFrameString:(id)a10 contactLabel:(id)a11 mapKitHandle:(id)a12;
@end

@implementation REMStructuredLocation_Codable

- (REMStructuredLocation_Codable)initWithTitle:(id)a3 locationUID:(id)a4 latitude:(double)a5 longitude:(double)a6 radius:(double)a7 address:(id)a8 routing:(id)a9 referenceFrameString:(id)a10 contactLabel:(id)a11 mapKitHandle:(id)a12
{
  if (a3)
  {
    v20 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v47 = v21;
    v48 = v20;
    v22 = a12;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v45 = 0;
    v46 = 0;
    if (a8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v47 = 0;
  v48 = 0;
  v22 = a12;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v23 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v45 = v24;
  v46 = v23;
  if (a8)
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
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v30 = v22;
  if (v27)
  {
    v31 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v33 = v32;

    if (v28)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31 = 0;
    v33 = 0;
    if (v28)
    {
LABEL_10:
      v34 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v36 = v35;

      if (v29)
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
      return REMStructuredLocation_Codable.init(title:locationUID:latitude:longitude:radius:address:routing:referenceFrameString:contactLabel:mapKitHandle:)(a5, a6, a7, v48, v47, v46, v45, v44, v26, v31, v33, v34, v36, v37, v39, v40, v42);
    }
  }

  v34 = 0;
  v36 = 0;
  if (!v29)
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

  return REMStructuredLocation_Codable.init(title:locationUID:latitude:longitude:radius:address:routing:referenceFrameString:contactLabel:mapKitHandle:)(a5, a6, a7, v48, v47, v46, v45, v44, v26, v31, v33, v34, v36, v37, v39, v40, v42);
}

- (REMStructuredLocation_Codable)initWithTitle:(id)a3
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

- (REMStructuredLocation_Codable)initWithTitle:(id)a3 locationUID:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end