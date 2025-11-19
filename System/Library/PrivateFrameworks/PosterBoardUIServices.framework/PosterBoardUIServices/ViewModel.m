@interface ViewModel
- (_TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation ViewModel

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v9 = sub_1CAEFA4EC();
    v11 = v10;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    v14 = a5;
    v15 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  sub_1CAEFA7BC();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1CAEEEC14(&qword_1EC481808, type metadata accessor for NSKeyValueChangeKey);
    sub_1CAEFA49C();
  }

LABEL_7:
  sub_1CAEEEAAC(v9, v11);

  sub_1CAEB3344(v16, &unk_1EC482110);
}

- (_TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end