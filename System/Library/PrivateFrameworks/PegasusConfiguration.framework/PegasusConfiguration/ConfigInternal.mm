@interface ConfigInternal
- (BOOL)configBoolForKey:(id)key;
- (BOOL)isEnabled;
- (BOOL)isExpired;
- (id)findConfigForUserAgent:(id)agent;
- (id)rawConfig;
- (id)valueForKey:(id)key;
- (id)valueForKey:(id)key ofType:(Class)type;
- (id)valueForKey:(id)key shouldConsiderOverrides:(BOOL)overrides;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ConfigInternal

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_1D8CD0028();

  return v3;
}

- (BOOL)isExpired
{
  selfCopy = self;
  v3 = sub_1D8CD0274();

  return v3;
}

- (id)findConfigForUserAgent:(id)agent
{
  if (agent)
  {
    v4 = sub_1D8CD7B04();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1D8CD0904(v4, v6);

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1D8CD0BD8(coderCopy);
}

- (id)valueForKey:(id)key shouldConsiderOverrides:(BOOL)overrides
{
  v5 = sub_1D8CD7B04();
  v7 = v6;
  selfCopy = self;
  sub_1D8CD0EE8(v5, v7, v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_1D8CD8144();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)configBoolForKey:(id)key
{
  v4 = sub_1D8CD7B04();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1D8CD005C(v4, v6);

  return v4 & 1;
}

- (id)valueForKey:(id)key ofType:(Class)type
{
  v5 = sub_1D8CD7B04();
  v7 = v6;
  swift_getObjCClassMetadata();
  selfCopy = self;
  sub_1D8CD1C00(v5, v7, v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_1D8CD8144();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)valueForKey:(id)key
{
  v4 = sub_1D8CD7B04();
  v6 = v5;
  selfCopy = self;
  sub_1D8CD1D7C(v4, v6, v16);

  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_1D8CD8144();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)rawConfig
{
  selfCopy = self;
  v3 = sub_1D8CD1FDC();

  if (v3)
  {
    v4 = sub_1D8CD7A54();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end