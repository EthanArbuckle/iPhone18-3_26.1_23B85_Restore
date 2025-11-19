@interface RFPatternExecuted
- (_TtC9SnippetUI17RFPatternExecuted)initWithPatternId:(id)a3 patternType:(id)a4 responseMode:(id)a5;
- (_TtC9SnippetUI17RFPatternExecuted)initWithPatternId:(id)a3 patternType:(id)a4 responseViewId:(id)a5 responseMode:(id)a6;
- (void)emitWithTurnIdentifier:(id)a3;
- (void)emitWithTurnIdentifier:(id)a3 aceViewId:(id)a4;
@end

@implementation RFPatternExecuted

- (_TtC9SnippetUI17RFPatternExecuted)initWithPatternId:(id)a3 patternType:(id)a4 responseMode:(id)a5
{
  if (a3)
  {
    sub_26A8517B8();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!a5)
    {
      return RFPatternExecuted.init(patternId:patternType:responseMode:)();
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_26A8517B8();
  if (a5)
  {
LABEL_4:
    sub_26A8517B8();
  }

  return RFPatternExecuted.init(patternId:patternType:responseMode:)();
}

- (_TtC9SnippetUI17RFPatternExecuted)initWithPatternId:(id)a3 patternType:(id)a4 responseViewId:(id)a5 responseMode:(id)a6
{
  v8 = a4;
  if (a3)
  {
    v9 = sub_26A8517B8();
    v11 = v10;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = sub_26A8517B8();
  v13 = v12;
  if (a5)
  {
LABEL_4:
    a5 = sub_26A8517B8();
    v15 = v14;
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  v16 = a6;
  if (v16)
  {
    v17 = v16;
    v18 = sub_26A8517B8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  return RFPatternExecuted.init(patternId:patternType:responseViewId:responseMode:)(v9, v11, v8, v13, a5, v15, v18, v20);
}

- (void)emitWithTurnIdentifier:(id)a3
{
  v4 = sub_26A84ACC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84ACA8();
  v8 = self;
  sub_26A64CEA8(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)emitWithTurnIdentifier:(id)a3 aceViewId:(id)a4
{
  v5 = sub_26A84ACC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_26A84ACA8();
  sub_26A84ACA8();
  v12 = self;
  sub_26A64D084(v11, v8);

  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
}

@end