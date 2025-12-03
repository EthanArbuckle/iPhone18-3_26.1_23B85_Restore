@interface RFPatternExecuted
- (_TtC9SnippetUI17RFPatternExecuted)initWithPatternId:(id)id patternType:(id)type responseMode:(id)mode;
- (_TtC9SnippetUI17RFPatternExecuted)initWithPatternId:(id)id patternType:(id)type responseViewId:(id)viewId responseMode:(id)mode;
- (void)emitWithTurnIdentifier:(id)identifier;
- (void)emitWithTurnIdentifier:(id)identifier aceViewId:(id)id;
@end

@implementation RFPatternExecuted

- (_TtC9SnippetUI17RFPatternExecuted)initWithPatternId:(id)id patternType:(id)type responseMode:(id)mode
{
  if (id)
  {
    sub_26A8517B8();
    if (type)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!mode)
    {
      return RFPatternExecuted.init(patternId:patternType:responseMode:)();
    }

    goto LABEL_4;
  }

  if (!type)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_26A8517B8();
  if (mode)
  {
LABEL_4:
    sub_26A8517B8();
  }

  return RFPatternExecuted.init(patternId:patternType:responseMode:)();
}

- (_TtC9SnippetUI17RFPatternExecuted)initWithPatternId:(id)id patternType:(id)type responseViewId:(id)viewId responseMode:(id)mode
{
  typeCopy = type;
  if (id)
  {
    v9 = sub_26A8517B8();
    v11 = v10;
    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (viewId)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v11 = 0;
  if (!type)
  {
    goto LABEL_6;
  }

LABEL_3:
  typeCopy = sub_26A8517B8();
  v13 = v12;
  if (viewId)
  {
LABEL_4:
    viewId = sub_26A8517B8();
    v15 = v14;
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  modeCopy = mode;
  if (modeCopy)
  {
    v17 = modeCopy;
    v18 = sub_26A8517B8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  return RFPatternExecuted.init(patternId:patternType:responseViewId:responseMode:)(v9, v11, typeCopy, v13, viewId, v15, v18, v20);
}

- (void)emitWithTurnIdentifier:(id)identifier
{
  v4 = sub_26A84ACC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84ACA8();
  selfCopy = self;
  sub_26A64CEA8(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)emitWithTurnIdentifier:(id)identifier aceViewId:(id)id
{
  v5 = sub_26A84ACC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_26A84ACA8();
  sub_26A84ACA8();
  selfCopy = self;
  sub_26A64D084(v11, v8);

  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
}

@end