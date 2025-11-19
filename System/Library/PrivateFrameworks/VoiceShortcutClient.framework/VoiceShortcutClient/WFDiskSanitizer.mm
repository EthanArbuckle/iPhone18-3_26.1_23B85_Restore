@interface WFDiskSanitizer
+ (id)sanitizeValue:(id)a3;
+ (id)sanitizedDictionary:(id)a3;
@end

@implementation WFDiskSanitizer

+ (id)sanitizedDictionary:(id)a3
{
  if (a3)
  {
    v3 = sub_1B1F1A710();
  }

  else
  {
    v3 = 0;
  }

  swift_getObjCClassMetadata();
  static WFDiskSanitizer.sanitizedDictionary(_:)(v3);

  v4 = sub_1B1F1A6F0();

  return v4;
}

+ (id)sanitizeValue:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1B1F1AED0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_getObjCClassMetadata();
  sub_1B1E0BF2C(v11, v12);
  sub_1B1E0CB70(v11, &qword_1EB783FC8, &unk_1B1F2A690);
  v3 = v13;
  if (v13)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_1B1F1B500();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end