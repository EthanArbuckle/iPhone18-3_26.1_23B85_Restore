@interface ICQUISwiftHelperFunctions
+ (id)appIconWithBundleID:(id)a3 drawBorder:(BOOL)a4;
+ (id)platformColorFromString:(id)a3;
+ (id)scaledImageURL:(id)a3;
- (_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions)init;
@end

@implementation ICQUISwiftHelperFunctions

+ (id)scaledImageURL:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = a3;
  sub_275761980(v7, v6);

  v8 = sub_275795CB0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_275795C70();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

+ (id)appIconWithBundleID:(id)a3 drawBorder:(BOOL)a4
{
  v5 = sub_275797F50();
  v7 = sub_275762410(v5, v6, a4);

  return v7;
}

+ (id)platformColorFromString:(id)a3
{
  sub_275797F50();
  v3 = sub_275762780();
  if (v3 == 43)
  {
    v3 = 17;
  }

  v4 = sub_275761F08(v3);

  return v4;
}

- (_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ICQUISwiftHelperFunctions();
  return [(ICQUISwiftHelperFunctions *)&v3 init];
}

@end