@interface FilesZKWFallbackResult
- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)init;
- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5 attributeKeys:(id)a6 attributeValues:(id)a7;
- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5 attributeKeys:(id)a6 attributeValues:(id)a7 type:(int)a8 completion:(id)a9;
- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5 attributes:(id)a6 type:(int)a7 completion:(id)a8;
- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithResult:(id)a3 groupId:(id)a4;
@end

@implementation FilesZKWFallbackResult

- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FilesZKWFallbackResult();
  return [(SFSearchResult_SpotlightExtras *)&v3 init];
}

- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5 attributeKeys:(id)a6 attributeValues:(id)a7
{
  v10 = a4;
  if (a3)
  {
    v11 = sub_26B9AC504();
    v13 = v12;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = sub_26B9AC504();
  v15 = v14;
  if (a5)
  {
LABEL_4:
    a5 = sub_26B9AC504();
    v17 = v16;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  v18 = a6;
  v19 = a7;
  v20 = v19;
  if (!v18)
  {
    v21 = 0;
    if (v19)
    {
      goto LABEL_10;
    }

LABEL_12:
    v22 = 0;
    return sub_26B93E4CC(v11, v13, v10, v15, a5, v17, v21, v22);
  }

  v21 = sub_26B9AC6F4();

  if (!v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_26B93E480();
  v22 = sub_26B9AC6F4();

  return sub_26B93E4CC(v11, v13, v10, v15, a5, v17, v21, v22);
}

- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5 attributeKeys:(id)a6 attributeValues:(id)a7 type:(int)a8 completion:(id)a9
{
  if (a3)
  {
    v13 = sub_26B9AC504();
    v31 = v14;
    v32 = v13;
    v15 = a9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    v18 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v31 = 0;
  v32 = 0;
  v15 = a9;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = sub_26B9AC504();
  v18 = v17;
  if (a5)
  {
LABEL_4:
    v19 = sub_26B9AC504();
    v21 = v20;
    goto LABEL_8;
  }

LABEL_7:
  v19 = 0;
  v21 = 0;
LABEL_8:
  v22 = a6;
  v23 = a7;
  v24 = v15;
  if (v22)
  {
    v25 = sub_26B9AC6F4();

    if (v23)
    {
      goto LABEL_10;
    }

LABEL_13:
    v26 = 0;
    if (v24)
    {
      goto LABEL_11;
    }

LABEL_14:
    v27 = 0;
    v29 = 0;
    return sub_26B93E76C(v32, v31, v16, v18, v19, v21, v25, v26, a8, v27, v29);
  }

  v25 = 0;
  if (!v23)
  {
    goto LABEL_13;
  }

LABEL_10:
  sub_26B93E480();
  v26 = sub_26B9AC6F4();

  if (!v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v27 = sub_26B9AC504();
  v29 = v28;

  return sub_26B93E76C(v32, v31, v16, v18, v19, v21, v25, v26, a8, v27, v29);
}

- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5 attributes:(id)a6 type:(int)a7 completion:(id)a8
{
  v11 = a4;
  if (a3)
  {
    v12 = sub_26B9AC504();
    v14 = v13;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_26B9AC504();
  v16 = v15;
  if (a5)
  {
LABEL_4:
    a5 = sub_26B9AC504();
    v18 = v17;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  v19 = a6;
  v20 = a8;
  if (v20)
  {
    v21 = v20;
    v22 = sub_26B9AC504();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  return sub_26B93EA84(v12, v14, v11, v16, a5, v18, v19, a7, v22, v24);
}

- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithResult:(id)a3 groupId:(id)a4
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for FilesZKWFallbackResult();
  v6 = a3;
  v7 = a4;
  v8 = [(SFSearchResult_SpotlightExtras *)&v10 initWithResult:v6 groupId:v7];

  if (v8)
  {
  }

  return v8;
}

@end