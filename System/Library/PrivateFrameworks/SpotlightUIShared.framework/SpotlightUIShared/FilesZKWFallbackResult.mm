@interface FilesZKWFallbackResult
- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)init;
- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class attributeKeys:(id)keys attributeValues:(id)values;
- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class attributeKeys:(id)keys attributeValues:(id)values type:(int)type completion:(id)completion;
- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class attributes:(id)attributes type:(int)type completion:(id)completion;
- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithResult:(id)result groupId:(id)id;
@end

@implementation FilesZKWFallbackResult

- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FilesZKWFallbackResult();
  return [(SFSearchResult_SpotlightExtras *)&v3 init];
}

- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class attributeKeys:(id)keys attributeValues:(id)values
{
  bundleIdentifierCopy = bundleIdentifier;
  if (identifier)
  {
    v11 = sub_26B9AC504();
    v13 = v12;
    if (bundleIdentifierCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (class)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v13 = 0;
  if (!bundleIdentifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  bundleIdentifierCopy = sub_26B9AC504();
  v15 = v14;
  if (class)
  {
LABEL_4:
    class = sub_26B9AC504();
    v17 = v16;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  keysCopy = keys;
  valuesCopy = values;
  v20 = valuesCopy;
  if (!keysCopy)
  {
    v21 = 0;
    if (valuesCopy)
    {
      goto LABEL_10;
    }

LABEL_12:
    v22 = 0;
    return sub_26B93E4CC(v11, v13, bundleIdentifierCopy, v15, class, v17, v21, v22);
  }

  v21 = sub_26B9AC6F4();

  if (!v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_26B93E480();
  v22 = sub_26B9AC6F4();

  return sub_26B93E4CC(v11, v13, bundleIdentifierCopy, v15, class, v17, v21, v22);
}

- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class attributeKeys:(id)keys attributeValues:(id)values type:(int)type completion:(id)completion
{
  if (identifier)
  {
    v13 = sub_26B9AC504();
    v31 = v14;
    v32 = v13;
    completionCopy2 = completion;
    if (bundleIdentifier)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    v18 = 0;
    if (class)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v31 = 0;
  v32 = 0;
  completionCopy2 = completion;
  if (!bundleIdentifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = sub_26B9AC504();
  v18 = v17;
  if (class)
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
  keysCopy = keys;
  valuesCopy = values;
  v24 = completionCopy2;
  if (keysCopy)
  {
    v25 = sub_26B9AC6F4();

    if (valuesCopy)
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
    return sub_26B93E76C(v32, v31, v16, v18, v19, v21, v25, v26, type, v27, v29);
  }

  v25 = 0;
  if (!valuesCopy)
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

  return sub_26B93E76C(v32, v31, v16, v18, v19, v21, v25, v26, type, v27, v29);
}

- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class attributes:(id)attributes type:(int)type completion:(id)completion
{
  bundleIdentifierCopy = bundleIdentifier;
  if (identifier)
  {
    v12 = sub_26B9AC504();
    v14 = v13;
    if (bundleIdentifierCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (class)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
  if (!bundleIdentifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  bundleIdentifierCopy = sub_26B9AC504();
  v16 = v15;
  if (class)
  {
LABEL_4:
    class = sub_26B9AC504();
    v18 = v17;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  attributesCopy = attributes;
  completionCopy = completion;
  if (completionCopy)
  {
    v21 = completionCopy;
    v22 = sub_26B9AC504();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  return sub_26B93EA84(v12, v14, bundleIdentifierCopy, v16, class, v18, attributesCopy, type, v22, v24);
}

- (_TtC17SpotlightUIShared22FilesZKWFallbackResult)initWithResult:(id)result groupId:(id)id
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for FilesZKWFallbackResult();
  resultCopy = result;
  idCopy = id;
  v8 = [(SFSearchResult_SpotlightExtras *)&v10 initWithResult:resultCopy groupId:idCopy];

  if (v8)
  {
  }

  return v8;
}

@end