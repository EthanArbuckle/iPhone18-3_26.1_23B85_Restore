@interface DynamicEndpoint
- (NSString)name;
- (NSString)sharedContainerIdentifier;
- (NSURL)url;
@end

@implementation DynamicEndpoint

- (NSString)name
{
  v3 = sub_22036E868();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22036E8D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&self->appConfigurationManager[32];
  __swift_project_boxed_opaque_existential_1(self->appConfigurationManager, *&self->appConfigurationManager[24]);

  sub_22036E958();
  sub_22036E7B8();
  (*(v4 + 8))(v7, v3);
  sub_22036E8C8();

  (*(v9 + 8))(v12, v8);
  v14 = sub_22036FAC8();

  return v14;
}

- (NSURL)url
{
  v2 = sub_22036E508();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  DynamicEndpoint.url.getter(v6);

  v7 = sub_22036E4E8();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (NSString)sharedContainerIdentifier
{
  sub_22036EA58();
  sub_22036EA48();
  sub_22036EA38();

  v2 = sub_22036FAC8();

  return v2;
}

@end