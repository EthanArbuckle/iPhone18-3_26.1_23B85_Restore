@interface ProgressKeyValueObservation
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation ProgressKeyValueObservation

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    sub_1B1F1A890();
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1B1F1AED0();
  swift_unknownObjectRelease();
  if (change)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1B1E0FACC();
    sub_1B1F1A710();
  }

LABEL_7:
  sub_1B1E0F8DC();

  sub_1B1E07884(v13);
}

@end